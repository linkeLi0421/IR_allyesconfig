; ModuleID = '/llk/IR_all_yes/net/netfilter/ipset/ip_set_hash_ipport.c_pt.bc'
source_filename = "../net/netfilter/ipset/ip_set_hash_ipport.c"
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
%struct.ip_set = type { [32 x i8], %struct.spinlock, i32, i32, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, i32, [4 x i32], ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.nlattr = type { i16, i16 }
%struct.htable = type { %struct.atomic_t, %struct.atomic_t, i8, i32, ptr, [0 x ptr] }
%struct.hash_ipport6 = type { ptr, %struct.htable_gc, i32, i32, i8, %struct.list_head, %struct.hash_ipport6_elem }
%struct.htable_gc = type { %struct.delayed_work, ptr, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hash_ipport6_elem = type { %union.nf_inet_addr, i16, i8, i8 }
%struct.ip_set_region = type { %struct.spinlock, i32, i32 }
%struct.hash_ipport4_elem = type { i32, i16, i8, i8 }
%struct.ip_set_ext = type { %struct.ip_set_skbinfo, i64, i64, ptr, i32, i8, i8, i8 }
%struct.ip_set_skbinfo = type { i32, i32, i32, i16, i16 }
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
%struct.hash_ipport4 = type { ptr, %struct.htable_gc, i32, i32, i8, %struct.list_head, %struct.hash_ipport4_elem }
%struct.hbucket = type { %struct.callback_head, [2 x i32], i8, i8, [6 x i8], [0 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.ip_set_counter = type { %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.hash_ipport4_resize_ad = type { %struct.list_head, i32, %struct.hash_ipport4_elem, %struct.ip_set_ext, %struct.ip_set_ext, i32 }
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
%struct.hash_ipport6_resize_ad = type { %struct.list_head, i32, %struct.hash_ipport6_elem, %struct.ip_set_ext, %struct.ip_set_ext, i32 }

@__UNIQUE_ID_file610 = internal constant [63 x i8] c"ip_set_hash_ipport.file=net/netfilter/ipset/ip_set_hash_ipport\00", section ".modinfo", align 1
@__UNIQUE_ID_license611 = internal constant [31 x i8] c"ip_set_hash_ipport.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author612 = internal constant [66 x i8] c"ip_set_hash_ipport.author=Jozsef Kadlecsik <kadlec@netfilter.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description613 = internal constant [75 x i8] c"ip_set_hash_ipport.description=hash:ip,port type of IP sets, revisions 0-6\00", section ".modinfo", align 1
@__UNIQUE_ID_alias614 = internal constant [45 x i8] c"ip_set_hash_ipport.alias=ip_set_hash:ip,port\00", section ".modinfo", align 1
@hash_ipport_type = internal global %struct.ip_set_type { %struct.list_head zeroinitializer, [32 x i8] c"hash:ip,port\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 7, i8 2, i8 0, i8 0, i8 6, [10 x i8] c"\00\00\00\00\00\00\02\00\00\00", i16 3, ptr @hash_ipport_create, [27 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer], [31 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 10, i8 0, i16 255, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy zeroinitializer], ptr null }, section ".data..read_mostly", align 4
@__initcall__kmod_ip_set_hash_ipport__762_393_hash_ipport_init6 = internal global ptr @hash_ipport_init, section ".initcall6.init", align 4
@__exitcall_hash_ipport_fini = internal global ptr @hash_ipport_fini, section ".exitcall.exit", align 4
@hash_ipport_create.__UNIQUE_ID_ddebug759 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 108, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ip_set_hash_ipport\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hash_ipport_create\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"net/netfilter/ipset/ip_set_hash_gen.h\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Create set %s with family %s\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"inet\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"inet6\00", [26 x i8] zeroinitializer }, align 32
@hash_ipport_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&t->hregion[i].lock\00", [44 x i8] zeroinitializer }, align 32
@hash_ipport4_variant = internal constant { %struct.ip_set_type_variant, [40 x i8] } { %struct.ip_set_type_variant { ptr @hash_ipport4_kadt, ptr @hash_ipport4_uadt, [3 x ptr] [ptr @hash_ipport4_add, ptr @hash_ipport4_del, ptr @hash_ipport4_test], ptr @hash_ipport4_resize, ptr @hash_ipport4_destroy, ptr @hash_ipport4_flush, ptr null, ptr @hash_ipport4_head, ptr @hash_ipport4_list, ptr @hash_ipport4_uref, ptr @hash_ipport4_same_set, i8 1 }, [40 x i8] zeroinitializer }, align 32
@hash_ipport6_variant = internal constant { %struct.ip_set_type_variant, [40 x i8] } { %struct.ip_set_type_variant { ptr @hash_ipport6_kadt, ptr @hash_ipport6_uadt, [3 x ptr] [ptr @hash_ipport6_add, ptr @hash_ipport6_del, ptr @hash_ipport6_test], ptr @hash_ipport6_resize, ptr @hash_ipport6_destroy, ptr @hash_ipport6_flush, ptr null, ptr @hash_ipport6_head, ptr @hash_ipport6_list, ptr @hash_ipport6_uref, ptr @hash_ipport6_same_set, i8 1 }, [40 x i8] zeroinitializer }, align 32
@hash_ipport_create.__UNIQUE_ID_ddebug761 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 1, i8 -114, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"create %s hashsize %u (%u) maxelem %u: %p(%p)\0A\00", [49 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ip_set_hostmask_map = external dso_local local_unnamed_addr constant [0 x %union.nf_inet_addr], align 4
@hash_ipport4_add.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@hash_ipport4_add.__warned.9 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_ipport4_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 1016, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014Set %s is full, maxelem %u reached\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hash_ipport4_add\00", [47 x i8] zeroinitializer }, align 32
@hash_ipport4_add._entry_ptr = internal global ptr @hash_ipport4_add._entry, section ".printk_index", align 4
@hash_ipport4_add.__UNIQUE_ID_ddebug657 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 -1, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Table destroy after resize by add: %p\0A\00", [57 x i8] zeroinitializer }, align 32
@rcu_bh_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock_bh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"rcu_read_lock_bh() used illegally while idle\00", [51 x i8] zeroinitializer }, align 32
@rcu_read_unlock_bh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"rcu_read_unlock_bh() used illegally while idle\00", [49 x i8] zeroinitializer }, align 32
@hash_ipport4_gc_do.__UNIQUE_ID_ddebug619 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 -126, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hash_ipport4_gc_do\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"expired %u/%u\0A\00", [17 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ip_set_extensions = external dso_local local_unnamed_addr constant [0 x %struct.ip_set_ext_type], align 4
@hash_ipport4_del.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_ipport4_del.__warned.18 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_ipport4_del.__UNIQUE_ID_ddebug671 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 1, i8 27, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hash_ipport4_del\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Table destroy after resize by del: %p\0A\00", [57 x i8] zeroinitializer }, align 32
@hash_ipport4_test.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_ipport4_test.__warned.21 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_ipport4_resize.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_ipport4_resize.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@hash_ipport4_resize.__warned.22 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_ipport4_resize.__UNIQUE_ID_ddebug635 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 0, i8 -86, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hash_ipport4_resize\00", [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"attempt to resize set %s from %u to %u, t %p\0A\00", [50 x i8] zeroinitializer }, align 32
@hash_ipport4_resize.__UNIQUE_ID_ddebug642 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.27, i8 0, i8 -65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"set %s resized from %u (%p) to %u (%p)\0A\00", [56 x i8] zeroinitializer }, align 32
@hash_ipport4_resize.__UNIQUE_ID_ddebug643 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.28, i8 0, i8 -61, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Table destroy by resize %p\0A\00", [36 x i8] zeroinitializer }, align 32
@hash_ipport4_resize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.23, ptr @.str.2, i32 803, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014Cannot increase the hashsize of set %s further\0A\00", [46 x i8] zeroinitializer }, align 32
@hash_ipport4_resize._entry_ptr = internal global ptr @hash_ipport4_resize._entry, section ".printk_index", align 4
@hash_ipport4_destroy.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.30 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@hash_ipport4_flush.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_ipport4_head.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_ipport4_ext_size.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_ipport4_ext_size.__warned.32 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_ipport4_list.__UNIQUE_ID_ddebug682 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.34, i8 1, i8 82, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hash_ipport4_list\00", [46 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"list hash set %s\0A\00", [46 x i8] zeroinitializer }, align 32
@hash_ipport4_list.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_ipport4_list.__UNIQUE_ID_ddebug685 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.35, i8 1, i8 85, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cb->arg bucket: %lu, t %p n %p\0A\00", [32 x i8] zeroinitializer }, align 32
@hash_ipport4_list.__UNIQUE_ID_ddebug686 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.36, i8 1, i8 87, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"list hash %lu hbucket %p i %u, data %p\0A\00", [56 x i8] zeroinitializer }, align 32
@hash_ipport4_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.33, ptr @.str.2, i32 1401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\014Can't list set %s: one bucket does not fit into a message. Please report it!\0A\00", [48 x i8] zeroinitializer }, align 32
@hash_ipport4_list._entry_ptr = internal global ptr @hash_ipport4_list._entry, section ".printk_index", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.38 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/linux/sched.h\00", [42 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.41 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@hash_ipport4_uref.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_ipport4_uref.__UNIQUE_ID_ddebug681 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.43, i8 1, i8 76, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hash_ipport4_uref\00", [46 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Table destroy after resize  by dump: %p\0A\00", [55 x i8] zeroinitializer }, align 32
@hash_ipport6_add.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_ipport6_add.__warned.44 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_ipport6_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.45, ptr @.str.2, i32 1016, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hash_ipport6_add\00", [47 x i8] zeroinitializer }, align 32
@hash_ipport6_add._entry_ptr = internal global ptr @hash_ipport6_add._entry, section ".printk_index", align 4
@hash_ipport6_add.__UNIQUE_ID_ddebug729 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.12, i8 0, i8 -1, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@hash_ipport6_gc_do.__UNIQUE_ID_ddebug691 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.17, i8 0, i8 -126, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hash_ipport6_gc_do\00", [45 x i8] zeroinitializer }, align 32
@hash_ipport6_del.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_ipport6_del.__warned.47 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_ipport6_del.__UNIQUE_ID_ddebug743 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.20, i8 1, i8 27, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hash_ipport6_del\00", [47 x i8] zeroinitializer }, align 32
@hash_ipport6_test.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_ipport6_test.__warned.49 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_ipport6_resize.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_ipport6_resize.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@hash_ipport6_resize.__warned.50 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_ipport6_resize.__UNIQUE_ID_ddebug707 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.24, i8 0, i8 -86, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hash_ipport6_resize\00", [44 x i8] zeroinitializer }, align 32
@hash_ipport6_resize.__UNIQUE_ID_ddebug714 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.27, i8 0, i8 -65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@hash_ipport6_resize.__UNIQUE_ID_ddebug715 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.28, i8 0, i8 -61, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@hash_ipport6_resize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.51, ptr @.str.2, i32 803, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hash_ipport6_resize._entry_ptr = internal global ptr @hash_ipport6_resize._entry, section ".printk_index", align 4
@hash_ipport6_destroy.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_ipport6_flush.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_ipport6_head.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_ipport6_ext_size.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_ipport6_ext_size.__warned.55 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_ipport6_list.__UNIQUE_ID_ddebug754 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.2, ptr @.str.34, i8 1, i8 82, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hash_ipport6_list\00", [46 x i8] zeroinitializer }, align 32
@hash_ipport6_list.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_ipport6_list.__UNIQUE_ID_ddebug757 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.2, ptr @.str.35, i8 1, i8 85, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@hash_ipport6_list.__UNIQUE_ID_ddebug758 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.2, ptr @.str.36, i8 1, i8 87, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@hash_ipport6_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.56, ptr @.str.2, i32 1401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hash_ipport6_list._entry_ptr = internal global ptr @hash_ipport6_list._entry, section ".printk_index", align 4
@hash_ipport6_uref.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_ipport6_uref.__UNIQUE_ID_ddebug753 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.43, i8 1, i8 76, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hash_ipport6_uref\00", [46 x i8] zeroinitializer }, align 32
@hash_ipport4_gc_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.58 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&(&gc->dwork)->work)\00", [57 x i8] zeroinitializer }, align 32
@hash_ipport4_gc_init.__key.59 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.60 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&(&gc->dwork)->timer\00", [43 x i8] zeroinitializer }, align 32
@system_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@hash_ipport4_gc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_ipport4_gc.__UNIQUE_ID_ddebug630 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.2, ptr @.str.62, i8 0, i8 -107, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hash_ipport4_gc\00", [16 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Table destroy after resize by expire: %p\0A\00", [54 x i8] zeroinitializer }, align 32
@hash_ipport6_gc_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@hash_ipport6_gc_init.__key.63 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@hash_ipport6_gc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_ipport6_gc.__UNIQUE_ID_ddebug702 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.64, ptr @.str.2, ptr @.str.62, i8 0, i8 -107, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hash_ipport6_gc\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@__sancov_gen_cov_switch_values.65 = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 1, i64 6, i64 17, i64 132, i64 136]
@__sancov_gen_cov_switch_values.66 = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 6, i64 17, i64 58, i64 132, i64 136]
@___asan_gen_ = private constant [44 x i8] c"../net/netfilter/ipset/ip_set_hash_ipport.c\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 1458, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 1537, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant [21 x i8] c"hash_ipport4_variant\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [21 x i8] c"hash_ipport6_variant\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 1422, i32 41 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 1592, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 855, i32 6 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 1022, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 749, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 760, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 764, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 782, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 466, i32 27 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 1363, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 1373, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 695, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant [25 x i8] c"../include/linux/sched.h\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 2089, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.185, i32 991, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 723, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 1015, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 520, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 1135, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 672, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 680, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 803, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 1354, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 1400, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 1328, i32 4 }
@___asan_gen_.247 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 608, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.251 = private unnamed_addr constant [41 x i8] c"../net/netfilter/ipset/ip_set_hash_gen.h\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.251, i32 597, i32 3 }
@llvm.compiler.used = appending global [76 x ptr] [ptr @__UNIQUE_ID_alias614, ptr @__UNIQUE_ID_author612, ptr @__UNIQUE_ID_description613, ptr @__UNIQUE_ID_file610, ptr @__UNIQUE_ID_license611, ptr @__exitcall_hash_ipport_fini, ptr @__initcall__kmod_ip_set_hash_ipport__762_393_hash_ipport_init6, ptr @hash_ipport4_add._entry, ptr @hash_ipport4_add._entry_ptr, ptr @hash_ipport4_list._entry, ptr @hash_ipport4_list._entry_ptr, ptr @hash_ipport4_resize._entry, ptr @hash_ipport4_resize._entry_ptr, ptr @hash_ipport6_add._entry, ptr @hash_ipport6_add._entry_ptr, ptr @hash_ipport6_list._entry, ptr @hash_ipport6_list._entry_ptr, ptr @hash_ipport6_resize._entry, ptr @hash_ipport6_resize._entry_ptr, ptr @hash_ipport_fini, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @hash_ipport_create.__key, ptr @.str.6, ptr @hash_ipport4_variant, ptr @hash_ipport6_variant, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @hash_ipport4_resize.__key, ptr @.str.23, ptr @.str.24, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @hash_ipport6_resize.__key, ptr @.str.51, ptr @.str.56, ptr @.str.57, ptr @hash_ipport4_gc_init.__key, ptr @.str.58, ptr @hash_ipport4_gc_init.__key.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @hash_ipport6_gc_init.__key, ptr @hash_ipport6_gc_init.__key.63, ptr @.str.64], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_ipport_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_ipport4_variant to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_ipport6_variant to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_ipport4_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_ipport4_resize.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_ipport4_resize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_ipport4_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_ipport6_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_ipport6_resize.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_ipport6_resize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_ipport6_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_ipport4_gc_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_ipport4_gc_init.__key.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_ipport6_gc_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_ipport6_gc_init.__key.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hash_ipport_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @rcu_barrier() #12
  tail call void @ip_set_type_unregister(ptr noundef nonnull @hash_ipport_type) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_set_type_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hash_ipport_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ip_set_type_register(ptr noundef nonnull @hash_ipport_type) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hash_ipport_create(ptr nocapture noundef readnone %net, ptr noundef %set, ptr noundef %tb, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_ipport_create.__UNIQUE_ID_ddebug759, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_ipport_create, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !210

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %family = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 6
  %0 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp = icmp eq i8 %1, 2
  %cond = select i1 %cmp, ptr @.str.4, ptr @.str.5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_ipport_create.__UNIQUE_ID_ddebug759, ptr noundef nonnull @.str.3, ptr noundef %set, ptr noundef nonnull %cond) #12
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
  br i1 %tobool2.i.not, label %ip_set_optattr_netorder.exit.cleanup_crit_edge, label %ip_set_optattr_netorder.exit.lor.lhs.false15_crit_edge, !prof !211

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
  br i1 %tobool2.i300.not, label %ip_set_optattr_netorder.exit302.cleanup_crit_edge, label %ip_set_optattr_netorder.exit302.lor.lhs.false17_crit_edge, !prof !211

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
  br i1 %tobool2.i306.not, label %ip_set_optattr_netorder.exit308.cleanup_crit_edge, label %ip_set_optattr_netorder.exit308.lor.rhs_crit_edge, !prof !211

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
  br i1 %tobool2.i312.not, label %ip_set_optattr_netorder.exit314.cleanup_crit_edge, label %ip_set_optattr_netorder.exit314.if.end29_crit_edge, !prof !211

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
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %30 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3520, i32 noundef 152) #15
  %tobool46.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool46.not, label %if.end44.cleanup_crit_edge, label %if.end48

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end48:                                         ; preds = %if.end44
  %31 = tail call i32 @llvm.ctlz.i32(i32 %hashsize.0, i1 true) #12, !range !212
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
  %set71 = getelementptr inbounds %struct.hash_ipport6, ptr %call7.i.i, i32 0, i32 1, i32 1
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
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx86, ptr noundef nonnull @.str.6, ptr noundef nonnull @hash_ipport_create.__key, i16 noundef signext 3) #12
  %inc = add nuw i32 %i.0330, 1
  %exitcond.not = icmp eq i32 %inc, %cond81
  br i1 %exitcond.not, label %for.end, label %do.body84.do.body84_crit_edge

do.body84.do.body84_crit_edge:                    ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body84

for.end:                                          ; preds = %do.body84
  %gc = getelementptr inbounds %struct.hash_ipport6, ptr %call7.i.i, i32 0, i32 1
  %maxelem90 = getelementptr inbounds %struct.hash_ipport6, ptr %call7.i.i, i32 0, i32 2
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
  %initval = getelementptr inbounds %struct.hash_ipport6, ptr %call7.i.i, i32 0, i32 3
  %41 = ptrtoint ptr %initval to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %initval, align 4
  br label %if.end97

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %initval96 = getelementptr inbounds %struct.hash_ipport6, ptr %call7.i.i, i32 0, i32 3
  tail call void @get_random_bytes(ptr noundef %initval96, i32 noundef 4) #12
  br label %if.end97

if.end97:                                         ; preds = %if.else, %if.then93
  %bucketsize = getelementptr inbounds %struct.hash_ipport6, ptr %call7.i.i, i32 0, i32 4
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
  %ad = getelementptr inbounds %struct.hash_ipport6, ptr %call7.i.i, i32 0, i32 5
  %56 = ptrtoint ptr %ad to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %ad, ptr %ad, align 4
  %prev.i = getelementptr inbounds %struct.hash_ipport6, ptr %call7.i.i, i32 0, i32 5, i32 1
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
  %hash_ipport4_variant.hash_ipport6_variant = select i1 %cmp155, ptr @hash_ipport4_variant, ptr @hash_ipport6_variant
  %. = select i1 %cmp155, i32 8, i32 20
  %variant160 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 5
  %61 = ptrtoint ptr %variant160 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %hash_ipport4_variant.hash_ipport6_variant, ptr %variant160, align 4
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
  %lockdep_map.i = getelementptr inbounds %struct.hash_ipport6, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 0, i32 3
  br i1 %cmp172, label %if.then174, label %if.else176

if.then174:                                       ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.58, ptr noundef nonnull @hash_ipport4_gc_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry8.i = getelementptr inbounds %struct.hash_ipport6, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %74 = ptrtoint ptr %entry8.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %entry8.i, ptr %entry8.i, align 8
  br label %do.body180.sink.split

if.else176:                                       ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.58, ptr noundef nonnull @hash_ipport6_gc_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry8.i319 = getelementptr inbounds %struct.hash_ipport6, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %75 = ptrtoint ptr %entry8.i319 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %entry8.i319, ptr %entry8.i319, align 8
  br label %do.body180.sink.split

do.body180.sink.split:                            ; preds = %if.else176, %if.then174
  %entry8.i319.sink = phi ptr [ %entry8.i319, %if.else176 ], [ %entry8.i, %if.then174 ]
  %hash_ipport6_gc.sink = phi ptr [ @hash_ipport6_gc, %if.else176 ], [ @hash_ipport4_gc, %if.then174 ]
  %hash_ipport6_gc_init.__key.63.sink = phi ptr [ @hash_ipport6_gc_init.__key.63, %if.else176 ], [ @hash_ipport4_gc_init.__key.59, %if.then174 ]
  %prev.i.i320 = getelementptr inbounds %struct.hash_ipport6, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 0, i32 1, i32 1
  %76 = ptrtoint ptr %prev.i.i320 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %entry8.i319.sink, ptr %prev.i.i320, align 4
  %func.i321 = getelementptr inbounds %struct.hash_ipport6, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 0, i32 2
  %77 = ptrtoint ptr %func.i321 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %hash_ipport6_gc.sink, ptr %func.i321, align 8
  %timer.i322 = getelementptr inbounds %struct.hash_ipport6, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 1
  tail call void @init_timer_key(ptr noundef %timer.i322, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2621440, ptr noundef nonnull @.str.60, ptr noundef nonnull %hash_ipport6_gc_init.__key.63.sink) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %78 = load ptr, ptr @system_power_efficient_wq, align 4
  %call.i.i323 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %78, ptr noundef %gc, i32 noundef 100) #12
  br label %do.body180

do.body180:                                       ; preds = %do.body180.sink.split, %if.end128.do.body180_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_ipport_create.__UNIQUE_ID_ddebug761, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_ipport_create, %if.then192)) #12
          to label %cleanup [label %if.then192], !srcloc !210

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
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_ipport_create.__UNIQUE_ID_ddebug761, ptr noundef nonnull @.str.7, ptr noundef %set, i32 noundef %shl197, i32 noundef %conv196, i32 noundef %82, ptr noundef %84, ptr noundef nonnull %call56) #12
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
define internal i32 @hash_ipport4_kadt(ptr noundef %set, ptr noundef %skb, ptr nocapture noundef readnone %par, i32 noundef %adt, ptr noundef %opt) #2 align 64 {
entry:
  %e = alloca %struct.hash_ipport4_elem, align 8
  %ext = alloca %struct.ip_set_ext, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %variant = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 5
  %0 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %variant, align 4
  %arrayidx = getelementptr %struct.ip_set_type_variant, ptr %1, i32 0, i32 2, i32 %adt
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %e) #12
  %4 = ptrtoint ptr %e to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %e, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %ext) #12
  %5 = getelementptr inbounds i8, ptr %ext, i32 40
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %5, align 8, !annotation !213
  %7 = call ptr @memset(ptr %ext, i32 0, i32 16)
  %packets = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 1
  %8 = ptrtoint ptr %packets to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 1, ptr %packets, align 8
  %bytes = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 2
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  %conv = zext i32 %10 to i64
  %11 = ptrtoint ptr %bytes to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %conv, ptr %bytes, align 8
  %comment = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 3
  %12 = ptrtoint ptr %comment to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %comment, align 8
  %timeout = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 4
  %ext2 = getelementptr inbounds %struct.ip_set_adt_opt, ptr %opt, i32 0, i32 4
  %timeout3 = getelementptr inbounds %struct.ip_set_adt_opt, ptr %opt, i32 0, i32 4, i32 4
  %13 = ptrtoint ptr %timeout3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %timeout3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp.not = icmp eq i32 %14, -1
  br i1 %cmp.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %timeout7 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 10
  %15 = ptrtoint ptr %timeout7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %timeout7, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %16, %cond.false ], [ %14, %entry.cond.end_crit_edge ]
  %17 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond, ptr %timeout, align 4
  %packets_op = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 5
  %18 = ptrtoint ptr %packets_op to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %packets_op, align 8
  %bytes_op = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 6
  %19 = ptrtoint ptr %bytes_op to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %bytes_op, align 1
  %target = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 7
  %20 = ptrtoint ptr %target to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %target, align 2
  %flags = getelementptr inbounds %struct.ip_set_adt_opt, ptr %opt, i32 0, i32 2
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %flags, align 2
  %23 = and i8 %22, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool = icmp ne i8 %23, 0
  %port = getelementptr inbounds %struct.hash_ipport4_elem, ptr %e, i32 0, i32 1
  %proto = getelementptr inbounds %struct.hash_ipport4_elem, ptr %e, i32 0, i32 2
  %call = call zeroext i1 @ip_set_get_ip4_port(ptr noundef %skb, i1 noundef zeroext %tobool, ptr noundef %port, ptr noundef %proto) #12
  br i1 %call, label %if.end, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %flags, align 2
  %26 = and i8 %25, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool12.not = icmp eq i8 %26, 0
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %27 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %29 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %30 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %28, i32 %conv.i.i.i
  %saddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 8
  %daddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 9
  %cond.in.i = select i1 %tobool12.not, ptr %daddr.i, ptr %saddr.i
  %31 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %cond.i = load i32, ptr %cond.in.i, align 4
  %32 = ptrtoint ptr %e to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %cond.i, ptr %e, align 8
  %cmdflags = getelementptr inbounds %struct.ip_set_adt_opt, ptr %opt, i32 0, i32 3
  %33 = ptrtoint ptr %cmdflags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cmdflags, align 4
  %call14 = call i32 %3(ptr noundef %set, ptr noundef nonnull %e, ptr noundef nonnull %ext, ptr noundef %ext2, i32 noundef %34) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.end ], [ -22, %cond.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %ext) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %e) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hash_ipport4_uadt(ptr noundef %set, ptr noundef %tb, i32 noundef %adt, ptr nocapture noundef writeonly %lineno, i32 noundef %flags, i1 noundef zeroext %retried) #2 align 64 {
entry:
  %ip.i = alloca i32, align 4
  %e = alloca %struct.hash_ipport4_elem, align 8
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
  %6 = ptrtoint ptr %e to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %e, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %ext) #12
  %7 = getelementptr inbounds i8, ptr %ext, i32 40
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -1, ptr %7, align 8, !annotation !213
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
  br i1 %tobool6.not, label %if.end.cleanup163_crit_edge, label %lor.lhs.false, !prof !211

if.end.cleanup163_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup163

lor.lhs.false:                                    ; preds = %if.end
  %arrayidx.i = getelementptr ptr, ptr %tb, i32 4
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i, label %lor.lhs.false.cleanup163_crit_edge, label %ip_set_attr_netorder.exit, !prof !214

lor.lhs.false.cleanup163_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup163

ip_set_attr_netorder.exit:                        ; preds = %lor.lhs.false
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %nla_type.i, align 2
  %29 = and i16 %28, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool2.i.not = icmp eq i16 %29, 0
  br i1 %tobool2.i.not, label %ip_set_attr_netorder.exit.cleanup163_crit_edge, label %lor.rhs, !prof !211

ip_set_attr_netorder.exit.cleanup163_crit_edge:   ; preds = %ip_set_attr_netorder.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup163

lor.rhs:                                          ; preds = %ip_set_attr_netorder.exit
  %arrayidx.i247 = getelementptr ptr, ptr %tb, i32 5
  %30 = ptrtoint ptr %arrayidx.i247 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i247, align 4
  %tobool.not.i248 = icmp eq ptr %31, null
  br i1 %tobool.not.i248, label %lor.rhs.if.end13_crit_edge, label %ip_set_optattr_netorder.exit

lor.rhs.if.end13_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

ip_set_optattr_netorder.exit:                     ; preds = %lor.rhs
  %nla_type.i249 = getelementptr inbounds %struct.nlattr, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %nla_type.i249 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %nla_type.i249, align 2
  %34 = and i16 %33, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool2.i250.not = icmp eq i16 %34, 0
  br i1 %tobool2.i250.not, label %ip_set_optattr_netorder.exit.cleanup163_crit_edge, label %ip_set_optattr_netorder.exit.if.end13_crit_edge, !prof !211

ip_set_optattr_netorder.exit.if.end13_crit_edge:  ; preds = %ip_set_optattr_netorder.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

ip_set_optattr_netorder.exit.cleanup163_crit_edge: ; preds = %ip_set_optattr_netorder.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup163

if.end13:                                         ; preds = %ip_set_optattr_netorder.exit.if.end13_crit_edge, %lor.rhs.if.end13_crit_edge
  %call16 = call i32 @ip_set_get_ipaddr4(ptr noundef nonnull %24, ptr noundef nonnull %e) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end13.cleanup163_crit_edge

if.end13.cleanup163_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup163

if.end19:                                         ; preds = %if.end13
  %call20 = call i32 @ip_set_get_extensions(ptr noundef %set, ptr noundef %tb, ptr noundef nonnull %ext) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.cleanup163_crit_edge

if.end19.cleanup163_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup163

if.end23:                                         ; preds = %if.end19
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i.i251 = getelementptr i8, ptr %36, i32 4
  %37 = ptrtoint ptr %add.ptr.i.i251 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %add.ptr.i.i251, align 2
  %port26 = getelementptr inbounds %struct.hash_ipport4_elem, ptr %e, i32 0, i32 1
  %39 = ptrtoint ptr %port26 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %port26, align 4
  %arrayidx27 = getelementptr ptr, ptr %tb, i32 7
  %40 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx27, align 4
  %tobool28.not = icmp eq ptr %41, null
  br i1 %tobool28.not, label %if.end23.cleanup163_crit_edge, label %if.then29

if.end23.cleanup163_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup163

if.then29:                                        ; preds = %if.end23
  %add.ptr.i.i252 = getelementptr i8, ptr %41, i32 4
  %42 = ptrtoint ptr %add.ptr.i.i252 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %add.ptr.i.i252, align 1
  %proto = getelementptr inbounds %struct.hash_ipport4_elem, ptr %e, i32 0, i32 2
  %44 = ptrtoint ptr %proto to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %proto, align 2
  %45 = zext i8 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.65)
  switch i8 %43, label %if.then47 [
    i8 6, label %if.then29.if.end49_crit_edge
    i8 -124, label %if.then29.if.end49_crit_edge297
    i8 17, label %if.then29.if.end49_crit_edge298
    i8 -120, label %if.then29.if.end49_crit_edge299
    i8 0, label %if.then29.cleanup163_crit_edge
    i8 1, label %if.end49.fold.split
  ]

if.then29.cleanup163_crit_edge:                   ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup163

if.then29.if.end49_crit_edge299:                  ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

if.then29.if.end49_crit_edge298:                  ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

if.then29.if.end49_crit_edge297:                  ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

if.then29.if.end49_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

if.then47:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %port26 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 0, ptr %port26, align 4
  br label %if.end49

if.end49.fold.split:                              ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

if.end49:                                         ; preds = %if.end49.fold.split, %if.then47, %if.then29.if.end49_crit_edge, %if.then29.if.end49_crit_edge297, %if.then29.if.end49_crit_edge298, %if.then29.if.end49_crit_edge299
  %retval.0.i266270 = phi i1 [ false, %if.then47 ], [ true, %if.then29.if.end49_crit_edge ], [ true, %if.then29.if.end49_crit_edge297 ], [ true, %if.then29.if.end49_crit_edge298 ], [ true, %if.then29.if.end49_crit_edge299 ], [ false, %if.end49.fold.split ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %adt)
  %cmp50 = icmp eq i32 %adt, 2
  br i1 %cmp50, label %if.end49.if.then61_crit_edge, label %lor.lhs.false52

if.end49.if.then61_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then61

lor.lhs.false52:                                  ; preds = %if.end49
  %arrayidx53 = getelementptr ptr, ptr %tb, i32 2
  %47 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx53, align 4
  %tobool54.not = icmp eq ptr %48, null
  br i1 %tobool54.not, label %lor.lhs.false55, label %if.then69

lor.lhs.false55:                                  ; preds = %lor.lhs.false52
  %arrayidx56 = getelementptr ptr, ptr %tb, i32 3
  %49 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx56, align 4
  %tobool57.not = icmp eq ptr %50, null
  br i1 %tobool57.not, label %lor.lhs.false58, label %if.then82

lor.lhs.false58:                                  ; preds = %lor.lhs.false55
  %51 = ptrtoint ptr %arrayidx.i247 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.i247, align 4
  %tobool60.not = icmp eq ptr %52, null
  br i1 %tobool60.not, label %lor.lhs.false58.if.then61_crit_edge, label %if.else79.thread

lor.lhs.false58.if.then61_crit_edge:              ; preds = %lor.lhs.false58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then61

if.else79.thread:                                 ; preds = %lor.lhs.false58
  call void @__sanitizer_cov_trace_pc() #14
  %53 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %e, align 8
  br label %if.end98

if.then61:                                        ; preds = %lor.lhs.false58.if.then61_crit_edge, %if.end49.if.then61_crit_edge
  %call62 = call i32 %5(ptr noundef %set, ptr noundef nonnull %e, ptr noundef nonnull %ext, ptr noundef nonnull %ext, i32 noundef %flags) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4103, i32 %call62)
  %cmp.i = icmp eq i32 %call62, -4103
  %and.i = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %55 = and i1 %tobool.i, %cmp.i
  %spec.select = select i1 %55, i32 0, i32 %call62
  br label %cleanup163

if.then69:                                        ; preds = %lor.lhs.false52
  %56 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %e, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ip.i) #12
  %58 = ptrtoint ptr %ip.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 -1, ptr %ip.i, align 4, !annotation !213
  %call.i = call i32 @ip_set_get_ipaddr4(ptr noundef nonnull %48, ptr noundef nonnull %ip.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i253 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i253, label %if.end74, label %ip_set_get_hostipaddr4.exit

ip_set_get_hostipaddr4.exit:                      ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip.i) #12
  br label %cleanup163

if.end74:                                         ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #14
  %59 = ptrtoint ptr %ip.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ip.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip.i) #12
  %61 = call i32 @llvm.umax.i32(i32 %57, i32 %60)
  %62 = call i32 @llvm.umin.i32(i32 %57, i32 %60)
  br label %if.end98

if.then82:                                        ; preds = %lor.lhs.false55
  %add.ptr.i.i254 = getelementptr i8, ptr %50, i32 4
  %63 = ptrtoint ptr %add.ptr.i.i254 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %add.ptr.i.i254, align 1
  %65 = add i8 %64, -33
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %65)
  %66 = icmp ult i8 %65, -32
  br i1 %66, label %if.then82.cleanup163_crit_edge, label %cleanup.thread

if.then82.cleanup163_crit_edge:                   ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup163

cleanup.thread:                                   ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #14
  %67 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %e, align 8
  %idxprom.i = zext i8 %64 to i32
  %arrayidx.i255 = getelementptr [0 x %union.nf_inet_addr], ptr @ip_set_hostmask_map, i32 0, i32 %idxprom.i
  %69 = ptrtoint ptr %arrayidx.i255 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx.i255, align 4
  %and = and i32 %70, %68
  %neg = xor i32 %70, -1
  %or = or i32 %68, %neg
  br label %if.end98

if.end98:                                         ; preds = %cleanup.thread, %if.end74, %if.else79.thread
  %ip_to.2 = phi i32 [ %or, %cleanup.thread ], [ %61, %if.end74 ], [ %54, %if.else79.thread ]
  %ip.1 = phi i32 [ %and, %cleanup.thread ], [ %62, %if.end74 ], [ %54, %if.else79.thread ]
  %71 = ptrtoint ptr %port26 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %port26, align 4
  %conv100 = zext i16 %72 to i32
  br i1 %retval.0.i266270, label %land.lhs.true, label %if.end98.if.end117_crit_edge

if.end98.if.end117_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end117

land.lhs.true:                                    ; preds = %if.end98
  %73 = ptrtoint ptr %arrayidx.i247 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx.i247, align 4
  %tobool104.not = icmp eq ptr %74, null
  br i1 %tobool104.not, label %land.lhs.true.if.end117_crit_edge, label %if.then105

land.lhs.true.if.end117_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end117

if.then105:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i.i = getelementptr i8, ptr %74, i32 4
  %75 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %add.ptr.i.i.i, align 2
  %77 = call i16 @llvm.umin.i16(i16 %72, i16 %76)
  %78 = zext i16 %77 to i32
  %79 = call i16 @llvm.umax.i16(i16 %72, i16 %76)
  %80 = zext i16 %79 to i32
  br label %if.end117

if.end117:                                        ; preds = %if.then105, %land.lhs.true.if.end117_crit_edge, %if.end98.if.end117_crit_edge
  %port.0 = phi i32 [ %conv100, %land.lhs.true.if.end117_crit_edge ], [ %conv100, %if.end98.if.end117_crit_edge ], [ %78, %if.then105 ]
  %port_to.0 = phi i32 [ %conv100, %land.lhs.true.if.end117_crit_edge ], [ %conv100, %if.end98.if.end117_crit_edge ], [ %80, %if.then105 ]
  %conv118 = zext i32 %ip_to.2 to i64
  %conv119 = zext i32 %ip.1 to i64
  %sub = add nuw nsw i64 %conv118, 1
  %add = sub nsw i64 %sub, %conv119
  %sub120 = sub nsw i32 1, %port.0
  %add121 = add nsw i32 %sub120, %port_to.0
  %conv122 = zext i32 %add121 to i64
  %mul = mul i64 %add, %conv122
  call void @__sanitizer_cov_trace_const_cmp8(i64 1048576, i64 %mul)
  %cmp123 = icmp ugt i64 %mul, 1048576
  br i1 %cmp123, label %if.end117.cleanup163_crit_edge, label %if.end126

if.end117.cleanup163_crit_edge:                   ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup163

if.end126:                                        ; preds = %if.end117
  br i1 %retried, label %if.then128, label %if.end126.if.end130_crit_edge

if.end126.if.end130_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end130

if.then128:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #14
  %next = getelementptr inbounds %struct.hash_ipport4, ptr %1, i32 0, i32 6
  %81 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %next, align 4
  br label %if.end130

if.end130:                                        ; preds = %if.then128, %if.end126.if.end130_crit_edge
  %ip.2 = phi i32 [ %82, %if.then128 ], [ %ip.1, %if.end126.if.end130_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %ip.2, i32 %ip_to.2)
  %cmp131.not283 = icmp ugt i32 %ip.2, %ip_to.2
  br i1 %cmp131.not283, label %if.end130.cleanup163_crit_edge, label %for.body.lr.ph

if.end130.cleanup163_crit_edge:                   ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup163

for.body.lr.ph:                                   ; preds = %if.end130
  %next136 = getelementptr inbounds %struct.hash_ipport4, ptr %1, i32 0, i32 6
  %port142 = getelementptr inbounds %struct.hash_ipport4, ptr %1, i32 0, i32 6, i32 1
  %and.i259 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i259)
  %tobool.i260 = icmp ne i32 %and.i259, 0
  br label %for.body

for.body:                                         ; preds = %for.inc160.for.body_crit_edge, %for.body.lr.ph
  %ip.3284 = phi i32 [ %ip.2, %for.body.lr.ph ], [ %inc161, %for.inc160.for.body_crit_edge ]
  br i1 %retried, label %land.lhs.true135, label %for.body.cond.end145_crit_edge

for.body.cond.end145_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end145

land.lhs.true135:                                 ; preds = %for.body
  %83 = ptrtoint ptr %next136 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %next136, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %ip.3284, i32 %84)
  %cmp138 = icmp eq i32 %ip.3284, %84
  br i1 %cmp138, label %cond.true140, label %land.lhs.true135.cond.end145_crit_edge

land.lhs.true135.cond.end145_crit_edge:           ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end145

cond.true140:                                     ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #14
  %85 = ptrtoint ptr %port142 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %port142, align 4
  %conv143 = zext i16 %86 to i32
  br label %cond.end145

cond.end145:                                      ; preds = %cond.true140, %land.lhs.true135.cond.end145_crit_edge, %for.body.cond.end145_crit_edge
  %cond146 = phi i32 [ %conv143, %cond.true140 ], [ %port.0, %land.lhs.true135.cond.end145_crit_edge ], [ %port.0, %for.body.cond.end145_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond146, i32 %port_to.0)
  %cmp148.not281 = icmp ugt i32 %cond146, %port_to.0
  br i1 %cmp148.not281, label %cond.end145.for.inc160_crit_edge, label %cond.end145.for.body150_crit_edge

cond.end145.for.body150_crit_edge:                ; preds = %cond.end145
  br label %for.body150

cond.end145.for.inc160_crit_edge:                 ; preds = %cond.end145
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc160

for.body150:                                      ; preds = %if.end159.for.body150_crit_edge, %cond.end145.for.body150_crit_edge
  %p.0282 = phi i32 [ %inc, %if.end159.for.body150_crit_edge ], [ %cond146, %cond.end145.for.body150_crit_edge ]
  %87 = ptrtoint ptr %e to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %ip.3284, ptr %e, align 8
  %conv152 = trunc i32 %p.0282 to i16
  %88 = ptrtoint ptr %port26 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %conv152, ptr %port26, align 4
  %call154 = call i32 %5(ptr noundef %set, ptr noundef nonnull %e, ptr noundef nonnull %ext, ptr noundef nonnull %ext, i32 noundef %flags) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call154)
  %tobool155.not = icmp eq i32 %call154, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4103, i32 %call154)
  %cmp.i258 = icmp eq i32 %call154, -4103
  %89 = and i1 %tobool.i260, %cmp.i258
  %or.cond = or i1 %tobool155.not, %89
  br i1 %or.cond, label %if.end159, label %for.body150.cleanup163_crit_edge

for.body150.cleanup163_crit_edge:                 ; preds = %for.body150
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup163

if.end159:                                        ; preds = %for.body150
  %inc = add nuw nsw i32 %p.0282, 1
  %exitcond = icmp eq i32 %p.0282, %port_to.0
  br i1 %exitcond, label %if.end159.for.inc160_crit_edge, label %if.end159.for.body150_crit_edge

if.end159.for.body150_crit_edge:                  ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body150

if.end159.for.inc160_crit_edge:                   ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc160

for.inc160:                                       ; preds = %if.end159.for.inc160_crit_edge, %cond.end145.for.inc160_crit_edge
  %inc161 = add i32 %ip.3284, 1
  %cmp131.not = icmp ugt i32 %inc161, %ip_to.2
  br i1 %cmp131.not, label %for.inc160.cleanup163_crit_edge, label %for.inc160.for.body_crit_edge

for.inc160.for.body_crit_edge:                    ; preds = %for.inc160
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc160.cleanup163_crit_edge:                  ; preds = %for.inc160
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup163

cleanup163:                                       ; preds = %for.inc160.cleanup163_crit_edge, %for.body150.cleanup163_crit_edge, %if.end130.cleanup163_crit_edge, %if.end117.cleanup163_crit_edge, %if.then82.cleanup163_crit_edge, %ip_set_get_hostipaddr4.exit, %if.then61, %if.then29.cleanup163_crit_edge, %if.end23.cleanup163_crit_edge, %if.end19.cleanup163_crit_edge, %if.end13.cleanup163_crit_edge, %ip_set_optattr_netorder.exit.cleanup163_crit_edge, %ip_set_attr_netorder.exit.cleanup163_crit_edge, %lor.lhs.false.cleanup163_crit_edge, %if.end.cleanup163_crit_edge
  %retval.1 = phi i32 [ %spec.select, %if.then61 ], [ -4097, %ip_set_optattr_netorder.exit.cleanup163_crit_edge ], [ %call16, %if.end13.cleanup163_crit_edge ], [ %call20, %if.end19.cleanup163_crit_edge ], [ -4355, %if.end23.cleanup163_crit_edge ], [ %call.i, %ip_set_get_hostipaddr4.exit ], [ -34, %if.end117.cleanup163_crit_edge ], [ -4097, %ip_set_attr_netorder.exit.cleanup163_crit_edge ], [ -4097, %if.end.cleanup163_crit_edge ], [ -4104, %if.then82.cleanup163_crit_edge ], [ -4097, %lor.lhs.false.cleanup163_crit_edge ], [ -4354, %if.then29.cleanup163_crit_edge ], [ 0, %if.end130.cleanup163_crit_edge ], [ %call154, %for.body150.cleanup163_crit_edge ], [ 0, %for.inc160.cleanup163_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %ext) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %e) #12
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hash_ipport4_add(ptr noundef %set, ptr nocapture noundef readonly %value, ptr noundef %ext, ptr nocapture noundef readonly %mext, i32 noundef %flags) #2 align 64 {
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
  %.b561 = load i1, ptr @hash_ipport4_add.__warned, align 1
  br i1 %.b561, label %land.lhs.true7.do.end10_crit_edge, label %if.then

land.lhs.true7.do.end10_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

if.then:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hash_ipport4_add.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 855, ptr noundef nonnull @.str.8) #12
  br label %do.end10

do.end10:                                         ; preds = %if.then, %land.lhs.true7.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %rcu_read_lock_bh.exit.do.end10_crit_edge
  %initval = getelementptr inbounds %struct.hash_ipport4, ptr %1, i32 0, i32 3
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
  %notmask665 = shl nsw i32 -1, %sub23
  %shl24.op = xor i32 %notmask665, -1
  %12 = select i1 %cmp, i32 0, i32 %shl24.op
  %rem = and i32 %and17, %12
  %uref = getelementptr inbounds %struct.htable, ptr %3, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %uref, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %uref, i32 1, i32 3, i32 1) #12
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uref, ptr %uref, i32 1, ptr elementtype(i32) %uref) #12, !srcloc !215
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
  %call.i568 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i568, label %if.then33.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true.i571

if.then33.rcu_read_unlock_bh.exit_crit_edge:      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

land.lhs.true.i571:                               ; preds = %if.then33
  %call1.i569 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i569)
  %tobool.not.i570 = icmp eq i32 %call1.i569, 0
  br i1 %tobool.not.i570, label %land.lhs.true.i571.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true2.i573

land.lhs.true.i571.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true.i571
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

land.lhs.true2.i573:                              ; preds = %land.lhs.true.i571
  %.b4.i572 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i572, label %land.lhs.true2.i573.rcu_read_unlock_bh.exit_crit_edge, label %if.then.i574

land.lhs.true2.i573.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i573
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

if.then.i574:                                     ; preds = %land.lhs.true2.i573
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 761, ptr noundef nonnull @.str.15) #12
  br label %rcu_read_unlock_bh.exit

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i574, %land.lhs.true2.i573.rcu_read_unlock_bh.exit_crit_edge, %land.lhs.true.i571.rcu_read_unlock_bh.exit_crit_edge, %if.then33.rcu_read_unlock_bh.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #12
  tail call fastcc void @local_bh_enable() #12
  tail call fastcc void @hash_ipport4_gc_do(ptr noundef %set, ptr noundef %3, i32 noundef %rem)
  tail call fastcc void @local_bh_disable() #12
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #12
  %call.i575 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i575, label %rcu_read_unlock_bh.exit.if.end34_crit_edge, label %land.lhs.true.i578

rcu_read_unlock_bh.exit.if.end34_crit_edge:       ; preds = %rcu_read_unlock_bh.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

land.lhs.true.i578:                               ; preds = %rcu_read_unlock_bh.exit
  %call1.i576 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i576)
  %tobool.not.i577 = icmp eq i32 %call1.i576, 0
  br i1 %tobool.not.i577, label %land.lhs.true.i578.if.end34_crit_edge, label %land.lhs.true2.i580

land.lhs.true.i578.if.end34_crit_edge:            ; preds = %land.lhs.true.i578
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

land.lhs.true2.i580:                              ; preds = %land.lhs.true.i578
  %.b4.i579 = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i579, label %land.lhs.true2.i580.if.end34_crit_edge, label %if.then.i581

land.lhs.true2.i580.if.end34_crit_edge:           ; preds = %land.lhs.true2.i580
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then.i581:                                     ; preds = %land.lhs.true2.i580
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 750, ptr noundef nonnull @.str.14) #12
  br label %if.end34

if.end34:                                         ; preds = %if.then.i581, %land.lhs.true2.i580.if.end34_crit_edge, %land.lhs.true.i578.if.end34_crit_edge, %rcu_read_unlock_bh.exit.if.end34_crit_edge, %if.then29.if.end34_crit_edge
  %maxelem35 = getelementptr inbounds %struct.hash_ipport4, ptr %1, i32 0, i32 2
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
  %e.0672 = phi i32 [ 0, %if.end34 ], [ %inc, %for.body.for.body_crit_edge ]
  %elements.0671 = phi i32 [ 0, %if.end34 ], [ %add, %for.body.for.body_crit_edge ]
  %elements52 = getelementptr %struct.ip_set_region, ptr %28, i32 %e.0672, i32 2
  %29 = ptrtoint ptr %elements52 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %elements52, align 4
  %add = add i32 %30, %elements.0671
  %inc = add nuw i32 %e.0672, 1
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
  %call.i583 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i583, label %if.end62.rcu_read_unlock_bh.exit590_crit_edge, label %land.lhs.true.i586

if.end62.rcu_read_unlock_bh.exit590_crit_edge:    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit590

land.lhs.true.i586:                               ; preds = %if.end62
  %call1.i584 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i584)
  %tobool.not.i585 = icmp eq i32 %call1.i584, 0
  br i1 %tobool.not.i585, label %land.lhs.true.i586.rcu_read_unlock_bh.exit590_crit_edge, label %land.lhs.true2.i588

land.lhs.true.i586.rcu_read_unlock_bh.exit590_crit_edge: ; preds = %land.lhs.true.i586
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit590

land.lhs.true2.i588:                              ; preds = %land.lhs.true.i586
  %.b4.i587 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i587, label %land.lhs.true2.i588.rcu_read_unlock_bh.exit590_crit_edge, label %if.then.i589

land.lhs.true2.i588.rcu_read_unlock_bh.exit590_crit_edge: ; preds = %land.lhs.true2.i588
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit590

if.then.i589:                                     ; preds = %land.lhs.true2.i588
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 761, ptr noundef nonnull @.str.15) #12
  br label %rcu_read_unlock_bh.exit590

rcu_read_unlock_bh.exit590:                       ; preds = %if.then.i589, %land.lhs.true2.i588.rcu_read_unlock_bh.exit590_crit_edge, %land.lhs.true.i586.rcu_read_unlock_bh.exit590_crit_edge, %if.end62.rcu_read_unlock_bh.exit590_crit_edge
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
  br i1 %tobool72.not, label %land.lhs.true73, label %rcu_read_unlock_bh.exit590.do.end81_crit_edge

rcu_read_unlock_bh.exit590.do.end81_crit_edge:    ; preds = %rcu_read_unlock_bh.exit590
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end81

land.lhs.true73:                                  ; preds = %rcu_read_unlock_bh.exit590
  %call74 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %land.lhs.true73.do.end81_crit_edge, label %land.lhs.true76

land.lhs.true73.do.end81_crit_edge:               ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end81

land.lhs.true76:                                  ; preds = %land.lhs.true73
  %.b550560 = load i1, ptr @hash_ipport4_add.__warned.9, align 1
  br i1 %.b550560, label %land.lhs.true76.do.end81_crit_edge, label %if.then78

land.lhs.true76.do.end81_crit_edge:               ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end81

if.then78:                                        ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hash_ipport4_add.__warned.9, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 878, ptr noundef nonnull @.str.8) #12
  br label %do.end81

do.end81:                                         ; preds = %if.then78, %land.lhs.true76.do.end81_crit_edge, %land.lhs.true73.do.end81_crit_edge, %rcu_read_unlock_bh.exit590.do.end81_crit_edge
  %tobool83.not = icmp eq ptr %37, null
  br i1 %tobool83.not, label %if.then84, label %for.cond103.preheader

for.cond103.preheader:                            ; preds = %do.end81
  %pos = getelementptr inbounds %struct.hbucket, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %pos, align 1
  %conv104 = zext i8 %39 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %cmp105673.not = icmp eq i8 %39, 0
  br i1 %cmp105673.not, label %for.end154.thread, label %for.body107.lr.ph

for.body107.lr.ph:                                ; preds = %for.cond103.preheader
  %used = getelementptr inbounds %struct.hbucket, ptr %37, i32 0, i32 1
  %value116 = getelementptr inbounds %struct.hbucket, ptr %37, i32 0, i32 5
  %dsize118 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %proto9.i = getelementptr inbounds %struct.hash_ipport4_elem, ptr %value, i32 0, i32 2
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
  %i.0677 = phi i32 [ 0, %for.body107.lr.ph ], [ %inc153, %for.inc152.for.body107_crit_edge ]
  %j.0676 = phi i32 [ -1, %for.body107.lr.ph ], [ %j.1, %for.inc152.for.body107_crit_edge ]
  %reuse.0.off0675 = phi i1 [ false, %for.body107.lr.ph ], [ %reuse.1.off0, %for.inc152.for.body107_crit_edge ]
  %deleted.0.off0674 = phi i1 [ false, %for.body107.lr.ph ], [ %deleted.1.off0, %for.inc152.for.body107_crit_edge ]
  %div3.i = lshr i32 %i.0677, 5
  %arrayidx.i = getelementptr i32, ptr %used, i32 %div3.i
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.0677, 31
  %44 = shl nuw i32 1, %and.i
  %45 = and i32 %43, %44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool109.not = icmp eq i32 %45, 0
  br i1 %tobool109.not, label %if.then110, label %if.end115

if.then110:                                       ; preds = %for.body107
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %j.0676)
  %cmp111 = icmp eq i32 %j.0676, -1
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
  %mul119 = mul i32 %47, %i.0677
  %add.ptr = getelementptr i8, ptr %value116, i32 %mul119
  %48 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %add.ptr, align 4
  %50 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %51)
  %cmp.i = icmp eq i32 %49, %51
  br i1 %cmp.i, label %land.lhs.true.i592, label %if.end115.if.end136_crit_edge

if.end115.if.end136_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end136

land.lhs.true.i592:                               ; preds = %if.end115
  %port.i = getelementptr inbounds %struct.hash_ipport4_elem, ptr %add.ptr, i32 0, i32 1
  %52 = ptrtoint ptr %port.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %port.i, align 4
  %54 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx32.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %53, i16 %55)
  %cmp6.i = icmp eq i16 %53, %55
  br i1 %cmp6.i, label %hash_ipport4_data_equal.exit, label %land.lhs.true.i592.if.end136_crit_edge

land.lhs.true.i592.if.end136_crit_edge:           ; preds = %land.lhs.true.i592
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end136

hash_ipport4_data_equal.exit:                     ; preds = %land.lhs.true.i592
  %proto.i = getelementptr inbounds %struct.hash_ipport4_elem, ptr %add.ptr, i32 0, i32 2
  %56 = ptrtoint ptr %proto.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %proto.i, align 2
  %58 = ptrtoint ptr %proto9.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %proto9.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %57, i8 %59)
  %cmp11.i = icmp eq i8 %57, %59
  br i1 %cmp11.i, label %if.then121, label %hash_ipport4_data_equal.exit.if.end136_crit_edge

hash_ipport4_data_equal.exit.if.end136_crit_edge: ; preds = %hash_ipport4_data_equal.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end136

if.then121:                                       ; preds = %hash_ipport4_data_equal.exit
  br i1 %tobool.not, label %lor.lhs.false124, label %if.then121.overwrite_extensions_crit_edge

if.then121.overwrite_extensions_crit_edge:        ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #14
  br label %overwrite_extensions

lor.lhs.false124:                                 ; preds = %if.then121
  %60 = ptrtoint ptr %extensions137 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %extensions137, align 2
  %62 = and i8 %61, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool128.not = icmp eq i8 %62, 0
  br i1 %tobool128.not, label %lor.lhs.false124.unlock_crit_edge, label %land.lhs.true129

lor.lhs.false124.unlock_crit_edge:                ; preds = %lor.lhs.false124
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

land.lhs.true129:                                 ; preds = %lor.lhs.false124
  %63 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx143, align 4
  %add.ptr131 = getelementptr i8, ptr %add.ptr, i32 %64
  %65 = ptrtoint ptr %add.ptr131 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %add.ptr131, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp.not.i = icmp eq i32 %66, 0
  br i1 %cmp.not.i, label %land.lhs.true129.unlock_crit_edge, label %ip_set_timeout_expired.exit

land.lhs.true129.unlock_crit_edge:                ; preds = %land.lhs.true129
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

ip_set_timeout_expired.exit:                      ; preds = %land.lhs.true129
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %67 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %66, %67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp1.i = icmp slt i32 %sub.i, 0
  br i1 %cmp1.i, label %ip_set_timeout_expired.exit.overwrite_extensions_crit_edge, label %ip_set_timeout_expired.exit.unlock_crit_edge

ip_set_timeout_expired.exit.unlock_crit_edge:     ; preds = %ip_set_timeout_expired.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

ip_set_timeout_expired.exit.overwrite_extensions_crit_edge: ; preds = %ip_set_timeout_expired.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %overwrite_extensions

if.end136:                                        ; preds = %hash_ipport4_data_equal.exit.if.end136_crit_edge, %land.lhs.true.i592.if.end136_crit_edge, %if.end115.if.end136_crit_edge
  %68 = ptrtoint ptr %extensions137 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %extensions137, align 2
  %70 = and i8 %69, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool140.not = icmp eq i8 %70, 0
  br i1 %tobool140.not, label %if.end136.for.inc152_crit_edge, label %land.lhs.true141

if.end136.for.inc152_crit_edge:                   ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc152

land.lhs.true141:                                 ; preds = %if.end136
  %71 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx143, align 4
  %add.ptr144 = getelementptr i8, ptr %add.ptr, i32 %72
  %73 = ptrtoint ptr %add.ptr144 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %add.ptr144, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp.not.i594 = icmp eq i32 %74, 0
  br i1 %cmp.not.i594, label %land.lhs.true141.ip_set_timeout_expired.exit598_crit_edge, label %land.rhs.i597

land.lhs.true141.ip_set_timeout_expired.exit598_crit_edge: ; preds = %land.lhs.true141
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_set_timeout_expired.exit598

land.rhs.i597:                                    ; preds = %land.lhs.true141
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %75 = load volatile i32, ptr @jiffies, align 128
  %sub.i595 = sub i32 %74, %75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i595)
  %cmp1.i596 = icmp slt i32 %sub.i595, 0
  br label %ip_set_timeout_expired.exit598

ip_set_timeout_expired.exit598:                   ; preds = %land.rhs.i597, %land.lhs.true141.ip_set_timeout_expired.exit598_crit_edge
  %76 = phi i1 [ false, %land.lhs.true141.ip_set_timeout_expired.exit598_crit_edge ], [ %cmp1.i596, %land.rhs.i597 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %j.0676)
  %cmp148 = icmp eq i32 %j.0676, -1
  %or.cond562 = select i1 %76, i1 %cmp148, i1 false
  %spec.select563 = select i1 %or.cond562, i1 true, i1 %reuse.0.off0675
  %spec.select564 = select i1 %or.cond562, i32 %i.0677, i32 %j.0676
  br label %for.inc152

for.inc152:                                       ; preds = %ip_set_timeout_expired.exit598, %if.end136.for.inc152_crit_edge, %if.then113, %if.then110.for.inc152_crit_edge
  %deleted.1.off0 = phi i1 [ %deleted.0.off0674, %if.end136.for.inc152_crit_edge ], [ true, %if.then113 ], [ %deleted.0.off0674, %if.then110.for.inc152_crit_edge ], [ %deleted.0.off0674, %ip_set_timeout_expired.exit598 ]
  %reuse.1.off0 = phi i1 [ %reuse.0.off0675, %if.end136.for.inc152_crit_edge ], [ true, %if.then113 ], [ %reuse.0.off0675, %if.then110.for.inc152_crit_edge ], [ %spec.select563, %ip_set_timeout_expired.exit598 ]
  %j.1 = phi i32 [ %j.0676, %if.end136.for.inc152_crit_edge ], [ %i.0677, %if.then113 ], [ %j.0676, %if.then110.for.inc152_crit_edge ], [ %spec.select564, %ip_set_timeout_expired.exit598 ]
  %inc153 = add nuw nsw i32 %i.0677, 1
  %exitcond684.not = icmp eq i32 %inc153, %conv104
  br i1 %exitcond684.not, label %for.end154, label %for.inc152.for.body107_crit_edge

for.inc152.for.body107_crit_edge:                 ; preds = %for.inc152
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body107

for.end154:                                       ; preds = %for.inc152
  %brmerge = select i1 %reuse.1.off0, i1 true, i1 %forceadd.1.off0
  br i1 %brmerge, label %if.then160, label %for.end154.if.end176_crit_edge

for.end154.if.end176_crit_edge:                   ; preds = %for.end154
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end176

for.end154.thread:                                ; preds = %for.cond103.preheader
  br i1 %forceadd.1.off0, label %if.then160.thread, label %for.end154.thread.if.end176_crit_edge

for.end154.thread.if.end176_crit_edge:            ; preds = %for.end154.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end176

if.then160.thread:                                ; preds = %for.end154.thread
  call void @__sanitizer_cov_trace_pc() #14
  %value165695 = getelementptr inbounds %struct.hbucket, ptr %37, i32 0, i32 5
  br label %if.then171

if.then160:                                       ; preds = %for.end154
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %j.1)
  %cmp161 = icmp eq i32 %j.1, -1
  %spec.store.select = select i1 %cmp161, i32 0, i32 %j.1
  %value165 = getelementptr inbounds %struct.hbucket, ptr %37, i32 0, i32 5
  %dsize167 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %77 = ptrtoint ptr %dsize167 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %dsize167, align 4
  %mul168 = mul i32 %78, %spec.store.select
  %add.ptr169 = getelementptr i8, ptr %value165, i32 %mul168
  br i1 %deleted.1.off0, label %if.then160.copy_data_crit_edge, label %if.then160.if.then171_crit_edge

if.then160.if.then171_crit_edge:                  ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then171

if.then160.copy_data_crit_edge:                   ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_data

if.then171:                                       ; preds = %if.then160.if.then171_crit_edge, %if.then160.thread
  %add.ptr169700 = phi ptr [ %value165695, %if.then160.thread ], [ %add.ptr169, %if.then160.if.then171_crit_edge ]
  %spec.store.select699 = phi i32 [ 0, %if.then160.thread ], [ %spec.store.select, %if.then160.if.then171_crit_edge ]
  %extensions.i = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 8
  %79 = ptrtoint ptr %extensions.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %extensions.i, align 2
  %81 = and i8 %80, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool.not.i599 = icmp eq i8 %81, 0
  br i1 %tobool.not.i599, label %if.then171.ip_set_ext_destroy.exit_crit_edge, label %if.then.i601

if.then171.ip_set_ext_destroy.exit_crit_edge:     ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_set_ext_destroy.exit

if.then.i601:                                     ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i600 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 3
  %82 = ptrtoint ptr %arrayidx.i600 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx.i600, align 4
  %add.ptr.i = getelementptr i8, ptr %add.ptr169700, i32 %83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.ip_set_ext_type], ptr @ip_set_extensions, i32 0, i32 3) to i32))
  %84 = load ptr, ptr getelementptr inbounds ([0 x %struct.ip_set_ext_type], ptr @ip_set_extensions, i32 0, i32 3), align 4
  tail call void %84(ptr noundef %set, ptr noundef %add.ptr.i) #12
  br label %ip_set_ext_destroy.exit

ip_set_ext_destroy.exit:                          ; preds = %if.then.i601, %if.then171.ip_set_ext_destroy.exit_crit_edge
  %85 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %hregion, align 4
  %elements174 = getelementptr %struct.ip_set_region, ptr %86, i32 %rem, i32 2
  %87 = ptrtoint ptr %elements174 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %elements174, align 4
  %dec = add i32 %88, -1
  store i32 %dec, ptr %elements174, align 4
  br label %copy_data

if.end176:                                        ; preds = %for.end154.thread.if.end176_crit_edge, %for.end154.if.end176_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %elements.1, i32 %maxelem.0)
  %cmp177.not = icmp ult i32 %elements.1, %maxelem.0
  br i1 %cmp177.not, label %if.end180, label %if.end176.set_full_crit_edge

if.end176.set_full_crit_edge:                     ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #14
  br label %set_full

if.end180:                                        ; preds = %if.end176
  %size183 = getelementptr inbounds %struct.hbucket, ptr %37, i32 0, i32 2
  %89 = ptrtoint ptr %size183 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %size183, align 8
  %conv184 = zext i8 %90 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %39, i8 %90)
  %cmp185.not = icmp ult i8 %39, %90
  br i1 %cmp185.not, label %if.end180.copy_elem_crit_edge, label %if.then187

if.end180.copy_elem_crit_edge:                    ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_elem

if.then187:                                       ; preds = %if.end180
  %bucketsize = getelementptr inbounds %struct.hash_ipport4, ptr %1, i32 0, i32 4
  %91 = ptrtoint ptr %bucketsize to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %bucketsize, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %90, i8 %92)
  %cmp191.not = icmp ult i8 %90, %92
  br i1 %cmp191.not, label %if.end194, label %if.then193

if.then193:                                       ; preds = %if.then187
  call void @__sanitizer_cov_trace_pc() #14
  %next = getelementptr inbounds %struct.hash_ipport4, ptr %1, i32 0, i32 6
  %93 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %value, align 4
  %95 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %next, align 4
  %96 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %arrayidx32.i, align 4
  %port2.i = getelementptr inbounds %struct.hash_ipport4, ptr %1, i32 0, i32 6, i32 1
  %98 = ptrtoint ptr %port2.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %97, ptr %port2.i, align 4
  br label %resize

if.end194:                                        ; preds = %if.then187
  %dsize198 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %99 = ptrtoint ptr %dsize198 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %dsize198, align 4
  %add197 = add nuw nsw i32 %conv184, 2
  %mul199 = mul i32 %100, %add197
  %add200 = add i32 %mul199, 24
  %call9.i.i631 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add200, i32 noundef 2848) #16
  %tobool202.not = icmp eq ptr %call9.i.i631, null
  br i1 %tobool202.not, label %if.end194.unlock_crit_edge, label %if.end204

if.end194.unlock_crit_edge:                       ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.end204:                                        ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #14
  %101 = ptrtoint ptr %size183 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %size183, align 8
  %conv206 = zext i8 %102 to i32
  %103 = ptrtoint ptr %dsize198 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %dsize198, align 4
  %mul208 = mul i32 %104, %conv206
  %add209 = add i32 %mul208, 24
  %105 = call ptr @memcpy(ptr %call9.i.i631, ptr %37, i32 %add209)
  %106 = load i8, ptr %size183, align 8
  %add212 = add i8 %106, 2
  br label %copy_elem.sink.split

copy_elem.sink.split:                             ; preds = %if.end204, %if.end90.copy_elem.sink.split_crit_edge
  %retval.1.i.i660.sink = phi ptr [ %call9.i.i631, %if.end204 ], [ %call9.i.i, %if.end90.copy_elem.sink.split_crit_edge ]
  %.sink = phi i8 [ %add212, %if.end204 ], [ 2, %if.end90.copy_elem.sink.split_crit_edge ]
  %dsize.sink = phi ptr [ %dsize198, %if.end204 ], [ %dsize, %if.end90.copy_elem.sink.split_crit_edge ]
  %old.0.ph = phi ptr [ %37, %if.end204 ], [ null, %if.end90.copy_elem.sink.split_crit_edge ]
  %size = getelementptr inbounds %struct.hbucket, ptr %retval.1.i.i660.sink, i32 0, i32 2
  %107 = ptrtoint ptr %size to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %.sink, ptr %size, align 16
  %108 = ptrtoint ptr %dsize.sink to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %dsize.sink, align 4
  %mul97 = shl i32 %109, 1
  %add98 = add i32 %mul97, 24
  %110 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %hregion, align 4
  %ext_size = getelementptr %struct.ip_set_region, ptr %111, i32 %rem, i32 1
  %112 = ptrtoint ptr %ext_size to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %ext_size, align 4
  %add221 = add i32 %add98, %113
  store i32 %add221, ptr %ext_size, align 4
  br label %copy_elem

copy_elem:                                        ; preds = %copy_elem.sink.split, %if.end180.copy_elem_crit_edge
  %old.0 = phi ptr [ inttoptr (i32 -2 to ptr), %if.end180.copy_elem_crit_edge ], [ %old.0.ph, %copy_elem.sink.split ]
  %n.0 = phi ptr [ %37, %if.end180.copy_elem_crit_edge ], [ %retval.1.i.i660.sink, %copy_elem.sink.split ]
  %pos223 = getelementptr inbounds %struct.hbucket, ptr %n.0, i32 0, i32 3
  %114 = ptrtoint ptr %pos223 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %pos223, align 1
  %inc224 = add i8 %115, 1
  store i8 %inc224, ptr %pos223, align 1
  %conv225 = zext i8 %115 to i32
  %value226 = getelementptr inbounds %struct.hbucket, ptr %n.0, i32 0, i32 5
  %dsize228 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %116 = ptrtoint ptr %dsize228 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %dsize228, align 4
  %mul229 = mul i32 %117, %conv225
  %add.ptr230 = getelementptr i8, ptr %value226, i32 %mul229
  br label %copy_data

copy_data:                                        ; preds = %copy_elem, %ip_set_ext_destroy.exit, %if.then160.copy_data_crit_edge
  %j.2 = phi i32 [ %spec.store.select, %if.then160.copy_data_crit_edge ], [ %spec.store.select699, %ip_set_ext_destroy.exit ], [ %conv225, %copy_elem ]
  %old.1 = phi ptr [ inttoptr (i32 -2 to ptr), %if.then160.copy_data_crit_edge ], [ inttoptr (i32 -2 to ptr), %ip_set_ext_destroy.exit ], [ %old.0, %copy_elem ]
  %n.1 = phi ptr [ %37, %if.then160.copy_data_crit_edge ], [ %37, %ip_set_ext_destroy.exit ], [ %n.0, %copy_elem ]
  %data1.0 = phi ptr [ %add.ptr169, %if.then160.copy_data_crit_edge ], [ %add.ptr169700, %ip_set_ext_destroy.exit ], [ %add.ptr230, %copy_elem ]
  %118 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %hregion, align 4
  %elements233 = getelementptr %struct.ip_set_region, ptr %119, i32 %rem, i32 2
  %120 = ptrtoint ptr %elements233 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %elements233, align 4
  %inc234 = add i32 %121, 1
  store i32 %inc234, ptr %elements233, align 4
  %122 = ptrtoint ptr %value to i32
  call void @__asan_loadN_noabort(i32 %122, i32 8)
  %123 = load i64, ptr %value, align 4
  %124 = ptrtoint ptr %data1.0 to i32
  call void @__asan_storeN_noabort(i32 %124, i32 8)
  store i64 %123, ptr %data1.0, align 4
  br label %overwrite_extensions

overwrite_extensions:                             ; preds = %copy_data, %ip_set_timeout_expired.exit.overwrite_extensions_crit_edge, %if.then121.overwrite_extensions_crit_edge
  %j.3 = phi i32 [ %j.2, %copy_data ], [ %i.0677, %ip_set_timeout_expired.exit.overwrite_extensions_crit_edge ], [ %i.0677, %if.then121.overwrite_extensions_crit_edge ]
  %old.2 = phi ptr [ %old.1, %copy_data ], [ inttoptr (i32 -2 to ptr), %ip_set_timeout_expired.exit.overwrite_extensions_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.then121.overwrite_extensions_crit_edge ]
  %n.2 = phi ptr [ %n.1, %copy_data ], [ %37, %ip_set_timeout_expired.exit.overwrite_extensions_crit_edge ], [ %37, %if.then121.overwrite_extensions_crit_edge ]
  %data1.1 = phi ptr [ %data1.0, %copy_data ], [ %add.ptr, %ip_set_timeout_expired.exit.overwrite_extensions_crit_edge ], [ %add.ptr, %if.then121.overwrite_extensions_crit_edge ]
  %extensions235 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 8
  %125 = ptrtoint ptr %extensions235 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %extensions235, align 2
  %127 = and i8 %126, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool238.not = icmp eq i8 %127, 0
  br i1 %tobool238.not, label %overwrite_extensions.if.end243_crit_edge, label %if.then239

overwrite_extensions.if.end243_crit_edge:         ; preds = %overwrite_extensions
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end243

if.then239:                                       ; preds = %overwrite_extensions
  %offset240 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 14
  %128 = ptrtoint ptr %offset240 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %offset240, align 4
  %add.ptr242 = getelementptr i8, ptr %data1.1, i32 %129
  %bytes.i = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 2
  %130 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %bytes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %131)
  %cmp.not.i635 = icmp eq i64 %131, -1
  br i1 %cmp.not.i635, label %if.then239.if.end.i_crit_edge, label %if.then.i636

if.then239.if.end.i_crit_edge:                    ; preds = %if.then239
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i636:                                     ; preds = %if.then239
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr242, i32 noundef 8) #12
  tail call void @generic_atomic64_set(ptr noundef %add.ptr242, i64 noundef %131) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i636, %if.then239.if.end.i_crit_edge
  %packets.i = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 1
  %132 = ptrtoint ptr %packets.i to i32
  call void @__asan_load8_noabort(i32 %132)
  %133 = load i64, ptr %packets.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %133)
  %cmp3.not.i = icmp eq i64 %133, -1
  br i1 %cmp3.not.i, label %if.end.i.if.end243_crit_edge, label %if.then4.i

if.end.i.if.end243_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end243

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %packets5.i = getelementptr inbounds %struct.ip_set_counter, ptr %add.ptr242, i32 0, i32 1
  %call.i.i13.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %packets5.i, i32 noundef 8) #12
  tail call void @generic_atomic64_set(ptr noundef %packets5.i, i64 noundef %133) #12
  br label %if.end243

if.end243:                                        ; preds = %if.then4.i, %if.end.i.if.end243_crit_edge, %overwrite_extensions.if.end243_crit_edge
  %134 = ptrtoint ptr %extensions235 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %extensions235, align 2
  %136 = and i8 %135, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %tobool247.not = icmp eq i8 %136, 0
  br i1 %tobool247.not, label %if.end243.if.end252_crit_edge, label %if.then248

if.end243.if.end252_crit_edge:                    ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end252

if.then248:                                       ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx250 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 3
  %137 = ptrtoint ptr %arrayidx250 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %arrayidx250, align 4
  %add.ptr251 = getelementptr i8, ptr %data1.1, i32 %138
  tail call void @ip_set_init_comment(ptr noundef %set, ptr noundef %add.ptr251, ptr noundef %ext) #12
  br label %if.end252

if.end252:                                        ; preds = %if.then248, %if.end243.if.end252_crit_edge
  %139 = ptrtoint ptr %extensions235 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %extensions235, align 2
  %141 = and i8 %140, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %tobool256.not = icmp eq i8 %141, 0
  br i1 %tobool256.not, label %if.end252.if.end261_crit_edge, label %if.then257

if.end252.if.end261_crit_edge:                    ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end261

if.then257:                                       ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx259 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 2
  %142 = ptrtoint ptr %arrayidx259 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx259, align 4
  %add.ptr260 = getelementptr i8, ptr %data1.1, i32 %143
  %144 = call ptr @memcpy(ptr %add.ptr260, ptr %ext, i32 16)
  br label %if.end261

if.end261:                                        ; preds = %if.then257, %if.end252.if.end261_crit_edge
  %145 = ptrtoint ptr %extensions235 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %extensions235, align 2
  %147 = and i8 %146, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %147)
  %tobool265.not = icmp eq i8 %147, 0
  br i1 %tobool265.not, label %if.end261.do.end274_crit_edge, label %if.then266

if.end261.do.end274_crit_edge:                    ; preds = %if.end261
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end274

if.then266:                                       ; preds = %if.end261
  %arrayidx268 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 1
  %148 = ptrtoint ptr %arrayidx268 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx268, align 4
  %add.ptr269 = getelementptr i8, ptr %data1.1, i32 %149
  %timeout = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 4
  %150 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %tobool.not.i637 = icmp eq i32 %151, 0
  br i1 %tobool.not.i637, label %if.then266.ip_set_timeout_set.exit_crit_edge, label %if.else.i.i

if.then266.ip_set_timeout_set.exit_crit_edge:     ; preds = %if.then266
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_set_timeout_set.exit

if.else.i.i:                                      ; preds = %if.then266
  call void @__sanitizer_cov_trace_pc() #14
  %mul.i = mul i32 %151, 1000
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %mul.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %152 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %152, %call2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp.i642 = icmp eq i32 %add.i, 0
  %spec.select.i = select i1 %cmp.i642, i32 -1, i32 %add.i
  br label %ip_set_timeout_set.exit

ip_set_timeout_set.exit:                          ; preds = %if.else.i.i, %if.then266.ip_set_timeout_set.exit_crit_edge
  %storemerge.i = phi i32 [ %spec.select.i, %if.else.i.i ], [ 0, %if.then266.ip_set_timeout_set.exit_crit_edge ]
  %153 = ptrtoint ptr %add.ptr269 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %storemerge.i, ptr %add.ptr269, align 4
  br label %do.end274

do.end274:                                        ; preds = %ip_set_timeout_set.exit, %if.end261.do.end274_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !216
  %used277 = getelementptr inbounds %struct.hbucket, ptr %n.2, i32 0, i32 1
  tail call void @_set_bit(i32 noundef %j.3, ptr noundef %used277) #12
  %cmp280.not = icmp eq ptr %old.2, inttoptr (i32 -2 to ptr)
  br i1 %cmp280.not, label %do.end274.resize_crit_edge, label %do.body283

do.end274.resize_crit_edge:                       ; preds = %do.end274
  call void @__sanitizer_cov_trace_pc() #14
  br label %resize

do.body283:                                       ; preds = %do.end274
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !217
  %154 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store4_noabort(i32 %154)
  store volatile ptr %n.2, ptr %arrayidx69, align 4
  %tobool325.not = icmp eq ptr %old.2, null
  br i1 %tobool325.not, label %do.body283.resize_crit_edge, label %do.end332

do.body283.resize_crit_edge:                      ; preds = %do.body283
  call void @__sanitizer_cov_trace_pc() #14
  br label %resize

do.end332:                                        ; preds = %do.body283
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kvfree_call_rcu(ptr noundef nonnull %old.2, ptr noundef null) #12
  br label %resize

resize:                                           ; preds = %do.end332, %do.body283.resize_crit_edge, %do.end274.resize_crit_edge, %if.then193
  %ret.0 = phi i32 [ -11, %if.then193 ], [ 0, %do.body283.resize_crit_edge ], [ 0, %do.end332 ], [ 0, %do.end274.resize_crit_edge ]
  %155 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %hregion, align 4
  %arrayidx339 = getelementptr %struct.ip_set_region, ptr %156, i32 %rem
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx339) #12
  %call.i.i565 = tail call zeroext i1 @__kasan_check_read(ptr noundef %3, i32 noundef 4) #12
  %157 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load volatile i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %tobool342.not = icmp eq i32 %158, 0
  br i1 %tobool342.not, label %resize.out_crit_edge, label %land.lhs.true343

resize.out_crit_edge:                             ; preds = %resize
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

land.lhs.true343:                                 ; preds = %resize
  %target = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 7
  %159 = ptrtoint ptr %target to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %target, align 2, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %tobool344.not = icmp eq i8 %160, 0
  br i1 %tobool344.not, label %land.lhs.true343.out_crit_edge, label %if.then346

land.lhs.true343.out_crit_edge:                   ; preds = %land.lhs.true343
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then346:                                       ; preds = %land.lhs.true343
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %161 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i649 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %161, i32 noundef 2848, i32 noundef 128) #15
  %tobool348.not = icmp eq ptr %call7.i.i649, null
  br i1 %tobool348.not, label %if.then346.out_crit_edge, label %if.end350

if.then346.out_crit_edge:                         ; preds = %if.then346
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end350:                                        ; preds = %if.then346
  %ad = getelementptr inbounds %struct.hash_ipport4_resize_ad, ptr %call7.i.i649, i32 0, i32 1
  %162 = ptrtoint ptr %ad to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 0, ptr %ad, align 8
  %d351 = getelementptr inbounds %struct.hash_ipport4_resize_ad, ptr %call7.i.i649, i32 0, i32 2
  %163 = ptrtoint ptr %value to i32
  call void @__asan_loadN_noabort(i32 %163, i32 8)
  %164 = load i64, ptr %value, align 1
  %165 = ptrtoint ptr %d351 to i32
  call void @__asan_storeN_noabort(i32 %165, i32 8)
  store i64 %164, ptr %d351, align 4
  %ext352 = getelementptr inbounds %struct.hash_ipport4_resize_ad, ptr %call7.i.i649, i32 0, i32 3
  %166 = call ptr @memcpy(ptr %ext352, ptr %ext, i32 48)
  %mext353 = getelementptr inbounds %struct.hash_ipport4_resize_ad, ptr %call7.i.i649, i32 0, i32 4
  %167 = call ptr @memcpy(ptr %mext353, ptr %mext, i32 48)
  %flags354 = getelementptr inbounds %struct.hash_ipport4_resize_ad, ptr %call7.i.i649, i32 0, i32 5
  %168 = ptrtoint ptr %flags354 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %flags, ptr %flags354, align 8
  %lock355 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock355) #12
  %ad356 = getelementptr inbounds %struct.hash_ipport4, ptr %1, i32 0, i32 5
  %prev.i = getelementptr inbounds %struct.hash_ipport4, ptr %1, i32 0, i32 5, i32 1
  %169 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %prev.i, align 4
  %call.i.i651 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i649, ptr noundef %170, ptr noundef %ad356) #12
  br i1 %call.i.i651, label %if.end.i.i652, label %if.end350.out.sink.split_crit_edge

if.end350.out.sink.split_crit_edge:               ; preds = %if.end350
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.sink.split

if.end.i.i652:                                    ; preds = %if.end350
  call void @__sanitizer_cov_trace_pc() #14
  %171 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %call7.i.i649, ptr %prev.i, align 4
  %172 = ptrtoint ptr %call7.i.i649 to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %ad356, ptr %call7.i.i649, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i649, i32 0, i32 1
  %173 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %170, ptr %prev3.i.i, align 4
  %174 = ptrtoint ptr %170 to i32
  call void @__asan_store4_noabort(i32 %174)
  store volatile ptr %call7.i.i649, ptr %170, align 4
  br label %out.sink.split

set_full:                                         ; preds = %if.end176.set_full_crit_edge, %if.then84.set_full_crit_edge
  %call359 = tail call i32 @net_ratelimit() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call359)
  %tobool360.not = icmp eq i32 %call359, 0
  br i1 %tobool360.not, label %set_full.unlock_crit_edge, label %do.end364

set_full.unlock_crit_edge:                        ; preds = %set_full
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

do.end364:                                        ; preds = %set_full
  call void @__sanitizer_cov_trace_pc() #14
  %call367 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %set, i32 noundef %maxelem.0) #17
  br label %unlock

unlock:                                           ; preds = %do.end364, %set_full.unlock_crit_edge, %if.end194.unlock_crit_edge, %ip_set_timeout_expired.exit.unlock_crit_edge, %land.lhs.true129.unlock_crit_edge, %lor.lhs.false124.unlock_crit_edge, %if.end90.unlock_crit_edge
  %ret.1 = phi i32 [ -12, %if.end90.unlock_crit_edge ], [ -4103, %ip_set_timeout_expired.exit.unlock_crit_edge ], [ -4103, %lor.lhs.false124.unlock_crit_edge ], [ -12, %if.end194.unlock_crit_edge ], [ -4352, %do.end364 ], [ -4352, %set_full.unlock_crit_edge ], [ -4103, %land.lhs.true129.unlock_crit_edge ]
  %175 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %hregion, align 4
  %arrayidx370 = getelementptr %struct.ip_set_region, ptr %176, i32 %rem
  br label %out.sink.split

out.sink.split:                                   ; preds = %unlock, %if.end.i.i652, %if.end350.out.sink.split_crit_edge
  %lock355.sink = phi ptr [ %arrayidx370, %unlock ], [ %lock355, %if.end350.out.sink.split_crit_edge ], [ %lock355, %if.end.i.i652 ]
  %ret.2.ph = phi i32 [ %ret.1, %unlock ], [ %ret.0, %if.end350.out.sink.split_crit_edge ], [ %ret.0, %if.end.i.i652 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock355.sink) #12
  br label %out

out:                                              ; preds = %out.sink.split, %if.then346.out_crit_edge, %land.lhs.true343.out_crit_edge, %resize.out_crit_edge
  %ret.2 = phi i32 [ %ret.0, %land.lhs.true343.out_crit_edge ], [ %ret.0, %resize.out_crit_edge ], [ %ret.0, %if.then346.out_crit_edge ], [ %ret.2.ph, %out.sink.split ]
  %call.i.i566 = tail call zeroext i1 @__kasan_check_write(ptr noundef %uref, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !219
  tail call void @llvm.prefetch.p0(ptr %uref, i32 1, i32 3, i32 1) #12
  %177 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uref, ptr %uref, i32 1, ptr elementtype(i32) %uref) #12, !srcloc !220
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %177, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !221
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true375, label %out.cleanup392_crit_edge

out.cleanup392_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup392

land.lhs.true375:                                 ; preds = %out
  %call.i.i567 = tail call zeroext i1 @__kasan_check_read(ptr noundef %3, i32 noundef 4) #12
  %178 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load volatile i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %179)
  %tobool378.not = icmp eq i32 %179, 0
  br i1 %tobool378.not, label %land.lhs.true375.cleanup392_crit_edge, label %do.body380

land.lhs.true375.cleanup392_crit_edge:            ; preds = %land.lhs.true375
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup392

do.body380:                                       ; preds = %land.lhs.true375
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_ipport4_add.__UNIQUE_ID_ddebug657, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_ipport4_add, %if.then387)) #12
          to label %do.end.i [label %if.then387], !srcloc !210

if.then387:                                       ; preds = %do.body380
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_ipport4_add.__UNIQUE_ID_ddebug657, ptr noundef nonnull @.str.12, ptr noundef %3) #12
  br label %do.end.i

do.end.i:                                         ; preds = %for.inc.i.do.end.i_crit_edge, %if.then387, %do.body380
  %i.017.i = phi i32 [ %inc.i, %for.inc.i.do.end.i_crit_edge ], [ 0, %do.body380 ], [ 0, %if.then387 ]
  %arrayidx.i654 = getelementptr %struct.htable, ptr %3, i32 0, i32 5, i32 %i.017.i
  %180 = ptrtoint ptr %arrayidx.i654 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %arrayidx.i654, align 4
  %tobool.not.i655 = icmp eq ptr %181, null
  br i1 %tobool.not.i655, label %do.end.i.for.inc.i_crit_edge, label %if.end.i656

do.end.i.for.inc.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end.i656:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %181) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i656, %do.end.i.for.inc.i_crit_edge
  %inc.i = add i32 %i.017.i, 1
  %182 = ptrtoint ptr %htable_bits to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %htable_bits, align 4
  %conv.i = zext i8 %183 to i32
  %i.0.highbits.i = lshr i32 %inc.i, %conv.i
  %cmp.i657 = icmp eq i32 %i.0.highbits.i, 0
  br i1 %cmp.i657, label %for.inc.i.do.end.i_crit_edge, label %hash_ipport4_ahash_destroy.exit

for.inc.i.do.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

hash_ipport4_ahash_destroy.exit:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  %184 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %hregion, align 4
  tail call void @ip_set_free(ptr noundef %185) #12
  tail call void @ip_set_free(ptr noundef %3) #12
  br label %cleanup392

cleanup392:                                       ; preds = %hash_ipport4_ahash_destroy.exit, %land.lhs.true375.cleanup392_crit_edge, %out.cleanup392_crit_edge
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hash_ipport4_del(ptr noundef %set, ptr nocapture noundef readonly %value, ptr nocapture noundef readonly %ext, ptr nocapture noundef readnone %mext, i32 noundef %flags) #2 align 64 {
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
  %.b426 = load i1, ptr @hash_ipport4_del.__warned, align 1
  br i1 %.b426, label %land.lhs.true6.do.end9_crit_edge, label %if.then

land.lhs.true6.do.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hash_ipport4_del.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1048, ptr noundef nonnull @.str.8) #12
  br label %do.end9

do.end9:                                          ; preds = %if.then, %land.lhs.true6.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %rcu_read_lock_bh.exit.do.end9_crit_edge
  %initval = getelementptr inbounds %struct.hash_ipport4, ptr %1, i32 0, i32 3
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
  %notmask464 = shl nsw i32 -1, %sub21
  %shl22.op = xor i32 %notmask464, -1
  %14 = select i1 %cmp, i32 0, i32 %shl22.op
  %rem = and i32 %and, %14
  %uref = getelementptr inbounds %struct.htable, ptr %5, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %uref, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %uref, i32 1, i32 3, i32 1) #12
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uref, ptr %uref, i32 1, ptr elementtype(i32) %uref) #12, !srcloc !215
  %call.i440 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i440, label %do.end9.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true.i443

do.end9.rcu_read_unlock_bh.exit_crit_edge:        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

land.lhs.true.i443:                               ; preds = %do.end9
  %call1.i441 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i441)
  %tobool.not.i442 = icmp eq i32 %call1.i441, 0
  br i1 %tobool.not.i442, label %land.lhs.true.i443.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true2.i445

land.lhs.true.i443.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true.i443
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

land.lhs.true2.i445:                              ; preds = %land.lhs.true.i443
  %.b4.i444 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i444, label %land.lhs.true2.i445.rcu_read_unlock_bh.exit_crit_edge, label %if.then.i446

land.lhs.true2.i445.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i445
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

if.then.i446:                                     ; preds = %land.lhs.true2.i445
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 761, ptr noundef nonnull @.str.15) #12
  br label %rcu_read_unlock_bh.exit

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i446, %land.lhs.true2.i445.rcu_read_unlock_bh.exit_crit_edge, %land.lhs.true.i443.rcu_read_unlock_bh.exit_crit_edge, %do.end9.rcu_read_unlock_bh.exit_crit_edge
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
  %.b424425 = load i1, ptr @hash_ipport4_del.__warned.18, align 1
  br i1 %.b424425, label %land.lhs.true34.do.end39_crit_edge, label %if.then36

land.lhs.true34.do.end39_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end39

if.then36:                                        ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hash_ipport4_del.__warned.18, align 1
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
  %cmp45468.not = icmp eq i8 %21, 0
  br i1 %cmp45468.not, label %for.cond.preheader.out_crit_edge, label %for.body.lr.ph

for.cond.preheader.out_crit_edge:                 ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %used = getelementptr inbounds %struct.hbucket, ptr %19, i32 0, i32 1
  %value51 = getelementptr inbounds %struct.hbucket, ptr %19, i32 0, i32 5
  %proto9.i = getelementptr inbounds %struct.hash_ipport4_elem, ptr %value, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc285.for.body_crit_edge, %for.body.lr.ph
  %i.0470 = phi i32 [ 0, %for.body.lr.ph ], [ %inc286, %for.inc285.for.body_crit_edge ]
  %k.0469 = phi i32 [ 0, %for.body.lr.ph ], [ %k.5, %for.inc285.for.body_crit_edge ]
  %div3.i = lshr i32 %i.0470, 5
  %arrayidx.i = getelementptr i32, ptr %used, i32 %div3.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.0470, 31
  %24 = shl nuw i32 1, %and.i
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool48.not = icmp eq i32 %25, 0
  br i1 %tobool48.not, label %if.then49, label %if.end50

if.then49:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %inc = add i32 %k.0469, 1
  br label %for.inc285

if.end50:                                         ; preds = %for.body
  %mul = mul i32 %i.0470, %3
  %add.ptr = getelementptr i8, ptr %value51, i32 %mul
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr, align 4
  %28 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp.i = icmp eq i32 %27, %29
  br i1 %cmp.i, label %land.lhs.true.i447, label %if.end50.for.inc285_crit_edge

if.end50.for.inc285_crit_edge:                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc285

land.lhs.true.i447:                               ; preds = %if.end50
  %port.i = getelementptr inbounds %struct.hash_ipport4_elem, ptr %add.ptr, i32 0, i32 1
  %30 = ptrtoint ptr %port.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %port.i, align 4
  %32 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx32.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %31, i16 %33)
  %cmp6.i = icmp eq i16 %31, %33
  br i1 %cmp6.i, label %hash_ipport4_data_equal.exit, label %land.lhs.true.i447.for.inc285_crit_edge

land.lhs.true.i447.for.inc285_crit_edge:          ; preds = %land.lhs.true.i447
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc285

hash_ipport4_data_equal.exit:                     ; preds = %land.lhs.true.i447
  %proto.i = getelementptr inbounds %struct.hash_ipport4_elem, ptr %add.ptr, i32 0, i32 2
  %34 = ptrtoint ptr %proto.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %proto.i, align 2
  %36 = ptrtoint ptr %proto9.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %proto9.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %35, i8 %37)
  %cmp11.i = icmp eq i8 %35, %37
  br i1 %cmp11.i, label %if.end55, label %hash_ipport4_data_equal.exit.for.inc285_crit_edge

hash_ipport4_data_equal.exit.for.inc285_crit_edge: ; preds = %hash_ipport4_data_equal.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc285

if.end55:                                         ; preds = %hash_ipport4_data_equal.exit
  %extensions = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 8
  %38 = ptrtoint ptr %extensions to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %extensions, align 2
  %40 = and i8 %39, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool58.not = icmp eq i8 %40, 0
  br i1 %tobool58.not, label %if.end55.if.end65_crit_edge, label %land.lhs.true59

if.end55.if.end65_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

land.lhs.true59:                                  ; preds = %if.end55
  %arrayidx60 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 1
  %41 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx60, align 4
  %add.ptr61 = getelementptr i8, ptr %add.ptr, i32 %42
  %43 = ptrtoint ptr %add.ptr61 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp.not.i = icmp eq i32 %44, 0
  br i1 %cmp.not.i, label %land.lhs.true59.if.end65_crit_edge, label %ip_set_timeout_expired.exit

land.lhs.true59.if.end65_crit_edge:               ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

ip_set_timeout_expired.exit:                      ; preds = %land.lhs.true59
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %45 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %44, %45
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
  tail call void @_clear_bit(i32 noundef %i.0470, ptr noundef %used) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !222
  %add = add nuw nsw i32 %i.0470, 1
  %46 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %pos, align 1
  %conv75 = zext i8 %47 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv75)
  %cmp76 = icmp eq i32 %add, %conv75
  br i1 %cmp76, label %if.then78, label %if.end65.if.end80_crit_edge

if.end65.if.end80_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end80

if.then78:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  %dec = add i8 %47, -1
  %48 = ptrtoint ptr %pos to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %dec, ptr %pos, align 1
  br label %if.end80

if.end80:                                         ; preds = %if.then78, %if.end65.if.end80_crit_edge
  %49 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hregion, align 4
  %elements = getelementptr %struct.ip_set_region, ptr %50, i32 %rem, i32 2
  %51 = ptrtoint ptr %elements to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %elements, align 4
  %dec83 = add i32 %52, -1
  store i32 %dec83, ptr %elements, align 4
  %53 = ptrtoint ptr %extensions to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %extensions, align 2
  %55 = and i8 %54, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.not.i449 = icmp eq i8 %55, 0
  br i1 %tobool.not.i449, label %if.end80.ip_set_ext_destroy.exit_crit_edge, label %if.then.i451

if.end80.ip_set_ext_destroy.exit_crit_edge:       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_set_ext_destroy.exit

if.then.i451:                                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i450 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 3
  %56 = ptrtoint ptr %arrayidx.i450 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.i450, align 4
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 %57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.ip_set_ext_type], ptr @ip_set_extensions, i32 0, i32 3) to i32))
  %58 = load ptr, ptr getelementptr inbounds ([0 x %struct.ip_set_ext_type], ptr @ip_set_extensions, i32 0, i32 3), align 4
  tail call void %58(ptr noundef %set, ptr noundef %add.ptr.i) #12
  br label %ip_set_ext_destroy.exit

ip_set_ext_destroy.exit:                          ; preds = %if.then.i451, %if.end80.ip_set_ext_destroy.exit_crit_edge
  %call.i.i427 = tail call zeroext i1 @__kasan_check_read(ptr noundef %5, i32 noundef 4) #12
  %59 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool85.not = icmp eq i32 %60, 0
  br i1 %tobool85.not, label %ip_set_ext_destroy.exit.if.end96_crit_edge, label %land.lhs.true86

ip_set_ext_destroy.exit.if.end96_crit_edge:       ; preds = %ip_set_ext_destroy.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end96

land.lhs.true86:                                  ; preds = %ip_set_ext_destroy.exit
  %target = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 7
  %61 = ptrtoint ptr %target to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %target, align 2, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool87.not = icmp eq i8 %62, 0
  br i1 %tobool87.not, label %land.lhs.true86.if.end96_crit_edge, label %if.then89

land.lhs.true86.if.end96_crit_edge:               ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end96

if.then89:                                        ; preds = %land.lhs.true86
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %63 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %63, i32 noundef 2848, i32 noundef 128) #15
  %tobool91.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool91.not, label %if.then89.if.end96_crit_edge, label %if.then92

if.then89.if.end96_crit_edge:                     ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end96

if.then92:                                        ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #14
  %ad = getelementptr inbounds %struct.hash_ipport4_resize_ad, ptr %call7.i.i, i32 0, i32 1
  %64 = ptrtoint ptr %ad to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %ad, align 8
  %d93 = getelementptr inbounds %struct.hash_ipport4_resize_ad, ptr %call7.i.i, i32 0, i32 2
  %65 = ptrtoint ptr %value to i32
  call void @__asan_loadN_noabort(i32 %65, i32 8)
  %66 = load i64, ptr %value, align 1
  %67 = ptrtoint ptr %d93 to i32
  call void @__asan_storeN_noabort(i32 %67, i32 8)
  store i64 %66, ptr %d93, align 4
  %flags94 = getelementptr inbounds %struct.hash_ipport4_resize_ad, ptr %call7.i.i, i32 0, i32 5
  %68 = ptrtoint ptr %flags94 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %flags, ptr %flags94, align 8
  br label %if.end96

if.end96:                                         ; preds = %if.then92, %if.then89.if.end96_crit_edge, %land.lhs.true86.if.end96_crit_edge, %ip_set_ext_destroy.exit.if.end96_crit_edge
  %x.0 = phi ptr [ %call7.i.i, %if.then92 ], [ null, %if.then89.if.end96_crit_edge ], [ null, %land.lhs.true86.if.end96_crit_edge ], [ null, %ip_set_ext_destroy.exit.if.end96_crit_edge ]
  %69 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %pos, align 1
  %conv99 = zext i8 %70 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0470, i32 %conv99)
  %cmp100472 = icmp ult i32 %i.0470, %conv99
  br i1 %cmp100472, label %if.end96.for.body102_crit_edge, label %if.end96.for.end_crit_edge

if.end96.for.end_crit_edge:                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end96.for.body102_crit_edge:                   ; preds = %if.end96
  br label %for.body102

for.body102:                                      ; preds = %for.body102.for.body102_crit_edge, %if.end96.for.body102_crit_edge
  %i.1474 = phi i32 [ %inc110, %for.body102.for.body102_crit_edge ], [ %i.0470, %if.end96.for.body102_crit_edge ]
  %k.1473 = phi i32 [ %spec.select, %for.body102.for.body102_crit_edge ], [ %k.0469, %if.end96.for.body102_crit_edge ]
  %div3.i428 = lshr i32 %i.1474, 5
  %arrayidx.i429 = getelementptr i32, ptr %used, i32 %div3.i428
  %71 = ptrtoint ptr %arrayidx.i429 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %arrayidx.i429, align 4
  %and.i430 = and i32 %i.1474, 31
  %73 = xor i32 %72, -1
  %74 = lshr i32 %73, %and.i430
  %75 = and i32 %74, 1
  %spec.select = add i32 %75, %k.1473
  %inc110 = add nuw nsw i32 %i.1474, 1
  %exitcond484.not = icmp eq i32 %inc110, %conv99
  br i1 %exitcond484.not, label %for.body102.for.end_crit_edge, label %for.body102.for.body102_crit_edge

for.body102.for.body102_crit_edge:                ; preds = %for.body102
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body102

for.body102.for.end_crit_edge:                    ; preds = %for.body102
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body102.for.end_crit_edge, %if.end96.for.end_crit_edge
  %k.1.lcssa = phi i32 [ %k.0469, %if.end96.for.end_crit_edge ], [ %spec.select, %for.body102.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %cmp113 = icmp eq i8 %70, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %k.1.lcssa)
  %cmp116 = icmp eq i32 %k.1.lcssa, 0
  %or.cond = select i1 %cmp113, i1 %cmp116, i1 false
  br i1 %or.cond, label %if.then118, label %if.else175

if.then118:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %size = getelementptr inbounds %struct.hbucket, ptr %19, i32 0, i32 2
  %76 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %size, align 8
  %conv119 = zext i8 %77 to i32
  %mul120 = mul i32 %3, %conv119
  %78 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %hregion, align 4
  %ext_size = getelementptr %struct.ip_set_region, ptr %79, i32 %rem, i32 1
  %80 = ptrtoint ptr %ext_size to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %ext_size, align 4
  %add121.neg = add i32 %81, -24
  %sub124 = sub i32 %add121.neg, %mul120
  store i32 %sub124, ptr %ext_size, align 4
  br label %out.sink.split

if.else175:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %k.1.lcssa)
  %cmp176 = icmp sgt i32 %k.1.lcssa, 1
  br i1 %cmp176, label %if.then178, label %if.else175.out_crit_edge

if.else175.out_crit_edge:                         ; preds = %if.else175
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then178:                                       ; preds = %if.else175
  %size180 = getelementptr inbounds %struct.hbucket, ptr %19, i32 0, i32 2
  %82 = ptrtoint ptr %size180 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %size180, align 8
  %conv181 = zext i8 %83 to i32
  %sub182 = add nsw i32 %conv181, -2
  %mul183 = mul i32 %sub182, %3
  %add184 = add i32 %mul183, 24
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add184, i32 noundef 2848) #16
  %tobool186.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool186.not, label %if.then178.out_crit_edge, label %if.end188

if.then178.out_crit_edge:                         ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end188:                                        ; preds = %if.then178
  %84 = ptrtoint ptr %size180 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %size180, align 8
  %sub191 = add i8 %85, -2
  %size193 = getelementptr inbounds %struct.hbucket, ptr %call9.i.i, i32 0, i32 2
  %86 = ptrtoint ptr %size193 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %sub191, ptr %size193, align 16
  %87 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %pos, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %cmp197477.not = icmp eq i8 %88, 0
  br i1 %cmp197477.not, label %if.end188.for.end219_crit_edge, label %for.body199.lr.ph

if.end188.for.end219_crit_edge:                   ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end219

for.body199.lr.ph:                                ; preds = %if.end188
  %value210 = getelementptr inbounds %struct.hbucket, ptr %call9.i.i, i32 0, i32 5
  %used214 = getelementptr inbounds %struct.hbucket, ptr %call9.i.i, i32 0, i32 1
  br label %for.body199

for.body199:                                      ; preds = %for.inc217.for.body199_crit_edge, %for.body199.lr.ph
  %j.0479 = phi i32 [ 0, %for.body199.lr.ph ], [ %inc218, %for.inc217.for.body199_crit_edge ]
  %k.3478 = phi i32 [ 0, %for.body199.lr.ph ], [ %k.4, %for.inc217.for.body199_crit_edge ]
  %div3.i433 = lshr i32 %j.0479, 5
  %arrayidx.i434 = getelementptr i32, ptr %used, i32 %div3.i433
  %89 = ptrtoint ptr %arrayidx.i434 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %arrayidx.i434, align 4
  %and.i435 = and i32 %j.0479, 31
  %91 = shl nuw i32 1, %and.i435
  %92 = and i32 %90, %91
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool203.not = icmp eq i32 %92, 0
  br i1 %tobool203.not, label %for.body199.for.inc217_crit_edge, label %if.end205

for.body199.for.inc217_crit_edge:                 ; preds = %for.body199
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc217

if.end205:                                        ; preds = %for.body199
  call void @__sanitizer_cov_trace_pc() #14
  %mul208 = mul i32 %j.0479, %3
  %add.ptr209 = getelementptr i8, ptr %value51, i32 %mul208
  %mul212 = mul i32 %k.3478, %3
  %add.ptr213 = getelementptr i8, ptr %value210, i32 %mul212
  %93 = call ptr @memcpy(ptr %add.ptr213, ptr %add.ptr209, i32 %3)
  tail call void @_set_bit(i32 noundef %k.3478, ptr noundef %used214) #12
  %inc216 = add i32 %k.3478, 1
  br label %for.inc217

for.inc217:                                       ; preds = %if.end205, %for.body199.for.inc217_crit_edge
  %k.4 = phi i32 [ %inc216, %if.end205 ], [ %k.3478, %for.body199.for.inc217_crit_edge ]
  %inc218 = add nuw nsw i32 %j.0479, 1
  %94 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %pos, align 1
  %conv196 = zext i8 %95 to i32
  %cmp197 = icmp ult i32 %inc218, %conv196
  br i1 %cmp197, label %for.inc217.for.body199_crit_edge, label %for.inc217.for.end219_crit_edge

for.inc217.for.end219_crit_edge:                  ; preds = %for.inc217
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end219

for.inc217.for.body199_crit_edge:                 ; preds = %for.inc217
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body199

for.end219:                                       ; preds = %for.inc217.for.end219_crit_edge, %if.end188.for.end219_crit_edge
  %k.3.lcssa = phi i32 [ 0, %if.end188.for.end219_crit_edge ], [ %k.4, %for.inc217.for.end219_crit_edge ]
  %conv220 = trunc i32 %k.3.lcssa to i8
  %pos221 = getelementptr inbounds %struct.hbucket, ptr %call9.i.i, i32 0, i32 3
  %96 = ptrtoint ptr %pos221 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %conv220, ptr %pos221, align 1
  %mul222.neg = mul i32 %3, -2
  %add223.neg = add i32 %mul222.neg, -24
  %97 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %hregion, align 4
  %ext_size226 = getelementptr %struct.ip_set_region, ptr %98, i32 %rem, i32 1
  %99 = ptrtoint ptr %ext_size226 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %ext_size226, align 4
  %sub227 = add i32 %add223.neg, %100
  store i32 %sub227, ptr %ext_size226, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !223
  br label %out.sink.split

for.inc285:                                       ; preds = %hash_ipport4_data_equal.exit.for.inc285_crit_edge, %land.lhs.true.i447.for.inc285_crit_edge, %if.end50.for.inc285_crit_edge, %if.then49
  %k.5 = phi i32 [ %k.0469, %hash_ipport4_data_equal.exit.for.inc285_crit_edge ], [ %inc, %if.then49 ], [ %k.0469, %land.lhs.true.i447.for.inc285_crit_edge ], [ %k.0469, %if.end50.for.inc285_crit_edge ]
  %inc286 = add nuw nsw i32 %i.0470, 1
  %exitcond.not = icmp eq i32 %inc286, %conv44
  br i1 %exitcond.not, label %for.inc285.out_crit_edge, label %for.inc285.for.body_crit_edge

for.inc285.for.body_crit_edge:                    ; preds = %for.inc285
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc285.out_crit_edge:                         ; preds = %for.inc285
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

out.sink.split:                                   ; preds = %for.end219, %if.then118
  %retval.1.i.i462.sink = phi ptr [ %call9.i.i, %for.end219 ], [ null, %if.then118 ]
  %101 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %101)
  store volatile ptr %retval.1.i.i462.sink, ptr %arrayidx27, align 4
  tail call void @kvfree_call_rcu(ptr noundef nonnull %19, ptr noundef null) #12
  br label %out

out:                                              ; preds = %out.sink.split, %for.inc285.out_crit_edge, %if.then178.out_crit_edge, %if.else175.out_crit_edge, %ip_set_timeout_expired.exit.out_crit_edge, %for.cond.preheader.out_crit_edge, %do.end39.out_crit_edge
  %ret.0 = phi i32 [ -4103, %ip_set_timeout_expired.exit.out_crit_edge ], [ 0, %if.else175.out_crit_edge ], [ -4103, %do.end39.out_crit_edge ], [ 0, %if.then178.out_crit_edge ], [ -4103, %for.cond.preheader.out_crit_edge ], [ 0, %out.sink.split ], [ -4103, %for.inc285.out_crit_edge ]
  %x.1 = phi ptr [ null, %ip_set_timeout_expired.exit.out_crit_edge ], [ %x.0, %if.else175.out_crit_edge ], [ null, %do.end39.out_crit_edge ], [ %x.0, %if.then178.out_crit_edge ], [ null, %for.cond.preheader.out_crit_edge ], [ %x.0, %out.sink.split ], [ null, %for.inc285.out_crit_edge ]
  %102 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %hregion, align 4
  %arrayidx289 = getelementptr %struct.ip_set_region, ptr %103, i32 %rem
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx289) #12
  %tobool291.not = icmp eq ptr %x.1, null
  br i1 %tobool291.not, label %out.if.end296_crit_edge, label %if.then292

out.if.end296_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end296

if.then292:                                       ; preds = %out
  %lock293 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock293) #12
  %ad294 = getelementptr inbounds %struct.hash_ipport4, ptr %1, i32 0, i32 5
  %104 = ptrtoint ptr %ad294 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %ad294, align 4
  %call.i.i454 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %x.1, ptr noundef %ad294, ptr noundef %105) #12
  br i1 %call.i.i454, label %if.end.i.i455, label %if.then292.list_add.exit_crit_edge

if.then292.list_add.exit_crit_edge:               ; preds = %if.then292
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit

if.end.i.i455:                                    ; preds = %if.then292
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %x.1, ptr %prev1.i.i, align 4
  %107 = ptrtoint ptr %x.1 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %105, ptr %x.1, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %x.1, i32 0, i32 1
  %108 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %ad294, ptr %prev3.i.i, align 4
  %109 = ptrtoint ptr %ad294 to i32
  call void @__asan_store4_noabort(i32 %109)
  store volatile ptr %x.1, ptr %ad294, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i455, %if.then292.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock293) #12
  br label %if.end296

if.end296:                                        ; preds = %list_add.exit, %out.if.end296_crit_edge
  %call.i.i438 = tail call zeroext i1 @__kasan_check_write(ptr noundef %uref, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !219
  tail call void @llvm.prefetch.p0(ptr %uref, i32 1, i32 3, i32 1) #12
  %110 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uref, ptr %uref, i32 1, ptr elementtype(i32) %uref) #12, !srcloc !220
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %110, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !221
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true300, label %if.end296.cleanup316_crit_edge

if.end296.cleanup316_crit_edge:                   ; preds = %if.end296
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup316

land.lhs.true300:                                 ; preds = %if.end296
  %call.i.i439 = tail call zeroext i1 @__kasan_check_read(ptr noundef %5, i32 noundef 4) #12
  %111 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load volatile i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool303.not = icmp eq i32 %112, 0
  br i1 %tobool303.not, label %land.lhs.true300.cleanup316_crit_edge, label %do.body305

land.lhs.true300.cleanup316_crit_edge:            ; preds = %land.lhs.true300
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup316

do.body305:                                       ; preds = %land.lhs.true300
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_ipport4_del.__UNIQUE_ID_ddebug671, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_ipport4_del, %if.then311)) #12
          to label %do.end.i [label %if.then311], !srcloc !210

if.then311:                                       ; preds = %do.body305
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_ipport4_del.__UNIQUE_ID_ddebug671, ptr noundef nonnull @.str.20, ptr noundef %5) #12
  br label %do.end.i

do.end.i:                                         ; preds = %for.inc.i.do.end.i_crit_edge, %if.then311, %do.body305
  %i.017.i = phi i32 [ %inc.i, %for.inc.i.do.end.i_crit_edge ], [ 0, %do.body305 ], [ 0, %if.then311 ]
  %arrayidx.i457 = getelementptr %struct.htable, ptr %5, i32 0, i32 5, i32 %i.017.i
  %113 = ptrtoint ptr %arrayidx.i457 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %arrayidx.i457, align 4
  %tobool.not.i458 = icmp eq ptr %114, null
  br i1 %tobool.not.i458, label %do.end.i.for.inc.i_crit_edge, label %if.end.i

do.end.i.for.inc.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end.i:                                         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %114) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %do.end.i.for.inc.i_crit_edge
  %inc.i = add i32 %i.017.i, 1
  %115 = ptrtoint ptr %htable_bits to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %htable_bits, align 4
  %conv.i = zext i8 %116 to i32
  %i.0.highbits.i = lshr i32 %inc.i, %conv.i
  %cmp.i459 = icmp eq i32 %i.0.highbits.i, 0
  br i1 %cmp.i459, label %for.inc.i.do.end.i_crit_edge, label %hash_ipport4_ahash_destroy.exit

for.inc.i.do.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

hash_ipport4_ahash_destroy.exit:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  %117 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %hregion, align 4
  tail call void @ip_set_free(ptr noundef %118) #12
  tail call void @ip_set_free(ptr noundef %5) #12
  br label %cleanup316

cleanup316:                                       ; preds = %hash_ipport4_ahash_destroy.exit, %land.lhs.true300.cleanup316_crit_edge, %if.end296.cleanup316_crit_edge
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hash_ipport4_test(ptr noundef %set, ptr nocapture noundef readonly %value, ptr noundef %ext, ptr noundef %mext, i32 noundef %flags) #2 align 64 {
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
  %.b66 = load i1, ptr @hash_ipport4_test.__warned, align 1
  br i1 %.b66, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hash_ipport4_test.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1224, ptr noundef nonnull @.str.8) #12
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock_bh.exit.do.end8_crit_edge
  %initval = getelementptr inbounds %struct.hash_ipport4, ptr %1, i32 0, i32 3
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
  %and = and i32 %sub57.i, %sub
  %arrayidx = getelementptr %struct.htable, ptr %3, i32 0, i32 5, i32 %and
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %arrayidx, align 4
  %call20 = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %land.lhs.true22, label %do.end8.do.end30_crit_edge

do.end8.do.end30_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end30

land.lhs.true22:                                  ; preds = %do.end8
  %call23 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %land.lhs.true22.do.end30_crit_edge, label %land.lhs.true25

land.lhs.true22.do.end30_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end30

land.lhs.true25:                                  ; preds = %land.lhs.true22
  %.b6465 = load i1, ptr @hash_ipport4_test.__warned.21, align 1
  br i1 %.b6465, label %land.lhs.true25.do.end30_crit_edge, label %if.then27

land.lhs.true25.do.end30_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end30

if.then27:                                        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hash_ipport4_test.__warned.21, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1239, ptr noundef nonnull @.str.8) #12
  br label %do.end30

do.end30:                                         ; preds = %if.then27, %land.lhs.true25.do.end30_crit_edge, %land.lhs.true22.do.end30_crit_edge, %do.end8.do.end30_crit_edge
  %tobool32.not = icmp eq ptr %13, null
  br i1 %tobool32.not, label %do.end30.out_crit_edge, label %for.cond.preheader

do.end30.out_crit_edge:                           ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.cond.preheader:                               ; preds = %do.end30
  %pos = getelementptr inbounds %struct.hbucket, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %pos, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp77.not = icmp eq i8 %15, 0
  br i1 %cmp77.not, label %for.cond.preheader.out_crit_edge, label %for.body.lr.ph

for.cond.preheader.out_crit_edge:                 ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %used = getelementptr inbounds %struct.hbucket, ptr %13, i32 0, i32 1
  %value41 = getelementptr inbounds %struct.hbucket, ptr %13, i32 0, i32 5
  %dsize = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %proto9.i = getelementptr inbounds %struct.hash_ipport4_elem, ptr %value, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.078 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %div3.i = lshr i32 %i.078, 5
  %arrayidx.i = getelementptr i32, ptr %used, i32 %div3.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.078, 31
  %18 = shl nuw i32 1, %and.i
  %19 = and i32 %17, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool38.not = icmp eq i32 %19, 0
  br i1 %tobool38.not, label %for.body.for.inc_crit_edge, label %if.end40

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end40:                                         ; preds = %for.body
  %20 = ptrtoint ptr %dsize to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dsize, align 4
  %mul = mul i32 %21, %i.078
  %add.ptr = getelementptr i8, ptr %value41, i32 %mul
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr, align 4
  %24 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp.i = icmp eq i32 %23, %25
  br i1 %cmp.i, label %land.lhs.true.i67, label %if.end40.for.inc_crit_edge

if.end40.for.inc_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true.i67:                                ; preds = %if.end40
  %port.i = getelementptr inbounds %struct.hash_ipport4_elem, ptr %add.ptr, i32 0, i32 1
  %26 = ptrtoint ptr %port.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %port.i, align 4
  %28 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx32.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %27, i16 %29)
  %cmp6.i = icmp eq i16 %27, %29
  br i1 %cmp6.i, label %hash_ipport4_data_equal.exit, label %land.lhs.true.i67.for.inc_crit_edge

land.lhs.true.i67.for.inc_crit_edge:              ; preds = %land.lhs.true.i67
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

hash_ipport4_data_equal.exit:                     ; preds = %land.lhs.true.i67
  %proto.i = getelementptr inbounds %struct.hash_ipport4_elem, ptr %add.ptr, i32 0, i32 2
  %30 = ptrtoint ptr %proto.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %proto.i, align 2
  %32 = ptrtoint ptr %proto9.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %proto9.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %31, i8 %33)
  %cmp11.i = icmp eq i8 %31, %33
  br i1 %cmp11.i, label %if.end45, label %hash_ipport4_data_equal.exit.for.inc_crit_edge

hash_ipport4_data_equal.exit.for.inc_crit_edge:   ; preds = %hash_ipport4_data_equal.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end45:                                         ; preds = %hash_ipport4_data_equal.exit
  %call.i68 = tail call zeroext i1 @ip_set_match_extensions(ptr noundef %set, ptr noundef %ext, ptr noundef %mext, i32 noundef %flags, ptr noundef %add.ptr) #12
  br i1 %call.i68, label %if.end45.out_crit_edge, label %if.end45.for.inc_crit_edge

if.end45.for.inc_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end45.out_crit_edge:                           ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.inc:                                          ; preds = %if.end45.for.inc_crit_edge, %hash_ipport4_data_equal.exit.for.inc_crit_edge, %land.lhs.true.i67.for.inc_crit_edge, %if.end40.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.078, 1
  %34 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %pos, align 1
  %conv35 = zext i8 %35 to i32
  %cmp = icmp ult i32 %inc, %conv35
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.out_crit_edge

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

out:                                              ; preds = %for.inc.out_crit_edge, %if.end45.out_crit_edge, %for.cond.preheader.out_crit_edge, %do.end30.out_crit_edge
  %ret.2 = phi i32 [ 0, %do.end30.out_crit_edge ], [ 0, %for.cond.preheader.out_crit_edge ], [ 1, %if.end45.out_crit_edge ], [ 0, %for.inc.out_crit_edge ]
  %call.i69 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i69, label %out.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true.i72

out.rcu_read_unlock_bh.exit_crit_edge:            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

land.lhs.true.i72:                                ; preds = %out
  %call1.i70 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i70)
  %tobool.not.i71 = icmp eq i32 %call1.i70, 0
  br i1 %tobool.not.i71, label %land.lhs.true.i72.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true2.i74

land.lhs.true.i72.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true.i72
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

land.lhs.true2.i74:                               ; preds = %land.lhs.true.i72
  %.b4.i73 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i73, label %land.lhs.true2.i74.rcu_read_unlock_bh.exit_crit_edge, label %if.then.i75

land.lhs.true2.i74.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i74
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

if.then.i75:                                      ; preds = %land.lhs.true2.i74
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 761, ptr noundef nonnull @.str.15) #12
  br label %rcu_read_unlock_bh.exit

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i75, %land.lhs.true2.i74.rcu_read_unlock_bh.exit_crit_edge, %land.lhs.true.i72.rcu_read_unlock_bh.exit_crit_edge, %out.rcu_read_unlock_bh.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #12
  tail call fastcc void @local_bh_enable() #12
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hash_ipport4_resize(ptr noundef %set, i1 noundef zeroext %retried) #2 align 64 {
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
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %1, align 4
  %call = tail call zeroext i1 @lockdep_nfnl_is_held(i8 noundef zeroext 6) #12
  br i1 %call, label %entry.do.end10_crit_edge, label %lor.lhs.false

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

lor.lhs.false:                                    ; preds = %entry
  %call4 = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %land.lhs.true, label %lor.lhs.false.do.end10_crit_edge

lor.lhs.false.do.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end10_crit_edge, label %land.lhs.true7

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b565 = load i1, ptr @hash_ipport4_resize.__warned, align 1
  br i1 %.b565, label %land.lhs.true7.do.end10_crit_edge, label %if.then

land.lhs.true7.do.end10_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

if.then:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hash_ipport4_resize.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 647, ptr noundef nonnull @.str.8) #12
  br label %do.end10

do.end10:                                         ; preds = %if.then, %land.lhs.true7.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %lor.lhs.false.do.end10_crit_edge, %entry.do.end10_crit_edge
  %htable_bits12 = getelementptr inbounds %struct.htable, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %htable_bits12 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %htable_bits12, align 4
  %maxelem = getelementptr inbounds %struct.hash_ipport4, ptr %1, i32 0, i32 2
  %extensions = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 8
  %arrayidx160 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 1
  %initval = getelementptr inbounds %struct.hash_ipport4, ptr %1, i32 0, i32 3
  %bucketsize = getelementptr inbounds %struct.hash_ipport4, ptr %1, i32 0, i32 4
  %mul255 = shl i32 %3, 1
  %add256 = add i32 %mul255, 24
  br label %retry

retry:                                            ; preds = %hash_ipport4_ahash_destroy.exit651.retry_crit_edge, %do.end10
  %htable_bits.0 = phi i8 [ %7, %do.end10 ], [ %inc, %hash_ipport4_ahash_destroy.exit651.retry_crit_edge ]
  %inc = add i8 %htable_bits.0, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %inc)
  %tobool13.not = icmp eq i8 %inc, 0
  br i1 %tobool13.not, label %retry.do.end415_crit_edge, label %if.end15

retry.do.end415_crit_edge:                        ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end415

if.end15:                                         ; preds = %retry
  call void @__sanitizer_cov_trace_const_cmp1(i8 28, i8 %inc)
  %cmp3.i = icmp ugt i8 %inc, 28
  %conv.i = zext i8 %inc to i32
  %mul.i = shl i32 4, %conv.i
  %add.i = add i32 %mul.i, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %tobool17.not667 = icmp eq i32 %add.i, 0
  %tobool17.not = select i1 %cmp3.i, i1 true, i1 %tobool17.not667
  br i1 %tobool17.not, label %if.end15.do.end415_crit_edge, label %if.end19

if.end15.do.end415_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end415

if.end19:                                         ; preds = %if.end15
  %call20 = tail call ptr @ip_set_alloc(i32 noundef %add.i) #12
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %if.end19.cleanup420_crit_edge, label %if.end23

if.end19.cleanup420_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup420

if.end23:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %inc)
  %cmp = icmp ult i8 %inc, 10
  %sub = add nsw i32 %conv.i, -10
  %shl = shl nuw i32 1, %sub
  %cond = select i1 %cmp, i32 1, i32 %shl
  %mul = mul i32 %cond, 52
  %call26 = tail call ptr @ip_set_alloc(i32 noundef %mul) #12
  %hregion = getelementptr inbounds %struct.htable, ptr %call20, i32 0, i32 4
  %8 = ptrtoint ptr %hregion to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call26, ptr %hregion, align 4
  %tobool28.not = icmp eq ptr %call26, null
  br i1 %tobool28.not, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ip_set_free(ptr noundef nonnull %call20) #12
  br label %cleanup420

if.end30:                                         ; preds = %if.end23
  %htable_bits31 = getelementptr inbounds %struct.htable, ptr %call20, i32 0, i32 2
  %9 = ptrtoint ptr %htable_bits31 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %inc, ptr %htable_bits31, align 4
  %10 = ptrtoint ptr %maxelem to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %maxelem, align 4
  %12 = select i1 %cmp, i32 0, i32 %sub
  %div668 = lshr i32 %11, %12
  %maxelem42 = getelementptr inbounds %struct.htable, ptr %call20, i32 0, i32 3
  %13 = ptrtoint ptr %maxelem42 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %div668, ptr %maxelem42, align 4
  br label %do.body55

do.body55:                                        ; preds = %do.body55.do.body55_crit_edge, %if.end30
  %i.0672 = phi i32 [ 0, %if.end30 ], [ %inc60, %do.body55.do.body55_crit_edge ]
  %14 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hregion, align 4
  %arrayidx = getelementptr %struct.ip_set_region, ptr %15, i32 %i.0672
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx, ptr noundef nonnull @.str.6, ptr noundef nonnull @hash_ipport4_resize.__key, i16 noundef signext 3) #12
  %inc60 = add nuw i32 %i.0672, 1
  %exitcond.not = icmp eq i32 %inc60, %cond
  br i1 %exitcond.not, label %for.end, label %do.body55.do.body55_crit_edge

do.body55.do.body55_crit_edge:                    ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body55

for.end:                                          ; preds = %do.body55
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %1, align 4
  %call67 = tail call zeroext i1 @lockdep_nfnl_is_held(i8 noundef zeroext 6) #12
  br i1 %call67, label %for.end.do.end80_crit_edge, label %lor.lhs.false69

for.end.do.end80_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end80

lor.lhs.false69:                                  ; preds = %for.end
  %call70 = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %land.lhs.true72, label %lor.lhs.false69.do.end80_crit_edge

lor.lhs.false69.do.end80_crit_edge:               ; preds = %lor.lhs.false69
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end80

land.lhs.true72:                                  ; preds = %lor.lhs.false69
  %call73 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %land.lhs.true72.do.end80_crit_edge, label %land.lhs.true75

land.lhs.true72.do.end80_crit_edge:               ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end80

land.lhs.true75:                                  ; preds = %land.lhs.true72
  %.b563564 = load i1, ptr @hash_ipport4_resize.__warned.22, align 1
  br i1 %.b563564, label %land.lhs.true75.do.end80_crit_edge, label %if.then77

land.lhs.true75.do.end80_crit_edge:               ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end80

if.then77:                                        ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hash_ipport4_resize.__warned.22, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 677, ptr noundef nonnull @.str.8) #12
  br label %do.end80

do.end80:                                         ; preds = %if.then77, %land.lhs.true75.do.end80_crit_edge, %land.lhs.true72.do.end80_crit_edge, %lor.lhs.false69.do.end80_crit_edge, %for.end.do.end80_crit_edge
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %17, i32 noundef 4) #12
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 1, ptr %17, align 4
  %uref = getelementptr inbounds %struct.htable, ptr %17, i32 0, i32 1
  %call.i.i568 = tail call zeroext i1 @__kasan_check_write(ptr noundef %uref, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %uref, i32 1, i32 3, i32 1) #12
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uref, ptr %uref, i32 1, ptr elementtype(i32) %uref) #12, !srcloc !215
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_ipport4_resize.__UNIQUE_ID_ddebug635, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_ipport4_resize, %if.then89)) #12
          to label %do.end95 [label %if.then89], !srcloc !210

if.then89:                                        ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #14
  %htable_bits90 = getelementptr inbounds %struct.htable, ptr %17, i32 0, i32 2
  %20 = ptrtoint ptr %htable_bits90 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %htable_bits90, align 4
  %conv91 = zext i8 %21 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_ipport4_resize.__UNIQUE_ID_ddebug635, ptr noundef nonnull @.str.24, ptr noundef %set, i32 noundef %conv91, i32 noundef %conv.i, ptr noundef %17) #12
  br label %do.end95

do.end95:                                         ; preds = %if.then89, %do.end80
  %htable_bits97 = getelementptr inbounds %struct.htable, ptr %17, i32 0, i32 2
  %notmask = shl nsw i32 -1, %conv.i
  %sub173 = xor i32 %notmask, -1
  %22 = add i32 %cond, -1
  br label %for.body111

for.body111:                                      ; preds = %rcu_read_unlock_bh.exit.for.body111_crit_edge, %do.end95
  %r.0688 = phi i32 [ 0, %do.end95 ], [ %inc298, %rcu_read_unlock_bh.exit.for.body111_crit_edge ]
  tail call fastcc void @local_bh_disable() #12
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %for.body111.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true.i

for.body111.rcu_read_lock_bh.exit_crit_edge:      ; preds = %for.body111
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock_bh.exit

land.lhs.true.i:                                  ; preds = %for.body111
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

rcu_read_lock_bh.exit:                            ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, %for.body111.rcu_read_lock_bh.exit_crit_edge
  %23 = ptrtoint ptr %htable_bits97 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %htable_bits97, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %24)
  %cmp114 = icmp ult i8 %24, 10
  %mul118 = shl i32 %r.0688, 10
  %spec.select = select i1 %cmp114, i32 0, i32 %mul118
  %mul131 = add i32 %mul118, 1024
  %conv123678 = zext i8 %24 to i32
  %shl129679 = shl nuw i32 1, %conv123678
  %cond133680 = select i1 %cmp114, i32 %shl129679, i32 %mul131
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %cond133680)
  %cmp134681 = icmp ult i32 %spec.select, %cond133680
  br i1 %cmp134681, label %rcu_read_lock_bh.exit.do.end139_crit_edge, label %rcu_read_lock_bh.exit.for.end296_crit_edge

rcu_read_lock_bh.exit.for.end296_crit_edge:       ; preds = %rcu_read_lock_bh.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end296

rcu_read_lock_bh.exit.do.end139_crit_edge:        ; preds = %rcu_read_lock_bh.exit
  br label %do.end139

do.end139:                                        ; preds = %for.inc294.do.end139_crit_edge, %rcu_read_lock_bh.exit.do.end139_crit_edge
  %i.1682 = phi i32 [ %inc295, %for.inc294.do.end139_crit_edge ], [ %spec.select, %rcu_read_lock_bh.exit.do.end139_crit_edge ]
  %arrayidx141 = getelementptr %struct.htable, ptr %17, i32 0, i32 5, i32 %i.1682
  %25 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx141, align 4
  %tobool142.not = icmp eq ptr %26, null
  br i1 %tobool142.not, label %do.end139.for.inc294_crit_edge, label %for.cond145.preheader

do.end139.for.inc294_crit_edge:                   ; preds = %do.end139
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc294

for.cond145.preheader:                            ; preds = %do.end139
  %pos = getelementptr inbounds %struct.hbucket, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %pos, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp147674.not = icmp eq i8 %28, 0
  br i1 %cmp147674.not, label %for.cond145.preheader.for.inc294_crit_edge, label %for.body149.lr.ph

for.cond145.preheader.for.inc294_crit_edge:       ; preds = %for.cond145.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc294

for.body149.lr.ph:                                ; preds = %for.cond145.preheader
  %used = getelementptr inbounds %struct.hbucket, ptr %26, i32 0, i32 1
  %value = getelementptr inbounds %struct.hbucket, ptr %26, i32 0, i32 5
  br label %for.body149

for.body149:                                      ; preds = %for.inc291.for.body149_crit_edge, %for.body149.lr.ph
  %j.0675 = phi i32 [ 0, %for.body149.lr.ph ], [ %inc292, %for.inc291.for.body149_crit_edge ]
  %div3.i = lshr i32 %j.0675, 5
  %arrayidx.i = getelementptr i32, ptr %used, i32 %div3.i
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %j.0675, 31
  %31 = shl nuw i32 1, %and.i
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool152.not = icmp eq i32 %32, 0
  br i1 %tobool152.not, label %for.body149.for.inc291_crit_edge, label %if.end154

for.body149.for.inc291_crit_edge:                 ; preds = %for.body149
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc291

if.end154:                                        ; preds = %for.body149
  %mul156 = mul i32 %j.0675, %3
  %add.ptr = getelementptr i8, ptr %value, i32 %mul156
  %33 = ptrtoint ptr %extensions to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %extensions, align 2
  %35 = and i8 %34, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool158.not = icmp eq i8 %35, 0
  br i1 %tobool158.not, label %if.end154.if.end165_crit_edge, label %land.lhs.true159

if.end154.if.end165_crit_edge:                    ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end165

land.lhs.true159:                                 ; preds = %if.end154
  %36 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx160, align 4
  %add.ptr161 = getelementptr i8, ptr %add.ptr, i32 %37
  %38 = ptrtoint ptr %add.ptr161 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr161, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.not.i = icmp eq i32 %39, 0
  br i1 %cmp.not.i, label %land.lhs.true159.if.end165_crit_edge, label %ip_set_timeout_expired.exit

land.lhs.true159.if.end165_crit_edge:             ; preds = %land.lhs.true159
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end165

ip_set_timeout_expired.exit:                      ; preds = %land.lhs.true159
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %40 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %39, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp1.i = icmp slt i32 %sub.i, 0
  br i1 %cmp1.i, label %ip_set_timeout_expired.exit.for.inc291_crit_edge, label %ip_set_timeout_expired.exit.if.end165_crit_edge

ip_set_timeout_expired.exit.if.end165_crit_edge:  ; preds = %ip_set_timeout_expired.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end165

ip_set_timeout_expired.exit.for.inc291_crit_edge: ; preds = %ip_set_timeout_expired.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc291

if.end165:                                        ; preds = %ip_set_timeout_expired.exit.if.end165_crit_edge, %land.lhs.true159.if.end165_crit_edge, %if.end154.if.end165_crit_edge
  %41 = ptrtoint ptr %initval to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %initval, align 4
  %add1.i = add i32 %42, -559038729
  %arrayidx32.i = getelementptr i32, ptr %add.ptr, i32 1
  %43 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx32.i, align 4
  %add33.i = add i32 %44, %add1.i
  %45 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %add.ptr, align 4
  %add36.i = add i32 %46, %add1.i
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
  %and174 = and i32 %sub57.i, %sub173
  %arrayidx180 = getelementptr %struct.htable, ptr %call20, i32 0, i32 5, i32 %and174
  %47 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx180, align 4
  %rem = and i32 %and174, %22
  %tobool191.not = icmp eq ptr %48, null
  br i1 %tobool191.not, label %if.end8.i.i, label %if.else

if.end8.i.i:                                      ; preds = %if.end165
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add256, i32 noundef 2848) #16
  %tobool196.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool196.not, label %if.end8.i.i.cleanup406_crit_edge, label %if.end198

if.end8.i.i.cleanup406_crit_edge:                 ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup406

if.end198:                                        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %size = getelementptr inbounds %struct.hbucket, ptr %call9.i.i, i32 0, i32 2
  %49 = ptrtoint ptr %size to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 2, ptr %size, align 16
  %50 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hregion, align 4
  %ext_size = getelementptr %struct.ip_set_region, ptr %51, i32 %rem, i32 1
  %52 = ptrtoint ptr %ext_size to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ext_size, align 4
  %add203 = add i32 %53, %add256
  store i32 %add203, ptr %ext_size, align 4
  br label %if.end276.sink.split

if.else:                                          ; preds = %if.end165
  %pos218 = getelementptr inbounds %struct.hbucket, ptr %48, i32 0, i32 3
  %54 = ptrtoint ptr %pos218 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %pos218, align 1
  %size220 = getelementptr inbounds %struct.hbucket, ptr %48, i32 0, i32 2
  %56 = ptrtoint ptr %size220 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %size220, align 8
  %conv221 = zext i8 %57 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %55, i8 %57)
  %cmp222.not = icmp ult i8 %55, %57
  br i1 %cmp222.not, label %if.else.if.end276_crit_edge, label %if.then224

if.else.if.end276_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end276

if.then224:                                       ; preds = %if.else
  %58 = ptrtoint ptr %bucketsize to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %bucketsize, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %57, i8 %59)
  %cmp228.not = icmp ult i8 %57, %59
  br i1 %cmp228.not, label %if.end8.i.i609, label %if.then224.cleanup406_crit_edge

if.then224.cleanup406_crit_edge:                  ; preds = %if.then224
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup406

if.end8.i.i609:                                   ; preds = %if.then224
  %add234 = add nuw nsw i32 %conv221, 2
  %mul235 = mul i32 %add234, %3
  %add236 = add i32 %mul235, 24
  %call9.i.i608 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add236, i32 noundef 2848) #16
  %tobool238.not = icmp eq ptr %call9.i.i608, null
  br i1 %tobool238.not, label %if.end8.i.i609.cleanup406_crit_edge, label %cleanup

if.end8.i.i609.cleanup406_crit_edge:              ; preds = %if.end8.i.i609
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup406

cleanup:                                          ; preds = %if.end8.i.i609
  call void @__sanitizer_cov_trace_pc() #14
  %60 = ptrtoint ptr %size220 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %size220, align 8
  %conv247 = zext i8 %61 to i32
  %mul248 = mul i32 %3, %conv247
  %add249 = add i32 %mul248, 24
  %62 = call ptr @memcpy(ptr %call9.i.i608, ptr %48, i32 %add249)
  %63 = load i8, ptr %size220, align 8
  %add252 = add i8 %63, 2
  %size254 = getelementptr inbounds %struct.hbucket, ptr %call9.i.i608, i32 0, i32 2
  %64 = ptrtoint ptr %size254 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %add252, ptr %size254, align 16
  %65 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %hregion, align 4
  %ext_size259 = getelementptr %struct.ip_set_region, ptr %66, i32 %rem, i32 1
  %67 = ptrtoint ptr %ext_size259 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %ext_size259, align 4
  %add260 = add i32 %add256, %68
  store i32 %add260, ptr %ext_size259, align 4
  tail call void @kfree(ptr noundef nonnull %48) #12
  br label %if.end276.sink.split

if.end276.sink.split:                             ; preds = %cleanup, %if.end198
  %ht.0.sink = phi ptr [ %call9.i.i608, %cleanup ], [ %call9.i.i, %if.end198 ]
  %69 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %ht.0.sink, ptr %arrayidx180, align 4
  br label %if.end276

if.end276:                                        ; preds = %if.end276.sink.split, %if.else.if.end276_crit_edge
  %m.1 = phi ptr [ %48, %if.else.if.end276_crit_edge ], [ %ht.0.sink, %if.end276.sink.split ]
  %value277 = getelementptr inbounds %struct.hbucket, ptr %m.1, i32 0, i32 5
  %pos279 = getelementptr inbounds %struct.hbucket, ptr %m.1, i32 0, i32 3
  %70 = ptrtoint ptr %pos279 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %pos279, align 1
  %conv280 = zext i8 %71 to i32
  %mul281 = mul i32 %3, %conv280
  %add.ptr282 = getelementptr i8, ptr %value277, i32 %mul281
  %72 = call ptr @memcpy(ptr %add.ptr282, ptr %add.ptr, i32 %3)
  %73 = load i8, ptr %pos279, align 1
  %inc284 = add i8 %73, 1
  store i8 %inc284, ptr %pos279, align 1
  %conv285 = zext i8 %73 to i32
  %used286 = getelementptr inbounds %struct.hbucket, ptr %m.1, i32 0, i32 1
  tail call void @_set_bit(i32 noundef %conv285, ptr noundef %used286) #12
  %74 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %hregion, align 4
  %elements = getelementptr %struct.ip_set_region, ptr %75, i32 %rem, i32 2
  %76 = ptrtoint ptr %elements to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %elements, align 4
  %inc290 = add i32 %77, 1
  store i32 %inc290, ptr %elements, align 4
  br label %for.inc291

for.inc291:                                       ; preds = %if.end276, %ip_set_timeout_expired.exit.for.inc291_crit_edge, %for.body149.for.inc291_crit_edge
  %inc292 = add nuw nsw i32 %j.0675, 1
  %78 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %pos, align 1
  %conv146 = zext i8 %79 to i32
  %cmp147 = icmp ult i32 %inc292, %conv146
  br i1 %cmp147, label %for.inc291.for.body149_crit_edge, label %for.inc291.for.inc294_crit_edge

for.inc291.for.inc294_crit_edge:                  ; preds = %for.inc291
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc294

for.inc291.for.body149_crit_edge:                 ; preds = %for.inc291
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body149

for.inc294:                                       ; preds = %for.inc291.for.inc294_crit_edge, %for.cond145.preheader.for.inc294_crit_edge, %do.end139.for.inc294_crit_edge
  %inc295 = add nuw i32 %i.1682, 1
  %80 = ptrtoint ptr %htable_bits97 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %htable_bits97, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %81)
  %cmp124 = icmp ult i8 %81, 10
  %conv123 = zext i8 %81 to i32
  %shl129 = shl nuw i32 1, %conv123
  %cond133 = select i1 %cmp124, i32 %shl129, i32 %mul131
  %cmp134 = icmp ult i32 %inc295, %cond133
  br i1 %cmp134, label %for.inc294.do.end139_crit_edge, label %for.inc294.for.end296_crit_edge

for.inc294.for.end296_crit_edge:                  ; preds = %for.inc294
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end296

for.inc294.do.end139_crit_edge:                   ; preds = %for.inc294
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end139

for.end296:                                       ; preds = %for.inc294.for.end296_crit_edge, %rcu_read_lock_bh.exit.for.end296_crit_edge
  %call.i612 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i612, label %for.end296.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true.i615

for.end296.rcu_read_unlock_bh.exit_crit_edge:     ; preds = %for.end296
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

land.lhs.true.i615:                               ; preds = %for.end296
  %call1.i613 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i613)
  %tobool.not.i614 = icmp eq i32 %call1.i613, 0
  br i1 %tobool.not.i614, label %land.lhs.true.i615.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true2.i617

land.lhs.true.i615.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true.i615
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

land.lhs.true2.i617:                              ; preds = %land.lhs.true.i615
  %.b4.i616 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i616, label %land.lhs.true2.i617.rcu_read_unlock_bh.exit_crit_edge, label %if.then.i618

land.lhs.true2.i617.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i617
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

if.then.i618:                                     ; preds = %land.lhs.true2.i617
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 761, ptr noundef nonnull @.str.15) #12
  br label %rcu_read_unlock_bh.exit

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i618, %land.lhs.true2.i617.rcu_read_unlock_bh.exit_crit_edge, %land.lhs.true.i615.rcu_read_unlock_bh.exit_crit_edge, %for.end296.rcu_read_unlock_bh.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #12
  tail call fastcc void @local_bh_enable() #12
  %inc298 = add nuw i32 %r.0688, 1
  %82 = ptrtoint ptr %htable_bits97 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %htable_bits97, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %83)
  %cmp99 = icmp ult i8 %83, 10
  %conv98 = zext i8 %83 to i32
  %sub105 = add nsw i32 %conv98, -10
  %shl106 = shl nuw i32 1, %sub105
  %cond108 = select i1 %cmp99, i32 1, i32 %shl106
  %cmp109 = icmp ult i32 %inc298, %cond108
  br i1 %cmp109, label %rcu_read_unlock_bh.exit.for.body111_crit_edge, label %do.body300

rcu_read_unlock_bh.exit.for.body111_crit_edge:    ; preds = %rcu_read_unlock_bh.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body111

do.body300:                                       ; preds = %rcu_read_unlock_bh.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !224
  %84 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %call20, ptr %1, align 4
  tail call void @synchronize_rcu() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_ipport4_resize.__UNIQUE_ID_ddebug642, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_ipport4_resize, %if.then353)) #12
          to label %do.end362 [label %if.then353], !srcloc !210

if.then353:                                       ; preds = %do.body300
  call void @__sanitizer_cov_trace_pc() #14
  %85 = ptrtoint ptr %htable_bits97 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %htable_bits97, align 4
  %conv357 = zext i8 %86 to i32
  %87 = ptrtoint ptr %htable_bits31 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %htable_bits31, align 4
  %conv359 = zext i8 %88 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_ipport4_resize.__UNIQUE_ID_ddebug642, ptr noundef nonnull @.str.27, ptr noundef %set, i32 noundef %conv357, ptr noundef %17, i32 noundef %conv359, ptr noundef nonnull %call20) #12
  br label %do.end362

do.end362:                                        ; preds = %if.then353, %do.body300
  %ad = getelementptr inbounds %struct.hash_ipport4, ptr %1, i32 0, i32 5
  %89 = ptrtoint ptr %ad to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ad, align 4
  %cmp.i.not690 = icmp eq ptr %90, %ad
  br i1 %cmp.i.not690, label %do.end362.for.end385_crit_edge, label %do.end362.for.body370_crit_edge

do.end362.for.body370_crit_edge:                  ; preds = %do.end362
  br label %for.body370

do.end362.for.end385_crit_edge:                   ; preds = %do.end362
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end385

for.body370:                                      ; preds = %list_del.exit.for.body370_crit_edge, %do.end362.for.body370_crit_edge
  %l.0691 = phi ptr [ %lt.0693, %list_del.exit.for.body370_crit_edge ], [ %90, %do.end362.for.body370_crit_edge ]
  %91 = ptrtoint ptr %l.0691 to i32
  call void @__asan_load4_noabort(i32 %91)
  %lt.0693 = load ptr, ptr %l.0691, align 4
  %ad373 = getelementptr inbounds %struct.hash_ipport4_resize_ad, ptr %l.0691, i32 0, i32 1
  %92 = ptrtoint ptr %ad373 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %ad373, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp374 = icmp eq i32 %93, 0
  %d377 = getelementptr inbounds %struct.hash_ipport4_resize_ad, ptr %l.0691, i32 0, i32 2
  br i1 %cmp374, label %if.then376, label %if.else379

if.then376:                                       ; preds = %for.body370
  call void @__sanitizer_cov_trace_pc() #14
  %ext = getelementptr inbounds %struct.hash_ipport4_resize_ad, ptr %l.0691, i32 0, i32 3
  %mext = getelementptr inbounds %struct.hash_ipport4_resize_ad, ptr %l.0691, i32 0, i32 4
  %flags = getelementptr inbounds %struct.hash_ipport4_resize_ad, ptr %l.0691, i32 0, i32 5
  %94 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %flags, align 8
  %call378 = tail call i32 @hash_ipport4_add(ptr noundef %set, ptr noundef %d377, ptr noundef %ext, ptr noundef %mext, i32 noundef %95)
  br label %if.end382

if.else379:                                       ; preds = %for.body370
  call void @__sanitizer_cov_trace_pc() #14
  %call381 = tail call i32 @hash_ipport4_del(ptr noundef %set, ptr noundef %d377, ptr noundef null, ptr noundef null, i32 noundef 0)
  br label %if.end382

if.end382:                                        ; preds = %if.else379, %if.then376
  %call.i.i620 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %l.0691) #12
  br i1 %call.i.i620, label %if.end.i.i621, label %if.end382.list_del.exit_crit_edge

if.end382.list_del.exit_crit_edge:                ; preds = %if.end382
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i621:                                    ; preds = %if.end382
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %l.0691, i32 0, i32 1
  %96 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %prev.i.i, align 4
  %98 = ptrtoint ptr %l.0691 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %l.0691, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %97, ptr %prev1.i.i.i, align 4
  %101 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %101)
  store volatile ptr %99, ptr %97, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i621, %if.end382.list_del.exit_crit_edge
  %102 = ptrtoint ptr %l.0691 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr inttoptr (i32 256 to ptr), ptr %l.0691, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %l.0691, i32 0, i32 1
  %103 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %l.0691) #12
  %cmp.i.not = icmp eq ptr %lt.0693, %ad
  br i1 %cmp.i.not, label %list_del.exit.for.end385_crit_edge, label %list_del.exit.for.body370_crit_edge

list_del.exit.for.body370_crit_edge:              ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body370

list_del.exit.for.end385_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end385

for.end385:                                       ; preds = %list_del.exit.for.end385_crit_edge, %do.end362.for.end385_crit_edge
  %call.i.i572 = tail call zeroext i1 @__kasan_check_write(ptr noundef %uref, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !219
  tail call void @llvm.prefetch.p0(ptr %uref, i32 1, i32 3, i32 1) #12
  %104 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uref, ptr %uref, i32 1, ptr elementtype(i32) %uref) #12, !srcloc !220
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %104, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !221
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %do.body389, label %for.end385.cleanup420_crit_edge

for.end385.cleanup420_crit_edge:                  ; preds = %for.end385
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup420

do.body389:                                       ; preds = %for.end385
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_ipport4_resize.__UNIQUE_ID_ddebug643, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_ipport4_resize, %if.then401)) #12
          to label %do.end.i [label %if.then401], !srcloc !210

if.then401:                                       ; preds = %do.body389
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_ipport4_resize.__UNIQUE_ID_ddebug643, ptr noundef nonnull @.str.28, ptr noundef %17) #12
  br label %do.end.i

do.end.i:                                         ; preds = %for.inc.i.do.end.i_crit_edge, %if.then401, %do.body389
  %i.017.i = phi i32 [ %inc.i, %for.inc.i.do.end.i_crit_edge ], [ 0, %do.body389 ], [ 0, %if.then401 ]
  %arrayidx.i622 = getelementptr %struct.htable, ptr %17, i32 0, i32 5, i32 %i.017.i
  %105 = ptrtoint ptr %arrayidx.i622 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx.i622, align 4
  %tobool.not.i623 = icmp eq ptr %106, null
  br i1 %tobool.not.i623, label %do.end.i.for.inc.i_crit_edge, label %if.end.i

do.end.i.for.inc.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end.i:                                         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %106) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %do.end.i.for.inc.i_crit_edge
  %inc.i = add i32 %i.017.i, 1
  %107 = ptrtoint ptr %htable_bits97 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %htable_bits97, align 4
  %conv.i624 = zext i8 %108 to i32
  %i.0.highbits.i = lshr i32 %inc.i, %conv.i624
  %cmp.i625 = icmp eq i32 %i.0.highbits.i, 0
  br i1 %cmp.i625, label %for.inc.i.do.end.i_crit_edge, label %hash_ipport4_ahash_destroy.exit

for.inc.i.do.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

hash_ipport4_ahash_destroy.exit:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  %hregion.i = getelementptr inbounds %struct.htable, ptr %17, i32 0, i32 4
  %109 = ptrtoint ptr %hregion.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %hregion.i, align 4
  tail call void @ip_set_free(ptr noundef %110) #12
  tail call void @ip_set_free(ptr noundef %17) #12
  br label %cleanup420

cleanup406:                                       ; preds = %if.end8.i.i609.cleanup406_crit_edge, %if.then224.cleanup406_crit_edge, %if.end8.i.i.cleanup406_crit_edge
  %cmp409 = phi i1 [ false, %if.end8.i.i609.cleanup406_crit_edge ], [ true, %if.then224.cleanup406_crit_edge ], [ false, %if.end8.i.i.cleanup406_crit_edge ]
  %ret.8 = phi i32 [ -12, %if.end8.i.i609.cleanup406_crit_edge ], [ -11, %if.then224.cleanup406_crit_edge ], [ -12, %if.end8.i.i.cleanup406_crit_edge ]
  %call.i626 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i626, label %cleanup406.rcu_read_unlock_bh.exit634_crit_edge, label %land.lhs.true.i629

cleanup406.rcu_read_unlock_bh.exit634_crit_edge:  ; preds = %cleanup406
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit634

land.lhs.true.i629:                               ; preds = %cleanup406
  %call1.i627 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i627)
  %tobool.not.i628 = icmp eq i32 %call1.i627, 0
  br i1 %tobool.not.i628, label %land.lhs.true.i629.rcu_read_unlock_bh.exit634_crit_edge, label %land.lhs.true2.i631

land.lhs.true.i629.rcu_read_unlock_bh.exit634_crit_edge: ; preds = %land.lhs.true.i629
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit634

land.lhs.true2.i631:                              ; preds = %land.lhs.true.i629
  %.b4.i630 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i630, label %land.lhs.true2.i631.rcu_read_unlock_bh.exit634_crit_edge, label %if.then.i632

land.lhs.true2.i631.rcu_read_unlock_bh.exit634_crit_edge: ; preds = %land.lhs.true2.i631
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit634

if.then.i632:                                     ; preds = %land.lhs.true2.i631
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 761, ptr noundef nonnull @.str.15) #12
  br label %rcu_read_unlock_bh.exit634

rcu_read_unlock_bh.exit634:                       ; preds = %if.then.i632, %land.lhs.true2.i631.rcu_read_unlock_bh.exit634_crit_edge, %land.lhs.true.i629.rcu_read_unlock_bh.exit634_crit_edge, %cleanup406.rcu_read_unlock_bh.exit634_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #12
  tail call fastcc void @local_bh_enable() #12
  %call.i.i576 = tail call zeroext i1 @__kasan_check_write(ptr noundef %17, i32 noundef 4) #12
  %111 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %111)
  store volatile i32 0, ptr %17, align 4
  %call.i.i577 = tail call zeroext i1 @__kasan_check_write(ptr noundef %uref, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %uref, i32 1, i32 3, i32 1) #12
  %112 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uref, ptr %uref, i32 1, ptr elementtype(i32) %uref) #12, !srcloc !225
  br label %do.end.i642

do.end.i642:                                      ; preds = %for.inc.i649.do.end.i642_crit_edge, %rcu_read_unlock_bh.exit634
  %i.017.i639 = phi i32 [ 0, %rcu_read_unlock_bh.exit634 ], [ %inc.i645, %for.inc.i649.do.end.i642_crit_edge ]
  %arrayidx.i640 = getelementptr %struct.htable, ptr %call20, i32 0, i32 5, i32 %i.017.i639
  %113 = ptrtoint ptr %arrayidx.i640 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %arrayidx.i640, align 4
  %tobool.not.i641 = icmp eq ptr %114, null
  br i1 %tobool.not.i641, label %do.end.i642.for.inc.i649_crit_edge, label %if.end.i644

do.end.i642.for.inc.i649_crit_edge:               ; preds = %do.end.i642
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i649

if.end.i644:                                      ; preds = %do.end.i642
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %114) #12
  br label %for.inc.i649

for.inc.i649:                                     ; preds = %if.end.i644, %do.end.i642.for.inc.i649_crit_edge
  %inc.i645 = add i32 %i.017.i639, 1
  %115 = ptrtoint ptr %htable_bits31 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %htable_bits31, align 4
  %conv.i646 = zext i8 %116 to i32
  %i.0.highbits.i647 = lshr i32 %inc.i645, %conv.i646
  %cmp.i648 = icmp eq i32 %i.0.highbits.i647, 0
  br i1 %cmp.i648, label %for.inc.i649.do.end.i642_crit_edge, label %hash_ipport4_ahash_destroy.exit651

for.inc.i649.do.end.i642_crit_edge:               ; preds = %for.inc.i649
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i642

hash_ipport4_ahash_destroy.exit651:               ; preds = %for.inc.i649
  %117 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %hregion, align 4
  tail call void @ip_set_free(ptr noundef %118) #12
  tail call void @ip_set_free(ptr noundef nonnull %call20) #12
  br i1 %cmp409, label %hash_ipport4_ahash_destroy.exit651.retry_crit_edge, label %hash_ipport4_ahash_destroy.exit651.cleanup420_crit_edge

hash_ipport4_ahash_destroy.exit651.cleanup420_crit_edge: ; preds = %hash_ipport4_ahash_destroy.exit651
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup420

hash_ipport4_ahash_destroy.exit651.retry_crit_edge: ; preds = %hash_ipport4_ahash_destroy.exit651
  call void @__sanitizer_cov_trace_pc() #14
  br label %retry

do.end415:                                        ; preds = %if.end15.do.end415_crit_edge, %retry.do.end415_crit_edge
  %call419 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %set) #17
  br label %cleanup420

cleanup420:                                       ; preds = %do.end415, %hash_ipport4_ahash_destroy.exit651.cleanup420_crit_edge, %hash_ipport4_ahash_destroy.exit, %for.end385.cleanup420_crit_edge, %if.then29, %if.end19.cleanup420_crit_edge
  %retval.0 = phi i32 [ 0, %hash_ipport4_ahash_destroy.exit ], [ 0, %for.end385.cleanup420_crit_edge ], [ -12, %if.then29 ], [ -4352, %do.end415 ], [ -12, %if.end19.cleanup420_crit_edge ], [ %ret.8, %hash_ipport4_ahash_destroy.exit651.cleanup420_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hash_ipport4_destroy(ptr noundef %set) #2 align 64 {
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
  %gc = getelementptr inbounds %struct.hash_ipport4, ptr %1, i32 0, i32 1
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
  %.b25 = load i1, ptr @hash_ipport4_destroy.__warned, align 1
  br i1 %.b25, label %land.lhs.true4.do.end_crit_edge, label %if.then6

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then6:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hash_ipport4_destroy.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 466, ptr noundef nonnull @.str.30) #12
  br label %do.end

do.end:                                           ; preds = %if.then6, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %if.end.do.end_crit_edge
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  tail call fastcc void @hash_ipport4_ahash_destroy(ptr noundef %set, ptr noundef %6, i1 noundef zeroext true)
  %ad = getelementptr inbounds %struct.hash_ipport4, ptr %1, i32 0, i32 5
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
define internal void @hash_ipport4_flush(ptr noundef %set) #2 align 64 {
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
  %.b134 = load i1, ptr @hash_ipport4_flush.__warned, align 1
  br i1 %.b134, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hash_ipport4_flush.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 412, ptr noundef nonnull @.str.30) #12
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
  %r.0146 = phi i32 [ 0, %do.end ], [ %inc103, %for.end.for.body_crit_edge ]
  %4 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hregion, align 4
  %arrayidx = getelementptr %struct.ip_set_region, ptr %5, i32 %r.0146
  tail call void @_raw_spin_lock_bh(ptr noundef %arrayidx) #12
  %6 = ptrtoint ptr %htable_bits to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %htable_bits, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %7)
  %cmp11 = icmp ult i8 %7, 10
  %mul = shl i32 %r.0146, 10
  %spec.select = select i1 %cmp11, i32 0, i32 %mul
  %mul27 = add i32 %mul, 1024
  %conv19136 = zext i8 %7 to i32
  %shl25137 = shl nuw i32 1, %conv19136
  %cond29138 = select i1 %cmp11, i32 %shl25137, i32 %mul27
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %cond29138)
  %cmp30139 = icmp ult i32 %spec.select, %cond29138
  br i1 %cmp30139, label %for.body.do.end35_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.do.end35_crit_edge:                      ; preds = %for.body
  br label %do.end35

do.end35:                                         ; preds = %for.inc.do.end35_crit_edge, %for.body.do.end35_crit_edge
  %i.0140 = phi i32 [ %inc, %for.inc.do.end35_crit_edge ], [ %spec.select, %for.body.do.end35_crit_edge ]
  %arrayidx37 = getelementptr %struct.htable, ptr %3, i32 0, i32 5, i32 %i.0140
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
  %inc = add nuw i32 %i.0140, 1
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
  %ext_size = getelementptr %struct.ip_set_region, ptr %32, i32 %r.0146, i32 1
  %33 = ptrtoint ptr %ext_size to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %ext_size, align 4
  %34 = load ptr, ptr %hregion, align 4
  %elements = getelementptr %struct.ip_set_region, ptr %34, i32 %r.0146, i32 2
  %35 = ptrtoint ptr %elements to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %elements, align 4
  %36 = load ptr, ptr %hregion, align 4
  %arrayidx100 = getelementptr %struct.ip_set_region, ptr %36, i32 %r.0146
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx100) #12
  %inc103 = add nuw i32 %r.0146, 1
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
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hash_ipport4_head(ptr noundef %set, ptr noundef %skb) #2 align 64 {
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
  %.b77 = load i1, ptr @hash_ipport4_head.__warned, align 1
  br i1 %.b77, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hash_ipport4_head.__warned, align 1
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
  %.b112.i = load i1, ptr @hash_ipport4_ext_size.__warned, align 1
  br i1 %.b112.i, label %land.lhs.true5.i.do.end8.i_crit_edge, label %if.then.i81

land.lhs.true5.i.do.end8.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8.i

if.then.i81:                                      ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hash_ipport4_ext_size.__warned, align 1
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
  %.b110111.i = load i1, ptr @hash_ipport4_ext_size.__warned.32, align 1
  br i1 %.b110111.i, label %land.lhs.true49.i.do.end54.i_crit_edge, label %if.then51.i

land.lhs.true49.i.do.end54.i_crit_edge:           ; preds = %land.lhs.true49.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end54.i

if.then51.i:                                      ; preds = %land.lhs.true49.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hash_ipport4_ext_size.__warned.32, align 1
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
  br i1 %cmp13.i, label %for.end82.i.for.body.i_crit_edge, label %hash_ipport4_ext_size.exit

for.end82.i.for.body.i_crit_edge:                 ; preds = %for.end82.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

hash_ipport4_ext_size.exit:                       ; preds = %for.end82.i
  %htable_bits.i82 = getelementptr inbounds %struct.htable, ptr %3, i32 0, i32 2
  %38 = ptrtoint ptr %htable_bits.i82 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %htable_bits.i82, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %39)
  %cmp.i83 = icmp ult i8 %39, 10
  %conv.i84 = zext i8 %39 to i32
  %sub.i85 = add nsw i32 %conv.i84, -10
  %phi.bo.i = shl i32 52, %sub.i85
  %phi.bo1.i = add i32 %phi.bo.i, 160
  %cond.i86 = select i1 %cmp.i83, i32 212, i32 %phi.bo1.i
  %ext_size10 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 12
  %40 = ptrtoint ptr %ext_size10 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ext_size10, align 4
  %add = add i32 %41, %add85.i
  %add11 = add i32 %add, %cond.i86
  %call.i87 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i87, label %hash_ipport4_ext_size.exit.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true.i90

hash_ipport4_ext_size.exit.rcu_read_unlock_bh.exit_crit_edge: ; preds = %hash_ipport4_ext_size.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

land.lhs.true.i90:                                ; preds = %hash_ipport4_ext_size.exit
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

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i93, %land.lhs.true2.i92.rcu_read_unlock_bh.exit_crit_edge, %land.lhs.true.i90.rcu_read_unlock_bh.exit_crit_edge, %hash_ipport4_ext_size.exit.rcu_read_unlock_bh.exit_crit_edge
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
  %maxelem = getelementptr inbounds %struct.hash_ipport4, ptr %1, i32 0, i32 2
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
  %bucketsize = getelementptr inbounds %struct.hash_ipport4, ptr %1, i32 0, i32 4
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
  %initval = getelementptr inbounds %struct.hash_ipport4, ptr %1, i32 0, i32 3
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
  br i1 %tobool45.not, label %if.end49, label %if.end43.cleanup_crit_edge, !prof !226

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
define internal i32 @hash_ipport4_list(ptr noundef %set, ptr noundef %skb, ptr nocapture noundef %cb) #2 align 64 {
entry:
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
  %tobool.not224 = icmp eq ptr %3, null
  %tobool.not = select i1 %cmp.i.i, i1 true, i1 %tobool.not224
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_ipport4_list.__UNIQUE_ID_ddebug682, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_ipport4_list, %if.then5)) #12
          to label %do.end [label %if.then5], !srcloc !210

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_ipport4_list.__UNIQUE_ID_ddebug682, ptr noundef nonnull @.str.34, ptr noundef %set) #12
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %arrayidx7 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 4
  %4 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx7, align 4
  %6 = inttoptr i32 %5 to ptr
  %7 = tail call i32 @llvm.read_register.i32(metadata !200) #12
  %and.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !227
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 696, ptr noundef nonnull @.str.38) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %do.end.rcu_read_lock.exit_crit_edge
  %htable_bits = getelementptr inbounds %struct.htable, ptr %6, i32 0, i32 2
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %13 = ptrtoint ptr %htable_bits to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %htable_bits, align 4
  %conv232 = zext i8 %14 to i32
  %.highbits233 = lshr i32 %12, %conv232
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.highbits233)
  %cmp234 = icmp eq i32 %.highbits233, 0
  br i1 %cmp234, label %for.body.lr.ph, label %rcu_read_lock.exit.for.end106_crit_edge

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
  %.b180 = load i1, ptr @hash_ipport4_list.__warned, align 1
  br i1 %.b180, label %land.lhs.true22.do.end27_crit_edge, label %if.then24

land.lhs.true22.do.end27_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end27

if.then24:                                        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hash_ipport4_list.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1362, ptr noundef nonnull @.str.8) #12
  br label %do.end27

do.end27:                                         ; preds = %if.then24, %land.lhs.true22.do.end27_crit_edge, %land.lhs.true.do.end27_crit_edge, %for.body.do.end27_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_ipport4_list.__UNIQUE_ID_ddebug685, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_ipport4_list, %if.then41)) #12
          to label %do.end45 [label %if.then41], !srcloc !210

if.then41:                                        ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_ipport4_list.__UNIQUE_ID_ddebug685, ptr noundef nonnull @.str.35, i32 noundef %22, ptr noundef %6, ptr noundef %20) #12
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
  %cmp51228.not = icmp eq i8 %24, 0
  br i1 %cmp51228.not, label %for.cond49.preheader.for.inc103_crit_edge, label %for.body53.lr.ph

for.cond49.preheader.for.inc103_crit_edge:        ; preds = %for.cond49.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc103

for.body53.lr.ph:                                 ; preds = %for.cond49.preheader
  %used = getelementptr inbounds %struct.hbucket, ptr %20, i32 0, i32 1
  %value = getelementptr inbounds %struct.hbucket, ptr %20, i32 0, i32 5
  br label %for.body53

for.body53:                                       ; preds = %for.inc.for.body53_crit_edge, %for.body53.lr.ph
  %i.0229 = phi i32 [ 0, %for.body53.lr.ph ], [ %inc, %for.inc.for.body53_crit_edge ]
  %div3.i = lshr i32 %i.0229, 5
  %arrayidx.i = getelementptr i32, ptr %used, i32 %div3.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.0229, 31
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
  %mul = mul i32 %30, %i.0229
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_ipport4_list.__UNIQUE_ID_ddebug686, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_ipport4_list, %if.then81)) #12
          to label %do.end85 [label %if.then81], !srcloc !210

if.then81:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_ipport4_list.__UNIQUE_ID_ddebug686, ptr noundef nonnull @.str.36, i32 noundef %40, ptr noundef nonnull %20, i32 noundef %i.0229, ptr noundef %add.ptr) #12
  br label %do.end85

do.end85:                                         ; preds = %if.then81, %do.body69
  %41 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i188 = call i32 @nla_put(ptr noundef %skb, i32 noundef 32775, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i188)
  %cmp.i.i189 = icmp slt i32 %call1.i.i188, 0
  %tobool87.not225 = icmp eq ptr %42, null
  %tobool87.not = select i1 %cmp.i.i189, i1 true, i1 %tobool87.not225
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
  br i1 %cmp.i.i191, label %do.end.i.i, label %if.then.i.i.nla_nest_cancel.exit_crit_edge, !prof !211

if.then.i.i.nla_nest_cancel.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_nest_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 991, i32 noundef 9, ptr noundef null) #12
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
  %49 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %add.ptr, align 4
  %51 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 32769, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call1.i.i.i.i, 0
  %tobool.not1.i.i = icmp eq ptr %52, null
  %tobool.not.i.i192 = select i1 %cmp.i.i.i.i, i1 true, i1 %tobool.not1.i.i
  br i1 %tobool.not.i.i192, label %if.end94.nla_put_failure_crit_edge, label %if.end.i.i193

if.end94.nla_put_failure_crit_edge:               ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

if.end.i.i193:                                    ; preds = %if.end94
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i.i.i) #12
  %53 = ptrtoint ptr %tmp.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %50, ptr %tmp.i.i.i.i, align 4
  %call.i.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool2.not.i.i, label %lor.lhs.false.i, label %if.end.i.i193.nla_put_failure_crit_edge

if.end.i.i193.nla_put_failure_crit_edge:          ; preds = %if.end.i.i193
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

lor.lhs.false.i:                                  ; preds = %if.end.i.i193
  %54 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %55 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %52 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i.i.i to i16
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv.i.i.i, ptr %52, align 2
  %port.i = getelementptr inbounds %struct.hash_ipport4_elem, ptr %add.ptr, i32 0, i32 1
  %57 = ptrtoint ptr %port.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %port.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i.i.i) #12
  %59 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %tmp.i.i.i, align 2
  %call.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 16388, i32 noundef 2, ptr noundef nonnull %tmp.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool2.not.i, label %lor.lhs.false3.i, label %lor.lhs.false.i.nla_put_failure_crit_edge

lor.lhs.false.i.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %proto.i = getelementptr inbounds %struct.hash_ipport4_elem, ptr %add.ptr, i32 0, i32 2
  %60 = ptrtoint ptr %proto.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %proto.i, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i) #12
  %62 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %tmp.i.i, align 1
  %call.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 1, ptr noundef nonnull %tmp.i.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool5.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool5.not.i, label %if.end97, label %lor.lhs.false3.i.nla_put_failure_crit_edge

lor.lhs.false3.i.nla_put_failure_crit_edge:       ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

if.end97:                                         ; preds = %lor.lhs.false3.i
  %call98 = call i32 @ip_set_put_extensions(ptr noundef %skb, ptr noundef %set, ptr noundef %add.ptr, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.end101, label %if.end97.nla_put_failure_crit_edge

if.end97.nla_put_failure_crit_edge:               ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

if.end101:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #14
  %63 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %64 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %42 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %65 = ptrtoint ptr %42 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv.i, ptr %42, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.end101, %ip_set_timeout_expired.exit.for.inc_crit_edge, %for.body53.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0229, 1
  %66 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %pos, align 1
  %conv50 = zext i8 %67 to i32
  %cmp51 = icmp ult i32 %inc, %conv50
  br i1 %cmp51, label %for.inc.for.body53_crit_edge, label %for.inc.for.inc103_crit_edge

for.inc.for.inc103_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc103

for.inc.for.body53_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body53

for.inc103:                                       ; preds = %for.inc.for.inc103_crit_edge, %for.cond49.preheader.for.inc103_crit_edge, %do.end45.for.inc103_crit_edge
  %68 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx, align 4
  %inc105 = add i32 %69, 1
  store i32 %inc105, ptr %arrayidx, align 4
  %70 = ptrtoint ptr %htable_bits to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %htable_bits, align 4
  %conv = zext i8 %71 to i32
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
  %72 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i196 = ptrtoint ptr %73 to i32
  %sub.ptr.rhs.cast.i197 = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i198 = sub i32 %sub.ptr.lhs.cast.i196, %sub.ptr.rhs.cast.i197
  %conv.i199 = trunc i32 %sub.ptr.sub.i198 to i16
  %74 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %conv.i199, ptr %3, align 2
  %75 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %arrayidx, align 4
  br label %out

nla_put_failure:                                  ; preds = %if.end97.nla_put_failure_crit_edge, %lor.lhs.false3.i.nla_put_failure_crit_edge, %lor.lhs.false.i.nla_put_failure_crit_edge, %if.end.i.i193.nla_put_failure_crit_edge, %if.end94.nla_put_failure_crit_edge, %if.then88.nla_put_failure_crit_edge
  %tobool.not.i200 = icmp eq ptr %16, null
  br i1 %tobool.not.i200, label %nla_put_failure.nlmsg_trim.exit_crit_edge, label %if.then.i201

nla_put_failure.nlmsg_trim.exit_crit_edge:        ; preds = %nla_put_failure
  call void @__sanitizer_cov_trace_pc() #14
  br label %nlmsg_trim.exit

if.then.i201:                                     ; preds = %nla_put_failure
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %76 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %data.i, align 4
  %cmp.i = icmp ugt ptr %77, %16
  br i1 %cmp.i, label %do.end.i, label %if.then.i201.if.end.i_crit_edge, !prof !211

if.then.i201.if.end.i_crit_edge:                  ; preds = %if.then.i201
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i201
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 991, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i201.if.end.i_crit_edge
  %78 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i202 = ptrtoint ptr %16 to i32
  %sub.ptr.rhs.cast.i203 = ptrtoint ptr %79 to i32
  %sub.ptr.sub.i204 = sub i32 %sub.ptr.lhs.cast.i202, %sub.ptr.rhs.cast.i203
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i204) #12
  br label %nlmsg_trim.exit

nlmsg_trim.exit:                                  ; preds = %if.end.i, %nla_put_failure.nlmsg_trim.exit_crit_edge
  %80 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %81)
  %cmp110 = icmp eq i32 %1, %81
  br i1 %cmp110, label %do.end121, label %if.else, !prof !211

do.end121:                                        ; preds = %nlmsg_trim.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call125 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %set) #17
  %82 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %arrayidx, align 4
  br label %out

if.else:                                          ; preds = %nlmsg_trim.exit
  call void @__sanitizer_cov_trace_pc() #14
  %83 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i206 = ptrtoint ptr %84 to i32
  %sub.ptr.rhs.cast.i207 = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i208 = sub i32 %sub.ptr.lhs.cast.i206, %sub.ptr.rhs.cast.i207
  %conv.i209 = trunc i32 %sub.ptr.sub.i208 to i16
  %85 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %conv.i209, ptr %3, align 2
  br label %out

out:                                              ; preds = %if.else, %do.end121, %for.end106, %nla_nest_cancel.exit
  %ret.0 = phi i32 [ -90, %do.end121 ], [ 0, %if.else ], [ -90, %nla_nest_cancel.exit ], [ 0, %for.end106 ]
  %call.i210 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i210, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i213

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i213:                               ; preds = %out
  %call1.i211 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i211)
  %tobool.not.i212 = icmp eq i32 %call1.i211, 0
  br i1 %tobool.not.i212, label %land.lhs.true.i213.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i215

land.lhs.true.i213.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i213
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i215:                              ; preds = %land.lhs.true.i213
  %.b4.i214 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i214, label %land.lhs.true2.i215.rcu_read_unlock.exit_crit_edge, label %if.then.i216

land.lhs.true2.i215.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i215
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i216:                                     ; preds = %land.lhs.true2.i215
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 724, ptr noundef nonnull @.str.41) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i216, %land.lhs.true2.i215.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i213.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !228
  %86 = call i32 @llvm.read_register.i32(metadata !200) #12
  %and.i.i.i.i.i217 = and i32 %86, -16384
  %87 = inttoptr i32 %and.i.i.i.i.i217 to ptr
  %preempt_count.i.i.i.i218 = getelementptr inbounds %struct.thread_info, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %preempt_count.i.i.i.i218 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %preempt_count.i.i.i.i218, align 4
  %sub.i.i.i = add i32 %89, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i218, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %rcu_read_unlock.exit ], [ -90, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hash_ipport4_uref(ptr nocapture noundef readonly %set, ptr nocapture noundef %cb, i1 noundef zeroext %start) #2 align 64 {
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
  %.b46 = load i1, ptr @hash_ipport4_uref.__warned, align 1
  br i1 %.b46, label %land.lhs.true6.do.end10_crit_edge, label %if.then8

land.lhs.true6.do.end10_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

if.then8:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hash_ipport4_uref.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1321, ptr noundef nonnull @.str.8) #12
  br label %do.end10

do.end10:                                         ; preds = %if.then8, %land.lhs.true6.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %lor.lhs.false.do.end10_crit_edge, %rcu_read_lock_bh.exit.do.end10_crit_edge
  %uref = getelementptr inbounds %struct.htable, ptr %3, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %uref, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %uref, i32 1, i32 3, i32 1) #12
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uref, ptr %uref, i32 1, ptr elementtype(i32) %uref) #12, !srcloc !215
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !219
  tail call void @llvm.prefetch.p0(ptr %uref16, i32 1, i32 3, i32 1) #12
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uref16, ptr %uref16, i32 1, ptr elementtype(i32) %uref16) #12, !srcloc !220
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !221
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_ipport4_uref.__UNIQUE_ID_ddebug681, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_ipport4_uref, %if.then29)) #12
          to label %do.end32 [label %if.then29], !srcloc !210

if.then29:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_ipport4_uref.__UNIQUE_ID_ddebug681, ptr noundef nonnull @.str.43, ptr noundef nonnull %9) #12
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
  br i1 %cmp.i, label %for.inc.i.do.end.i_crit_edge, label %hash_ipport4_ahash_destroy.exit

for.inc.i.do.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

hash_ipport4_ahash_destroy.exit:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  %hregion.i = getelementptr inbounds %struct.htable, ptr %9, i32 0, i32 4
  %17 = ptrtoint ptr %hregion.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hregion.i, align 4
  tail call void @ip_set_free(ptr noundef %18) #12
  tail call void @ip_set_free(ptr noundef nonnull %9) #12
  br label %if.end33

if.end33:                                         ; preds = %hash_ipport4_ahash_destroy.exit, %land.lhs.true18.if.end33_crit_edge, %if.then14.if.end33_crit_edge
  %19 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %arrayidx12, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.end33, %if.else.if.end36_crit_edge, %rcu_read_unlock_bh.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @hash_ipport4_same_set(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #7 align 64 {
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
  %maxelem = getelementptr inbounds %struct.hash_ipport4, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %maxelem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %maxelem, align 4
  %maxelem2 = getelementptr inbounds %struct.hash_ipport4, ptr %3, i32 0, i32 2
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
declare dso_local i32 @ip_set_get_ipaddr4(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_set_get_extensions(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hash_ipport4_gc_do(ptr noundef %set, ptr noundef %t, i32 noundef %r) unnamed_addr #2 align 64 {
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
  %cmp1323 = icmp ult i32 %spec.select, %cond12
  br i1 %cmp1323, label %do.end.lr.ph, label %entry.for.end223_crit_edge

entry.for.end223_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end223

do.end.lr.ph:                                     ; preds = %entry
  %arrayidx27 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 1
  %extensions.i = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 8
  %arrayidx.i6 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 3
  %mul160.neg = mul i32 %1, -2
  %add161.neg = add i32 %mul160.neg, -24
  br label %do.end

do.end:                                           ; preds = %for.inc221.do.end_crit_edge, %do.end.lr.ph
  %i.024 = phi i32 [ %spec.select, %do.end.lr.ph ], [ %inc222, %for.inc221.do.end_crit_edge ]
  %arrayidx16 = getelementptr %struct.htable, ptr %t, i32 0, i32 5, i32 %i.024
  %6 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx16, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %do.end.for.inc221_crit_edge, label %for.cond17.preheader

do.end.for.inc221_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc221

for.cond17.preheader:                             ; preds = %do.end
  %pos = getelementptr inbounds %struct.hbucket, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pos, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp1912.not = icmp eq i8 %9, 0
  br i1 %cmp1912.not, label %for.cond17.preheader.for.inc221_crit_edge, label %for.body21.lr.ph

for.cond17.preheader.for.inc221_crit_edge:        ; preds = %for.cond17.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc221

for.body21.lr.ph:                                 ; preds = %for.cond17.preheader
  %used = getelementptr inbounds %struct.hbucket, ptr %7, i32 0, i32 1
  %value = getelementptr inbounds %struct.hbucket, ptr %7, i32 0, i32 5
  br label %for.body21

for.body21:                                       ; preds = %for.inc.for.body21_crit_edge, %for.body21.lr.ph
  %d.016 = phi i32 [ 0, %for.body21.lr.ph ], [ %d.1, %for.inc.for.body21_crit_edge ]
  %j.013 = phi i32 [ 0, %for.body21.lr.ph ], [ %inc53, %for.inc.for.body21_crit_edge ]
  %div3.i = lshr i32 %j.013, 5
  %arrayidx.i = getelementptr i32, ptr %used, i32 %div3.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %j.013, 31
  %12 = shl nuw i32 1, %and.i
  %13 = and i32 %11, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool22.not = icmp eq i32 %13, 0
  br i1 %tobool22.not, label %if.then23, label %if.end24

if.then23:                                        ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #14
  %inc = add i32 %d.016, 1
  br label %for.inc

if.end24:                                         ; preds = %for.body21
  %mul26 = mul i32 %j.013, %1
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
  br i1 %cmp.not.i, label %if.end24.for.inc_crit_edge, label %ip_set_timeout_expired.exit

if.end24.for.inc_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

ip_set_timeout_expired.exit:                      ; preds = %if.end24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %17, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp1.i = icmp slt i32 %sub.i, 0
  br i1 %cmp1.i, label %do.body32, label %ip_set_timeout_expired.exit.for.inc_crit_edge

ip_set_timeout_expired.exit.for.inc_crit_edge:    ; preds = %ip_set_timeout_expired.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

do.body32:                                        ; preds = %ip_set_timeout_expired.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_ipport4_gc_do.__UNIQUE_ID_ddebug619, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_ipport4_gc_do, %if.then38)) #12
          to label %do.end41 [label %if.then38], !srcloc !210

if.then38:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_ipport4_gc_do.__UNIQUE_ID_ddebug619, ptr noundef nonnull @.str.17, i32 noundef %i.024, i32 noundef %j.013) #12
  br label %do.end41

do.end41:                                         ; preds = %if.then38, %do.body32
  tail call void @_clear_bit(i32 noundef %j.013, ptr noundef %used) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !229
  %19 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hregion, align 4
  %elements = getelementptr %struct.ip_set_region, ptr %20, i32 %r, i32 2
  %21 = ptrtoint ptr %elements to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %elements, align 4
  %dec = add i32 %22, -1
  store i32 %dec, ptr %elements, align 4
  %23 = ptrtoint ptr %extensions.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %extensions.i, align 2
  %25 = and i8 %24, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i = icmp eq i8 %25, 0
  br i1 %tobool.not.i, label %do.end41.ip_set_ext_destroy.exit_crit_edge, label %if.then.i

do.end41.ip_set_ext_destroy.exit_crit_edge:       ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_set_ext_destroy.exit

if.then.i:                                        ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %arrayidx.i6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i6, align 4
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 %27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.ip_set_ext_type], ptr @ip_set_extensions, i32 0, i32 3) to i32))
  %28 = load ptr, ptr getelementptr inbounds ([0 x %struct.ip_set_ext_type], ptr @ip_set_extensions, i32 0, i32 3), align 4
  tail call void %28(ptr noundef %set, ptr noundef %add.ptr.i) #12
  br label %ip_set_ext_destroy.exit

ip_set_ext_destroy.exit:                          ; preds = %if.then.i, %do.end41.ip_set_ext_destroy.exit_crit_edge
  %inc52 = add i32 %d.016, 1
  br label %for.inc

for.inc:                                          ; preds = %ip_set_ext_destroy.exit, %ip_set_timeout_expired.exit.for.inc_crit_edge, %if.end24.for.inc_crit_edge, %if.then23
  %d.1 = phi i32 [ %inc52, %ip_set_ext_destroy.exit ], [ %d.016, %ip_set_timeout_expired.exit.for.inc_crit_edge ], [ %inc, %if.then23 ], [ %d.016, %if.end24.for.inc_crit_edge ]
  %inc53 = add nuw nsw i32 %j.013, 1
  %29 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %pos, align 1
  %conv18 = zext i8 %30 to i32
  %cmp19 = icmp ult i32 %inc53, %conv18
  br i1 %cmp19, label %for.inc.for.body21_crit_edge, label %for.end

for.inc.for.body21_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body21

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %d.1)
  %cmp54 = icmp ugt i32 %d.1, 1
  br i1 %cmp54, label %if.then56, label %for.end.for.inc221_crit_edge

for.end.for.inc221_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc221

if.then56:                                        ; preds = %for.end
  %size = getelementptr inbounds %struct.hbucket, ptr %7, i32 0, i32 2
  %31 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %size, align 8
  %conv57 = zext i8 %32 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %d.1, i32 %conv57)
  %cmp58.not = icmp ult i32 %d.1, %conv57
  br i1 %cmp58.not, label %if.end8.i.i, label %if.then60

if.then60:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #14
  %mul63 = mul i32 %1, %conv57
  %33 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hregion, align 4
  %ext_size = getelementptr %struct.ip_set_region, ptr %34, i32 %r, i32 1
  %35 = ptrtoint ptr %ext_size to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ext_size, align 4
  %add64.neg = sub i32 -24, %mul63
  %sub = add i32 %add64.neg, %36
  store i32 %sub, ptr %ext_size, align 4
  br label %for.inc221.sink.split

if.end8.i.i:                                      ; preds = %if.then56
  %sub120 = add nsw i32 %conv57, -2
  %mul121 = mul i32 %sub120, %1
  %add122 = add i32 %mul121, 24
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add122, i32 noundef 2848) #16
  %tobool124.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool124.not, label %if.end8.i.i.for.inc221_crit_edge, label %if.end126

if.end8.i.i.for.inc221_crit_edge:                 ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc221

if.end126:                                        ; preds = %if.end8.i.i
  %37 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %size, align 8
  %sub129 = add i8 %38, -2
  %size131 = getelementptr inbounds %struct.hbucket, ptr %call9.i.i, i32 0, i32 2
  %39 = ptrtoint ptr %size131 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %sub129, ptr %size131, align 16
  %40 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %pos, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cmp13518.not = icmp eq i8 %41, 0
  br i1 %cmp13518.not, label %if.end126.for.end157_crit_edge, label %for.body137.lr.ph

if.end126.for.end157_crit_edge:                   ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end157

for.body137.lr.ph:                                ; preds = %if.end126
  %used138 = getelementptr inbounds %struct.hbucket, ptr %7, i32 0, i32 1
  %value144 = getelementptr inbounds %struct.hbucket, ptr %7, i32 0, i32 5
  %value148 = getelementptr inbounds %struct.hbucket, ptr %call9.i.i, i32 0, i32 5
  %used152 = getelementptr inbounds %struct.hbucket, ptr %call9.i.i, i32 0, i32 1
  br label %for.body137

for.body137:                                      ; preds = %for.inc155.for.body137_crit_edge, %for.body137.lr.ph
  %d.221 = phi i32 [ 0, %for.body137.lr.ph ], [ %d.3, %for.inc155.for.body137_crit_edge ]
  %j.119 = phi i32 [ 0, %for.body137.lr.ph ], [ %inc156, %for.inc155.for.body137_crit_edge ]
  %div3.i1 = lshr i32 %j.119, 5
  %arrayidx.i2 = getelementptr i32, ptr %used138, i32 %div3.i1
  %42 = ptrtoint ptr %arrayidx.i2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %arrayidx.i2, align 4
  %and.i3 = and i32 %j.119, 31
  %44 = shl nuw i32 1, %and.i3
  %45 = and i32 %43, %44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool141.not = icmp eq i32 %45, 0
  br i1 %tobool141.not, label %for.body137.for.inc155_crit_edge, label %if.end143

for.body137.for.inc155_crit_edge:                 ; preds = %for.body137
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc155

if.end143:                                        ; preds = %for.body137
  call void @__sanitizer_cov_trace_pc() #14
  %mul146 = mul i32 %j.119, %1
  %add.ptr147 = getelementptr i8, ptr %value144, i32 %mul146
  %mul150 = mul i32 %d.221, %1
  %add.ptr151 = getelementptr i8, ptr %value148, i32 %mul150
  %46 = call ptr @memcpy(ptr %add.ptr151, ptr %add.ptr147, i32 %1)
  tail call void @_set_bit(i32 noundef %d.221, ptr noundef %used152) #12
  %inc154 = add i32 %d.221, 1
  br label %for.inc155

for.inc155:                                       ; preds = %if.end143, %for.body137.for.inc155_crit_edge
  %d.3 = phi i32 [ %inc154, %if.end143 ], [ %d.221, %for.body137.for.inc155_crit_edge ]
  %inc156 = add nuw nsw i32 %j.119, 1
  %47 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %pos, align 1
  %conv134 = zext i8 %48 to i32
  %cmp135 = icmp ult i32 %inc156, %conv134
  br i1 %cmp135, label %for.inc155.for.body137_crit_edge, label %for.inc155.for.end157_crit_edge

for.inc155.for.end157_crit_edge:                  ; preds = %for.inc155
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end157

for.inc155.for.body137_crit_edge:                 ; preds = %for.inc155
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body137

for.end157:                                       ; preds = %for.inc155.for.end157_crit_edge, %if.end126.for.end157_crit_edge
  %d.2.lcssa = phi i32 [ 0, %if.end126.for.end157_crit_edge ], [ %d.3, %for.inc155.for.end157_crit_edge ]
  %conv158 = trunc i32 %d.2.lcssa to i8
  %pos159 = getelementptr inbounds %struct.hbucket, ptr %call9.i.i, i32 0, i32 3
  %49 = ptrtoint ptr %pos159 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv158, ptr %pos159, align 1
  %50 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hregion, align 4
  %ext_size164 = getelementptr %struct.ip_set_region, ptr %51, i32 %r, i32 1
  %52 = ptrtoint ptr %ext_size164 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ext_size164, align 4
  %sub165 = add i32 %add161.neg, %53
  store i32 %sub165, ptr %ext_size164, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !230
  br label %for.inc221.sink.split

for.inc221.sink.split:                            ; preds = %for.end157, %if.then60
  %retval.1.i.i10.sink = phi ptr [ %call9.i.i, %for.end157 ], [ null, %if.then60 ]
  %54 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %retval.1.i.i10.sink, ptr %arrayidx16, align 4
  tail call void @kvfree_call_rcu(ptr noundef nonnull %7, ptr noundef null) #12
  br label %for.inc221

for.inc221:                                       ; preds = %for.inc221.sink.split, %if.end8.i.i.for.inc221_crit_edge, %for.end.for.inc221_crit_edge, %for.cond17.preheader.for.inc221_crit_edge, %do.end.for.inc221_crit_edge
  %inc222 = add nuw i32 %i.024, 1
  %exitcond.not = icmp eq i32 %inc222, %cond12
  br i1 %exitcond.not, label %for.inc221.for.end223_crit_edge, label %for.inc221.do.end_crit_edge

for.inc221.do.end_crit_edge:                      ; preds = %for.inc221
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

for.inc221.for.end223_crit_edge:                  ; preds = %for.inc221
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end223

for.end223:                                       ; preds = %for.inc221.for.end223_crit_edge, %entry.for.end223_crit_edge
  %55 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hregion, align 4
  %arrayidx225 = getelementptr %struct.ip_set_region, ptr %56, i32 %r
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx225) #12
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
define internal fastcc void @hash_ipport4_ahash_destroy(ptr noundef %set, ptr noundef %t, i1 noundef zeroext %ext_destroy) unnamed_addr #2 align 64 {
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 724, ptr noundef nonnull @.str.41) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i7, %land.lhs.true2.i6.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i4.rcu_read_unlock.exit_crit_edge, %entry.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !228
  %0 = tail call i32 @llvm.read_register.i32(metadata !200) #12
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
  tail call void @__might_resched(ptr noundef nonnull @.str.39, i32 noundef 2089, i32 noundef 0) #12
  %call.i10 = tail call i32 @__cond_resched() #12
  %4 = tail call i32 @llvm.read_register.i32(metadata !200) #12
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !227
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 696, ptr noundef nonnull @.str.38) #12
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
define internal i32 @hash_ipport6_kadt(ptr noundef %set, ptr noundef %skb, ptr nocapture noundef readnone %par, i32 noundef %adt, ptr noundef %opt) #2 align 64 {
entry:
  %e = alloca %struct.hash_ipport6_elem, align 4
  %ext = alloca %struct.ip_set_ext, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %variant = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 5
  %0 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %variant, align 4
  %arrayidx = getelementptr %struct.ip_set_type_variant, ptr %1, i32 0, i32 2, i32 %adt
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %e) #12
  %4 = call ptr @memset(ptr %e, i32 0, i32 20)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %ext) #12
  %5 = getelementptr inbounds i8, ptr %ext, i32 40
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %5, align 8, !annotation !213
  %7 = call ptr @memset(ptr %ext, i32 0, i32 16)
  %packets = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 1
  %8 = ptrtoint ptr %packets to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 1, ptr %packets, align 8
  %bytes = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 2
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  %conv = zext i32 %10 to i64
  %11 = ptrtoint ptr %bytes to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %conv, ptr %bytes, align 8
  %comment = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 3
  %12 = ptrtoint ptr %comment to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %comment, align 8
  %timeout = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 4
  %ext2 = getelementptr inbounds %struct.ip_set_adt_opt, ptr %opt, i32 0, i32 4
  %timeout3 = getelementptr inbounds %struct.ip_set_adt_opt, ptr %opt, i32 0, i32 4, i32 4
  %13 = ptrtoint ptr %timeout3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %timeout3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp.not = icmp eq i32 %14, -1
  br i1 %cmp.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %timeout7 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 10
  %15 = ptrtoint ptr %timeout7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %timeout7, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %16, %cond.false ], [ %14, %entry.cond.end_crit_edge ]
  %17 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond, ptr %timeout, align 4
  %packets_op = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 5
  %18 = ptrtoint ptr %packets_op to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %packets_op, align 8
  %bytes_op = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 6
  %19 = ptrtoint ptr %bytes_op to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %bytes_op, align 1
  %target = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 7
  %20 = ptrtoint ptr %target to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %target, align 2
  %flags = getelementptr inbounds %struct.ip_set_adt_opt, ptr %opt, i32 0, i32 2
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %flags, align 2
  %23 = and i8 %22, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool = icmp ne i8 %23, 0
  %port = getelementptr inbounds %struct.hash_ipport6_elem, ptr %e, i32 0, i32 1
  %proto = getelementptr inbounds %struct.hash_ipport6_elem, ptr %e, i32 0, i32 2
  %call = call zeroext i1 @ip_set_get_ip6_port(ptr noundef %skb, i1 noundef zeroext %tobool, ptr noundef %port, ptr noundef %proto) #12
  br i1 %call, label %if.end, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %flags, align 2
  %26 = and i8 %25, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool12.not = icmp eq i8 %26, 0
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %27 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %29 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %30 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %28, i32 %conv.i.i.i
  %saddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 0, i32 5
  %daddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 0, i32 6
  %cond.i = select i1 %tobool12.not, ptr %daddr.i, ptr %saddr.i
  %31 = call ptr @memcpy(ptr %e, ptr %cond.i, i32 16)
  %cmdflags = getelementptr inbounds %struct.ip_set_adt_opt, ptr %opt, i32 0, i32 3
  %32 = ptrtoint ptr %cmdflags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cmdflags, align 4
  %call14 = call i32 %3(ptr noundef %set, ptr noundef nonnull %e, ptr noundef nonnull %ext, ptr noundef %ext2, i32 noundef %33) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.end ], [ -22, %cond.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %ext) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %e) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hash_ipport6_uadt(ptr noundef %set, ptr noundef %tb, i32 noundef %adt, ptr nocapture noundef writeonly %lineno, i32 noundef %flags, i1 noundef zeroext %retried) #2 align 64 {
entry:
  %e = alloca %struct.hash_ipport6_elem, align 4
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
  %6 = call ptr @memset(ptr %e, i32 0, i32 20)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %ext) #12
  %7 = getelementptr inbounds i8, ptr %ext, i32 40
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -1, ptr %7, align 8, !annotation !213
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
  br i1 %tobool6.not, label %if.end.cleanup111_crit_edge, label %lor.lhs.false, !prof !211

if.end.cleanup111_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup111

lor.lhs.false:                                    ; preds = %if.end
  %arrayidx.i = getelementptr ptr, ptr %tb, i32 4
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i, label %lor.lhs.false.cleanup111_crit_edge, label %ip_set_attr_netorder.exit, !prof !214

lor.lhs.false.cleanup111_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup111

ip_set_attr_netorder.exit:                        ; preds = %lor.lhs.false
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %nla_type.i, align 2
  %29 = and i16 %28, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool2.i.not = icmp eq i16 %29, 0
  br i1 %tobool2.i.not, label %ip_set_attr_netorder.exit.cleanup111_crit_edge, label %lor.rhs, !prof !211

ip_set_attr_netorder.exit.cleanup111_crit_edge:   ; preds = %ip_set_attr_netorder.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup111

lor.rhs:                                          ; preds = %ip_set_attr_netorder.exit
  %arrayidx.i166 = getelementptr ptr, ptr %tb, i32 5
  %30 = ptrtoint ptr %arrayidx.i166 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i166, align 4
  %tobool.not.i167 = icmp eq ptr %31, null
  br i1 %tobool.not.i167, label %lor.rhs.if.end13_crit_edge, label %ip_set_optattr_netorder.exit

lor.rhs.if.end13_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

ip_set_optattr_netorder.exit:                     ; preds = %lor.rhs
  %nla_type.i168 = getelementptr inbounds %struct.nlattr, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %nla_type.i168 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %nla_type.i168, align 2
  %34 = and i16 %33, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool2.i169.not = icmp eq i16 %34, 0
  br i1 %tobool2.i169.not, label %ip_set_optattr_netorder.exit.cleanup111_crit_edge, label %ip_set_optattr_netorder.exit.if.end13_crit_edge, !prof !211

ip_set_optattr_netorder.exit.if.end13_crit_edge:  ; preds = %ip_set_optattr_netorder.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

ip_set_optattr_netorder.exit.cleanup111_crit_edge: ; preds = %ip_set_optattr_netorder.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup111

if.end13:                                         ; preds = %ip_set_optattr_netorder.exit.if.end13_crit_edge, %lor.rhs.if.end13_crit_edge
  %arrayidx14 = getelementptr ptr, ptr %tb, i32 2
  %35 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx14, align 4
  %tobool15.not = icmp eq ptr %36, null
  br i1 %tobool15.not, label %if.end23, label %if.end13.cleanup111_crit_edge, !prof !226

if.end13.cleanup111_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup111

if.end23:                                         ; preds = %if.end13
  %arrayidx24 = getelementptr ptr, ptr %tb, i32 3
  %37 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx24, align 4
  %tobool25.not = icmp eq ptr %38, null
  br i1 %tobool25.not, label %if.end23.if.end38_crit_edge, label %if.then32, !prof !226

if.end23.if.end38_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.then32:                                        ; preds = %if.end23
  %add.ptr.i.i170 = getelementptr i8, ptr %38, i32 4
  %39 = ptrtoint ptr %add.ptr.i.i170 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %add.ptr.i.i170, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %40)
  %cmp.not = icmp eq i8 %40, -128
  br i1 %cmp.not, label %if.then32.if.end38_crit_edge, label %if.then32.cleanup111_crit_edge

if.then32.cleanup111_crit_edge:                   ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup111

if.then32.if.end38_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.end38:                                         ; preds = %if.then32.if.end38_crit_edge, %if.end23.if.end38_crit_edge
  %call40 = call i32 @ip_set_get_ipaddr6(ptr noundef nonnull %24, ptr noundef nonnull %e) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.end38.cleanup111_crit_edge

if.end38.cleanup111_crit_edge:                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup111

if.end43:                                         ; preds = %if.end38
  %call44 = call i32 @ip_set_get_extensions(ptr noundef %set, ptr noundef %tb, ptr noundef nonnull %ext) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end43.cleanup111_crit_edge

if.end43.cleanup111_crit_edge:                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup111

if.end47:                                         ; preds = %if.end43
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i.i171 = getelementptr i8, ptr %42, i32 4
  %43 = ptrtoint ptr %add.ptr.i.i171 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %add.ptr.i.i171, align 2
  %port50 = getelementptr inbounds %struct.hash_ipport6_elem, ptr %e, i32 0, i32 1
  %45 = ptrtoint ptr %port50 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %port50, align 4
  %arrayidx51 = getelementptr ptr, ptr %tb, i32 7
  %46 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx51, align 4
  %tobool52.not = icmp eq ptr %47, null
  br i1 %tobool52.not, label %if.end47.cleanup111_crit_edge, label %if.then53

if.end47.cleanup111_crit_edge:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup111

if.then53:                                        ; preds = %if.end47
  %add.ptr.i.i172 = getelementptr i8, ptr %47, i32 4
  %48 = ptrtoint ptr %add.ptr.i.i172 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %add.ptr.i.i172, align 1
  %proto = getelementptr inbounds %struct.hash_ipport6_elem, ptr %e, i32 0, i32 2
  %50 = ptrtoint ptr %proto to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %proto, align 2
  %51 = zext i8 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.66)
  switch i8 %49, label %if.then73 [
    i8 6, label %if.then53.if.end75_crit_edge
    i8 -124, label %if.then53.if.end75_crit_edge195
    i8 17, label %if.then53.if.end75_crit_edge196
    i8 -120, label %if.then53.if.end75_crit_edge197
    i8 0, label %if.then53.cleanup111_crit_edge
    i8 58, label %if.then53.if.then83_crit_edge
  ]

if.then53.if.then83_crit_edge:                    ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then83

if.then53.cleanup111_crit_edge:                   ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup111

if.then53.if.end75_crit_edge197:                  ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end75

if.then53.if.end75_crit_edge196:                  ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end75

if.then53.if.end75_crit_edge195:                  ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end75

if.then53.if.end75_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end75

if.then73:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #14
  %52 = ptrtoint ptr %port50 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 0, ptr %port50, align 4
  br label %if.then83

if.end75:                                         ; preds = %if.then53.if.end75_crit_edge, %if.then53.if.end75_crit_edge195, %if.then53.if.end75_crit_edge196, %if.then53.if.end75_crit_edge197
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %adt)
  %cmp76 = icmp eq i32 %adt, 2
  br i1 %cmp76, label %if.end75.if.then83_crit_edge, label %lor.lhs.false80

if.end75.if.then83_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then83

lor.lhs.false80:                                  ; preds = %if.end75
  %53 = ptrtoint ptr %arrayidx.i166 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx.i166, align 4
  %tobool82.not = icmp eq ptr %54, null
  br i1 %tobool82.not, label %lor.lhs.false80.if.then83_crit_edge, label %if.end87

lor.lhs.false80.if.then83_crit_edge:              ; preds = %lor.lhs.false80
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then83

if.then83:                                        ; preds = %lor.lhs.false80.if.then83_crit_edge, %if.end75.if.then83_crit_edge, %if.then73, %if.then53.if.then83_crit_edge
  %call84 = call i32 %5(ptr noundef %set, ptr noundef nonnull %e, ptr noundef nonnull %ext, ptr noundef nonnull %ext, i32 noundef %flags) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4103, i32 %call84)
  %cmp.i = icmp eq i32 %call84, -4103
  %and.i = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %55 = and i1 %tobool.i, %cmp.i
  %spec.select = select i1 %55, i32 0, i32 %call84
  br label %cleanup111

if.end87:                                         ; preds = %lor.lhs.false80
  %56 = ptrtoint ptr %port50 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %port50, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %54, i32 4
  %58 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %add.ptr.i.i.i, align 2
  %60 = call i16 @llvm.umin.i16(i16 %57, i16 %59)
  %61 = call i16 @llvm.umax.i16(i16 %57, i16 %59)
  %spec.select165 = zext i16 %61 to i32
  br i1 %retried, label %if.end101, label %if.end87.for.body.lr.ph_crit_edge

if.end87.for.body.lr.ph_crit_edge:                ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.lr.ph

if.end101:                                        ; preds = %if.end87
  %port99 = getelementptr inbounds %struct.hash_ipport6, ptr %1, i32 0, i32 6, i32 1
  %62 = ptrtoint ptr %port99 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %port99, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %63, i16 %61)
  %cmp102.not189 = icmp ugt i16 %63, %61
  br i1 %cmp102.not189, label %if.end101.cleanup111_crit_edge, label %if.end101.for.body.lr.ph_crit_edge

if.end101.for.body.lr.ph_crit_edge:               ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.lr.ph

if.end101.cleanup111_crit_edge:                   ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup111

for.body.lr.ph:                                   ; preds = %if.end101.for.body.lr.ph_crit_edge, %if.end87.for.body.lr.ph_crit_edge
  %port.1.in194 = phi i16 [ %63, %if.end101.for.body.lr.ph_crit_edge ], [ %60, %if.end87.for.body.lr.ph_crit_edge ]
  %port.1 = zext i16 %port.1.in194 to i32
  %and.i174 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i174)
  %tobool.i175 = icmp ne i32 %and.i174, 0
  br label %for.body

for.body:                                         ; preds = %if.end110.for.body_crit_edge, %for.body.lr.ph
  %port.2190 = phi i32 [ %port.1, %for.body.lr.ph ], [ %inc, %if.end110.for.body_crit_edge ]
  %conv104 = trunc i32 %port.2190 to i16
  %64 = ptrtoint ptr %port50 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %conv104, ptr %port50, align 4
  %call106 = call i32 %5(ptr noundef %set, ptr noundef nonnull %e, ptr noundef nonnull %ext, ptr noundef nonnull %ext, i32 noundef %flags) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4103, i32 %call106)
  %cmp.i173 = icmp eq i32 %call106, -4103
  %65 = and i1 %tobool.i175, %cmp.i173
  %or.cond = or i1 %tobool107.not, %65
  br i1 %or.cond, label %if.end110, label %for.body.cleanup111_crit_edge

for.body.cleanup111_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup111

if.end110:                                        ; preds = %for.body
  %inc = add nuw nsw i32 %port.2190, 1
  %exitcond = icmp eq i32 %port.2190, %spec.select165
  br i1 %exitcond, label %if.end110.cleanup111_crit_edge, label %if.end110.for.body_crit_edge

if.end110.for.body_crit_edge:                     ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end110.cleanup111_crit_edge:                   ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup111

cleanup111:                                       ; preds = %if.end110.cleanup111_crit_edge, %for.body.cleanup111_crit_edge, %if.end101.cleanup111_crit_edge, %if.then83, %if.then53.cleanup111_crit_edge, %if.end47.cleanup111_crit_edge, %if.end43.cleanup111_crit_edge, %if.end38.cleanup111_crit_edge, %if.then32.cleanup111_crit_edge, %if.end13.cleanup111_crit_edge, %ip_set_optattr_netorder.exit.cleanup111_crit_edge, %ip_set_attr_netorder.exit.cleanup111_crit_edge, %lor.lhs.false.cleanup111_crit_edge, %if.end.cleanup111_crit_edge
  %retval.1 = phi i32 [ %spec.select, %if.then83 ], [ -4104, %if.then32.cleanup111_crit_edge ], [ -4097, %ip_set_optattr_netorder.exit.cleanup111_crit_edge ], [ -4356, %if.end13.cleanup111_crit_edge ], [ %call40, %if.end38.cleanup111_crit_edge ], [ %call44, %if.end43.cleanup111_crit_edge ], [ -4355, %if.end47.cleanup111_crit_edge ], [ -4097, %ip_set_attr_netorder.exit.cleanup111_crit_edge ], [ -4097, %if.end.cleanup111_crit_edge ], [ -4097, %lor.lhs.false.cleanup111_crit_edge ], [ -4354, %if.then53.cleanup111_crit_edge ], [ 0, %if.end101.cleanup111_crit_edge ], [ %call106, %for.body.cleanup111_crit_edge ], [ 0, %if.end110.cleanup111_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %ext) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %e) #12
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hash_ipport6_add(ptr noundef %set, ptr nocapture noundef readonly %value, ptr noundef %ext, ptr nocapture noundef readonly %mext, i32 noundef %flags) #2 align 64 {
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
  %.b561 = load i1, ptr @hash_ipport6_add.__warned, align 1
  br i1 %.b561, label %land.lhs.true7.jhash2.exit_crit_edge, label %if.then

land.lhs.true7.jhash2.exit_crit_edge:             ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %jhash2.exit

if.then:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hash_ipport6_add.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 855, ptr noundef nonnull @.str.8) #12
  br label %jhash2.exit

jhash2.exit:                                      ; preds = %if.then, %land.lhs.true7.jhash2.exit_crit_edge, %land.lhs.true.jhash2.exit_crit_edge, %rcu_read_lock_bh.exit.jhash2.exit_crit_edge
  %initval = getelementptr inbounds %struct.hash_ipport6, ptr %1, i32 0, i32 3
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
  %notmask672 = shl nsw i32 -1, %sub23
  %shl24.op = xor i32 %notmask672, -1
  %18 = select i1 %cmp, i32 0, i32 %shl24.op
  %rem = and i32 %18, %and17
  %uref = getelementptr inbounds %struct.htable, ptr %3, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %uref, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %uref, i32 1, i32 3, i32 1) #12
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uref, ptr %uref, i32 1, ptr elementtype(i32) %uref) #12, !srcloc !215
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
  %call.i568 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i568, label %if.then33.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true.i571

if.then33.rcu_read_unlock_bh.exit_crit_edge:      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

land.lhs.true.i571:                               ; preds = %if.then33
  %call1.i569 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i569)
  %tobool.not.i570 = icmp eq i32 %call1.i569, 0
  br i1 %tobool.not.i570, label %land.lhs.true.i571.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true2.i573

land.lhs.true.i571.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true.i571
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

land.lhs.true2.i573:                              ; preds = %land.lhs.true.i571
  %.b4.i572 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i572, label %land.lhs.true2.i573.rcu_read_unlock_bh.exit_crit_edge, label %if.then.i574

land.lhs.true2.i573.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i573
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

if.then.i574:                                     ; preds = %land.lhs.true2.i573
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 761, ptr noundef nonnull @.str.15) #12
  br label %rcu_read_unlock_bh.exit

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i574, %land.lhs.true2.i573.rcu_read_unlock_bh.exit_crit_edge, %land.lhs.true.i571.rcu_read_unlock_bh.exit_crit_edge, %if.then33.rcu_read_unlock_bh.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #12
  tail call fastcc void @local_bh_enable() #12
  tail call fastcc void @hash_ipport6_gc_do(ptr noundef %set, ptr noundef %3, i32 noundef %rem)
  tail call fastcc void @local_bh_disable() #12
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #12
  %call.i575 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i575, label %rcu_read_unlock_bh.exit.if.end34_crit_edge, label %land.lhs.true.i578

rcu_read_unlock_bh.exit.if.end34_crit_edge:       ; preds = %rcu_read_unlock_bh.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

land.lhs.true.i578:                               ; preds = %rcu_read_unlock_bh.exit
  %call1.i576 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i576)
  %tobool.not.i577 = icmp eq i32 %call1.i576, 0
  br i1 %tobool.not.i577, label %land.lhs.true.i578.if.end34_crit_edge, label %land.lhs.true2.i580

land.lhs.true.i578.if.end34_crit_edge:            ; preds = %land.lhs.true.i578
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

land.lhs.true2.i580:                              ; preds = %land.lhs.true.i578
  %.b4.i579 = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i579, label %land.lhs.true2.i580.if.end34_crit_edge, label %if.then.i581

land.lhs.true2.i580.if.end34_crit_edge:           ; preds = %land.lhs.true2.i580
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then.i581:                                     ; preds = %land.lhs.true2.i580
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 750, ptr noundef nonnull @.str.14) #12
  br label %if.end34

if.end34:                                         ; preds = %if.then.i581, %land.lhs.true2.i580.if.end34_crit_edge, %land.lhs.true.i578.if.end34_crit_edge, %rcu_read_unlock_bh.exit.if.end34_crit_edge, %if.then29.if.end34_crit_edge
  %maxelem35 = getelementptr inbounds %struct.hash_ipport6, ptr %1, i32 0, i32 2
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
  %e.0679 = phi i32 [ 0, %if.end34 ], [ %inc, %for.body.for.body_crit_edge ]
  %elements.0678 = phi i32 [ 0, %if.end34 ], [ %add, %for.body.for.body_crit_edge ]
  %elements52 = getelementptr %struct.ip_set_region, ptr %34, i32 %e.0679, i32 2
  %35 = ptrtoint ptr %elements52 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %elements52, align 4
  %add = add i32 %36, %elements.0678
  %inc = add nuw i32 %e.0679, 1
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
  %call.i583 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i583, label %if.end62.rcu_read_unlock_bh.exit590_crit_edge, label %land.lhs.true.i586

if.end62.rcu_read_unlock_bh.exit590_crit_edge:    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit590

land.lhs.true.i586:                               ; preds = %if.end62
  %call1.i584 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i584)
  %tobool.not.i585 = icmp eq i32 %call1.i584, 0
  br i1 %tobool.not.i585, label %land.lhs.true.i586.rcu_read_unlock_bh.exit590_crit_edge, label %land.lhs.true2.i588

land.lhs.true.i586.rcu_read_unlock_bh.exit590_crit_edge: ; preds = %land.lhs.true.i586
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit590

land.lhs.true2.i588:                              ; preds = %land.lhs.true.i586
  %.b4.i587 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i587, label %land.lhs.true2.i588.rcu_read_unlock_bh.exit590_crit_edge, label %if.then.i589

land.lhs.true2.i588.rcu_read_unlock_bh.exit590_crit_edge: ; preds = %land.lhs.true2.i588
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit590

if.then.i589:                                     ; preds = %land.lhs.true2.i588
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 761, ptr noundef nonnull @.str.15) #12
  br label %rcu_read_unlock_bh.exit590

rcu_read_unlock_bh.exit590:                       ; preds = %if.then.i589, %land.lhs.true2.i588.rcu_read_unlock_bh.exit590_crit_edge, %land.lhs.true.i586.rcu_read_unlock_bh.exit590_crit_edge, %if.end62.rcu_read_unlock_bh.exit590_crit_edge
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
  br i1 %tobool72.not, label %land.lhs.true73, label %rcu_read_unlock_bh.exit590.do.end81_crit_edge

rcu_read_unlock_bh.exit590.do.end81_crit_edge:    ; preds = %rcu_read_unlock_bh.exit590
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end81

land.lhs.true73:                                  ; preds = %rcu_read_unlock_bh.exit590
  %call74 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %land.lhs.true73.do.end81_crit_edge, label %land.lhs.true76

land.lhs.true73.do.end81_crit_edge:               ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end81

land.lhs.true76:                                  ; preds = %land.lhs.true73
  %.b550560 = load i1, ptr @hash_ipport6_add.__warned.44, align 1
  br i1 %.b550560, label %land.lhs.true76.do.end81_crit_edge, label %if.then78

land.lhs.true76.do.end81_crit_edge:               ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end81

if.then78:                                        ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hash_ipport6_add.__warned.44, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 878, ptr noundef nonnull @.str.8) #12
  br label %do.end81

do.end81:                                         ; preds = %if.then78, %land.lhs.true76.do.end81_crit_edge, %land.lhs.true73.do.end81_crit_edge, %rcu_read_unlock_bh.exit590.do.end81_crit_edge
  %tobool83.not = icmp eq ptr %43, null
  br i1 %tobool83.not, label %if.then84, label %for.cond103.preheader

for.cond103.preheader:                            ; preds = %do.end81
  %pos = getelementptr inbounds %struct.hbucket, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %pos, align 1
  %conv104 = zext i8 %45 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp105680.not = icmp eq i8 %45, 0
  br i1 %cmp105680.not, label %for.end154.thread, label %for.body107.lr.ph

for.body107.lr.ph:                                ; preds = %for.cond103.preheader
  %used = getelementptr inbounds %struct.hbucket, ptr %43, i32 0, i32 1
  %value116 = getelementptr inbounds %struct.hbucket, ptr %43, i32 0, i32 5
  %dsize118 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %port4.i = getelementptr inbounds %struct.hash_ipport6_elem, ptr %value, i32 0, i32 1
  %proto8.i = getelementptr inbounds %struct.hash_ipport6_elem, ptr %value, i32 0, i32 2
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
  %i.0684 = phi i32 [ 0, %for.body107.lr.ph ], [ %inc153, %for.inc152.for.body107_crit_edge ]
  %j.0683 = phi i32 [ -1, %for.body107.lr.ph ], [ %j.1, %for.inc152.for.body107_crit_edge ]
  %reuse.0.off0682 = phi i1 [ false, %for.body107.lr.ph ], [ %reuse.1.off0, %for.inc152.for.body107_crit_edge ]
  %deleted.0.off0681 = phi i1 [ false, %for.body107.lr.ph ], [ %deleted.1.off0, %for.inc152.for.body107_crit_edge ]
  %div3.i = lshr i32 %i.0684, 5
  %arrayidx.i = getelementptr i32, ptr %used, i32 %div3.i
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.0684, 31
  %50 = shl nuw i32 1, %and.i
  %51 = and i32 %49, %50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool109.not = icmp eq i32 %51, 0
  br i1 %tobool109.not, label %if.then110, label %if.end115

if.then110:                                       ; preds = %for.body107
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %j.0683)
  %cmp111 = icmp eq i32 %j.0683, -1
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
  %mul119 = mul i32 %53, %i.0684
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
  %or.i.i593 = or i32 %xor7.i.i, %xor.i.i
  %arrayidx9.i.i = getelementptr [4 x i32], ptr %add.ptr, i32 0, i32 2
  %62 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx9.i.i, align 4
  %64 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx5.i, align 4
  %xor12.i.i = xor i32 %65, %63
  %or13.i.i = or i32 %or.i.i593, %xor12.i.i
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
  %cmp.i.i594 = icmp eq i32 %or19.i.i, 0
  br i1 %cmp.i.i594, label %land.lhs.true.i596, label %if.end115.if.end136_crit_edge

if.end115.if.end136_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end136

land.lhs.true.i596:                               ; preds = %if.end115
  %port.i = getelementptr inbounds %struct.hash_ipport6_elem, ptr %add.ptr, i32 0, i32 1
  %70 = ptrtoint ptr %port.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %port.i, align 4
  %72 = ptrtoint ptr %port4.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %port4.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %71, i16 %73)
  %cmp.i595 = icmp eq i16 %71, %73
  br i1 %cmp.i595, label %hash_ipport6_data_equal.exit, label %land.lhs.true.i596.if.end136_crit_edge

land.lhs.true.i596.if.end136_crit_edge:           ; preds = %land.lhs.true.i596
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end136

hash_ipport6_data_equal.exit:                     ; preds = %land.lhs.true.i596
  %proto.i = getelementptr inbounds %struct.hash_ipport6_elem, ptr %add.ptr, i32 0, i32 2
  %74 = ptrtoint ptr %proto.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %proto.i, align 2
  %76 = ptrtoint ptr %proto8.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %proto8.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %75, i8 %77)
  %cmp10.i = icmp eq i8 %75, %77
  br i1 %cmp10.i, label %if.then121, label %hash_ipport6_data_equal.exit.if.end136_crit_edge

hash_ipport6_data_equal.exit.if.end136_crit_edge: ; preds = %hash_ipport6_data_equal.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end136

if.then121:                                       ; preds = %hash_ipport6_data_equal.exit
  br i1 %tobool.not, label %lor.lhs.false124, label %if.then121.overwrite_extensions_crit_edge

if.then121.overwrite_extensions_crit_edge:        ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #14
  br label %overwrite_extensions

lor.lhs.false124:                                 ; preds = %if.then121
  %78 = ptrtoint ptr %extensions137 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %extensions137, align 2
  %80 = and i8 %79, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool128.not = icmp eq i8 %80, 0
  br i1 %tobool128.not, label %lor.lhs.false124.unlock_crit_edge, label %land.lhs.true129

lor.lhs.false124.unlock_crit_edge:                ; preds = %lor.lhs.false124
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

land.lhs.true129:                                 ; preds = %lor.lhs.false124
  %81 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx143, align 4
  %add.ptr131 = getelementptr i8, ptr %add.ptr, i32 %82
  %83 = ptrtoint ptr %add.ptr131 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %add.ptr131, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp.not.i = icmp eq i32 %84, 0
  br i1 %cmp.not.i, label %land.lhs.true129.unlock_crit_edge, label %ip_set_timeout_expired.exit

land.lhs.true129.unlock_crit_edge:                ; preds = %land.lhs.true129
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

ip_set_timeout_expired.exit:                      ; preds = %land.lhs.true129
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %85 = load volatile i32, ptr @jiffies, align 128
  %sub.i597 = sub i32 %84, %85
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i597)
  %cmp1.i = icmp slt i32 %sub.i597, 0
  br i1 %cmp1.i, label %ip_set_timeout_expired.exit.overwrite_extensions_crit_edge, label %ip_set_timeout_expired.exit.unlock_crit_edge

ip_set_timeout_expired.exit.unlock_crit_edge:     ; preds = %ip_set_timeout_expired.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

ip_set_timeout_expired.exit.overwrite_extensions_crit_edge: ; preds = %ip_set_timeout_expired.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %overwrite_extensions

if.end136:                                        ; preds = %hash_ipport6_data_equal.exit.if.end136_crit_edge, %land.lhs.true.i596.if.end136_crit_edge, %if.end115.if.end136_crit_edge
  %86 = ptrtoint ptr %extensions137 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %extensions137, align 2
  %88 = and i8 %87, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool140.not = icmp eq i8 %88, 0
  br i1 %tobool140.not, label %if.end136.for.inc152_crit_edge, label %land.lhs.true141

if.end136.for.inc152_crit_edge:                   ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc152

land.lhs.true141:                                 ; preds = %if.end136
  %89 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx143, align 4
  %add.ptr144 = getelementptr i8, ptr %add.ptr, i32 %90
  %91 = ptrtoint ptr %add.ptr144 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %add.ptr144, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp.not.i599 = icmp eq i32 %92, 0
  br i1 %cmp.not.i599, label %land.lhs.true141.ip_set_timeout_expired.exit603_crit_edge, label %land.rhs.i602

land.lhs.true141.ip_set_timeout_expired.exit603_crit_edge: ; preds = %land.lhs.true141
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_set_timeout_expired.exit603

land.rhs.i602:                                    ; preds = %land.lhs.true141
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %93 = load volatile i32, ptr @jiffies, align 128
  %sub.i600 = sub i32 %92, %93
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i600)
  %cmp1.i601 = icmp slt i32 %sub.i600, 0
  br label %ip_set_timeout_expired.exit603

ip_set_timeout_expired.exit603:                   ; preds = %land.rhs.i602, %land.lhs.true141.ip_set_timeout_expired.exit603_crit_edge
  %94 = phi i1 [ false, %land.lhs.true141.ip_set_timeout_expired.exit603_crit_edge ], [ %cmp1.i601, %land.rhs.i602 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %j.0683)
  %cmp148 = icmp eq i32 %j.0683, -1
  %or.cond562 = select i1 %94, i1 %cmp148, i1 false
  %spec.select563 = select i1 %or.cond562, i1 true, i1 %reuse.0.off0682
  %spec.select564 = select i1 %or.cond562, i32 %i.0684, i32 %j.0683
  br label %for.inc152

for.inc152:                                       ; preds = %ip_set_timeout_expired.exit603, %if.end136.for.inc152_crit_edge, %if.then113, %if.then110.for.inc152_crit_edge
  %deleted.1.off0 = phi i1 [ %deleted.0.off0681, %if.end136.for.inc152_crit_edge ], [ true, %if.then113 ], [ %deleted.0.off0681, %if.then110.for.inc152_crit_edge ], [ %deleted.0.off0681, %ip_set_timeout_expired.exit603 ]
  %reuse.1.off0 = phi i1 [ %reuse.0.off0682, %if.end136.for.inc152_crit_edge ], [ true, %if.then113 ], [ %reuse.0.off0682, %if.then110.for.inc152_crit_edge ], [ %spec.select563, %ip_set_timeout_expired.exit603 ]
  %j.1 = phi i32 [ %j.0683, %if.end136.for.inc152_crit_edge ], [ %i.0684, %if.then113 ], [ %j.0683, %if.then110.for.inc152_crit_edge ], [ %spec.select564, %ip_set_timeout_expired.exit603 ]
  %inc153 = add nuw nsw i32 %i.0684, 1
  %exitcond691.not = icmp eq i32 %inc153, %conv104
  br i1 %exitcond691.not, label %for.end154, label %for.inc152.for.body107_crit_edge

for.inc152.for.body107_crit_edge:                 ; preds = %for.inc152
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body107

for.end154:                                       ; preds = %for.inc152
  %brmerge = select i1 %reuse.1.off0, i1 true, i1 %forceadd.1.off0
  br i1 %brmerge, label %if.then160, label %for.end154.if.end176_crit_edge

for.end154.if.end176_crit_edge:                   ; preds = %for.end154
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end176

for.end154.thread:                                ; preds = %for.cond103.preheader
  br i1 %forceadd.1.off0, label %if.then160.thread, label %for.end154.thread.if.end176_crit_edge

for.end154.thread.if.end176_crit_edge:            ; preds = %for.end154.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end176

if.then160.thread:                                ; preds = %for.end154.thread
  call void @__sanitizer_cov_trace_pc() #14
  %value165702 = getelementptr inbounds %struct.hbucket, ptr %43, i32 0, i32 5
  br label %if.then171

if.then160:                                       ; preds = %for.end154
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %j.1)
  %cmp161 = icmp eq i32 %j.1, -1
  %spec.store.select = select i1 %cmp161, i32 0, i32 %j.1
  %value165 = getelementptr inbounds %struct.hbucket, ptr %43, i32 0, i32 5
  %dsize167 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %95 = ptrtoint ptr %dsize167 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %dsize167, align 4
  %mul168 = mul i32 %96, %spec.store.select
  %add.ptr169 = getelementptr i8, ptr %value165, i32 %mul168
  br i1 %deleted.1.off0, label %if.then160.copy_data_crit_edge, label %if.then160.if.then171_crit_edge

if.then160.if.then171_crit_edge:                  ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then171

if.then160.copy_data_crit_edge:                   ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_data

if.then171:                                       ; preds = %if.then160.if.then171_crit_edge, %if.then160.thread
  %add.ptr169707 = phi ptr [ %value165702, %if.then160.thread ], [ %add.ptr169, %if.then160.if.then171_crit_edge ]
  %spec.store.select706 = phi i32 [ 0, %if.then160.thread ], [ %spec.store.select, %if.then160.if.then171_crit_edge ]
  %extensions.i = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 8
  %97 = ptrtoint ptr %extensions.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %extensions.i, align 2
  %99 = and i8 %98, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool.not.i604 = icmp eq i8 %99, 0
  br i1 %tobool.not.i604, label %if.then171.ip_set_ext_destroy.exit_crit_edge, label %if.then.i607

if.then171.ip_set_ext_destroy.exit_crit_edge:     ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_set_ext_destroy.exit

if.then.i607:                                     ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i605 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 3
  %100 = ptrtoint ptr %arrayidx.i605 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx.i605, align 4
  %add.ptr.i606 = getelementptr i8, ptr %add.ptr169707, i32 %101
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.ip_set_ext_type], ptr @ip_set_extensions, i32 0, i32 3) to i32))
  %102 = load ptr, ptr getelementptr inbounds ([0 x %struct.ip_set_ext_type], ptr @ip_set_extensions, i32 0, i32 3), align 4
  tail call void %102(ptr noundef %set, ptr noundef %add.ptr.i606) #12
  br label %ip_set_ext_destroy.exit

ip_set_ext_destroy.exit:                          ; preds = %if.then.i607, %if.then171.ip_set_ext_destroy.exit_crit_edge
  %103 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %hregion, align 4
  %elements174 = getelementptr %struct.ip_set_region, ptr %104, i32 %rem, i32 2
  %105 = ptrtoint ptr %elements174 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %elements174, align 4
  %dec = add i32 %106, -1
  store i32 %dec, ptr %elements174, align 4
  br label %copy_data

if.end176:                                        ; preds = %for.end154.thread.if.end176_crit_edge, %for.end154.if.end176_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %elements.1, i32 %maxelem.0)
  %cmp177.not = icmp ult i32 %elements.1, %maxelem.0
  br i1 %cmp177.not, label %if.end180, label %if.end176.set_full_crit_edge

if.end176.set_full_crit_edge:                     ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #14
  br label %set_full

if.end180:                                        ; preds = %if.end176
  %size183 = getelementptr inbounds %struct.hbucket, ptr %43, i32 0, i32 2
  %107 = ptrtoint ptr %size183 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %size183, align 8
  %conv184 = zext i8 %108 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %45, i8 %108)
  %cmp185.not = icmp ult i8 %45, %108
  br i1 %cmp185.not, label %if.end180.copy_elem_crit_edge, label %if.then187

if.end180.copy_elem_crit_edge:                    ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_elem

if.then187:                                       ; preds = %if.end180
  %bucketsize = getelementptr inbounds %struct.hash_ipport6, ptr %1, i32 0, i32 4
  %109 = ptrtoint ptr %bucketsize to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %bucketsize, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %108, i8 %110)
  %cmp191.not = icmp ult i8 %108, %110
  br i1 %cmp191.not, label %if.end194, label %if.then193

if.then193:                                       ; preds = %if.then187
  call void @__sanitizer_cov_trace_pc() #14
  %port.i608 = getelementptr inbounds %struct.hash_ipport6_elem, ptr %value, i32 0, i32 1
  %111 = ptrtoint ptr %port.i608 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %port.i608, align 4
  %port1.i = getelementptr inbounds %struct.hash_ipport6, ptr %1, i32 0, i32 6, i32 1
  %113 = ptrtoint ptr %port1.i to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 %112, ptr %port1.i, align 4
  br label %resize

if.end194:                                        ; preds = %if.then187
  %dsize198 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %114 = ptrtoint ptr %dsize198 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %dsize198, align 4
  %add197 = add nuw nsw i32 %conv184, 2
  %mul199 = mul i32 %115, %add197
  %add200 = add i32 %mul199, 24
  %call9.i.i637 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add200, i32 noundef 2848) #16
  %tobool202.not = icmp eq ptr %call9.i.i637, null
  br i1 %tobool202.not, label %if.end194.unlock_crit_edge, label %if.end204

if.end194.unlock_crit_edge:                       ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.end204:                                        ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #14
  %116 = ptrtoint ptr %size183 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %size183, align 8
  %conv206 = zext i8 %117 to i32
  %118 = ptrtoint ptr %dsize198 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %dsize198, align 4
  %mul208 = mul i32 %119, %conv206
  %add209 = add i32 %mul208, 24
  %120 = call ptr @memcpy(ptr %call9.i.i637, ptr %43, i32 %add209)
  %121 = load i8, ptr %size183, align 8
  %add212 = add i8 %121, 2
  br label %copy_elem.sink.split

copy_elem.sink.split:                             ; preds = %if.end204, %if.end90.copy_elem.sink.split_crit_edge
  %retval.1.i.i667.sink = phi ptr [ %call9.i.i637, %if.end204 ], [ %call9.i.i, %if.end90.copy_elem.sink.split_crit_edge ]
  %.sink = phi i8 [ %add212, %if.end204 ], [ 2, %if.end90.copy_elem.sink.split_crit_edge ]
  %dsize.sink = phi ptr [ %dsize198, %if.end204 ], [ %dsize, %if.end90.copy_elem.sink.split_crit_edge ]
  %old.0.ph = phi ptr [ %43, %if.end204 ], [ null, %if.end90.copy_elem.sink.split_crit_edge ]
  %size = getelementptr inbounds %struct.hbucket, ptr %retval.1.i.i667.sink, i32 0, i32 2
  %122 = ptrtoint ptr %size to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %.sink, ptr %size, align 16
  %123 = ptrtoint ptr %dsize.sink to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %dsize.sink, align 4
  %mul97 = shl i32 %124, 1
  %add98 = add i32 %mul97, 24
  %125 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %hregion, align 4
  %ext_size = getelementptr %struct.ip_set_region, ptr %126, i32 %rem, i32 1
  %127 = ptrtoint ptr %ext_size to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %ext_size, align 4
  %add221 = add i32 %add98, %128
  store i32 %add221, ptr %ext_size, align 4
  br label %copy_elem

copy_elem:                                        ; preds = %copy_elem.sink.split, %if.end180.copy_elem_crit_edge
  %old.0 = phi ptr [ inttoptr (i32 -2 to ptr), %if.end180.copy_elem_crit_edge ], [ %old.0.ph, %copy_elem.sink.split ]
  %n.0 = phi ptr [ %43, %if.end180.copy_elem_crit_edge ], [ %retval.1.i.i667.sink, %copy_elem.sink.split ]
  %pos223 = getelementptr inbounds %struct.hbucket, ptr %n.0, i32 0, i32 3
  %129 = ptrtoint ptr %pos223 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %pos223, align 1
  %inc224 = add i8 %130, 1
  store i8 %inc224, ptr %pos223, align 1
  %conv225 = zext i8 %130 to i32
  %value226 = getelementptr inbounds %struct.hbucket, ptr %n.0, i32 0, i32 5
  %dsize228 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %131 = ptrtoint ptr %dsize228 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %dsize228, align 4
  %mul229 = mul i32 %132, %conv225
  %add.ptr230 = getelementptr i8, ptr %value226, i32 %mul229
  br label %copy_data

copy_data:                                        ; preds = %copy_elem, %ip_set_ext_destroy.exit, %if.then160.copy_data_crit_edge
  %j.2 = phi i32 [ %spec.store.select, %if.then160.copy_data_crit_edge ], [ %spec.store.select706, %ip_set_ext_destroy.exit ], [ %conv225, %copy_elem ]
  %old.1 = phi ptr [ inttoptr (i32 -2 to ptr), %if.then160.copy_data_crit_edge ], [ inttoptr (i32 -2 to ptr), %ip_set_ext_destroy.exit ], [ %old.0, %copy_elem ]
  %n.1 = phi ptr [ %43, %if.then160.copy_data_crit_edge ], [ %43, %ip_set_ext_destroy.exit ], [ %n.0, %copy_elem ]
  %data1.0 = phi ptr [ %add.ptr169, %if.then160.copy_data_crit_edge ], [ %add.ptr169707, %ip_set_ext_destroy.exit ], [ %add.ptr230, %copy_elem ]
  %133 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %hregion, align 4
  %elements233 = getelementptr %struct.ip_set_region, ptr %134, i32 %rem, i32 2
  %135 = ptrtoint ptr %elements233 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %elements233, align 4
  %inc234 = add i32 %136, 1
  store i32 %inc234, ptr %elements233, align 4
  %137 = call ptr @memcpy(ptr %data1.0, ptr %value, i32 20)
  br label %overwrite_extensions

overwrite_extensions:                             ; preds = %copy_data, %ip_set_timeout_expired.exit.overwrite_extensions_crit_edge, %if.then121.overwrite_extensions_crit_edge
  %j.3 = phi i32 [ %j.2, %copy_data ], [ %i.0684, %ip_set_timeout_expired.exit.overwrite_extensions_crit_edge ], [ %i.0684, %if.then121.overwrite_extensions_crit_edge ]
  %old.2 = phi ptr [ %old.1, %copy_data ], [ inttoptr (i32 -2 to ptr), %ip_set_timeout_expired.exit.overwrite_extensions_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.then121.overwrite_extensions_crit_edge ]
  %n.2 = phi ptr [ %n.1, %copy_data ], [ %43, %ip_set_timeout_expired.exit.overwrite_extensions_crit_edge ], [ %43, %if.then121.overwrite_extensions_crit_edge ]
  %data1.1 = phi ptr [ %data1.0, %copy_data ], [ %add.ptr, %ip_set_timeout_expired.exit.overwrite_extensions_crit_edge ], [ %add.ptr, %if.then121.overwrite_extensions_crit_edge ]
  %extensions235 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 8
  %138 = ptrtoint ptr %extensions235 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %extensions235, align 2
  %140 = and i8 %139, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %tobool238.not = icmp eq i8 %140, 0
  br i1 %tobool238.not, label %overwrite_extensions.if.end243_crit_edge, label %if.then239

overwrite_extensions.if.end243_crit_edge:         ; preds = %overwrite_extensions
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end243

if.then239:                                       ; preds = %overwrite_extensions
  %offset240 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 14
  %141 = ptrtoint ptr %offset240 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %offset240, align 4
  %add.ptr242 = getelementptr i8, ptr %data1.1, i32 %142
  %bytes.i = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 2
  %143 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load8_noabort(i32 %143)
  %144 = load i64, ptr %bytes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %144)
  %cmp.not.i641 = icmp eq i64 %144, -1
  br i1 %cmp.not.i641, label %if.then239.if.end.i_crit_edge, label %if.then.i642

if.then239.if.end.i_crit_edge:                    ; preds = %if.then239
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i642:                                     ; preds = %if.then239
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr242, i32 noundef 8) #12
  tail call void @generic_atomic64_set(ptr noundef %add.ptr242, i64 noundef %144) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i642, %if.then239.if.end.i_crit_edge
  %packets.i = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 1
  %145 = ptrtoint ptr %packets.i to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %packets.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %146)
  %cmp3.not.i = icmp eq i64 %146, -1
  br i1 %cmp3.not.i, label %if.end.i.if.end243_crit_edge, label %if.then4.i

if.end.i.if.end243_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end243

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %packets5.i = getelementptr inbounds %struct.ip_set_counter, ptr %add.ptr242, i32 0, i32 1
  %call.i.i13.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %packets5.i, i32 noundef 8) #12
  tail call void @generic_atomic64_set(ptr noundef %packets5.i, i64 noundef %146) #12
  br label %if.end243

if.end243:                                        ; preds = %if.then4.i, %if.end.i.if.end243_crit_edge, %overwrite_extensions.if.end243_crit_edge
  %147 = ptrtoint ptr %extensions235 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %extensions235, align 2
  %149 = and i8 %148, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %tobool247.not = icmp eq i8 %149, 0
  br i1 %tobool247.not, label %if.end243.if.end252_crit_edge, label %if.then248

if.end243.if.end252_crit_edge:                    ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end252

if.then248:                                       ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx250 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 3
  %150 = ptrtoint ptr %arrayidx250 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx250, align 4
  %add.ptr251 = getelementptr i8, ptr %data1.1, i32 %151
  tail call void @ip_set_init_comment(ptr noundef %set, ptr noundef %add.ptr251, ptr noundef %ext) #12
  br label %if.end252

if.end252:                                        ; preds = %if.then248, %if.end243.if.end252_crit_edge
  %152 = ptrtoint ptr %extensions235 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %extensions235, align 2
  %154 = and i8 %153, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %154)
  %tobool256.not = icmp eq i8 %154, 0
  br i1 %tobool256.not, label %if.end252.if.end261_crit_edge, label %if.then257

if.end252.if.end261_crit_edge:                    ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end261

if.then257:                                       ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx259 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 2
  %155 = ptrtoint ptr %arrayidx259 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %arrayidx259, align 4
  %add.ptr260 = getelementptr i8, ptr %data1.1, i32 %156
  %157 = call ptr @memcpy(ptr %add.ptr260, ptr %ext, i32 16)
  br label %if.end261

if.end261:                                        ; preds = %if.then257, %if.end252.if.end261_crit_edge
  %158 = ptrtoint ptr %extensions235 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %extensions235, align 2
  %160 = and i8 %159, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %tobool265.not = icmp eq i8 %160, 0
  br i1 %tobool265.not, label %if.end261.do.end274_crit_edge, label %if.then266

if.end261.do.end274_crit_edge:                    ; preds = %if.end261
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end274

if.then266:                                       ; preds = %if.end261
  %arrayidx268 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 1
  %161 = ptrtoint ptr %arrayidx268 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %arrayidx268, align 4
  %add.ptr269 = getelementptr i8, ptr %data1.1, i32 %162
  %timeout = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 4
  %163 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %tobool.not.i643 = icmp eq i32 %164, 0
  br i1 %tobool.not.i643, label %if.then266.ip_set_timeout_set.exit_crit_edge, label %if.else.i.i

if.then266.ip_set_timeout_set.exit_crit_edge:     ; preds = %if.then266
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_set_timeout_set.exit

if.else.i.i:                                      ; preds = %if.then266
  call void @__sanitizer_cov_trace_pc() #14
  %mul.i = mul i32 %164, 1000
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %mul.i) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %165 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %165, %call2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp.i648 = icmp eq i32 %add.i, 0
  %spec.select.i = select i1 %cmp.i648, i32 -1, i32 %add.i
  br label %ip_set_timeout_set.exit

ip_set_timeout_set.exit:                          ; preds = %if.else.i.i, %if.then266.ip_set_timeout_set.exit_crit_edge
  %storemerge.i = phi i32 [ %spec.select.i, %if.else.i.i ], [ 0, %if.then266.ip_set_timeout_set.exit_crit_edge ]
  %166 = ptrtoint ptr %add.ptr269 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %storemerge.i, ptr %add.ptr269, align 4
  br label %do.end274

do.end274:                                        ; preds = %ip_set_timeout_set.exit, %if.end261.do.end274_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !231
  %used277 = getelementptr inbounds %struct.hbucket, ptr %n.2, i32 0, i32 1
  tail call void @_set_bit(i32 noundef %j.3, ptr noundef %used277) #12
  %cmp280.not = icmp eq ptr %old.2, inttoptr (i32 -2 to ptr)
  br i1 %cmp280.not, label %do.end274.resize_crit_edge, label %do.body283

do.end274.resize_crit_edge:                       ; preds = %do.end274
  call void @__sanitizer_cov_trace_pc() #14
  br label %resize

do.body283:                                       ; preds = %do.end274
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !232
  %167 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store4_noabort(i32 %167)
  store volatile ptr %n.2, ptr %arrayidx69, align 4
  %tobool325.not = icmp eq ptr %old.2, null
  br i1 %tobool325.not, label %do.body283.resize_crit_edge, label %do.end332

do.body283.resize_crit_edge:                      ; preds = %do.body283
  call void @__sanitizer_cov_trace_pc() #14
  br label %resize

do.end332:                                        ; preds = %do.body283
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kvfree_call_rcu(ptr noundef nonnull %old.2, ptr noundef null) #12
  br label %resize

resize:                                           ; preds = %do.end332, %do.body283.resize_crit_edge, %do.end274.resize_crit_edge, %if.then193
  %ret.0 = phi i32 [ -11, %if.then193 ], [ 0, %do.body283.resize_crit_edge ], [ 0, %do.end332 ], [ 0, %do.end274.resize_crit_edge ]
  %168 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %hregion, align 4
  %arrayidx339 = getelementptr %struct.ip_set_region, ptr %169, i32 %rem
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx339) #12
  %call.i.i565 = tail call zeroext i1 @__kasan_check_read(ptr noundef %3, i32 noundef 4) #12
  %170 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load volatile i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %171)
  %tobool342.not = icmp eq i32 %171, 0
  br i1 %tobool342.not, label %resize.out_crit_edge, label %land.lhs.true343

resize.out_crit_edge:                             ; preds = %resize
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

land.lhs.true343:                                 ; preds = %resize
  %target = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 7
  %172 = ptrtoint ptr %target to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %target, align 2, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %173)
  %tobool344.not = icmp eq i8 %173, 0
  br i1 %tobool344.not, label %land.lhs.true343.out_crit_edge, label %if.then346

land.lhs.true343.out_crit_edge:                   ; preds = %land.lhs.true343
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then346:                                       ; preds = %land.lhs.true343
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %174 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i656 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %174, i32 noundef 2848, i32 noundef 136) #15
  %tobool348.not = icmp eq ptr %call7.i.i656, null
  br i1 %tobool348.not, label %if.then346.out_crit_edge, label %if.end350

if.then346.out_crit_edge:                         ; preds = %if.then346
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end350:                                        ; preds = %if.then346
  %ad = getelementptr inbounds %struct.hash_ipport6_resize_ad, ptr %call7.i.i656, i32 0, i32 1
  %175 = ptrtoint ptr %ad to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 0, ptr %ad, align 8
  %d351 = getelementptr inbounds %struct.hash_ipport6_resize_ad, ptr %call7.i.i656, i32 0, i32 2
  %176 = call ptr @memcpy(ptr %d351, ptr %value, i32 20)
  %ext352 = getelementptr inbounds %struct.hash_ipport6_resize_ad, ptr %call7.i.i656, i32 0, i32 3
  %177 = call ptr @memcpy(ptr %ext352, ptr %ext, i32 48)
  %mext353 = getelementptr inbounds %struct.hash_ipport6_resize_ad, ptr %call7.i.i656, i32 0, i32 4
  %178 = call ptr @memcpy(ptr %mext353, ptr %mext, i32 48)
  %flags354 = getelementptr inbounds %struct.hash_ipport6_resize_ad, ptr %call7.i.i656, i32 0, i32 5
  %179 = ptrtoint ptr %flags354 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %flags, ptr %flags354, align 8
  %lock355 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock355) #12
  %ad356 = getelementptr inbounds %struct.hash_ipport6, ptr %1, i32 0, i32 5
  %prev.i = getelementptr inbounds %struct.hash_ipport6, ptr %1, i32 0, i32 5, i32 1
  %180 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %prev.i, align 4
  %call.i.i658 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i656, ptr noundef %181, ptr noundef %ad356) #12
  br i1 %call.i.i658, label %if.end.i.i659, label %if.end350.out.sink.split_crit_edge

if.end350.out.sink.split_crit_edge:               ; preds = %if.end350
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.sink.split

if.end.i.i659:                                    ; preds = %if.end350
  call void @__sanitizer_cov_trace_pc() #14
  %182 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %call7.i.i656, ptr %prev.i, align 4
  %183 = ptrtoint ptr %call7.i.i656 to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %ad356, ptr %call7.i.i656, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i656, i32 0, i32 1
  %184 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr %181, ptr %prev3.i.i, align 4
  %185 = ptrtoint ptr %181 to i32
  call void @__asan_store4_noabort(i32 %185)
  store volatile ptr %call7.i.i656, ptr %181, align 4
  br label %out.sink.split

set_full:                                         ; preds = %if.end176.set_full_crit_edge, %if.then84.set_full_crit_edge
  %call359 = tail call i32 @net_ratelimit() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call359)
  %tobool360.not = icmp eq i32 %call359, 0
  br i1 %tobool360.not, label %set_full.unlock_crit_edge, label %do.end364

set_full.unlock_crit_edge:                        ; preds = %set_full
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

do.end364:                                        ; preds = %set_full
  call void @__sanitizer_cov_trace_pc() #14
  %call367 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %set, i32 noundef %maxelem.0) #17
  br label %unlock

unlock:                                           ; preds = %do.end364, %set_full.unlock_crit_edge, %if.end194.unlock_crit_edge, %ip_set_timeout_expired.exit.unlock_crit_edge, %land.lhs.true129.unlock_crit_edge, %lor.lhs.false124.unlock_crit_edge, %if.end90.unlock_crit_edge
  %ret.1 = phi i32 [ -12, %if.end90.unlock_crit_edge ], [ -4103, %ip_set_timeout_expired.exit.unlock_crit_edge ], [ -4103, %lor.lhs.false124.unlock_crit_edge ], [ -12, %if.end194.unlock_crit_edge ], [ -4352, %do.end364 ], [ -4352, %set_full.unlock_crit_edge ], [ -4103, %land.lhs.true129.unlock_crit_edge ]
  %186 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %hregion, align 4
  %arrayidx370 = getelementptr %struct.ip_set_region, ptr %187, i32 %rem
  br label %out.sink.split

out.sink.split:                                   ; preds = %unlock, %if.end.i.i659, %if.end350.out.sink.split_crit_edge
  %lock355.sink = phi ptr [ %arrayidx370, %unlock ], [ %lock355, %if.end350.out.sink.split_crit_edge ], [ %lock355, %if.end.i.i659 ]
  %ret.2.ph = phi i32 [ %ret.1, %unlock ], [ %ret.0, %if.end350.out.sink.split_crit_edge ], [ %ret.0, %if.end.i.i659 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock355.sink) #12
  br label %out

out:                                              ; preds = %out.sink.split, %if.then346.out_crit_edge, %land.lhs.true343.out_crit_edge, %resize.out_crit_edge
  %ret.2 = phi i32 [ %ret.0, %land.lhs.true343.out_crit_edge ], [ %ret.0, %resize.out_crit_edge ], [ %ret.0, %if.then346.out_crit_edge ], [ %ret.2.ph, %out.sink.split ]
  %call.i.i566 = tail call zeroext i1 @__kasan_check_write(ptr noundef %uref, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !219
  tail call void @llvm.prefetch.p0(ptr %uref, i32 1, i32 3, i32 1) #12
  %188 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uref, ptr %uref, i32 1, ptr elementtype(i32) %uref) #12, !srcloc !220
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %188, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !221
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true375, label %out.cleanup392_crit_edge

out.cleanup392_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup392

land.lhs.true375:                                 ; preds = %out
  %call.i.i567 = tail call zeroext i1 @__kasan_check_read(ptr noundef %3, i32 noundef 4) #12
  %189 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load volatile i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %190)
  %tobool378.not = icmp eq i32 %190, 0
  br i1 %tobool378.not, label %land.lhs.true375.cleanup392_crit_edge, label %do.body380

land.lhs.true375.cleanup392_crit_edge:            ; preds = %land.lhs.true375
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup392

do.body380:                                       ; preds = %land.lhs.true375
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_ipport6_add.__UNIQUE_ID_ddebug729, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_ipport6_add, %if.then387)) #12
          to label %do.end.i [label %if.then387], !srcloc !210

if.then387:                                       ; preds = %do.body380
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_ipport6_add.__UNIQUE_ID_ddebug729, ptr noundef nonnull @.str.12, ptr noundef %3) #12
  br label %do.end.i

do.end.i:                                         ; preds = %for.inc.i.do.end.i_crit_edge, %if.then387, %do.body380
  %i.017.i = phi i32 [ %inc.i, %for.inc.i.do.end.i_crit_edge ], [ 0, %do.body380 ], [ 0, %if.then387 ]
  %arrayidx.i661 = getelementptr %struct.htable, ptr %3, i32 0, i32 5, i32 %i.017.i
  %191 = ptrtoint ptr %arrayidx.i661 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %arrayidx.i661, align 4
  %tobool.not.i662 = icmp eq ptr %192, null
  br i1 %tobool.not.i662, label %do.end.i.for.inc.i_crit_edge, label %if.end.i663

do.end.i.for.inc.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end.i663:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %192) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i663, %do.end.i.for.inc.i_crit_edge
  %inc.i = add i32 %i.017.i, 1
  %193 = ptrtoint ptr %htable_bits to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %htable_bits, align 4
  %conv.i = zext i8 %194 to i32
  %i.0.highbits.i = lshr i32 %inc.i, %conv.i
  %cmp.i664 = icmp eq i32 %i.0.highbits.i, 0
  br i1 %cmp.i664, label %for.inc.i.do.end.i_crit_edge, label %hash_ipport6_ahash_destroy.exit

for.inc.i.do.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

hash_ipport6_ahash_destroy.exit:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  %195 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %hregion, align 4
  tail call void @ip_set_free(ptr noundef %196) #12
  tail call void @ip_set_free(ptr noundef %3) #12
  br label %cleanup392

cleanup392:                                       ; preds = %hash_ipport6_ahash_destroy.exit, %land.lhs.true375.cleanup392_crit_edge, %out.cleanup392_crit_edge
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hash_ipport6_del(ptr noundef %set, ptr nocapture noundef readonly %value, ptr nocapture noundef readonly %ext, ptr nocapture noundef readnone %mext, i32 noundef %flags) #2 align 64 {
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
  %.b426 = load i1, ptr @hash_ipport6_del.__warned, align 1
  br i1 %.b426, label %land.lhs.true6.jhash2.exit_crit_edge, label %if.then

land.lhs.true6.jhash2.exit_crit_edge:             ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  br label %jhash2.exit

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hash_ipport6_del.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1048, ptr noundef nonnull @.str.8) #12
  br label %jhash2.exit

jhash2.exit:                                      ; preds = %if.then, %land.lhs.true6.jhash2.exit_crit_edge, %land.lhs.true.jhash2.exit_crit_edge, %rcu_read_lock_bh.exit.jhash2.exit_crit_edge
  %initval = getelementptr inbounds %struct.hash_ipport6, ptr %1, i32 0, i32 3
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
  %notmask471 = shl nsw i32 -1, %sub21
  %shl22.op = xor i32 %notmask471, -1
  %20 = select i1 %cmp, i32 0, i32 %shl22.op
  %rem = and i32 %20, %and
  %uref = getelementptr inbounds %struct.htable, ptr %5, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %uref, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %uref, i32 1, i32 3, i32 1) #12
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uref, ptr %uref, i32 1, ptr elementtype(i32) %uref) #12, !srcloc !215
  %call.i440 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i440, label %jhash2.exit.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true.i443

jhash2.exit.rcu_read_unlock_bh.exit_crit_edge:    ; preds = %jhash2.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

land.lhs.true.i443:                               ; preds = %jhash2.exit
  %call1.i441 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i441)
  %tobool.not.i442 = icmp eq i32 %call1.i441, 0
  br i1 %tobool.not.i442, label %land.lhs.true.i443.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true2.i445

land.lhs.true.i443.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true.i443
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

land.lhs.true2.i445:                              ; preds = %land.lhs.true.i443
  %.b4.i444 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i444, label %land.lhs.true2.i445.rcu_read_unlock_bh.exit_crit_edge, label %if.then.i446

land.lhs.true2.i445.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i445
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

if.then.i446:                                     ; preds = %land.lhs.true2.i445
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 761, ptr noundef nonnull @.str.15) #12
  br label %rcu_read_unlock_bh.exit

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i446, %land.lhs.true2.i445.rcu_read_unlock_bh.exit_crit_edge, %land.lhs.true.i443.rcu_read_unlock_bh.exit_crit_edge, %jhash2.exit.rcu_read_unlock_bh.exit_crit_edge
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
  %.b424425 = load i1, ptr @hash_ipport6_del.__warned.47, align 1
  br i1 %.b424425, label %land.lhs.true34.do.end39_crit_edge, label %if.then36

land.lhs.true34.do.end39_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end39

if.then36:                                        ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hash_ipport6_del.__warned.47, align 1
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
  %cmp45475.not = icmp eq i8 %27, 0
  br i1 %cmp45475.not, label %for.cond.preheader.out_crit_edge, label %for.body.lr.ph

for.cond.preheader.out_crit_edge:                 ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %used = getelementptr inbounds %struct.hbucket, ptr %25, i32 0, i32 1
  %value51 = getelementptr inbounds %struct.hbucket, ptr %25, i32 0, i32 5
  %port4.i = getelementptr inbounds %struct.hash_ipport6_elem, ptr %value, i32 0, i32 1
  %proto8.i = getelementptr inbounds %struct.hash_ipport6_elem, ptr %value, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc285.for.body_crit_edge, %for.body.lr.ph
  %i.0477 = phi i32 [ 0, %for.body.lr.ph ], [ %inc286, %for.inc285.for.body_crit_edge ]
  %k.0476 = phi i32 [ 0, %for.body.lr.ph ], [ %k.5, %for.inc285.for.body_crit_edge ]
  %div3.i = lshr i32 %i.0477, 5
  %arrayidx.i = getelementptr i32, ptr %used, i32 %div3.i
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.0477, 31
  %30 = shl nuw i32 1, %and.i
  %31 = and i32 %29, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool48.not = icmp eq i32 %31, 0
  br i1 %tobool48.not, label %if.then49, label %if.end50

if.then49:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %inc = add i32 %k.0476, 1
  br label %for.inc285

if.end50:                                         ; preds = %for.body
  %mul = mul i32 %i.0477, %3
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
  %or.i.i447 = or i32 %xor7.i.i, %xor.i.i
  %arrayidx9.i.i = getelementptr [4 x i32], ptr %add.ptr, i32 0, i32 2
  %40 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx9.i.i, align 4
  %42 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx5.i, align 4
  %xor12.i.i = xor i32 %43, %41
  %or13.i.i = or i32 %or.i.i447, %xor12.i.i
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
  %cmp.i.i448 = icmp eq i32 %or19.i.i, 0
  br i1 %cmp.i.i448, label %land.lhs.true.i450, label %if.end50.for.inc285_crit_edge

if.end50.for.inc285_crit_edge:                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc285

land.lhs.true.i450:                               ; preds = %if.end50
  %port.i = getelementptr inbounds %struct.hash_ipport6_elem, ptr %add.ptr, i32 0, i32 1
  %48 = ptrtoint ptr %port.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %port.i, align 4
  %50 = ptrtoint ptr %port4.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %port4.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %49, i16 %51)
  %cmp.i449 = icmp eq i16 %49, %51
  br i1 %cmp.i449, label %hash_ipport6_data_equal.exit, label %land.lhs.true.i450.for.inc285_crit_edge

land.lhs.true.i450.for.inc285_crit_edge:          ; preds = %land.lhs.true.i450
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc285

hash_ipport6_data_equal.exit:                     ; preds = %land.lhs.true.i450
  %proto.i = getelementptr inbounds %struct.hash_ipport6_elem, ptr %add.ptr, i32 0, i32 2
  %52 = ptrtoint ptr %proto.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %proto.i, align 2
  %54 = ptrtoint ptr %proto8.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %proto8.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %53, i8 %55)
  %cmp10.i = icmp eq i8 %53, %55
  br i1 %cmp10.i, label %if.end55, label %hash_ipport6_data_equal.exit.for.inc285_crit_edge

hash_ipport6_data_equal.exit.for.inc285_crit_edge: ; preds = %hash_ipport6_data_equal.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc285

if.end55:                                         ; preds = %hash_ipport6_data_equal.exit
  %extensions = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 8
  %56 = ptrtoint ptr %extensions to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %extensions, align 2
  %58 = and i8 %57, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool58.not = icmp eq i8 %58, 0
  br i1 %tobool58.not, label %if.end55.if.end65_crit_edge, label %land.lhs.true59

if.end55.if.end65_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

land.lhs.true59:                                  ; preds = %if.end55
  %arrayidx60 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 1
  %59 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx60, align 4
  %add.ptr61 = getelementptr i8, ptr %add.ptr, i32 %60
  %61 = ptrtoint ptr %add.ptr61 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %add.ptr61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp.not.i = icmp eq i32 %62, 0
  br i1 %cmp.not.i, label %land.lhs.true59.if.end65_crit_edge, label %ip_set_timeout_expired.exit

land.lhs.true59.if.end65_crit_edge:               ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

ip_set_timeout_expired.exit:                      ; preds = %land.lhs.true59
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %63 = load volatile i32, ptr @jiffies, align 128
  %sub.i451 = sub i32 %62, %63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i451)
  %cmp1.i = icmp slt i32 %sub.i451, 0
  br i1 %cmp1.i, label %ip_set_timeout_expired.exit.out_crit_edge, label %ip_set_timeout_expired.exit.if.end65_crit_edge

ip_set_timeout_expired.exit.if.end65_crit_edge:   ; preds = %ip_set_timeout_expired.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

ip_set_timeout_expired.exit.out_crit_edge:        ; preds = %ip_set_timeout_expired.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end65:                                         ; preds = %ip_set_timeout_expired.exit.if.end65_crit_edge, %land.lhs.true59.if.end65_crit_edge, %if.end55.if.end65_crit_edge
  tail call void @_clear_bit(i32 noundef %i.0477, ptr noundef %used) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !233
  %add = add nuw nsw i32 %i.0477, 1
  %64 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %pos, align 1
  %conv75 = zext i8 %65 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv75)
  %cmp76 = icmp eq i32 %add, %conv75
  br i1 %cmp76, label %if.then78, label %if.end65.if.end80_crit_edge

if.end65.if.end80_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end80

if.then78:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  %dec = add i8 %65, -1
  %66 = ptrtoint ptr %pos to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %dec, ptr %pos, align 1
  br label %if.end80

if.end80:                                         ; preds = %if.then78, %if.end65.if.end80_crit_edge
  %67 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %hregion, align 4
  %elements = getelementptr %struct.ip_set_region, ptr %68, i32 %rem, i32 2
  %69 = ptrtoint ptr %elements to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %elements, align 4
  %dec83 = add i32 %70, -1
  store i32 %dec83, ptr %elements, align 4
  %71 = ptrtoint ptr %extensions to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %extensions, align 2
  %73 = and i8 %72, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool.not.i453 = icmp eq i8 %73, 0
  br i1 %tobool.not.i453, label %if.end80.ip_set_ext_destroy.exit_crit_edge, label %if.then.i456

if.end80.ip_set_ext_destroy.exit_crit_edge:       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_set_ext_destroy.exit

if.then.i456:                                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i454 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 3
  %74 = ptrtoint ptr %arrayidx.i454 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx.i454, align 4
  %add.ptr.i455 = getelementptr i8, ptr %add.ptr, i32 %75
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.ip_set_ext_type], ptr @ip_set_extensions, i32 0, i32 3) to i32))
  %76 = load ptr, ptr getelementptr inbounds ([0 x %struct.ip_set_ext_type], ptr @ip_set_extensions, i32 0, i32 3), align 4
  tail call void %76(ptr noundef %set, ptr noundef %add.ptr.i455) #12
  br label %ip_set_ext_destroy.exit

ip_set_ext_destroy.exit:                          ; preds = %if.then.i456, %if.end80.ip_set_ext_destroy.exit_crit_edge
  %call.i.i427 = tail call zeroext i1 @__kasan_check_read(ptr noundef %5, i32 noundef 4) #12
  %77 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool85.not = icmp eq i32 %78, 0
  br i1 %tobool85.not, label %ip_set_ext_destroy.exit.if.end96_crit_edge, label %land.lhs.true86

ip_set_ext_destroy.exit.if.end96_crit_edge:       ; preds = %ip_set_ext_destroy.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end96

land.lhs.true86:                                  ; preds = %ip_set_ext_destroy.exit
  %target = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 7
  %79 = ptrtoint ptr %target to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %target, align 2, !range !218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool87.not = icmp eq i8 %80, 0
  br i1 %tobool87.not, label %land.lhs.true86.if.end96_crit_edge, label %if.then89

land.lhs.true86.if.end96_crit_edge:               ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end96

if.then89:                                        ; preds = %land.lhs.true86
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %81 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %81, i32 noundef 2848, i32 noundef 136) #15
  %tobool91.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool91.not, label %if.then89.if.end96_crit_edge, label %if.then92

if.then89.if.end96_crit_edge:                     ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end96

if.then92:                                        ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #14
  %ad = getelementptr inbounds %struct.hash_ipport6_resize_ad, ptr %call7.i.i, i32 0, i32 1
  %82 = ptrtoint ptr %ad to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 1, ptr %ad, align 8
  %d93 = getelementptr inbounds %struct.hash_ipport6_resize_ad, ptr %call7.i.i, i32 0, i32 2
  %83 = call ptr @memcpy(ptr %d93, ptr %value, i32 20)
  %flags94 = getelementptr inbounds %struct.hash_ipport6_resize_ad, ptr %call7.i.i, i32 0, i32 5
  %84 = ptrtoint ptr %flags94 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %flags, ptr %flags94, align 8
  br label %if.end96

if.end96:                                         ; preds = %if.then92, %if.then89.if.end96_crit_edge, %land.lhs.true86.if.end96_crit_edge, %ip_set_ext_destroy.exit.if.end96_crit_edge
  %x.0 = phi ptr [ %call7.i.i, %if.then92 ], [ null, %if.then89.if.end96_crit_edge ], [ null, %land.lhs.true86.if.end96_crit_edge ], [ null, %ip_set_ext_destroy.exit.if.end96_crit_edge ]
  %85 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %pos, align 1
  %conv99 = zext i8 %86 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0477, i32 %conv99)
  %cmp100479 = icmp ult i32 %i.0477, %conv99
  br i1 %cmp100479, label %if.end96.for.body102_crit_edge, label %if.end96.for.end_crit_edge

if.end96.for.end_crit_edge:                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end96.for.body102_crit_edge:                   ; preds = %if.end96
  br label %for.body102

for.body102:                                      ; preds = %for.body102.for.body102_crit_edge, %if.end96.for.body102_crit_edge
  %i.1481 = phi i32 [ %inc110, %for.body102.for.body102_crit_edge ], [ %i.0477, %if.end96.for.body102_crit_edge ]
  %k.1480 = phi i32 [ %spec.select, %for.body102.for.body102_crit_edge ], [ %k.0476, %if.end96.for.body102_crit_edge ]
  %div3.i428 = lshr i32 %i.1481, 5
  %arrayidx.i429 = getelementptr i32, ptr %used, i32 %div3.i428
  %87 = ptrtoint ptr %arrayidx.i429 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %arrayidx.i429, align 4
  %and.i430 = and i32 %i.1481, 31
  %89 = xor i32 %88, -1
  %90 = lshr i32 %89, %and.i430
  %91 = and i32 %90, 1
  %spec.select = add i32 %91, %k.1480
  %inc110 = add nuw nsw i32 %i.1481, 1
  %exitcond491.not = icmp eq i32 %inc110, %conv99
  br i1 %exitcond491.not, label %for.body102.for.end_crit_edge, label %for.body102.for.body102_crit_edge

for.body102.for.body102_crit_edge:                ; preds = %for.body102
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body102

for.body102.for.end_crit_edge:                    ; preds = %for.body102
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body102.for.end_crit_edge, %if.end96.for.end_crit_edge
  %k.1.lcssa = phi i32 [ %k.0476, %if.end96.for.end_crit_edge ], [ %spec.select, %for.body102.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %cmp113 = icmp eq i8 %86, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %k.1.lcssa)
  %cmp116 = icmp eq i32 %k.1.lcssa, 0
  %or.cond = select i1 %cmp113, i1 %cmp116, i1 false
  br i1 %or.cond, label %if.then118, label %if.else175

if.then118:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %size = getelementptr inbounds %struct.hbucket, ptr %25, i32 0, i32 2
  %92 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %size, align 8
  %conv119 = zext i8 %93 to i32
  %mul120 = mul i32 %3, %conv119
  %94 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %hregion, align 4
  %ext_size = getelementptr %struct.ip_set_region, ptr %95, i32 %rem, i32 1
  %96 = ptrtoint ptr %ext_size to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %ext_size, align 4
  %add121.neg = add i32 %97, -24
  %sub124 = sub i32 %add121.neg, %mul120
  store i32 %sub124, ptr %ext_size, align 4
  br label %out.sink.split

if.else175:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %k.1.lcssa)
  %cmp176 = icmp sgt i32 %k.1.lcssa, 1
  br i1 %cmp176, label %if.then178, label %if.else175.out_crit_edge

if.else175.out_crit_edge:                         ; preds = %if.else175
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then178:                                       ; preds = %if.else175
  %size180 = getelementptr inbounds %struct.hbucket, ptr %25, i32 0, i32 2
  %98 = ptrtoint ptr %size180 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %size180, align 8
  %conv181 = zext i8 %99 to i32
  %sub182 = add nsw i32 %conv181, -2
  %mul183 = mul i32 %sub182, %3
  %add184 = add i32 %mul183, 24
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add184, i32 noundef 2848) #16
  %tobool186.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool186.not, label %if.then178.out_crit_edge, label %if.end188

if.then178.out_crit_edge:                         ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end188:                                        ; preds = %if.then178
  %100 = ptrtoint ptr %size180 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %size180, align 8
  %sub191 = add i8 %101, -2
  %size193 = getelementptr inbounds %struct.hbucket, ptr %call9.i.i, i32 0, i32 2
  %102 = ptrtoint ptr %size193 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %sub191, ptr %size193, align 16
  %103 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %pos, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %cmp197484.not = icmp eq i8 %104, 0
  br i1 %cmp197484.not, label %if.end188.for.end219_crit_edge, label %for.body199.lr.ph

if.end188.for.end219_crit_edge:                   ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end219

for.body199.lr.ph:                                ; preds = %if.end188
  %value210 = getelementptr inbounds %struct.hbucket, ptr %call9.i.i, i32 0, i32 5
  %used214 = getelementptr inbounds %struct.hbucket, ptr %call9.i.i, i32 0, i32 1
  br label %for.body199

for.body199:                                      ; preds = %for.inc217.for.body199_crit_edge, %for.body199.lr.ph
  %j.0486 = phi i32 [ 0, %for.body199.lr.ph ], [ %inc218, %for.inc217.for.body199_crit_edge ]
  %k.3485 = phi i32 [ 0, %for.body199.lr.ph ], [ %k.4, %for.inc217.for.body199_crit_edge ]
  %div3.i433 = lshr i32 %j.0486, 5
  %arrayidx.i434 = getelementptr i32, ptr %used, i32 %div3.i433
  %105 = ptrtoint ptr %arrayidx.i434 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %arrayidx.i434, align 4
  %and.i435 = and i32 %j.0486, 31
  %107 = shl nuw i32 1, %and.i435
  %108 = and i32 %106, %107
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool203.not = icmp eq i32 %108, 0
  br i1 %tobool203.not, label %for.body199.for.inc217_crit_edge, label %if.end205

for.body199.for.inc217_crit_edge:                 ; preds = %for.body199
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc217

if.end205:                                        ; preds = %for.body199
  call void @__sanitizer_cov_trace_pc() #14
  %mul208 = mul i32 %j.0486, %3
  %add.ptr209 = getelementptr i8, ptr %value51, i32 %mul208
  %mul212 = mul i32 %k.3485, %3
  %add.ptr213 = getelementptr i8, ptr %value210, i32 %mul212
  %109 = call ptr @memcpy(ptr %add.ptr213, ptr %add.ptr209, i32 %3)
  tail call void @_set_bit(i32 noundef %k.3485, ptr noundef %used214) #12
  %inc216 = add i32 %k.3485, 1
  br label %for.inc217

for.inc217:                                       ; preds = %if.end205, %for.body199.for.inc217_crit_edge
  %k.4 = phi i32 [ %inc216, %if.end205 ], [ %k.3485, %for.body199.for.inc217_crit_edge ]
  %inc218 = add nuw nsw i32 %j.0486, 1
  %110 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %pos, align 1
  %conv196 = zext i8 %111 to i32
  %cmp197 = icmp ult i32 %inc218, %conv196
  br i1 %cmp197, label %for.inc217.for.body199_crit_edge, label %for.inc217.for.end219_crit_edge

for.inc217.for.end219_crit_edge:                  ; preds = %for.inc217
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end219

for.inc217.for.body199_crit_edge:                 ; preds = %for.inc217
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body199

for.end219:                                       ; preds = %for.inc217.for.end219_crit_edge, %if.end188.for.end219_crit_edge
  %k.3.lcssa = phi i32 [ 0, %if.end188.for.end219_crit_edge ], [ %k.4, %for.inc217.for.end219_crit_edge ]
  %conv220 = trunc i32 %k.3.lcssa to i8
  %pos221 = getelementptr inbounds %struct.hbucket, ptr %call9.i.i, i32 0, i32 3
  %112 = ptrtoint ptr %pos221 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %conv220, ptr %pos221, align 1
  %mul222.neg = mul i32 %3, -2
  %add223.neg = add i32 %mul222.neg, -24
  %113 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %hregion, align 4
  %ext_size226 = getelementptr %struct.ip_set_region, ptr %114, i32 %rem, i32 1
  %115 = ptrtoint ptr %ext_size226 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %ext_size226, align 4
  %sub227 = add i32 %add223.neg, %116
  store i32 %sub227, ptr %ext_size226, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !234
  br label %out.sink.split

for.inc285:                                       ; preds = %hash_ipport6_data_equal.exit.for.inc285_crit_edge, %land.lhs.true.i450.for.inc285_crit_edge, %if.end50.for.inc285_crit_edge, %if.then49
  %k.5 = phi i32 [ %k.0476, %hash_ipport6_data_equal.exit.for.inc285_crit_edge ], [ %inc, %if.then49 ], [ %k.0476, %land.lhs.true.i450.for.inc285_crit_edge ], [ %k.0476, %if.end50.for.inc285_crit_edge ]
  %inc286 = add nuw nsw i32 %i.0477, 1
  %exitcond.not = icmp eq i32 %inc286, %conv44
  br i1 %exitcond.not, label %for.inc285.out_crit_edge, label %for.inc285.for.body_crit_edge

for.inc285.for.body_crit_edge:                    ; preds = %for.inc285
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc285.out_crit_edge:                         ; preds = %for.inc285
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

out.sink.split:                                   ; preds = %for.end219, %if.then118
  %retval.1.i.i469.sink = phi ptr [ %call9.i.i, %for.end219 ], [ null, %if.then118 ]
  %117 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %117)
  store volatile ptr %retval.1.i.i469.sink, ptr %arrayidx27, align 4
  tail call void @kvfree_call_rcu(ptr noundef nonnull %25, ptr noundef null) #12
  br label %out

out:                                              ; preds = %out.sink.split, %for.inc285.out_crit_edge, %if.then178.out_crit_edge, %if.else175.out_crit_edge, %ip_set_timeout_expired.exit.out_crit_edge, %for.cond.preheader.out_crit_edge, %do.end39.out_crit_edge
  %ret.0 = phi i32 [ -4103, %ip_set_timeout_expired.exit.out_crit_edge ], [ 0, %if.else175.out_crit_edge ], [ -4103, %do.end39.out_crit_edge ], [ 0, %if.then178.out_crit_edge ], [ -4103, %for.cond.preheader.out_crit_edge ], [ 0, %out.sink.split ], [ -4103, %for.inc285.out_crit_edge ]
  %x.1 = phi ptr [ null, %ip_set_timeout_expired.exit.out_crit_edge ], [ %x.0, %if.else175.out_crit_edge ], [ null, %do.end39.out_crit_edge ], [ %x.0, %if.then178.out_crit_edge ], [ null, %for.cond.preheader.out_crit_edge ], [ %x.0, %out.sink.split ], [ null, %for.inc285.out_crit_edge ]
  %118 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %hregion, align 4
  %arrayidx289 = getelementptr %struct.ip_set_region, ptr %119, i32 %rem
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx289) #12
  %tobool291.not = icmp eq ptr %x.1, null
  br i1 %tobool291.not, label %out.if.end296_crit_edge, label %if.then292

out.if.end296_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end296

if.then292:                                       ; preds = %out
  %lock293 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock293) #12
  %ad294 = getelementptr inbounds %struct.hash_ipport6, ptr %1, i32 0, i32 5
  %120 = ptrtoint ptr %ad294 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ad294, align 4
  %call.i.i461 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %x.1, ptr noundef %ad294, ptr noundef %121) #12
  br i1 %call.i.i461, label %if.end.i.i462, label %if.then292.list_add.exit_crit_edge

if.then292.list_add.exit_crit_edge:               ; preds = %if.then292
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit

if.end.i.i462:                                    ; preds = %if.then292
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %121, i32 0, i32 1
  %122 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %x.1, ptr %prev1.i.i, align 4
  %123 = ptrtoint ptr %x.1 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %121, ptr %x.1, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %x.1, i32 0, i32 1
  %124 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %ad294, ptr %prev3.i.i, align 4
  %125 = ptrtoint ptr %ad294 to i32
  call void @__asan_store4_noabort(i32 %125)
  store volatile ptr %x.1, ptr %ad294, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i462, %if.then292.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock293) #12
  br label %if.end296

if.end296:                                        ; preds = %list_add.exit, %out.if.end296_crit_edge
  %call.i.i438 = tail call zeroext i1 @__kasan_check_write(ptr noundef %uref, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !219
  tail call void @llvm.prefetch.p0(ptr %uref, i32 1, i32 3, i32 1) #12
  %126 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uref, ptr %uref, i32 1, ptr elementtype(i32) %uref) #12, !srcloc !220
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %126, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !221
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true300, label %if.end296.cleanup316_crit_edge

if.end296.cleanup316_crit_edge:                   ; preds = %if.end296
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup316

land.lhs.true300:                                 ; preds = %if.end296
  %call.i.i439 = tail call zeroext i1 @__kasan_check_read(ptr noundef %5, i32 noundef 4) #12
  %127 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load volatile i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %tobool303.not = icmp eq i32 %128, 0
  br i1 %tobool303.not, label %land.lhs.true300.cleanup316_crit_edge, label %do.body305

land.lhs.true300.cleanup316_crit_edge:            ; preds = %land.lhs.true300
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup316

do.body305:                                       ; preds = %land.lhs.true300
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_ipport6_del.__UNIQUE_ID_ddebug743, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_ipport6_del, %if.then311)) #12
          to label %do.end.i [label %if.then311], !srcloc !210

if.then311:                                       ; preds = %do.body305
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_ipport6_del.__UNIQUE_ID_ddebug743, ptr noundef nonnull @.str.20, ptr noundef %5) #12
  br label %do.end.i

do.end.i:                                         ; preds = %for.inc.i.do.end.i_crit_edge, %if.then311, %do.body305
  %i.017.i = phi i32 [ %inc.i, %for.inc.i.do.end.i_crit_edge ], [ 0, %do.body305 ], [ 0, %if.then311 ]
  %arrayidx.i464 = getelementptr %struct.htable, ptr %5, i32 0, i32 5, i32 %i.017.i
  %129 = ptrtoint ptr %arrayidx.i464 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %arrayidx.i464, align 4
  %tobool.not.i465 = icmp eq ptr %130, null
  br i1 %tobool.not.i465, label %do.end.i.for.inc.i_crit_edge, label %if.end.i

do.end.i.for.inc.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end.i:                                         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %130) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %do.end.i.for.inc.i_crit_edge
  %inc.i = add i32 %i.017.i, 1
  %131 = ptrtoint ptr %htable_bits to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %htable_bits, align 4
  %conv.i = zext i8 %132 to i32
  %i.0.highbits.i = lshr i32 %inc.i, %conv.i
  %cmp.i466 = icmp eq i32 %i.0.highbits.i, 0
  br i1 %cmp.i466, label %for.inc.i.do.end.i_crit_edge, label %hash_ipport6_ahash_destroy.exit

for.inc.i.do.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

hash_ipport6_ahash_destroy.exit:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  %133 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %hregion, align 4
  tail call void @ip_set_free(ptr noundef %134) #12
  tail call void @ip_set_free(ptr noundef %5) #12
  br label %cleanup316

cleanup316:                                       ; preds = %hash_ipport6_ahash_destroy.exit, %land.lhs.true300.cleanup316_crit_edge, %if.end296.cleanup316_crit_edge
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hash_ipport6_test(ptr noundef %set, ptr nocapture noundef readonly %value, ptr noundef %ext, ptr noundef %mext, i32 noundef %flags) #2 align 64 {
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
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock_bh.exit.jhash2.exit_crit_edge

rcu_read_lock_bh.exit.jhash2.exit_crit_edge:      ; preds = %rcu_read_lock_bh.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %jhash2.exit

land.lhs.true:                                    ; preds = %rcu_read_lock_bh.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.jhash2.exit_crit_edge, label %land.lhs.true5

land.lhs.true.jhash2.exit_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %jhash2.exit

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b66 = load i1, ptr @hash_ipport6_test.__warned, align 1
  br i1 %.b66, label %land.lhs.true5.jhash2.exit_crit_edge, label %if.then

land.lhs.true5.jhash2.exit_crit_edge:             ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %jhash2.exit

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hash_ipport6_test.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1224, ptr noundef nonnull @.str.8) #12
  br label %jhash2.exit

jhash2.exit:                                      ; preds = %if.then, %land.lhs.true5.jhash2.exit_crit_edge, %land.lhs.true.jhash2.exit_crit_edge, %rcu_read_lock_bh.exit.jhash2.exit_crit_edge
  %initval = getelementptr inbounds %struct.hash_ipport6, ptr %1, i32 0, i32 3
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
  %and = and i32 %sub57.i, %sub
  %arrayidx = getelementptr %struct.htable, ptr %3, i32 0, i32 5, i32 %and
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %arrayidx, align 4
  %call20 = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %land.lhs.true22, label %jhash2.exit.do.end30_crit_edge

jhash2.exit.do.end30_crit_edge:                   ; preds = %jhash2.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end30

land.lhs.true22:                                  ; preds = %jhash2.exit
  %call23 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %land.lhs.true22.do.end30_crit_edge, label %land.lhs.true25

land.lhs.true22.do.end30_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end30

land.lhs.true25:                                  ; preds = %land.lhs.true22
  %.b6465 = load i1, ptr @hash_ipport6_test.__warned.49, align 1
  br i1 %.b6465, label %land.lhs.true25.do.end30_crit_edge, label %if.then27

land.lhs.true25.do.end30_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end30

if.then27:                                        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hash_ipport6_test.__warned.49, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1239, ptr noundef nonnull @.str.8) #12
  br label %do.end30

do.end30:                                         ; preds = %if.then27, %land.lhs.true25.do.end30_crit_edge, %land.lhs.true22.do.end30_crit_edge, %jhash2.exit.do.end30_crit_edge
  %tobool32.not = icmp eq ptr %19, null
  br i1 %tobool32.not, label %do.end30.out_crit_edge, label %for.cond.preheader

do.end30.out_crit_edge:                           ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.cond.preheader:                               ; preds = %do.end30
  %pos = getelementptr inbounds %struct.hbucket, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %pos, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp79.not = icmp eq i8 %21, 0
  br i1 %cmp79.not, label %for.cond.preheader.out_crit_edge, label %for.body.lr.ph

for.cond.preheader.out_crit_edge:                 ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %used = getelementptr inbounds %struct.hbucket, ptr %19, i32 0, i32 1
  %value41 = getelementptr inbounds %struct.hbucket, ptr %19, i32 0, i32 5
  %dsize = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %port4.i = getelementptr inbounds %struct.hash_ipport6_elem, ptr %value, i32 0, i32 1
  %proto8.i = getelementptr inbounds %struct.hash_ipport6_elem, ptr %value, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.080 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %div3.i = lshr i32 %i.080, 5
  %arrayidx.i = getelementptr i32, ptr %used, i32 %div3.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.080, 31
  %24 = shl nuw i32 1, %and.i
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool38.not = icmp eq i32 %25, 0
  br i1 %tobool38.not, label %for.body.for.inc_crit_edge, label %if.end40

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end40:                                         ; preds = %for.body
  %26 = ptrtoint ptr %dsize to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dsize, align 4
  %mul = mul i32 %27, %i.080
  %add.ptr = getelementptr i8, ptr %value41, i32 %mul
  %28 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr, align 4
  %30 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %value, align 4
  %xor.i.i = xor i32 %31, %29
  %arrayidx4.i.i = getelementptr [4 x i32], ptr %add.ptr, i32 0, i32 1
  %32 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx4.i.i, align 4
  %34 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx3.i, align 4
  %xor7.i.i = xor i32 %35, %33
  %or.i.i67 = or i32 %xor7.i.i, %xor.i.i
  %arrayidx9.i.i = getelementptr [4 x i32], ptr %add.ptr, i32 0, i32 2
  %36 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx9.i.i, align 4
  %38 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx5.i, align 4
  %xor12.i.i = xor i32 %39, %37
  %or13.i.i = or i32 %or.i.i67, %xor12.i.i
  %arrayidx15.i.i = getelementptr [4 x i32], ptr %add.ptr, i32 0, i32 3
  %40 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx15.i.i, align 4
  %42 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr.i, align 4
  %xor18.i.i = xor i32 %43, %41
  %or19.i.i = or i32 %or13.i.i, %xor18.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.i)
  %cmp.i.i = icmp eq i32 %or19.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true.i69, label %if.end40.for.inc_crit_edge

if.end40.for.inc_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true.i69:                                ; preds = %if.end40
  %port.i = getelementptr inbounds %struct.hash_ipport6_elem, ptr %add.ptr, i32 0, i32 1
  %44 = ptrtoint ptr %port.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %port.i, align 4
  %46 = ptrtoint ptr %port4.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %port4.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %45, i16 %47)
  %cmp.i68 = icmp eq i16 %45, %47
  br i1 %cmp.i68, label %hash_ipport6_data_equal.exit, label %land.lhs.true.i69.for.inc_crit_edge

land.lhs.true.i69.for.inc_crit_edge:              ; preds = %land.lhs.true.i69
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

hash_ipport6_data_equal.exit:                     ; preds = %land.lhs.true.i69
  %proto.i = getelementptr inbounds %struct.hash_ipport6_elem, ptr %add.ptr, i32 0, i32 2
  %48 = ptrtoint ptr %proto.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %proto.i, align 2
  %50 = ptrtoint ptr %proto8.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %proto8.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %49, i8 %51)
  %cmp10.i = icmp eq i8 %49, %51
  br i1 %cmp10.i, label %if.end45, label %hash_ipport6_data_equal.exit.for.inc_crit_edge

hash_ipport6_data_equal.exit.for.inc_crit_edge:   ; preds = %hash_ipport6_data_equal.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end45:                                         ; preds = %hash_ipport6_data_equal.exit
  %call.i70 = tail call zeroext i1 @ip_set_match_extensions(ptr noundef %set, ptr noundef %ext, ptr noundef %mext, i32 noundef %flags, ptr noundef %add.ptr) #12
  br i1 %call.i70, label %if.end45.out_crit_edge, label %if.end45.for.inc_crit_edge

if.end45.for.inc_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end45.out_crit_edge:                           ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.inc:                                          ; preds = %if.end45.for.inc_crit_edge, %hash_ipport6_data_equal.exit.for.inc_crit_edge, %land.lhs.true.i69.for.inc_crit_edge, %if.end40.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.080, 1
  %52 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %pos, align 1
  %conv35 = zext i8 %53 to i32
  %cmp = icmp ult i32 %inc, %conv35
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.out_crit_edge

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

out:                                              ; preds = %for.inc.out_crit_edge, %if.end45.out_crit_edge, %for.cond.preheader.out_crit_edge, %do.end30.out_crit_edge
  %ret.2 = phi i32 [ 0, %do.end30.out_crit_edge ], [ 0, %for.cond.preheader.out_crit_edge ], [ 1, %if.end45.out_crit_edge ], [ 0, %for.inc.out_crit_edge ]
  %call.i71 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i71, label %out.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true.i74

out.rcu_read_unlock_bh.exit_crit_edge:            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

land.lhs.true.i74:                                ; preds = %out
  %call1.i72 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i72)
  %tobool.not.i73 = icmp eq i32 %call1.i72, 0
  br i1 %tobool.not.i73, label %land.lhs.true.i74.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true2.i76

land.lhs.true.i74.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true.i74
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

land.lhs.true2.i76:                               ; preds = %land.lhs.true.i74
  %.b4.i75 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i75, label %land.lhs.true2.i76.rcu_read_unlock_bh.exit_crit_edge, label %if.then.i77

land.lhs.true2.i76.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i76
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

if.then.i77:                                      ; preds = %land.lhs.true2.i76
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 761, ptr noundef nonnull @.str.15) #12
  br label %rcu_read_unlock_bh.exit

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i77, %land.lhs.true2.i76.rcu_read_unlock_bh.exit_crit_edge, %land.lhs.true.i74.rcu_read_unlock_bh.exit_crit_edge, %out.rcu_read_unlock_bh.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #12
  tail call fastcc void @local_bh_enable() #12
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hash_ipport6_resize(ptr noundef %set, i1 noundef zeroext %retried) #2 align 64 {
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
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %1, align 4
  %call = tail call zeroext i1 @lockdep_nfnl_is_held(i8 noundef zeroext 6) #12
  br i1 %call, label %entry.do.end10_crit_edge, label %lor.lhs.false

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

lor.lhs.false:                                    ; preds = %entry
  %call4 = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %land.lhs.true, label %lor.lhs.false.do.end10_crit_edge

lor.lhs.false.do.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end10_crit_edge, label %land.lhs.true7

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b565 = load i1, ptr @hash_ipport6_resize.__warned, align 1
  br i1 %.b565, label %land.lhs.true7.do.end10_crit_edge, label %if.then

land.lhs.true7.do.end10_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

if.then:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hash_ipport6_resize.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 647, ptr noundef nonnull @.str.8) #12
  br label %do.end10

do.end10:                                         ; preds = %if.then, %land.lhs.true7.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %lor.lhs.false.do.end10_crit_edge, %entry.do.end10_crit_edge
  %htable_bits12 = getelementptr inbounds %struct.htable, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %htable_bits12 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %htable_bits12, align 4
  %maxelem = getelementptr inbounds %struct.hash_ipport6, ptr %1, i32 0, i32 2
  %extensions = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 8
  %arrayidx160 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 1
  %initval = getelementptr inbounds %struct.hash_ipport6, ptr %1, i32 0, i32 3
  %bucketsize = getelementptr inbounds %struct.hash_ipport6, ptr %1, i32 0, i32 4
  %mul255 = shl i32 %3, 1
  %add256 = add i32 %mul255, 24
  br label %retry

retry:                                            ; preds = %hash_ipport6_ahash_destroy.exit653.retry_crit_edge, %do.end10
  %htable_bits.0 = phi i8 [ %7, %do.end10 ], [ %inc, %hash_ipport6_ahash_destroy.exit653.retry_crit_edge ]
  %inc = add i8 %htable_bits.0, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %inc)
  %tobool13.not = icmp eq i8 %inc, 0
  br i1 %tobool13.not, label %retry.do.end415_crit_edge, label %if.end15

retry.do.end415_crit_edge:                        ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end415

if.end15:                                         ; preds = %retry
  call void @__sanitizer_cov_trace_const_cmp1(i8 28, i8 %inc)
  %cmp3.i = icmp ugt i8 %inc, 28
  %conv.i = zext i8 %inc to i32
  %mul.i = shl i32 4, %conv.i
  %add.i = add i32 %mul.i, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %tobool17.not669 = icmp eq i32 %add.i, 0
  %tobool17.not = select i1 %cmp3.i, i1 true, i1 %tobool17.not669
  br i1 %tobool17.not, label %if.end15.do.end415_crit_edge, label %if.end19

if.end15.do.end415_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end415

if.end19:                                         ; preds = %if.end15
  %call20 = tail call ptr @ip_set_alloc(i32 noundef %add.i) #12
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %if.end19.cleanup420_crit_edge, label %if.end23

if.end19.cleanup420_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup420

if.end23:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %inc)
  %cmp = icmp ult i8 %inc, 10
  %sub = add nsw i32 %conv.i, -10
  %shl = shl nuw i32 1, %sub
  %cond = select i1 %cmp, i32 1, i32 %shl
  %mul = mul i32 %cond, 52
  %call26 = tail call ptr @ip_set_alloc(i32 noundef %mul) #12
  %hregion = getelementptr inbounds %struct.htable, ptr %call20, i32 0, i32 4
  %8 = ptrtoint ptr %hregion to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call26, ptr %hregion, align 4
  %tobool28.not = icmp eq ptr %call26, null
  br i1 %tobool28.not, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ip_set_free(ptr noundef nonnull %call20) #12
  br label %cleanup420

if.end30:                                         ; preds = %if.end23
  %htable_bits31 = getelementptr inbounds %struct.htable, ptr %call20, i32 0, i32 2
  %9 = ptrtoint ptr %htable_bits31 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %inc, ptr %htable_bits31, align 4
  %10 = ptrtoint ptr %maxelem to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %maxelem, align 4
  %12 = select i1 %cmp, i32 0, i32 %sub
  %div670 = lshr i32 %11, %12
  %maxelem42 = getelementptr inbounds %struct.htable, ptr %call20, i32 0, i32 3
  %13 = ptrtoint ptr %maxelem42 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %div670, ptr %maxelem42, align 4
  br label %do.body55

do.body55:                                        ; preds = %do.body55.do.body55_crit_edge, %if.end30
  %i.0674 = phi i32 [ 0, %if.end30 ], [ %inc60, %do.body55.do.body55_crit_edge ]
  %14 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hregion, align 4
  %arrayidx = getelementptr %struct.ip_set_region, ptr %15, i32 %i.0674
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx, ptr noundef nonnull @.str.6, ptr noundef nonnull @hash_ipport6_resize.__key, i16 noundef signext 3) #12
  %inc60 = add nuw i32 %i.0674, 1
  %exitcond.not = icmp eq i32 %inc60, %cond
  br i1 %exitcond.not, label %for.end, label %do.body55.do.body55_crit_edge

do.body55.do.body55_crit_edge:                    ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body55

for.end:                                          ; preds = %do.body55
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %1, align 4
  %call67 = tail call zeroext i1 @lockdep_nfnl_is_held(i8 noundef zeroext 6) #12
  br i1 %call67, label %for.end.do.end80_crit_edge, label %lor.lhs.false69

for.end.do.end80_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end80

lor.lhs.false69:                                  ; preds = %for.end
  %call70 = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %land.lhs.true72, label %lor.lhs.false69.do.end80_crit_edge

lor.lhs.false69.do.end80_crit_edge:               ; preds = %lor.lhs.false69
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end80

land.lhs.true72:                                  ; preds = %lor.lhs.false69
  %call73 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %land.lhs.true72.do.end80_crit_edge, label %land.lhs.true75

land.lhs.true72.do.end80_crit_edge:               ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end80

land.lhs.true75:                                  ; preds = %land.lhs.true72
  %.b563564 = load i1, ptr @hash_ipport6_resize.__warned.50, align 1
  br i1 %.b563564, label %land.lhs.true75.do.end80_crit_edge, label %if.then77

land.lhs.true75.do.end80_crit_edge:               ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end80

if.then77:                                        ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hash_ipport6_resize.__warned.50, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 677, ptr noundef nonnull @.str.8) #12
  br label %do.end80

do.end80:                                         ; preds = %if.then77, %land.lhs.true75.do.end80_crit_edge, %land.lhs.true72.do.end80_crit_edge, %lor.lhs.false69.do.end80_crit_edge, %for.end.do.end80_crit_edge
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %17, i32 noundef 4) #12
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 1, ptr %17, align 4
  %uref = getelementptr inbounds %struct.htable, ptr %17, i32 0, i32 1
  %call.i.i568 = tail call zeroext i1 @__kasan_check_write(ptr noundef %uref, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %uref, i32 1, i32 3, i32 1) #12
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uref, ptr %uref, i32 1, ptr elementtype(i32) %uref) #12, !srcloc !215
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_ipport6_resize.__UNIQUE_ID_ddebug707, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_ipport6_resize, %if.then89)) #12
          to label %do.end95 [label %if.then89], !srcloc !210

if.then89:                                        ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #14
  %htable_bits90 = getelementptr inbounds %struct.htable, ptr %17, i32 0, i32 2
  %20 = ptrtoint ptr %htable_bits90 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %htable_bits90, align 4
  %conv91 = zext i8 %21 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_ipport6_resize.__UNIQUE_ID_ddebug707, ptr noundef nonnull @.str.24, ptr noundef %set, i32 noundef %conv91, i32 noundef %conv.i, ptr noundef %17) #12
  br label %do.end95

do.end95:                                         ; preds = %if.then89, %do.end80
  %htable_bits97 = getelementptr inbounds %struct.htable, ptr %17, i32 0, i32 2
  %notmask = shl nsw i32 -1, %conv.i
  %sub173 = xor i32 %notmask, -1
  %22 = add i32 %cond, -1
  br label %for.body111

for.body111:                                      ; preds = %rcu_read_unlock_bh.exit.for.body111_crit_edge, %do.end95
  %r.0690 = phi i32 [ 0, %do.end95 ], [ %inc298, %rcu_read_unlock_bh.exit.for.body111_crit_edge ]
  tail call fastcc void @local_bh_disable() #12
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %for.body111.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true.i

for.body111.rcu_read_lock_bh.exit_crit_edge:      ; preds = %for.body111
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock_bh.exit

land.lhs.true.i:                                  ; preds = %for.body111
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

rcu_read_lock_bh.exit:                            ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, %for.body111.rcu_read_lock_bh.exit_crit_edge
  %23 = ptrtoint ptr %htable_bits97 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %htable_bits97, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %24)
  %cmp114 = icmp ult i8 %24, 10
  %mul118 = shl i32 %r.0690, 10
  %spec.select = select i1 %cmp114, i32 0, i32 %mul118
  %mul131 = add i32 %mul118, 1024
  %conv123680 = zext i8 %24 to i32
  %shl129681 = shl nuw i32 1, %conv123680
  %cond133682 = select i1 %cmp114, i32 %shl129681, i32 %mul131
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %cond133682)
  %cmp134683 = icmp ult i32 %spec.select, %cond133682
  br i1 %cmp134683, label %rcu_read_lock_bh.exit.do.end139_crit_edge, label %rcu_read_lock_bh.exit.for.end296_crit_edge

rcu_read_lock_bh.exit.for.end296_crit_edge:       ; preds = %rcu_read_lock_bh.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end296

rcu_read_lock_bh.exit.do.end139_crit_edge:        ; preds = %rcu_read_lock_bh.exit
  br label %do.end139

do.end139:                                        ; preds = %for.inc294.do.end139_crit_edge, %rcu_read_lock_bh.exit.do.end139_crit_edge
  %i.1684 = phi i32 [ %inc295, %for.inc294.do.end139_crit_edge ], [ %spec.select, %rcu_read_lock_bh.exit.do.end139_crit_edge ]
  %arrayidx141 = getelementptr %struct.htable, ptr %17, i32 0, i32 5, i32 %i.1684
  %25 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx141, align 4
  %tobool142.not = icmp eq ptr %26, null
  br i1 %tobool142.not, label %do.end139.for.inc294_crit_edge, label %for.cond145.preheader

do.end139.for.inc294_crit_edge:                   ; preds = %do.end139
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc294

for.cond145.preheader:                            ; preds = %do.end139
  %pos = getelementptr inbounds %struct.hbucket, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %pos, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp147676.not = icmp eq i8 %28, 0
  br i1 %cmp147676.not, label %for.cond145.preheader.for.inc294_crit_edge, label %for.body149.lr.ph

for.cond145.preheader.for.inc294_crit_edge:       ; preds = %for.cond145.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc294

for.body149.lr.ph:                                ; preds = %for.cond145.preheader
  %used = getelementptr inbounds %struct.hbucket, ptr %26, i32 0, i32 1
  %value = getelementptr %struct.hbucket, ptr %26, i32 0, i32 5
  %uglygep701 = getelementptr i8, ptr %26, i32 36
  br label %for.body149

for.body149:                                      ; preds = %for.inc291.for.body149_crit_edge, %for.body149.lr.ph
  %indvars.iv702 = phi ptr [ %uglygep701, %for.body149.lr.ph ], [ %uglygep703, %for.inc291.for.body149_crit_edge ]
  %indvars.iv = phi ptr [ %value, %for.body149.lr.ph ], [ %uglygep, %for.inc291.for.body149_crit_edge ]
  %j.0677 = phi i32 [ 0, %for.body149.lr.ph ], [ %inc292, %for.inc291.for.body149_crit_edge ]
  %div3.i = lshr i32 %j.0677, 5
  %arrayidx.i = getelementptr i32, ptr %used, i32 %div3.i
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %j.0677, 31
  %31 = shl nuw i32 1, %and.i
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool152.not = icmp eq i32 %32, 0
  br i1 %tobool152.not, label %for.body149.for.inc291_crit_edge, label %if.end154

for.body149.for.inc291_crit_edge:                 ; preds = %for.body149
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc291

if.end154:                                        ; preds = %for.body149
  %mul156 = mul i32 %j.0677, %3
  %add.ptr = getelementptr i8, ptr %value, i32 %mul156
  %33 = ptrtoint ptr %extensions to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %extensions, align 2
  %35 = and i8 %34, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool158.not = icmp eq i8 %35, 0
  br i1 %tobool158.not, label %if.end154.jhash2.exit_crit_edge, label %land.lhs.true159

if.end154.jhash2.exit_crit_edge:                  ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #14
  br label %jhash2.exit

land.lhs.true159:                                 ; preds = %if.end154
  %36 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx160, align 4
  %add.ptr161 = getelementptr i8, ptr %add.ptr, i32 %37
  %38 = ptrtoint ptr %add.ptr161 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr161, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.not.i = icmp eq i32 %39, 0
  br i1 %cmp.not.i, label %land.lhs.true159.jhash2.exit_crit_edge, label %ip_set_timeout_expired.exit

land.lhs.true159.jhash2.exit_crit_edge:           ; preds = %land.lhs.true159
  call void @__sanitizer_cov_trace_pc() #14
  br label %jhash2.exit

ip_set_timeout_expired.exit:                      ; preds = %land.lhs.true159
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %40 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %39, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp1.i = icmp slt i32 %sub.i, 0
  br i1 %cmp1.i, label %ip_set_timeout_expired.exit.for.inc291_crit_edge, label %ip_set_timeout_expired.exit.jhash2.exit_crit_edge

ip_set_timeout_expired.exit.jhash2.exit_crit_edge: ; preds = %ip_set_timeout_expired.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %jhash2.exit

ip_set_timeout_expired.exit.for.inc291_crit_edge: ; preds = %ip_set_timeout_expired.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc291

jhash2.exit:                                      ; preds = %ip_set_timeout_expired.exit.jhash2.exit_crit_edge, %land.lhs.true159.jhash2.exit_crit_edge, %if.end154.jhash2.exit_crit_edge
  %41 = ptrtoint ptr %initval to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %initval, align 4
  %add1.i = add i32 %42, -559038717
  %43 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr, align 4
  %add2.i = add i32 %44, %add1.i
  %arrayidx3.i = getelementptr i32, ptr %add.ptr, i32 1
  %45 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx3.i, align 4
  %add4.i = add i32 %46, %add1.i
  %arrayidx5.i = getelementptr i32, ptr %add.ptr, i32 2
  %47 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx5.i, align 4
  %add6.i = add i32 %48, %add1.i
  %sub.i579 = sub i32 %add2.i, %add6.i
  %or.i.i = tail call i32 @llvm.fshl.i32(i32 %add6.i, i32 %add6.i, i32 4) #12
  %xor.i = xor i32 %sub.i579, %or.i.i
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
  %arrayidx32.i = getelementptr i32, ptr %indvars.iv, i32 4
  %49 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx32.i, align 4
  %add33.i = add i32 %50, %add27.i
  %51 = ptrtoint ptr %indvars.iv702 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %indvars.iv702, align 4
  %add36.i = add i32 %52, %add23.i
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
  %and174 = and i32 %sub57.i, %sub173
  %arrayidx180 = getelementptr %struct.htable, ptr %call20, i32 0, i32 5, i32 %and174
  %53 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx180, align 4
  %rem = and i32 %and174, %22
  %tobool191.not = icmp eq ptr %54, null
  br i1 %tobool191.not, label %if.end8.i.i, label %if.else

if.end8.i.i:                                      ; preds = %jhash2.exit
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add256, i32 noundef 2848) #16
  %tobool196.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool196.not, label %if.end8.i.i.cleanup406_crit_edge, label %if.end198

if.end8.i.i.cleanup406_crit_edge:                 ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup406

if.end198:                                        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %size = getelementptr inbounds %struct.hbucket, ptr %call9.i.i, i32 0, i32 2
  %55 = ptrtoint ptr %size to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 2, ptr %size, align 16
  %56 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hregion, align 4
  %ext_size = getelementptr %struct.ip_set_region, ptr %57, i32 %rem, i32 1
  %58 = ptrtoint ptr %ext_size to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ext_size, align 4
  %add203 = add i32 %59, %add256
  store i32 %add203, ptr %ext_size, align 4
  br label %if.end276.sink.split

if.else:                                          ; preds = %jhash2.exit
  %pos218 = getelementptr inbounds %struct.hbucket, ptr %54, i32 0, i32 3
  %60 = ptrtoint ptr %pos218 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %pos218, align 1
  %size220 = getelementptr inbounds %struct.hbucket, ptr %54, i32 0, i32 2
  %62 = ptrtoint ptr %size220 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %size220, align 8
  %conv221 = zext i8 %63 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %61, i8 %63)
  %cmp222.not = icmp ult i8 %61, %63
  br i1 %cmp222.not, label %if.else.if.end276_crit_edge, label %if.then224

if.else.if.end276_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end276

if.then224:                                       ; preds = %if.else
  %64 = ptrtoint ptr %bucketsize to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %bucketsize, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %63, i8 %65)
  %cmp228.not = icmp ult i8 %63, %65
  br i1 %cmp228.not, label %if.end8.i.i610, label %if.then224.cleanup406_crit_edge

if.then224.cleanup406_crit_edge:                  ; preds = %if.then224
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup406

if.end8.i.i610:                                   ; preds = %if.then224
  %add234 = add nuw nsw i32 %conv221, 2
  %mul235 = mul i32 %add234, %3
  %add236 = add i32 %mul235, 24
  %call9.i.i609 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add236, i32 noundef 2848) #16
  %tobool238.not = icmp eq ptr %call9.i.i609, null
  br i1 %tobool238.not, label %if.end8.i.i610.cleanup406_crit_edge, label %cleanup

if.end8.i.i610.cleanup406_crit_edge:              ; preds = %if.end8.i.i610
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup406

cleanup:                                          ; preds = %if.end8.i.i610
  call void @__sanitizer_cov_trace_pc() #14
  %66 = ptrtoint ptr %size220 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %size220, align 8
  %conv247 = zext i8 %67 to i32
  %mul248 = mul i32 %3, %conv247
  %add249 = add i32 %mul248, 24
  %68 = call ptr @memcpy(ptr %call9.i.i609, ptr %54, i32 %add249)
  %69 = load i8, ptr %size220, align 8
  %add252 = add i8 %69, 2
  %size254 = getelementptr inbounds %struct.hbucket, ptr %call9.i.i609, i32 0, i32 2
  %70 = ptrtoint ptr %size254 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %add252, ptr %size254, align 16
  %71 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %hregion, align 4
  %ext_size259 = getelementptr %struct.ip_set_region, ptr %72, i32 %rem, i32 1
  %73 = ptrtoint ptr %ext_size259 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %ext_size259, align 4
  %add260 = add i32 %add256, %74
  store i32 %add260, ptr %ext_size259, align 4
  tail call void @kfree(ptr noundef nonnull %54) #12
  br label %if.end276.sink.split

if.end276.sink.split:                             ; preds = %cleanup, %if.end198
  %ht.0.sink = phi ptr [ %call9.i.i609, %cleanup ], [ %call9.i.i, %if.end198 ]
  %75 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %ht.0.sink, ptr %arrayidx180, align 4
  br label %if.end276

if.end276:                                        ; preds = %if.end276.sink.split, %if.else.if.end276_crit_edge
  %m.1 = phi ptr [ %54, %if.else.if.end276_crit_edge ], [ %ht.0.sink, %if.end276.sink.split ]
  %value277 = getelementptr inbounds %struct.hbucket, ptr %m.1, i32 0, i32 5
  %pos279 = getelementptr inbounds %struct.hbucket, ptr %m.1, i32 0, i32 3
  %76 = ptrtoint ptr %pos279 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %pos279, align 1
  %conv280 = zext i8 %77 to i32
  %mul281 = mul i32 %3, %conv280
  %add.ptr282 = getelementptr i8, ptr %value277, i32 %mul281
  %78 = call ptr @memcpy(ptr %add.ptr282, ptr %add.ptr, i32 %3)
  %79 = load i8, ptr %pos279, align 1
  %inc284 = add i8 %79, 1
  store i8 %inc284, ptr %pos279, align 1
  %conv285 = zext i8 %79 to i32
  %used286 = getelementptr inbounds %struct.hbucket, ptr %m.1, i32 0, i32 1
  tail call void @_set_bit(i32 noundef %conv285, ptr noundef %used286) #12
  %80 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %hregion, align 4
  %elements = getelementptr %struct.ip_set_region, ptr %81, i32 %rem, i32 2
  %82 = ptrtoint ptr %elements to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %elements, align 4
  %inc290 = add i32 %83, 1
  store i32 %inc290, ptr %elements, align 4
  br label %for.inc291

for.inc291:                                       ; preds = %if.end276, %ip_set_timeout_expired.exit.for.inc291_crit_edge, %for.body149.for.inc291_crit_edge
  %inc292 = add nuw nsw i32 %j.0677, 1
  %84 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %pos, align 1
  %conv146 = zext i8 %85 to i32
  %cmp147 = icmp ult i32 %inc292, %conv146
  %uglygep = getelementptr i8, ptr %indvars.iv, i32 %3
  %uglygep703 = getelementptr i8, ptr %indvars.iv702, i32 %3
  br i1 %cmp147, label %for.inc291.for.body149_crit_edge, label %for.inc291.for.inc294_crit_edge

for.inc291.for.inc294_crit_edge:                  ; preds = %for.inc291
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc294

for.inc291.for.body149_crit_edge:                 ; preds = %for.inc291
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body149

for.inc294:                                       ; preds = %for.inc291.for.inc294_crit_edge, %for.cond145.preheader.for.inc294_crit_edge, %do.end139.for.inc294_crit_edge
  %inc295 = add nuw i32 %i.1684, 1
  %86 = ptrtoint ptr %htable_bits97 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %htable_bits97, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %87)
  %cmp124 = icmp ult i8 %87, 10
  %conv123 = zext i8 %87 to i32
  %shl129 = shl nuw i32 1, %conv123
  %cond133 = select i1 %cmp124, i32 %shl129, i32 %mul131
  %cmp134 = icmp ult i32 %inc295, %cond133
  br i1 %cmp134, label %for.inc294.do.end139_crit_edge, label %for.inc294.for.end296_crit_edge

for.inc294.for.end296_crit_edge:                  ; preds = %for.inc294
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end296

for.inc294.do.end139_crit_edge:                   ; preds = %for.inc294
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end139

for.end296:                                       ; preds = %for.inc294.for.end296_crit_edge, %rcu_read_lock_bh.exit.for.end296_crit_edge
  %call.i613 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i613, label %for.end296.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true.i616

for.end296.rcu_read_unlock_bh.exit_crit_edge:     ; preds = %for.end296
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

land.lhs.true.i616:                               ; preds = %for.end296
  %call1.i614 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i614)
  %tobool.not.i615 = icmp eq i32 %call1.i614, 0
  br i1 %tobool.not.i615, label %land.lhs.true.i616.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true2.i618

land.lhs.true.i616.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true.i616
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

land.lhs.true2.i618:                              ; preds = %land.lhs.true.i616
  %.b4.i617 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i617, label %land.lhs.true2.i618.rcu_read_unlock_bh.exit_crit_edge, label %if.then.i619

land.lhs.true2.i618.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i618
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

if.then.i619:                                     ; preds = %land.lhs.true2.i618
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 761, ptr noundef nonnull @.str.15) #12
  br label %rcu_read_unlock_bh.exit

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i619, %land.lhs.true2.i618.rcu_read_unlock_bh.exit_crit_edge, %land.lhs.true.i616.rcu_read_unlock_bh.exit_crit_edge, %for.end296.rcu_read_unlock_bh.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #12
  tail call fastcc void @local_bh_enable() #12
  %inc298 = add nuw i32 %r.0690, 1
  %88 = ptrtoint ptr %htable_bits97 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %htable_bits97, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %89)
  %cmp99 = icmp ult i8 %89, 10
  %conv98 = zext i8 %89 to i32
  %sub105 = add nsw i32 %conv98, -10
  %shl106 = shl nuw i32 1, %sub105
  %cond108 = select i1 %cmp99, i32 1, i32 %shl106
  %cmp109 = icmp ult i32 %inc298, %cond108
  br i1 %cmp109, label %rcu_read_unlock_bh.exit.for.body111_crit_edge, label %do.body300

rcu_read_unlock_bh.exit.for.body111_crit_edge:    ; preds = %rcu_read_unlock_bh.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body111

do.body300:                                       ; preds = %rcu_read_unlock_bh.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !235
  %90 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %call20, ptr %1, align 4
  tail call void @synchronize_rcu() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_ipport6_resize.__UNIQUE_ID_ddebug714, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_ipport6_resize, %if.then353)) #12
          to label %do.end362 [label %if.then353], !srcloc !210

if.then353:                                       ; preds = %do.body300
  call void @__sanitizer_cov_trace_pc() #14
  %91 = ptrtoint ptr %htable_bits97 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %htable_bits97, align 4
  %conv357 = zext i8 %92 to i32
  %93 = ptrtoint ptr %htable_bits31 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %htable_bits31, align 4
  %conv359 = zext i8 %94 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_ipport6_resize.__UNIQUE_ID_ddebug714, ptr noundef nonnull @.str.27, ptr noundef %set, i32 noundef %conv357, ptr noundef %17, i32 noundef %conv359, ptr noundef nonnull %call20) #12
  br label %do.end362

do.end362:                                        ; preds = %if.then353, %do.body300
  %ad = getelementptr inbounds %struct.hash_ipport6, ptr %1, i32 0, i32 5
  %95 = ptrtoint ptr %ad to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ad, align 4
  %cmp.i620.not692 = icmp eq ptr %96, %ad
  br i1 %cmp.i620.not692, label %do.end362.for.end385_crit_edge, label %do.end362.for.body370_crit_edge

do.end362.for.body370_crit_edge:                  ; preds = %do.end362
  br label %for.body370

do.end362.for.end385_crit_edge:                   ; preds = %do.end362
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end385

for.body370:                                      ; preds = %list_del.exit.for.body370_crit_edge, %do.end362.for.body370_crit_edge
  %l.0693 = phi ptr [ %lt.0695, %list_del.exit.for.body370_crit_edge ], [ %96, %do.end362.for.body370_crit_edge ]
  %97 = ptrtoint ptr %l.0693 to i32
  call void @__asan_load4_noabort(i32 %97)
  %lt.0695 = load ptr, ptr %l.0693, align 4
  %ad373 = getelementptr inbounds %struct.hash_ipport6_resize_ad, ptr %l.0693, i32 0, i32 1
  %98 = ptrtoint ptr %ad373 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %ad373, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp374 = icmp eq i32 %99, 0
  %d377 = getelementptr inbounds %struct.hash_ipport6_resize_ad, ptr %l.0693, i32 0, i32 2
  br i1 %cmp374, label %if.then376, label %if.else379

if.then376:                                       ; preds = %for.body370
  call void @__sanitizer_cov_trace_pc() #14
  %ext = getelementptr inbounds %struct.hash_ipport6_resize_ad, ptr %l.0693, i32 0, i32 3
  %mext = getelementptr inbounds %struct.hash_ipport6_resize_ad, ptr %l.0693, i32 0, i32 4
  %flags = getelementptr inbounds %struct.hash_ipport6_resize_ad, ptr %l.0693, i32 0, i32 5
  %100 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %flags, align 8
  %call378 = tail call i32 @hash_ipport6_add(ptr noundef %set, ptr noundef %d377, ptr noundef %ext, ptr noundef %mext, i32 noundef %101)
  br label %if.end382

if.else379:                                       ; preds = %for.body370
  call void @__sanitizer_cov_trace_pc() #14
  %call381 = tail call i32 @hash_ipport6_del(ptr noundef %set, ptr noundef %d377, ptr noundef null, ptr noundef null, i32 noundef 0)
  br label %if.end382

if.end382:                                        ; preds = %if.else379, %if.then376
  %call.i.i622 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %l.0693) #12
  br i1 %call.i.i622, label %if.end.i.i623, label %if.end382.list_del.exit_crit_edge

if.end382.list_del.exit_crit_edge:                ; preds = %if.end382
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i623:                                    ; preds = %if.end382
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %l.0693, i32 0, i32 1
  %102 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %prev.i.i, align 4
  %104 = ptrtoint ptr %l.0693 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %l.0693, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %103, ptr %prev1.i.i.i, align 4
  %107 = ptrtoint ptr %103 to i32
  call void @__asan_store4_noabort(i32 %107)
  store volatile ptr %105, ptr %103, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i623, %if.end382.list_del.exit_crit_edge
  %108 = ptrtoint ptr %l.0693 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr inttoptr (i32 256 to ptr), ptr %l.0693, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %l.0693, i32 0, i32 1
  %109 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %l.0693) #12
  %cmp.i620.not = icmp eq ptr %lt.0695, %ad
  br i1 %cmp.i620.not, label %list_del.exit.for.end385_crit_edge, label %list_del.exit.for.body370_crit_edge

list_del.exit.for.body370_crit_edge:              ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body370

list_del.exit.for.end385_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end385

for.end385:                                       ; preds = %list_del.exit.for.end385_crit_edge, %do.end362.for.end385_crit_edge
  %call.i.i572 = tail call zeroext i1 @__kasan_check_write(ptr noundef %uref, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !219
  tail call void @llvm.prefetch.p0(ptr %uref, i32 1, i32 3, i32 1) #12
  %110 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uref, ptr %uref, i32 1, ptr elementtype(i32) %uref) #12, !srcloc !220
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %110, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !221
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %do.body389, label %for.end385.cleanup420_crit_edge

for.end385.cleanup420_crit_edge:                  ; preds = %for.end385
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup420

do.body389:                                       ; preds = %for.end385
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_ipport6_resize.__UNIQUE_ID_ddebug715, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_ipport6_resize, %if.then401)) #12
          to label %do.end.i [label %if.then401], !srcloc !210

if.then401:                                       ; preds = %do.body389
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_ipport6_resize.__UNIQUE_ID_ddebug715, ptr noundef nonnull @.str.28, ptr noundef %17) #12
  br label %do.end.i

do.end.i:                                         ; preds = %for.inc.i.do.end.i_crit_edge, %if.then401, %do.body389
  %i.017.i = phi i32 [ %inc.i, %for.inc.i.do.end.i_crit_edge ], [ 0, %do.body389 ], [ 0, %if.then401 ]
  %arrayidx.i624 = getelementptr %struct.htable, ptr %17, i32 0, i32 5, i32 %i.017.i
  %111 = ptrtoint ptr %arrayidx.i624 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %arrayidx.i624, align 4
  %tobool.not.i625 = icmp eq ptr %112, null
  br i1 %tobool.not.i625, label %do.end.i.for.inc.i_crit_edge, label %if.end.i

do.end.i.for.inc.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end.i:                                         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %112) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %do.end.i.for.inc.i_crit_edge
  %inc.i = add i32 %i.017.i, 1
  %113 = ptrtoint ptr %htable_bits97 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %htable_bits97, align 4
  %conv.i626 = zext i8 %114 to i32
  %i.0.highbits.i = lshr i32 %inc.i, %conv.i626
  %cmp.i627 = icmp eq i32 %i.0.highbits.i, 0
  br i1 %cmp.i627, label %for.inc.i.do.end.i_crit_edge, label %hash_ipport6_ahash_destroy.exit

for.inc.i.do.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

hash_ipport6_ahash_destroy.exit:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  %hregion.i = getelementptr inbounds %struct.htable, ptr %17, i32 0, i32 4
  %115 = ptrtoint ptr %hregion.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %hregion.i, align 4
  tail call void @ip_set_free(ptr noundef %116) #12
  tail call void @ip_set_free(ptr noundef %17) #12
  br label %cleanup420

cleanup406:                                       ; preds = %if.end8.i.i610.cleanup406_crit_edge, %if.then224.cleanup406_crit_edge, %if.end8.i.i.cleanup406_crit_edge
  %cmp409 = phi i1 [ false, %if.end8.i.i610.cleanup406_crit_edge ], [ true, %if.then224.cleanup406_crit_edge ], [ false, %if.end8.i.i.cleanup406_crit_edge ]
  %ret.8 = phi i32 [ -12, %if.end8.i.i610.cleanup406_crit_edge ], [ -11, %if.then224.cleanup406_crit_edge ], [ -12, %if.end8.i.i.cleanup406_crit_edge ]
  %call.i628 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i628, label %cleanup406.rcu_read_unlock_bh.exit636_crit_edge, label %land.lhs.true.i631

cleanup406.rcu_read_unlock_bh.exit636_crit_edge:  ; preds = %cleanup406
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit636

land.lhs.true.i631:                               ; preds = %cleanup406
  %call1.i629 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i629)
  %tobool.not.i630 = icmp eq i32 %call1.i629, 0
  br i1 %tobool.not.i630, label %land.lhs.true.i631.rcu_read_unlock_bh.exit636_crit_edge, label %land.lhs.true2.i633

land.lhs.true.i631.rcu_read_unlock_bh.exit636_crit_edge: ; preds = %land.lhs.true.i631
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit636

land.lhs.true2.i633:                              ; preds = %land.lhs.true.i631
  %.b4.i632 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i632, label %land.lhs.true2.i633.rcu_read_unlock_bh.exit636_crit_edge, label %if.then.i634

land.lhs.true2.i633.rcu_read_unlock_bh.exit636_crit_edge: ; preds = %land.lhs.true2.i633
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit636

if.then.i634:                                     ; preds = %land.lhs.true2.i633
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 761, ptr noundef nonnull @.str.15) #12
  br label %rcu_read_unlock_bh.exit636

rcu_read_unlock_bh.exit636:                       ; preds = %if.then.i634, %land.lhs.true2.i633.rcu_read_unlock_bh.exit636_crit_edge, %land.lhs.true.i631.rcu_read_unlock_bh.exit636_crit_edge, %cleanup406.rcu_read_unlock_bh.exit636_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #12
  tail call fastcc void @local_bh_enable() #12
  %call.i.i576 = tail call zeroext i1 @__kasan_check_write(ptr noundef %17, i32 noundef 4) #12
  %117 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %117)
  store volatile i32 0, ptr %17, align 4
  %call.i.i577 = tail call zeroext i1 @__kasan_check_write(ptr noundef %uref, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %uref, i32 1, i32 3, i32 1) #12
  %118 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uref, ptr %uref, i32 1, ptr elementtype(i32) %uref) #12, !srcloc !225
  br label %do.end.i644

do.end.i644:                                      ; preds = %for.inc.i651.do.end.i644_crit_edge, %rcu_read_unlock_bh.exit636
  %i.017.i641 = phi i32 [ 0, %rcu_read_unlock_bh.exit636 ], [ %inc.i647, %for.inc.i651.do.end.i644_crit_edge ]
  %arrayidx.i642 = getelementptr %struct.htable, ptr %call20, i32 0, i32 5, i32 %i.017.i641
  %119 = ptrtoint ptr %arrayidx.i642 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %arrayidx.i642, align 4
  %tobool.not.i643 = icmp eq ptr %120, null
  br i1 %tobool.not.i643, label %do.end.i644.for.inc.i651_crit_edge, label %if.end.i646

do.end.i644.for.inc.i651_crit_edge:               ; preds = %do.end.i644
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i651

if.end.i646:                                      ; preds = %do.end.i644
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %120) #12
  br label %for.inc.i651

for.inc.i651:                                     ; preds = %if.end.i646, %do.end.i644.for.inc.i651_crit_edge
  %inc.i647 = add i32 %i.017.i641, 1
  %121 = ptrtoint ptr %htable_bits31 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %htable_bits31, align 4
  %conv.i648 = zext i8 %122 to i32
  %i.0.highbits.i649 = lshr i32 %inc.i647, %conv.i648
  %cmp.i650 = icmp eq i32 %i.0.highbits.i649, 0
  br i1 %cmp.i650, label %for.inc.i651.do.end.i644_crit_edge, label %hash_ipport6_ahash_destroy.exit653

for.inc.i651.do.end.i644_crit_edge:               ; preds = %for.inc.i651
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i644

hash_ipport6_ahash_destroy.exit653:               ; preds = %for.inc.i651
  %123 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %hregion, align 4
  tail call void @ip_set_free(ptr noundef %124) #12
  tail call void @ip_set_free(ptr noundef nonnull %call20) #12
  br i1 %cmp409, label %hash_ipport6_ahash_destroy.exit653.retry_crit_edge, label %hash_ipport6_ahash_destroy.exit653.cleanup420_crit_edge

hash_ipport6_ahash_destroy.exit653.cleanup420_crit_edge: ; preds = %hash_ipport6_ahash_destroy.exit653
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup420

hash_ipport6_ahash_destroy.exit653.retry_crit_edge: ; preds = %hash_ipport6_ahash_destroy.exit653
  call void @__sanitizer_cov_trace_pc() #14
  br label %retry

do.end415:                                        ; preds = %if.end15.do.end415_crit_edge, %retry.do.end415_crit_edge
  %call419 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %set) #17
  br label %cleanup420

cleanup420:                                       ; preds = %do.end415, %hash_ipport6_ahash_destroy.exit653.cleanup420_crit_edge, %hash_ipport6_ahash_destroy.exit, %for.end385.cleanup420_crit_edge, %if.then29, %if.end19.cleanup420_crit_edge
  %retval.0 = phi i32 [ 0, %hash_ipport6_ahash_destroy.exit ], [ 0, %for.end385.cleanup420_crit_edge ], [ -12, %if.then29 ], [ -4352, %do.end415 ], [ -12, %if.end19.cleanup420_crit_edge ], [ %ret.8, %hash_ipport6_ahash_destroy.exit653.cleanup420_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hash_ipport6_destroy(ptr noundef %set) #2 align 64 {
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
  %gc = getelementptr inbounds %struct.hash_ipport6, ptr %1, i32 0, i32 1
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
  %.b25 = load i1, ptr @hash_ipport6_destroy.__warned, align 1
  br i1 %.b25, label %land.lhs.true4.do.end_crit_edge, label %if.then6

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then6:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hash_ipport6_destroy.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 466, ptr noundef nonnull @.str.30) #12
  br label %do.end

do.end:                                           ; preds = %if.then6, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %if.end.do.end_crit_edge
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  tail call fastcc void @hash_ipport6_ahash_destroy(ptr noundef %set, ptr noundef %6, i1 noundef zeroext true)
  %ad = getelementptr inbounds %struct.hash_ipport6, ptr %1, i32 0, i32 5
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
define internal void @hash_ipport6_flush(ptr noundef %set) #2 align 64 {
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
  %.b134 = load i1, ptr @hash_ipport6_flush.__warned, align 1
  br i1 %.b134, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hash_ipport6_flush.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 412, ptr noundef nonnull @.str.30) #12
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
  %r.0146 = phi i32 [ 0, %do.end ], [ %inc103, %for.end.for.body_crit_edge ]
  %4 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hregion, align 4
  %arrayidx = getelementptr %struct.ip_set_region, ptr %5, i32 %r.0146
  tail call void @_raw_spin_lock_bh(ptr noundef %arrayidx) #12
  %6 = ptrtoint ptr %htable_bits to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %htable_bits, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %7)
  %cmp11 = icmp ult i8 %7, 10
  %mul = shl i32 %r.0146, 10
  %spec.select = select i1 %cmp11, i32 0, i32 %mul
  %mul27 = add i32 %mul, 1024
  %conv19136 = zext i8 %7 to i32
  %shl25137 = shl nuw i32 1, %conv19136
  %cond29138 = select i1 %cmp11, i32 %shl25137, i32 %mul27
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %cond29138)
  %cmp30139 = icmp ult i32 %spec.select, %cond29138
  br i1 %cmp30139, label %for.body.do.end35_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.do.end35_crit_edge:                      ; preds = %for.body
  br label %do.end35

do.end35:                                         ; preds = %for.inc.do.end35_crit_edge, %for.body.do.end35_crit_edge
  %i.0140 = phi i32 [ %inc, %for.inc.do.end35_crit_edge ], [ %spec.select, %for.body.do.end35_crit_edge ]
  %arrayidx37 = getelementptr %struct.htable, ptr %3, i32 0, i32 5, i32 %i.0140
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
  %inc = add nuw i32 %i.0140, 1
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
  %ext_size = getelementptr %struct.ip_set_region, ptr %32, i32 %r.0146, i32 1
  %33 = ptrtoint ptr %ext_size to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %ext_size, align 4
  %34 = load ptr, ptr %hregion, align 4
  %elements = getelementptr %struct.ip_set_region, ptr %34, i32 %r.0146, i32 2
  %35 = ptrtoint ptr %elements to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %elements, align 4
  %36 = load ptr, ptr %hregion, align 4
  %arrayidx100 = getelementptr %struct.ip_set_region, ptr %36, i32 %r.0146
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx100) #12
  %inc103 = add nuw i32 %r.0146, 1
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
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hash_ipport6_head(ptr noundef %set, ptr noundef %skb) #2 align 64 {
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
  %.b77 = load i1, ptr @hash_ipport6_head.__warned, align 1
  br i1 %.b77, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hash_ipport6_head.__warned, align 1
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
  %.b112.i = load i1, ptr @hash_ipport6_ext_size.__warned, align 1
  br i1 %.b112.i, label %land.lhs.true5.i.do.end8.i_crit_edge, label %if.then.i81

land.lhs.true5.i.do.end8.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8.i

if.then.i81:                                      ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hash_ipport6_ext_size.__warned, align 1
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
  %.b110111.i = load i1, ptr @hash_ipport6_ext_size.__warned.55, align 1
  br i1 %.b110111.i, label %land.lhs.true49.i.do.end54.i_crit_edge, label %if.then51.i

land.lhs.true49.i.do.end54.i_crit_edge:           ; preds = %land.lhs.true49.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end54.i

if.then51.i:                                      ; preds = %land.lhs.true49.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hash_ipport6_ext_size.__warned.55, align 1
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
  br i1 %cmp13.i, label %for.end82.i.for.body.i_crit_edge, label %hash_ipport6_ext_size.exit

for.end82.i.for.body.i_crit_edge:                 ; preds = %for.end82.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

hash_ipport6_ext_size.exit:                       ; preds = %for.end82.i
  %htable_bits.i82 = getelementptr inbounds %struct.htable, ptr %3, i32 0, i32 2
  %38 = ptrtoint ptr %htable_bits.i82 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %htable_bits.i82, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %39)
  %cmp.i83 = icmp ult i8 %39, 10
  %conv.i84 = zext i8 %39 to i32
  %sub.i85 = add nsw i32 %conv.i84, -10
  %phi.bo.i = shl i32 52, %sub.i85
  %phi.bo1.i = add i32 %phi.bo.i, 172
  %cond.i86 = select i1 %cmp.i83, i32 224, i32 %phi.bo1.i
  %ext_size10 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 12
  %40 = ptrtoint ptr %ext_size10 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ext_size10, align 4
  %add = add i32 %41, %add85.i
  %add11 = add i32 %add, %cond.i86
  %call.i87 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i87, label %hash_ipport6_ext_size.exit.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true.i90

hash_ipport6_ext_size.exit.rcu_read_unlock_bh.exit_crit_edge: ; preds = %hash_ipport6_ext_size.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

land.lhs.true.i90:                                ; preds = %hash_ipport6_ext_size.exit
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

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i93, %land.lhs.true2.i92.rcu_read_unlock_bh.exit_crit_edge, %land.lhs.true.i90.rcu_read_unlock_bh.exit_crit_edge, %hash_ipport6_ext_size.exit.rcu_read_unlock_bh.exit_crit_edge
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
  %maxelem = getelementptr inbounds %struct.hash_ipport6, ptr %1, i32 0, i32 2
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
  %bucketsize = getelementptr inbounds %struct.hash_ipport6, ptr %1, i32 0, i32 4
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
  %initval = getelementptr inbounds %struct.hash_ipport6, ptr %1, i32 0, i32 3
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
  br i1 %tobool45.not, label %if.end49, label %if.end43.cleanup_crit_edge, !prof !226

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
define internal i32 @hash_ipport6_list(ptr noundef %set, ptr noundef %skb, ptr nocapture noundef %cb) #2 align 64 {
entry:
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
  %tobool.not224 = icmp eq ptr %3, null
  %tobool.not = select i1 %cmp.i.i, i1 true, i1 %tobool.not224
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_ipport6_list.__UNIQUE_ID_ddebug754, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_ipport6_list, %if.then5)) #12
          to label %do.end [label %if.then5], !srcloc !210

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_ipport6_list.__UNIQUE_ID_ddebug754, ptr noundef nonnull @.str.34, ptr noundef %set) #12
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %arrayidx7 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 4
  %4 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx7, align 4
  %6 = inttoptr i32 %5 to ptr
  %7 = tail call i32 @llvm.read_register.i32(metadata !200) #12
  %and.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !227
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 696, ptr noundef nonnull @.str.38) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %do.end.rcu_read_lock.exit_crit_edge
  %htable_bits = getelementptr inbounds %struct.htable, ptr %6, i32 0, i32 2
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %13 = ptrtoint ptr %htable_bits to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %htable_bits, align 4
  %conv232 = zext i8 %14 to i32
  %.highbits233 = lshr i32 %12, %conv232
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.highbits233)
  %cmp234 = icmp eq i32 %.highbits233, 0
  br i1 %cmp234, label %for.body.lr.ph, label %rcu_read_lock.exit.for.end106_crit_edge

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
  %.b180 = load i1, ptr @hash_ipport6_list.__warned, align 1
  br i1 %.b180, label %land.lhs.true22.do.end27_crit_edge, label %if.then24

land.lhs.true22.do.end27_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end27

if.then24:                                        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hash_ipport6_list.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1362, ptr noundef nonnull @.str.8) #12
  br label %do.end27

do.end27:                                         ; preds = %if.then24, %land.lhs.true22.do.end27_crit_edge, %land.lhs.true.do.end27_crit_edge, %for.body.do.end27_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_ipport6_list.__UNIQUE_ID_ddebug757, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_ipport6_list, %if.then41)) #12
          to label %do.end45 [label %if.then41], !srcloc !210

if.then41:                                        ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_ipport6_list.__UNIQUE_ID_ddebug757, ptr noundef nonnull @.str.35, i32 noundef %22, ptr noundef %6, ptr noundef %20) #12
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
  %cmp51228.not = icmp eq i8 %24, 0
  br i1 %cmp51228.not, label %for.cond49.preheader.for.inc103_crit_edge, label %for.body53.lr.ph

for.cond49.preheader.for.inc103_crit_edge:        ; preds = %for.cond49.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc103

for.body53.lr.ph:                                 ; preds = %for.cond49.preheader
  %used = getelementptr inbounds %struct.hbucket, ptr %20, i32 0, i32 1
  %value = getelementptr inbounds %struct.hbucket, ptr %20, i32 0, i32 5
  br label %for.body53

for.body53:                                       ; preds = %for.inc.for.body53_crit_edge, %for.body53.lr.ph
  %i.0229 = phi i32 [ 0, %for.body53.lr.ph ], [ %inc, %for.inc.for.body53_crit_edge ]
  %div3.i = lshr i32 %i.0229, 5
  %arrayidx.i = getelementptr i32, ptr %used, i32 %div3.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.0229, 31
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
  %mul = mul i32 %30, %i.0229
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_ipport6_list.__UNIQUE_ID_ddebug758, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_ipport6_list, %if.then81)) #12
          to label %do.end85 [label %if.then81], !srcloc !210

if.then81:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_ipport6_list.__UNIQUE_ID_ddebug758, ptr noundef nonnull @.str.36, i32 noundef %40, ptr noundef nonnull %20, i32 noundef %i.0229, ptr noundef %add.ptr) #12
  br label %do.end85

do.end85:                                         ; preds = %if.then81, %do.body69
  %41 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i188 = call i32 @nla_put(ptr noundef %skb, i32 noundef 32775, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i188)
  %cmp.i.i189 = icmp slt i32 %call1.i.i188, 0
  %tobool87.not225 = icmp eq ptr %42, null
  %tobool87.not = select i1 %cmp.i.i189, i1 true, i1 %tobool87.not225
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
  br i1 %cmp.i.i191, label %do.end.i.i, label %if.then.i.i.nla_nest_cancel.exit_crit_edge, !prof !211

if.then.i.i.nla_nest_cancel.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_nest_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 991, i32 noundef 9, ptr noundef null) #12
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
  %49 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 32769, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call1.i.i.i.i, 0
  %tobool.not1.i.i = icmp eq ptr %50, null
  %tobool.not.i.i192 = select i1 %cmp.i.i.i.i, i1 true, i1 %tobool.not1.i.i
  br i1 %tobool.not.i.i192, label %if.end94.nla_put_failure_crit_edge, label %if.end.i.i193

if.end94.nla_put_failure_crit_edge:               ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

if.end.i.i193:                                    ; preds = %if.end94
  %call.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 16, ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool2.not.i.i, label %lor.lhs.false.i, label %if.end.i.i193.nla_put_failure_crit_edge

if.end.i.i193.nla_put_failure_crit_edge:          ; preds = %if.end.i.i193
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

lor.lhs.false.i:                                  ; preds = %if.end.i.i193
  %51 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %52 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %50 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i.i.i to i16
  %53 = ptrtoint ptr %50 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv.i.i.i, ptr %50, align 2
  %port.i = getelementptr inbounds %struct.hash_ipport6_elem, ptr %add.ptr, i32 0, i32 1
  %54 = ptrtoint ptr %port.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %port.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i.i.i) #12
  %56 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %tmp.i.i.i, align 2
  %call.i.i10.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 16388, i32 noundef 2, ptr noundef nonnull %tmp.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i10.i)
  %tobool2.not.i = icmp eq i32 %call.i.i10.i, 0
  br i1 %tobool2.not.i, label %lor.lhs.false3.i, label %lor.lhs.false.i.nla_put_failure_crit_edge

lor.lhs.false.i.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %proto.i = getelementptr inbounds %struct.hash_ipport6_elem, ptr %add.ptr, i32 0, i32 2
  %57 = ptrtoint ptr %proto.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %proto.i, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i) #12
  %59 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %tmp.i.i, align 1
  %call.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 1, ptr noundef nonnull %tmp.i.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool5.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool5.not.i, label %if.end97, label %lor.lhs.false3.i.nla_put_failure_crit_edge

lor.lhs.false3.i.nla_put_failure_crit_edge:       ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

if.end97:                                         ; preds = %lor.lhs.false3.i
  %call98 = call i32 @ip_set_put_extensions(ptr noundef %skb, ptr noundef %set, ptr noundef %add.ptr, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.end101, label %if.end97.nla_put_failure_crit_edge

if.end97.nla_put_failure_crit_edge:               ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

if.end101:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #14
  %60 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %61 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %42 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %62 = ptrtoint ptr %42 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv.i, ptr %42, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.end101, %ip_set_timeout_expired.exit.for.inc_crit_edge, %for.body53.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0229, 1
  %63 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %pos, align 1
  %conv50 = zext i8 %64 to i32
  %cmp51 = icmp ult i32 %inc, %conv50
  br i1 %cmp51, label %for.inc.for.body53_crit_edge, label %for.inc.for.inc103_crit_edge

for.inc.for.inc103_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc103

for.inc.for.body53_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body53

for.inc103:                                       ; preds = %for.inc.for.inc103_crit_edge, %for.cond49.preheader.for.inc103_crit_edge, %do.end45.for.inc103_crit_edge
  %65 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx, align 4
  %inc105 = add i32 %66, 1
  store i32 %inc105, ptr %arrayidx, align 4
  %67 = ptrtoint ptr %htable_bits to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %htable_bits, align 4
  %conv = zext i8 %68 to i32
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
  %69 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i196 = ptrtoint ptr %70 to i32
  %sub.ptr.rhs.cast.i197 = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i198 = sub i32 %sub.ptr.lhs.cast.i196, %sub.ptr.rhs.cast.i197
  %conv.i199 = trunc i32 %sub.ptr.sub.i198 to i16
  %71 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %conv.i199, ptr %3, align 2
  %72 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %arrayidx, align 4
  br label %out

nla_put_failure:                                  ; preds = %if.end97.nla_put_failure_crit_edge, %lor.lhs.false3.i.nla_put_failure_crit_edge, %lor.lhs.false.i.nla_put_failure_crit_edge, %if.end.i.i193.nla_put_failure_crit_edge, %if.end94.nla_put_failure_crit_edge, %if.then88.nla_put_failure_crit_edge
  %tobool.not.i200 = icmp eq ptr %16, null
  br i1 %tobool.not.i200, label %nla_put_failure.nlmsg_trim.exit_crit_edge, label %if.then.i201

nla_put_failure.nlmsg_trim.exit_crit_edge:        ; preds = %nla_put_failure
  call void @__sanitizer_cov_trace_pc() #14
  br label %nlmsg_trim.exit

if.then.i201:                                     ; preds = %nla_put_failure
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %73 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %data.i, align 4
  %cmp.i = icmp ugt ptr %74, %16
  br i1 %cmp.i, label %do.end.i, label %if.then.i201.if.end.i_crit_edge, !prof !211

if.then.i201.if.end.i_crit_edge:                  ; preds = %if.then.i201
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i201
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 991, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i201.if.end.i_crit_edge
  %75 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i202 = ptrtoint ptr %16 to i32
  %sub.ptr.rhs.cast.i203 = ptrtoint ptr %76 to i32
  %sub.ptr.sub.i204 = sub i32 %sub.ptr.lhs.cast.i202, %sub.ptr.rhs.cast.i203
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i204) #12
  br label %nlmsg_trim.exit

nlmsg_trim.exit:                                  ; preds = %if.end.i, %nla_put_failure.nlmsg_trim.exit_crit_edge
  %77 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %78)
  %cmp110 = icmp eq i32 %1, %78
  br i1 %cmp110, label %do.end121, label %if.else, !prof !211

do.end121:                                        ; preds = %nlmsg_trim.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call125 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %set) #17
  %79 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %arrayidx, align 4
  br label %out

if.else:                                          ; preds = %nlmsg_trim.exit
  call void @__sanitizer_cov_trace_pc() #14
  %80 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i206 = ptrtoint ptr %81 to i32
  %sub.ptr.rhs.cast.i207 = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i208 = sub i32 %sub.ptr.lhs.cast.i206, %sub.ptr.rhs.cast.i207
  %conv.i209 = trunc i32 %sub.ptr.sub.i208 to i16
  %82 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %conv.i209, ptr %3, align 2
  br label %out

out:                                              ; preds = %if.else, %do.end121, %for.end106, %nla_nest_cancel.exit
  %ret.0 = phi i32 [ -90, %do.end121 ], [ 0, %if.else ], [ -90, %nla_nest_cancel.exit ], [ 0, %for.end106 ]
  %call.i210 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i210, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i213

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i213:                               ; preds = %out
  %call1.i211 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i211)
  %tobool.not.i212 = icmp eq i32 %call1.i211, 0
  br i1 %tobool.not.i212, label %land.lhs.true.i213.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i215

land.lhs.true.i213.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i213
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i215:                              ; preds = %land.lhs.true.i213
  %.b4.i214 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i214, label %land.lhs.true2.i215.rcu_read_unlock.exit_crit_edge, label %if.then.i216

land.lhs.true2.i215.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i215
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i216:                                     ; preds = %land.lhs.true2.i215
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 724, ptr noundef nonnull @.str.41) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i216, %land.lhs.true2.i215.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i213.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !228
  %83 = call i32 @llvm.read_register.i32(metadata !200) #12
  %and.i.i.i.i.i217 = and i32 %83, -16384
  %84 = inttoptr i32 %and.i.i.i.i.i217 to ptr
  %preempt_count.i.i.i.i218 = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %preempt_count.i.i.i.i218 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %preempt_count.i.i.i.i218, align 4
  %sub.i.i.i = add i32 %86, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i218, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %rcu_read_unlock.exit ], [ -90, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hash_ipport6_uref(ptr nocapture noundef readonly %set, ptr nocapture noundef %cb, i1 noundef zeroext %start) #2 align 64 {
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
  %.b46 = load i1, ptr @hash_ipport6_uref.__warned, align 1
  br i1 %.b46, label %land.lhs.true6.do.end10_crit_edge, label %if.then8

land.lhs.true6.do.end10_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

if.then8:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hash_ipport6_uref.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1321, ptr noundef nonnull @.str.8) #12
  br label %do.end10

do.end10:                                         ; preds = %if.then8, %land.lhs.true6.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %lor.lhs.false.do.end10_crit_edge, %rcu_read_lock_bh.exit.do.end10_crit_edge
  %uref = getelementptr inbounds %struct.htable, ptr %3, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %uref, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %uref, i32 1, i32 3, i32 1) #12
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uref, ptr %uref, i32 1, ptr elementtype(i32) %uref) #12, !srcloc !215
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !219
  tail call void @llvm.prefetch.p0(ptr %uref16, i32 1, i32 3, i32 1) #12
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uref16, ptr %uref16, i32 1, ptr elementtype(i32) %uref16) #12, !srcloc !220
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !221
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_ipport6_uref.__UNIQUE_ID_ddebug753, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_ipport6_uref, %if.then29)) #12
          to label %do.end32 [label %if.then29], !srcloc !210

if.then29:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_ipport6_uref.__UNIQUE_ID_ddebug753, ptr noundef nonnull @.str.43, ptr noundef nonnull %9) #12
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
  br i1 %cmp.i, label %for.inc.i.do.end.i_crit_edge, label %hash_ipport6_ahash_destroy.exit

for.inc.i.do.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

hash_ipport6_ahash_destroy.exit:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  %hregion.i = getelementptr inbounds %struct.htable, ptr %9, i32 0, i32 4
  %17 = ptrtoint ptr %hregion.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hregion.i, align 4
  tail call void @ip_set_free(ptr noundef %18) #12
  tail call void @ip_set_free(ptr noundef nonnull %9) #12
  br label %if.end33

if.end33:                                         ; preds = %hash_ipport6_ahash_destroy.exit, %land.lhs.true18.if.end33_crit_edge, %if.then14.if.end33_crit_edge
  %19 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %arrayidx12, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.end33, %if.else.if.end36_crit_edge, %rcu_read_unlock_bh.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @hash_ipport6_same_set(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #7 align 64 {
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
  %maxelem = getelementptr inbounds %struct.hash_ipport6, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %maxelem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %maxelem, align 4
  %maxelem2 = getelementptr inbounds %struct.hash_ipport6, ptr %3, i32 0, i32 2
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
define internal fastcc void @hash_ipport6_gc_do(ptr noundef %set, ptr noundef %t, i32 noundef %r) unnamed_addr #2 align 64 {
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
  %cmp1323 = icmp ult i32 %spec.select, %cond12
  br i1 %cmp1323, label %do.end.lr.ph, label %entry.for.end223_crit_edge

entry.for.end223_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end223

do.end.lr.ph:                                     ; preds = %entry
  %arrayidx27 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 1
  %extensions.i = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 8
  %arrayidx.i6 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 3
  %mul160.neg = mul i32 %1, -2
  %add161.neg = add i32 %mul160.neg, -24
  br label %do.end

do.end:                                           ; preds = %for.inc221.do.end_crit_edge, %do.end.lr.ph
  %i.024 = phi i32 [ %spec.select, %do.end.lr.ph ], [ %inc222, %for.inc221.do.end_crit_edge ]
  %arrayidx16 = getelementptr %struct.htable, ptr %t, i32 0, i32 5, i32 %i.024
  %6 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx16, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %do.end.for.inc221_crit_edge, label %for.cond17.preheader

do.end.for.inc221_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc221

for.cond17.preheader:                             ; preds = %do.end
  %pos = getelementptr inbounds %struct.hbucket, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pos, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp1912.not = icmp eq i8 %9, 0
  br i1 %cmp1912.not, label %for.cond17.preheader.for.inc221_crit_edge, label %for.body21.lr.ph

for.cond17.preheader.for.inc221_crit_edge:        ; preds = %for.cond17.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc221

for.body21.lr.ph:                                 ; preds = %for.cond17.preheader
  %used = getelementptr inbounds %struct.hbucket, ptr %7, i32 0, i32 1
  %value = getelementptr inbounds %struct.hbucket, ptr %7, i32 0, i32 5
  br label %for.body21

for.body21:                                       ; preds = %for.inc.for.body21_crit_edge, %for.body21.lr.ph
  %d.016 = phi i32 [ 0, %for.body21.lr.ph ], [ %d.1, %for.inc.for.body21_crit_edge ]
  %j.013 = phi i32 [ 0, %for.body21.lr.ph ], [ %inc53, %for.inc.for.body21_crit_edge ]
  %div3.i = lshr i32 %j.013, 5
  %arrayidx.i = getelementptr i32, ptr %used, i32 %div3.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %j.013, 31
  %12 = shl nuw i32 1, %and.i
  %13 = and i32 %11, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool22.not = icmp eq i32 %13, 0
  br i1 %tobool22.not, label %if.then23, label %if.end24

if.then23:                                        ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #14
  %inc = add i32 %d.016, 1
  br label %for.inc

if.end24:                                         ; preds = %for.body21
  %mul26 = mul i32 %j.013, %1
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
  br i1 %cmp.not.i, label %if.end24.for.inc_crit_edge, label %ip_set_timeout_expired.exit

if.end24.for.inc_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

ip_set_timeout_expired.exit:                      ; preds = %if.end24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %17, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp1.i = icmp slt i32 %sub.i, 0
  br i1 %cmp1.i, label %do.body32, label %ip_set_timeout_expired.exit.for.inc_crit_edge

ip_set_timeout_expired.exit.for.inc_crit_edge:    ; preds = %ip_set_timeout_expired.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

do.body32:                                        ; preds = %ip_set_timeout_expired.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_ipport6_gc_do.__UNIQUE_ID_ddebug691, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_ipport6_gc_do, %if.then38)) #12
          to label %do.end41 [label %if.then38], !srcloc !210

if.then38:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_ipport6_gc_do.__UNIQUE_ID_ddebug691, ptr noundef nonnull @.str.17, i32 noundef %i.024, i32 noundef %j.013) #12
  br label %do.end41

do.end41:                                         ; preds = %if.then38, %do.body32
  tail call void @_clear_bit(i32 noundef %j.013, ptr noundef %used) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !236
  %19 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hregion, align 4
  %elements = getelementptr %struct.ip_set_region, ptr %20, i32 %r, i32 2
  %21 = ptrtoint ptr %elements to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %elements, align 4
  %dec = add i32 %22, -1
  store i32 %dec, ptr %elements, align 4
  %23 = ptrtoint ptr %extensions.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %extensions.i, align 2
  %25 = and i8 %24, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i = icmp eq i8 %25, 0
  br i1 %tobool.not.i, label %do.end41.ip_set_ext_destroy.exit_crit_edge, label %if.then.i

do.end41.ip_set_ext_destroy.exit_crit_edge:       ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_set_ext_destroy.exit

if.then.i:                                        ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %arrayidx.i6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i6, align 4
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 %27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.ip_set_ext_type], ptr @ip_set_extensions, i32 0, i32 3) to i32))
  %28 = load ptr, ptr getelementptr inbounds ([0 x %struct.ip_set_ext_type], ptr @ip_set_extensions, i32 0, i32 3), align 4
  tail call void %28(ptr noundef %set, ptr noundef %add.ptr.i) #12
  br label %ip_set_ext_destroy.exit

ip_set_ext_destroy.exit:                          ; preds = %if.then.i, %do.end41.ip_set_ext_destroy.exit_crit_edge
  %inc52 = add i32 %d.016, 1
  br label %for.inc

for.inc:                                          ; preds = %ip_set_ext_destroy.exit, %ip_set_timeout_expired.exit.for.inc_crit_edge, %if.end24.for.inc_crit_edge, %if.then23
  %d.1 = phi i32 [ %inc52, %ip_set_ext_destroy.exit ], [ %d.016, %ip_set_timeout_expired.exit.for.inc_crit_edge ], [ %inc, %if.then23 ], [ %d.016, %if.end24.for.inc_crit_edge ]
  %inc53 = add nuw nsw i32 %j.013, 1
  %29 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %pos, align 1
  %conv18 = zext i8 %30 to i32
  %cmp19 = icmp ult i32 %inc53, %conv18
  br i1 %cmp19, label %for.inc.for.body21_crit_edge, label %for.end

for.inc.for.body21_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body21

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %d.1)
  %cmp54 = icmp ugt i32 %d.1, 1
  br i1 %cmp54, label %if.then56, label %for.end.for.inc221_crit_edge

for.end.for.inc221_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc221

if.then56:                                        ; preds = %for.end
  %size = getelementptr inbounds %struct.hbucket, ptr %7, i32 0, i32 2
  %31 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %size, align 8
  %conv57 = zext i8 %32 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %d.1, i32 %conv57)
  %cmp58.not = icmp ult i32 %d.1, %conv57
  br i1 %cmp58.not, label %if.end8.i.i, label %if.then60

if.then60:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #14
  %mul63 = mul i32 %1, %conv57
  %33 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hregion, align 4
  %ext_size = getelementptr %struct.ip_set_region, ptr %34, i32 %r, i32 1
  %35 = ptrtoint ptr %ext_size to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ext_size, align 4
  %add64.neg = sub i32 -24, %mul63
  %sub = add i32 %add64.neg, %36
  store i32 %sub, ptr %ext_size, align 4
  br label %for.inc221.sink.split

if.end8.i.i:                                      ; preds = %if.then56
  %sub120 = add nsw i32 %conv57, -2
  %mul121 = mul i32 %sub120, %1
  %add122 = add i32 %mul121, 24
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add122, i32 noundef 2848) #16
  %tobool124.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool124.not, label %if.end8.i.i.for.inc221_crit_edge, label %if.end126

if.end8.i.i.for.inc221_crit_edge:                 ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc221

if.end126:                                        ; preds = %if.end8.i.i
  %37 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %size, align 8
  %sub129 = add i8 %38, -2
  %size131 = getelementptr inbounds %struct.hbucket, ptr %call9.i.i, i32 0, i32 2
  %39 = ptrtoint ptr %size131 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %sub129, ptr %size131, align 16
  %40 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %pos, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cmp13518.not = icmp eq i8 %41, 0
  br i1 %cmp13518.not, label %if.end126.for.end157_crit_edge, label %for.body137.lr.ph

if.end126.for.end157_crit_edge:                   ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end157

for.body137.lr.ph:                                ; preds = %if.end126
  %used138 = getelementptr inbounds %struct.hbucket, ptr %7, i32 0, i32 1
  %value144 = getelementptr inbounds %struct.hbucket, ptr %7, i32 0, i32 5
  %value148 = getelementptr inbounds %struct.hbucket, ptr %call9.i.i, i32 0, i32 5
  %used152 = getelementptr inbounds %struct.hbucket, ptr %call9.i.i, i32 0, i32 1
  br label %for.body137

for.body137:                                      ; preds = %for.inc155.for.body137_crit_edge, %for.body137.lr.ph
  %d.221 = phi i32 [ 0, %for.body137.lr.ph ], [ %d.3, %for.inc155.for.body137_crit_edge ]
  %j.119 = phi i32 [ 0, %for.body137.lr.ph ], [ %inc156, %for.inc155.for.body137_crit_edge ]
  %div3.i1 = lshr i32 %j.119, 5
  %arrayidx.i2 = getelementptr i32, ptr %used138, i32 %div3.i1
  %42 = ptrtoint ptr %arrayidx.i2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %arrayidx.i2, align 4
  %and.i3 = and i32 %j.119, 31
  %44 = shl nuw i32 1, %and.i3
  %45 = and i32 %43, %44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool141.not = icmp eq i32 %45, 0
  br i1 %tobool141.not, label %for.body137.for.inc155_crit_edge, label %if.end143

for.body137.for.inc155_crit_edge:                 ; preds = %for.body137
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc155

if.end143:                                        ; preds = %for.body137
  call void @__sanitizer_cov_trace_pc() #14
  %mul146 = mul i32 %j.119, %1
  %add.ptr147 = getelementptr i8, ptr %value144, i32 %mul146
  %mul150 = mul i32 %d.221, %1
  %add.ptr151 = getelementptr i8, ptr %value148, i32 %mul150
  %46 = call ptr @memcpy(ptr %add.ptr151, ptr %add.ptr147, i32 %1)
  tail call void @_set_bit(i32 noundef %d.221, ptr noundef %used152) #12
  %inc154 = add i32 %d.221, 1
  br label %for.inc155

for.inc155:                                       ; preds = %if.end143, %for.body137.for.inc155_crit_edge
  %d.3 = phi i32 [ %inc154, %if.end143 ], [ %d.221, %for.body137.for.inc155_crit_edge ]
  %inc156 = add nuw nsw i32 %j.119, 1
  %47 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %pos, align 1
  %conv134 = zext i8 %48 to i32
  %cmp135 = icmp ult i32 %inc156, %conv134
  br i1 %cmp135, label %for.inc155.for.body137_crit_edge, label %for.inc155.for.end157_crit_edge

for.inc155.for.end157_crit_edge:                  ; preds = %for.inc155
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end157

for.inc155.for.body137_crit_edge:                 ; preds = %for.inc155
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body137

for.end157:                                       ; preds = %for.inc155.for.end157_crit_edge, %if.end126.for.end157_crit_edge
  %d.2.lcssa = phi i32 [ 0, %if.end126.for.end157_crit_edge ], [ %d.3, %for.inc155.for.end157_crit_edge ]
  %conv158 = trunc i32 %d.2.lcssa to i8
  %pos159 = getelementptr inbounds %struct.hbucket, ptr %call9.i.i, i32 0, i32 3
  %49 = ptrtoint ptr %pos159 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv158, ptr %pos159, align 1
  %50 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hregion, align 4
  %ext_size164 = getelementptr %struct.ip_set_region, ptr %51, i32 %r, i32 1
  %52 = ptrtoint ptr %ext_size164 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ext_size164, align 4
  %sub165 = add i32 %add161.neg, %53
  store i32 %sub165, ptr %ext_size164, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !237
  br label %for.inc221.sink.split

for.inc221.sink.split:                            ; preds = %for.end157, %if.then60
  %retval.1.i.i10.sink = phi ptr [ %call9.i.i, %for.end157 ], [ null, %if.then60 ]
  %54 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %retval.1.i.i10.sink, ptr %arrayidx16, align 4
  tail call void @kvfree_call_rcu(ptr noundef nonnull %7, ptr noundef null) #12
  br label %for.inc221

for.inc221:                                       ; preds = %for.inc221.sink.split, %if.end8.i.i.for.inc221_crit_edge, %for.end.for.inc221_crit_edge, %for.cond17.preheader.for.inc221_crit_edge, %do.end.for.inc221_crit_edge
  %inc222 = add nuw i32 %i.024, 1
  %exitcond.not = icmp eq i32 %inc222, %cond12
  br i1 %exitcond.not, label %for.inc221.for.end223_crit_edge, label %for.inc221.do.end_crit_edge

for.inc221.do.end_crit_edge:                      ; preds = %for.inc221
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

for.inc221.for.end223_crit_edge:                  ; preds = %for.inc221
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end223

for.end223:                                       ; preds = %for.inc221.for.end223_crit_edge, %entry.for.end223_crit_edge
  %55 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hregion, align 4
  %arrayidx225 = getelementptr %struct.ip_set_region, ptr %56, i32 %r
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx225) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hash_ipport6_ahash_destroy(ptr noundef %set, ptr noundef %t, i1 noundef zeroext %ext_destroy) unnamed_addr #2 align 64 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hash_ipport4_gc(ptr noundef %work) #2 align 64 {
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
  %.b79 = load i1, ptr @hash_ipport4_gc.__warned, align 1
  br i1 %.b79, label %land.lhs.true6.do.end_crit_edge, label %if.then

land.lhs.true6.do.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hash_ipport4_gc.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 582, ptr noundef nonnull @.str.30) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true6.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %uref = getelementptr inbounds %struct.htable, ptr %5, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %uref, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %uref, i32 1, i32 3, i32 1) #12
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uref, ptr %uref, i32 1, ptr elementtype(i32) %uref) #12, !srcloc !215
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
  tail call fastcc void @hash_ipport4_gc_do(ptr noundef %1, ptr noundef %5, i32 noundef %r.0)
  %call.i.i80 = tail call zeroext i1 @__kasan_check_write(ptr noundef %uref, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !219
  tail call void @llvm.prefetch.p0(ptr %uref, i32 1, i32 3, i32 1) #12
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uref, ptr %uref, i32 1, ptr elementtype(i32) %uref) #12, !srcloc !220
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !221
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_ipport4_gc.__UNIQUE_ID_ddebug630, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_ipport4_gc, %if.then50)) #12
          to label %do.end.i [label %if.then50], !srcloc !210

if.then50:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_ipport4_gc.__UNIQUE_ID_ddebug630, ptr noundef nonnull @.str.62, ptr noundef %5) #12
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
  br i1 %cmp.i, label %for.inc.i.do.end.i_crit_edge, label %hash_ipport4_ahash_destroy.exit

for.inc.i.do.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

hash_ipport4_ahash_destroy.exit:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  %hregion.i = getelementptr inbounds %struct.htable, ptr %5, i32 0, i32 4
  %21 = ptrtoint ptr %hregion.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hregion.i, align 4
  tail call void @ip_set_free(ptr noundef %22) #12
  tail call void @ip_set_free(ptr noundef %5) #12
  br label %if.end54

if.end54:                                         ; preds = %hash_ipport4_ahash_destroy.exit, %land.lhs.true40.if.end54_crit_edge, %do.end.if.end54_crit_edge
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
define internal void @hash_ipport6_gc(ptr noundef %work) #2 align 64 {
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
  %.b79 = load i1, ptr @hash_ipport6_gc.__warned, align 1
  br i1 %.b79, label %land.lhs.true6.do.end_crit_edge, label %if.then

land.lhs.true6.do.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @hash_ipport6_gc.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 582, ptr noundef nonnull @.str.30) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true6.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %uref = getelementptr inbounds %struct.htable, ptr %5, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %uref, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %uref, i32 1, i32 3, i32 1) #12
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uref, ptr %uref, i32 1, ptr elementtype(i32) %uref) #12, !srcloc !215
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
  tail call fastcc void @hash_ipport6_gc_do(ptr noundef %1, ptr noundef %5, i32 noundef %r.0)
  %call.i.i80 = tail call zeroext i1 @__kasan_check_write(ptr noundef %uref, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !219
  tail call void @llvm.prefetch.p0(ptr %uref, i32 1, i32 3, i32 1) #12
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uref, ptr %uref, i32 1, ptr elementtype(i32) %uref) #12, !srcloc !220
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !221
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_ipport6_gc.__UNIQUE_ID_ddebug702, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_ipport6_gc, %if.then50)) #12
          to label %do.end.i [label %if.then50], !srcloc !210

if.then50:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_ipport6_gc.__UNIQUE_ID_ddebug702, ptr noundef nonnull @.str.62, ptr noundef %5) #12
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
  br i1 %cmp.i, label %for.inc.i.do.end.i_crit_edge, label %hash_ipport6_ahash_destroy.exit

for.inc.i.do.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

hash_ipport6_ahash_destroy.exit:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  %hregion.i = getelementptr inbounds %struct.htable, ptr %5, i32 0, i32 4
  %21 = ptrtoint ptr %hregion.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hregion.i, align 4
  tail call void @ip_set_free(ptr noundef %22) #12
  tail call void @ip_set_free(ptr noundef %5) #12
  br label %if.end54

if.end54:                                         ; preds = %hash_ipport6_ahash_destroy.exit, %land.lhs.true40.if.end54_crit_edge, %do.end.if.end54_crit_edge
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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !28, !29, !31, !33, !34, !36, !38, !39, !40, !41, !43, !44, !46, !47, !48, !50, !51, !53, !55, !56, !57, !59, !61, !63, !65, !66, !67, !69, !71, !73, !75, !77, !79, !80, !81, !83, !85, !87, !88, !90, !91, !93, !94, !95, !97, !98, !100, !102, !104, !106, !108, !110, !111, !112, !114, !116, !117, !119, !120, !122, !123, !124, !126, !127, !129, !131, !133, !134, !136, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !186, !187, !188, !189, !191, !193, !194, !195, !196, !197, !198, !199}
!llvm.named.register.sp = !{!200}
!llvm.module.flags = !{!201, !202, !203, !204, !205, !206, !207, !208}
!llvm.ident = !{!209}

!0 = !{ptr @__UNIQUE_ID_file610, !1, !"__UNIQUE_ID_file610", i1 false, i1 false}
!1 = !{!"../net/netfilter/ipset/ip_set_hash_ipport.c", i32 31, i32 1}
!2 = !{ptr @__UNIQUE_ID_license611, !1, !"__UNIQUE_ID_license611", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author612, !4, !"__UNIQUE_ID_author612", i1 false, i1 false}
!4 = !{!"../net/netfilter/ipset/ip_set_hash_ipport.c", i32 32, i32 1}
!5 = !{ptr @__UNIQUE_ID_description613, !6, !"__UNIQUE_ID_description613", i1 false, i1 false}
!6 = !{!"../net/netfilter/ipset/ip_set_hash_ipport.c", i32 33, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias614, !8, !"__UNIQUE_ID_alias614", i1 false, i1 false}
!8 = !{!"../net/netfilter/ipset/ip_set_hash_ipport.c", i32 34, i32 1}
!9 = !{ptr @__initcall__kmod_ip_set_hash_ipport__762_393_hash_ipport_init6, !10, !"__initcall__kmod_ip_set_hash_ipport__762_393_hash_ipport_init6", i1 false, i1 false}
!10 = !{!"../net/netfilter/ipset/ip_set_hash_ipport.c", i32 393, i32 1}
!11 = !{ptr @__exitcall_hash_ipport_fini, !12, !"__exitcall_hash_ipport_fini", i1 false, i1 false}
!12 = !{!"../net/netfilter/ipset/ip_set_hash_ipport.c", i32 394, i32 1}
!13 = !{ptr @hash_ipport_type, !14, !"hash_ipport_type", i1 false, i1 false}
!14 = !{!"../net/netfilter/ipset/ip_set_hash_ipport.c", i32 340, i32 27}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 1458, i32 2}
!17 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @hash_ipport_create.__UNIQUE_ID_ddebug759, !16, !"__UNIQUE_ID_ddebug759", i1 false, i1 false}
!21 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @hash_ipport_create.__key, !24, !"__key", i1 false, i1 false}
!24 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 1537, i32 3}
!25 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 1592, i32 2}
!28 = !{ptr @hash_ipport_create.__UNIQUE_ID_ddebug761, !27, !"__UNIQUE_ID_ddebug761", i1 false, i1 false}
!29 = !{ptr @hash_ipport4_variant, !30, !"hash_ipport4_variant", i1 false, i1 false}
!30 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 1422, i32 41}
!31 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!32 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 855, i32 6}
!33 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 878, i32 6}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 1015, i32 3}
!38 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @hash_ipport4_add._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @hash_ipport4_add._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 1022, i32 3}
!43 = !{ptr @hash_ipport4_add.__UNIQUE_ID_ddebug657, !42, !"__UNIQUE_ID_ddebug657", i1 false, i1 false}
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
!56 = !{ptr @hash_ipport4_gc_do.__UNIQUE_ID_ddebug619, !54, !"__UNIQUE_ID_ddebug619", i1 false, i1 false}
!57 = distinct !{null, !58, !"__warned", i1 false, i1 false}
!58 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 443, i32 7}
!59 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!60 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 1048, i32 6}
!61 = distinct !{null, !62, !"__warned", i1 false, i1 false}
!62 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 1055, i32 6}
!63 = !{ptr @.str.19, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 1135, i32 3}
!65 = !{ptr @.str.20, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @hash_ipport4_del.__UNIQUE_ID_ddebug671, !64, !"__UNIQUE_ID_ddebug671", i1 false, i1 false}
!67 = distinct !{null, !68, !"__warned", i1 false, i1 false}
!68 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 1224, i32 6}
!69 = distinct !{null, !70, !"__warned", i1 false, i1 false}
!70 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 1239, i32 6}
!71 = distinct !{null, !72, !"__warned", i1 false, i1 false}
!72 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 647, i32 9}
!73 = !{ptr @hash_ipport4_resize.__key, !74, !"__key", i1 false, i1 false}
!74 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 672, i32 3}
!75 = distinct !{null, !76, !"__warned", i1 false, i1 false}
!76 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 677, i32 9}
!77 = !{ptr @.str.23, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 680, i32 2}
!79 = !{ptr @.str.24, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @hash_ipport4_resize.__UNIQUE_ID_ddebug635, !78, !"__UNIQUE_ID_ddebug635", i1 false, i1 false}
!81 = distinct !{null, !82, !"__warned", i1 false, i1 false}
!82 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 687, i32 8}
!83 = distinct !{null, !84, !"__warned", i1 false, i1 false}
!84 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 706, i32 9}
!85 = !{ptr @.str.27, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 764, i32 2}
!87 = !{ptr @hash_ipport4_resize.__UNIQUE_ID_ddebug642, !86, !"__UNIQUE_ID_ddebug642", i1 false, i1 false}
!88 = !{ptr @.str.28, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 782, i32 3}
!90 = !{ptr @hash_ipport4_resize.__UNIQUE_ID_ddebug643, !89, !"__UNIQUE_ID_ddebug643", i1 false, i1 false}
!91 = !{ptr @.str.29, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 803, i32 2}
!93 = !{ptr @hash_ipport4_resize._entry, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @hash_ipport4_resize._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!95 = distinct !{null, !96, !"__warned", i1 false, i1 false}
!96 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 466, i32 27}
!97 = !{ptr @.str.30, !96, !"<string literal>", i1 false, i1 false}
!98 = distinct !{null, !99, !"__warned", i1 false, i1 false}
!99 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 412, i32 6}
!100 = distinct !{null, !101, !"__warned", i1 false, i1 false}
!101 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 417, i32 8}
!102 = distinct !{null, !103, !"__warned", i1 false, i1 false}
!103 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 1272, i32 6}
!104 = distinct !{null, !105, !"__warned", i1 false, i1 false}
!105 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 818, i32 6}
!106 = distinct !{null, !107, !"__warned", i1 false, i1 false}
!107 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 822, i32 8}
!108 = !{ptr @.str.33, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 1354, i32 2}
!110 = !{ptr @.str.34, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @hash_ipport4_list.__UNIQUE_ID_ddebug682, !109, !"__UNIQUE_ID_ddebug682", i1 false, i1 false}
!112 = distinct !{null, !113, !"__warned", i1 false, i1 false}
!113 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 1362, i32 7}
!114 = !{ptr @.str.35, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 1363, i32 3}
!116 = !{ptr @hash_ipport4_list.__UNIQUE_ID_ddebug685, !115, !"__UNIQUE_ID_ddebug685", i1 false, i1 false}
!117 = !{ptr @.str.36, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 1373, i32 4}
!119 = !{ptr @hash_ipport4_list.__UNIQUE_ID_ddebug686, !118, !"__UNIQUE_ID_ddebug686", i1 false, i1 false}
!120 = !{ptr @.str.37, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 1400, i32 3}
!122 = !{ptr @hash_ipport4_list._entry, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @hash_ipport4_list._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!124 = distinct !{null, !125, !"__warned", i1 false, i1 false}
!125 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!126 = !{ptr @.str.38, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.39, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../include/linux/sched.h", i32 2089, i32 2}
!129 = !{ptr @.str.40, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../include/net/netlink.h", i32 991, i32 3}
!131 = distinct !{null, !132, !"__warned", i1 false, i1 false}
!132 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!133 = !{ptr @.str.41, !132, !"<string literal>", i1 false, i1 false}
!134 = distinct !{null, !135, !"__warned", i1 false, i1 false}
!135 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 1321, i32 7}
!136 = !{ptr @.str.42, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 1328, i32 4}
!138 = !{ptr @.str.43, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @hash_ipport4_uref.__UNIQUE_ID_ddebug681, !137, !"__UNIQUE_ID_ddebug681", i1 false, i1 false}
!140 = !{ptr @hash_ipport6_variant, !30, !"hash_ipport6_variant", i1 false, i1 false}
!141 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!142 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!143 = !{ptr @.str.45, !37, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @hash_ipport6_add._entry, !37, !"_entry", i1 false, i1 false}
!145 = !{ptr @hash_ipport6_add._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @hash_ipport6_add.__UNIQUE_ID_ddebug729, !42, !"__UNIQUE_ID_ddebug729", i1 false, i1 false}
!147 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!148 = !{ptr @.str.46, !54, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @hash_ipport6_gc_do.__UNIQUE_ID_ddebug691, !54, !"__UNIQUE_ID_ddebug691", i1 false, i1 false}
!150 = distinct !{null, !58, !"__warned", i1 false, i1 false}
!151 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!152 = distinct !{null, !62, !"__warned", i1 false, i1 false}
!153 = !{ptr @.str.48, !64, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @hash_ipport6_del.__UNIQUE_ID_ddebug743, !64, !"__UNIQUE_ID_ddebug743", i1 false, i1 false}
!155 = distinct !{null, !68, !"__warned", i1 false, i1 false}
!156 = distinct !{null, !70, !"__warned", i1 false, i1 false}
!157 = distinct !{null, !72, !"__warned", i1 false, i1 false}
!158 = !{ptr @hash_ipport6_resize.__key, !74, !"__key", i1 false, i1 false}
!159 = distinct !{null, !76, !"__warned", i1 false, i1 false}
!160 = !{ptr @.str.51, !78, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @hash_ipport6_resize.__UNIQUE_ID_ddebug707, !78, !"__UNIQUE_ID_ddebug707", i1 false, i1 false}
!162 = distinct !{null, !82, !"__warned", i1 false, i1 false}
!163 = distinct !{null, !84, !"__warned", i1 false, i1 false}
!164 = !{ptr @hash_ipport6_resize.__UNIQUE_ID_ddebug714, !86, !"__UNIQUE_ID_ddebug714", i1 false, i1 false}
!165 = !{ptr @hash_ipport6_resize.__UNIQUE_ID_ddebug715, !89, !"__UNIQUE_ID_ddebug715", i1 false, i1 false}
!166 = !{ptr @hash_ipport6_resize._entry, !92, !"_entry", i1 false, i1 false}
!167 = !{ptr @hash_ipport6_resize._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!168 = distinct !{null, !96, !"__warned", i1 false, i1 false}
!169 = distinct !{null, !99, !"__warned", i1 false, i1 false}
!170 = distinct !{null, !101, !"__warned", i1 false, i1 false}
!171 = distinct !{null, !103, !"__warned", i1 false, i1 false}
!172 = distinct !{null, !105, !"__warned", i1 false, i1 false}
!173 = distinct !{null, !107, !"__warned", i1 false, i1 false}
!174 = !{ptr @.str.56, !109, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @hash_ipport6_list.__UNIQUE_ID_ddebug754, !109, !"__UNIQUE_ID_ddebug754", i1 false, i1 false}
!176 = distinct !{null, !113, !"__warned", i1 false, i1 false}
!177 = !{ptr @hash_ipport6_list.__UNIQUE_ID_ddebug757, !115, !"__UNIQUE_ID_ddebug757", i1 false, i1 false}
!178 = !{ptr @hash_ipport6_list.__UNIQUE_ID_ddebug758, !118, !"__UNIQUE_ID_ddebug758", i1 false, i1 false}
!179 = !{ptr @hash_ipport6_list._entry, !121, !"_entry", i1 false, i1 false}
!180 = !{ptr @hash_ipport6_list._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!181 = distinct !{null, !135, !"__warned", i1 false, i1 false}
!182 = !{ptr @.str.57, !137, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @hash_ipport6_uref.__UNIQUE_ID_ddebug753, !137, !"__UNIQUE_ID_ddebug753", i1 false, i1 false}
!184 = !{ptr @hash_ipport4_gc_init.__key, !185, !"__key", i1 false, i1 false}
!185 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 608, i32 2}
!186 = !{ptr @.str.58, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @hash_ipport4_gc_init.__key.59, !185, !"__key", i1 false, i1 false}
!188 = !{ptr @.str.60, !185, !"<string literal>", i1 false, i1 false}
!189 = distinct !{null, !190, !"__warned", i1 false, i1 false}
!190 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 582, i32 6}
!191 = !{ptr @.str.61, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 597, i32 3}
!193 = !{ptr @.str.62, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @hash_ipport4_gc.__UNIQUE_ID_ddebug630, !192, !"__UNIQUE_ID_ddebug630", i1 false, i1 false}
!195 = !{ptr @hash_ipport6_gc_init.__key, !185, !"__key", i1 false, i1 false}
!196 = !{ptr @hash_ipport6_gc_init.__key.63, !185, !"__key", i1 false, i1 false}
!197 = distinct !{null, !190, !"__warned", i1 false, i1 false}
!198 = !{ptr @.str.64, !192, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @hash_ipport6_gc.__UNIQUE_ID_ddebug702, !192, !"__UNIQUE_ID_ddebug702", i1 false, i1 false}
!200 = !{!"sp"}
!201 = !{i32 1, !"wchar_size", i32 2}
!202 = !{i32 1, !"min_enum_size", i32 4}
!203 = !{i32 8, !"branch-target-enforcement", i32 0}
!204 = !{i32 8, !"sign-return-address", i32 0}
!205 = !{i32 8, !"sign-return-address-all", i32 0}
!206 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!207 = !{i32 7, !"uwtable", i32 1}
!208 = !{i32 7, !"frame-pointer", i32 2}
!209 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!210 = !{i64 2148971578, i64 2148971583, i64 2148971596, i64 2148971640, i64 2148971674, i64 2148971695}
!211 = !{!"branch_weights", i32 1, i32 2000}
!212 = !{i32 0, i32 33}
!213 = !{!"auto-init"}
!214 = !{!"branch_weights", i32 1073205, i32 2146410443}
!215 = !{i64 2148175579, i64 2148175605, i64 2148175634, i64 2148175668, i64 2148175699, i64 2148175722}
!216 = !{i64 2158897857}
!217 = !{i64 2158903626}
!218 = !{i8 0, i8 2}
!219 = !{i64 2148264031}
!220 = !{i64 2148178764, i64 2148178796, i64 2148178825, i64 2148178859, i64 2148178890, i64 2148178913}
!221 = !{i64 2148264260}
!222 = !{i64 2158925384}
!223 = !{i64 2158942723}
!224 = !{i64 2158859163}
!225 = !{i64 2148178044, i64 2148178070, i64 2148178099, i64 2148178133, i64 2148178164, i64 2148178187}
!226 = !{!"branch_weights", i32 2000, i32 1}
!227 = !{i64 2149374360}
!228 = !{i64 2149374626}
!229 = !{i64 2158801103}
!230 = !{i64 2158817710}
!231 = !{i64 2159156448}
!232 = !{i64 2159162217}
!233 = !{i64 2159183975}
!234 = !{i64 2159201314}
!235 = !{i64 2159117754}
!236 = !{i64 2159059694}
!237 = !{i64 2159076301}
