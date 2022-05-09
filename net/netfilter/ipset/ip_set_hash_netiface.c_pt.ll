; ModuleID = '/llk/IR_all_yes/net/netfilter/ipset/ip_set_hash_netiface.c_pt.bc'
source_filename = "../net/netfilter/ipset/ip_set_hash_netiface.c"
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
%struct.hash_netiface6 = type { ptr, %struct.htable_gc, i32, i32, i8, %struct.list_head, %struct.hash_netiface6_elem, [129 x %struct.net_prefixes] }
%struct.htable_gc = type { %struct.delayed_work, ptr, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hash_netiface6_elem = type { %union.nf_inet_addr, i8, i8, i8, i8, i8, [16 x i8] }
%struct.net_prefixes = type { [1 x i32], [1 x i8] }
%struct.ip_set_region = type { %struct.spinlock, i32, i32 }
%struct.hash_netiface4_elem = type { i32, i8, i8, i8, i8, i8, [16 x i8] }
%struct.ip_set_ext = type { %struct.ip_set_skbinfo, i64, i64, ptr, i32, i8, i8, i8 }
%struct.ip_set_skbinfo = type { i32, i32, i32, i16, i16 }
%struct.hash_netiface4 = type { ptr, %struct.htable_gc, i32, i32, i8, %struct.list_head, %struct.hash_netiface4_elem, [33 x %struct.net_prefixes] }
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
%struct.skb_ext = type { %struct.refcount_struct, [4 x i8], i8, [7 x i8], [0 x i8] }
%struct.nf_bridge_info = type { i16, i16, ptr, ptr, %union.anon.192 }
%union.anon.192 = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.141 }
%union.anon.141 = type { [4 x i32] }
%struct.xt_action_param = type { %union.anon.184, %union.anon.185, ptr, i32, i16, i8 }
%union.anon.184 = type { ptr }
%union.anon.185 = type { ptr }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.hbucket = type { %struct.callback_head, [2 x i32], i8, i8, [6 x i8], [0 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.ip_set_counter = type { %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.hash_netiface4_resize_ad = type { %struct.list_head, i32, %struct.hash_netiface4_elem, %struct.ip_set_ext, %struct.ip_set_ext, i32 }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.93 }
%union.anon.93 = type { [6 x i32], [24 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.hash_netiface6_resize_ad = type { %struct.list_head, i32, %struct.hash_netiface6_elem, %struct.ip_set_ext, %struct.ip_set_ext, i32 }

@__UNIQUE_ID_file610 = internal constant [67 x i8] c"ip_set_hash_netiface.file=net/netfilter/ipset/ip_set_hash_netiface\00", section ".modinfo", align 1
@__UNIQUE_ID_license611 = internal constant [33 x i8] c"ip_set_hash_netiface.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author612 = internal constant [68 x i8] c"ip_set_hash_netiface.author=Jozsef Kadlecsik <kadlec@netfilter.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description613 = internal constant [79 x i8] c"ip_set_hash_netiface.description=hash:net,iface type of IP sets, revisions 0-8\00", section ".modinfo", align 1
@__UNIQUE_ID_alias614 = internal constant [49 x i8] c"ip_set_hash_netiface.alias=ip_set_hash:net,iface\00", section ".modinfo", align 1
@hash_netiface_type = internal global %struct.ip_set_type { %struct.list_head zeroinitializer, [32 x i8] c"hash:net,iface\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 7, i8 2, i8 0, i8 0, i8 8, [10 x i8] c"\00\00\00\00\00\00\00\00\02\00", i16 161, ptr @hash_netiface_create, [27 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer], [31 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 10, i8 0, i16 15, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 10, i8 0, i16 255, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.91 zeroinitializer }, %struct.nla_policy zeroinitializer], ptr null }, section ".data..read_mostly", align 4
@__initcall__kmod_ip_set_hash_netiface__774_527_hash_netiface_init6 = internal global ptr @hash_netiface_init, section ".initcall6.init", align 4
@__exitcall_hash_netiface_fini = internal global ptr @hash_netiface_fini, section ".exitcall.exit", align 4
@hash_netiface_create.__UNIQUE_ID_ddebug771 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 108, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ip_set_hash_netiface\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hash_netiface_create\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"net/netfilter/ipset/ip_set_hash_gen.h\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Create set %s with family %s\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"inet\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"inet6\00", [26 x i8] zeroinitializer }, align 32
@hash_netiface_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&t->hregion[i].lock\00", [44 x i8] zeroinitializer }, align 32
@hash_netiface4_variant = internal constant { %struct.ip_set_type_variant, [40 x i8] } { %struct.ip_set_type_variant { ptr @hash_netiface4_kadt, ptr @hash_netiface4_uadt, [3 x ptr] [ptr @hash_netiface4_add, ptr @hash_netiface4_del, ptr @hash_netiface4_test], ptr @hash_netiface4_resize, ptr @hash_netiface4_destroy, ptr @hash_netiface4_flush, ptr null, ptr @hash_netiface4_head, ptr @hash_netiface4_list, ptr @hash_netiface4_uref, ptr @hash_netiface4_same_set, i8 1 }, [40 x i8] zeroinitializer }, align 32
@hash_netiface6_variant = internal constant { %struct.ip_set_type_variant, [40 x i8] } { %struct.ip_set_type_variant { ptr @hash_netiface6_kadt, ptr @hash_netiface6_uadt, [3 x ptr] [ptr @hash_netiface6_add, ptr @hash_netiface6_del, ptr @hash_netiface6_test], ptr @hash_netiface6_resize, ptr @hash_netiface6_destroy, ptr @hash_netiface6_flush, ptr null, ptr @hash_netiface6_head, ptr @hash_netiface6_list, ptr @hash_netiface6_uref, ptr @hash_netiface6_same_set, i8 1 }, [40 x i8] zeroinitializer }, align 32
@hash_netiface_create.__UNIQUE_ID_ddebug773 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 1, i8 -114, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"create %s hashsize %u (%u) maxelem %u: %p(%p)\0A\00", [49 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.8 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@ip_set_netmask_map = external dso_local local_unnamed_addr constant [0 x %union.nf_inet_addr], align 4
@__const.hash_netiface4_uadt.e = private unnamed_addr constant { i32, i8, i8, i8, i8, i8, [16 x i8], [3 x i8] } { i32 0, i8 0, i8 32, i8 0, i8 1, i8 0, [16 x i8] zeroinitializer, [3 x i8] zeroinitializer }, align 4
@ip_set_hostmask_map = external dso_local local_unnamed_addr constant [0 x %union.nf_inet_addr], align 4
@hash_netiface4_add.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@hash_netiface4_add.__warned.10 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_netiface4_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 1016, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014Set %s is full, maxelem %u reached\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hash_netiface4_add\00", [45 x i8] zeroinitializer }, align 32
@hash_netiface4_add._entry_ptr = internal global ptr @hash_netiface4_add._entry, section ".printk_index", align 4
@hash_netiface4_add.__UNIQUE_ID_ddebug657 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 -1, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Table destroy after resize by add: %p\0A\00", [57 x i8] zeroinitializer }, align 32
@rcu_bh_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock_bh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"rcu_read_lock_bh() used illegally while idle\00", [51 x i8] zeroinitializer }, align 32
@rcu_read_unlock_bh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"rcu_read_unlock_bh() used illegally while idle\00", [49 x i8] zeroinitializer }, align 32
@hash_netiface4_gc_do.__UNIQUE_ID_ddebug619 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 -126, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hash_netiface4_gc_do\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"expired %u/%u\0A\00", [17 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ip_set_extensions = external dso_local local_unnamed_addr constant [0 x %struct.ip_set_ext_type], align 4
@hash_netiface4_del.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_netiface4_del.__warned.19 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_netiface4_del.__UNIQUE_ID_ddebug671 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 1, i8 27, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hash_netiface4_del\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Table destroy after resize by del: %p\0A\00", [57 x i8] zeroinitializer }, align 32
@hash_netiface4_test.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_netiface4_test.__warned.22 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_netiface4_test_cidrs.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_netiface4_test_cidrs.__UNIQUE_ID_ddebug674 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 1, i8 37, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"hash_netiface4_test_cidrs\00", [38 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"test by nets\0A\00", [18 x i8] zeroinitializer }, align 32
@hash_netiface4_test_cidrs.__warned.25 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_netiface4_resize.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_netiface4_resize.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@hash_netiface4_resize.__warned.26 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_netiface4_resize.__UNIQUE_ID_ddebug635 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.28, i8 0, i8 -86, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hash_netiface4_resize\00", [42 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"attempt to resize set %s from %u to %u, t %p\0A\00", [50 x i8] zeroinitializer }, align 32
@hash_netiface4_resize.__UNIQUE_ID_ddebug642 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.31, i8 0, i8 -65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"set %s resized from %u (%p) to %u (%p)\0A\00", [56 x i8] zeroinitializer }, align 32
@hash_netiface4_resize.__UNIQUE_ID_ddebug643 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.32, i8 0, i8 -61, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Table destroy by resize %p\0A\00", [36 x i8] zeroinitializer }, align 32
@hash_netiface4_resize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.27, ptr @.str.2, i32 803, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014Cannot increase the hashsize of set %s further\0A\00", [46 x i8] zeroinitializer }, align 32
@hash_netiface4_resize._entry_ptr = internal global ptr @hash_netiface4_resize._entry, section ".printk_index", align 4
@hash_netiface4_destroy.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.34 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@hash_netiface4_flush.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_netiface4_head.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_netiface4_ext_size.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_netiface4_ext_size.__warned.36 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_netiface4_list.__UNIQUE_ID_ddebug688 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.38, i8 1, i8 82, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hash_netiface4_list\00", [44 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"list hash set %s\0A\00", [46 x i8] zeroinitializer }, align 32
@hash_netiface4_list.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_netiface4_list.__UNIQUE_ID_ddebug691 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.39, i8 1, i8 85, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cb->arg bucket: %lu, t %p n %p\0A\00", [32 x i8] zeroinitializer }, align 32
@hash_netiface4_list.__UNIQUE_ID_ddebug692 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.40, i8 1, i8 87, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"list hash %lu hbucket %p i %u, data %p\0A\00", [56 x i8] zeroinitializer }, align 32
@hash_netiface4_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.37, ptr @.str.2, i32 1401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\014Can't list set %s: one bucket does not fit into a message. Please report it!\0A\00", [48 x i8] zeroinitializer }, align 32
@hash_netiface4_list._entry_ptr = internal global ptr @hash_netiface4_list._entry, section ".printk_index", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.42 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/linux/sched.h\00", [42 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.45 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@hash_netiface4_uref.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_netiface4_uref.__UNIQUE_ID_ddebug687 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.47, i8 1, i8 76, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hash_netiface4_uref\00", [44 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Table destroy after resize  by dump: %p\0A\00", [55 x i8] zeroinitializer }, align 32
@hash_netiface6_add.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_netiface6_add.__warned.48 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_netiface6_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.49, ptr @.str.2, i32 1016, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hash_netiface6_add\00", [45 x i8] zeroinitializer }, align 32
@hash_netiface6_add._entry_ptr = internal global ptr @hash_netiface6_add._entry, section ".printk_index", align 4
@hash_netiface6_add.__UNIQUE_ID_ddebug735 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.2, ptr @.str.13, i8 0, i8 -1, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@hash_netiface6_gc_do.__UNIQUE_ID_ddebug697 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.18, i8 0, i8 -126, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hash_netiface6_gc_do\00", [43 x i8] zeroinitializer }, align 32
@hash_netiface6_del.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_netiface6_del.__warned.51 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_netiface6_del.__UNIQUE_ID_ddebug749 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.2, ptr @.str.21, i8 1, i8 27, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hash_netiface6_del\00", [45 x i8] zeroinitializer }, align 32
@hash_netiface6_test.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_netiface6_test.__warned.53 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_netiface6_test_cidrs.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_netiface6_test_cidrs.__UNIQUE_ID_ddebug752 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.2, ptr @.str.24, i8 1, i8 37, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"hash_netiface6_test_cidrs\00", [38 x i8] zeroinitializer }, align 32
@hash_netiface6_test_cidrs.__warned.55 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_netiface6_resize.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_netiface6_resize.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@hash_netiface6_resize.__warned.56 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_netiface6_resize.__UNIQUE_ID_ddebug713 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.28, i8 0, i8 -86, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hash_netiface6_resize\00", [42 x i8] zeroinitializer }, align 32
@hash_netiface6_resize.__UNIQUE_ID_ddebug720 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.31, i8 0, i8 -65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@hash_netiface6_resize.__UNIQUE_ID_ddebug721 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.32, i8 0, i8 -61, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@hash_netiface6_resize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.57, ptr @.str.2, i32 803, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hash_netiface6_resize._entry_ptr = internal global ptr @hash_netiface6_resize._entry, section ".printk_index", align 4
@hash_netiface6_destroy.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_netiface6_flush.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_netiface6_head.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_netiface6_ext_size.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_netiface6_ext_size.__warned.61 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_netiface6_list.__UNIQUE_ID_ddebug766 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.2, ptr @.str.38, i8 1, i8 82, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hash_netiface6_list\00", [44 x i8] zeroinitializer }, align 32
@hash_netiface6_list.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_netiface6_list.__UNIQUE_ID_ddebug769 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.2, ptr @.str.39, i8 1, i8 85, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@hash_netiface6_list.__UNIQUE_ID_ddebug770 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.2, ptr @.str.40, i8 1, i8 87, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@hash_netiface6_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.62, ptr @.str.2, i32 1401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@hash_netiface6_list._entry_ptr = internal global ptr @hash_netiface6_list._entry, section ".printk_index", align 4
@hash_netiface6_uref.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_netiface6_uref.__UNIQUE_ID_ddebug765 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.63, ptr @.str.2, ptr @.str.47, i8 1, i8 76, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hash_netiface6_uref\00", [44 x i8] zeroinitializer }, align 32
@hash_netiface4_gc_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.64 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&(&gc->dwork)->work)\00", [57 x i8] zeroinitializer }, align 32
@hash_netiface4_gc_init.__key.65 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.66 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&(&gc->dwork)->timer\00", [43 x i8] zeroinitializer }, align 32
@system_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@hash_netiface4_gc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_netiface4_gc.__UNIQUE_ID_ddebug630 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.2, ptr @.str.68, i8 0, i8 -107, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hash_netiface4_gc\00", [46 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Table destroy after resize by expire: %p\0A\00", [54 x i8] zeroinitializer }, align 32
@hash_netiface6_gc_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@hash_netiface6_gc_init.__key.69 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@hash_netiface6_gc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@hash_netiface6_gc.__UNIQUE_ID_ddebug708 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.2, ptr @.str.68, i8 0, i8 -107, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hash_netiface6_gc\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1458, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1537, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant [23 x i8] c"hash_netiface4_variant\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [23 x i8] c"hash_netiface6_variant\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1422, i32 41 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1592, i32 2 }
@___asan_gen_.105 = private constant [46 x i8] c"../net/netfilter/ipset/ip_set_hash_netiface.c\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 189, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 855, i32 6 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1022, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 749, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 760, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 764, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 782, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 466, i32 27 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1363, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1373, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 695, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant [25 x i8] c"../include/linux/sched.h\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 2089, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 991, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 723, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1015, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 520, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1135, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1172, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 672, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 680, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 803, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1354, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1400, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1328, i32 4 }
@___asan_gen_.263 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 608, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.267 = private unnamed_addr constant [41 x i8] c"../net/netfilter/ipset/ip_set_hash_gen.h\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 597, i32 3 }
@llvm.compiler.used = appending global [80 x ptr] [ptr @__UNIQUE_ID_alias614, ptr @__UNIQUE_ID_author612, ptr @__UNIQUE_ID_description613, ptr @__UNIQUE_ID_file610, ptr @__UNIQUE_ID_license611, ptr @__exitcall_hash_netiface_fini, ptr @__initcall__kmod_ip_set_hash_netiface__774_527_hash_netiface_init6, ptr @hash_netiface4_add._entry, ptr @hash_netiface4_add._entry_ptr, ptr @hash_netiface4_list._entry, ptr @hash_netiface4_list._entry_ptr, ptr @hash_netiface4_resize._entry, ptr @hash_netiface4_resize._entry_ptr, ptr @hash_netiface6_add._entry, ptr @hash_netiface6_add._entry_ptr, ptr @hash_netiface6_list._entry, ptr @hash_netiface6_list._entry_ptr, ptr @hash_netiface6_resize._entry, ptr @hash_netiface6_resize._entry_ptr, ptr @hash_netiface_fini, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @hash_netiface_create.__key, ptr @.str.6, ptr @hash_netiface4_variant, ptr @hash_netiface6_variant, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @hash_netiface4_resize.__key, ptr @.str.27, ptr @.str.28, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @hash_netiface6_resize.__key, ptr @.str.57, ptr @.str.62, ptr @.str.63, ptr @hash_netiface4_gc_init.__key, ptr @.str.64, ptr @hash_netiface4_gc_init.__key.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @hash_netiface6_gc_init.__key, ptr @hash_netiface6_gc_init.__key.69, ptr @.str.70], section "llvm.metadata"
@0 = internal global [66 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_netiface_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_netiface4_variant to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_netiface6_variant to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_netiface4_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_netiface4_resize.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_netiface4_resize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_netiface4_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_netiface6_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_netiface6_resize.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_netiface6_resize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_netiface6_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_netiface4_gc_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_netiface4_gc_init.__key.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_netiface6_gc_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_netiface6_gc_init.__key.69 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hash_netiface_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @rcu_barrier() #15
  tail call void @ip_set_type_unregister(ptr noundef nonnull @hash_netiface_type) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_set_type_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hash_netiface_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ip_set_type_register(ptr noundef nonnull @hash_netiface_type) #15
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hash_netiface_create(ptr nocapture noundef readnone %net, ptr noundef %set, ptr noundef %tb, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_netiface_create.__UNIQUE_ID_ddebug771, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_netiface_create, %if.then)) #15
          to label %do.end [label %if.then], !srcloc !224

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %family = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 6
  %0 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %family, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp = icmp eq i8 %1, 2
  %cond = select i1 %cmp, ptr @.str.4, ptr @.str.5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_netiface_create.__UNIQUE_ID_ddebug771, ptr noundef nonnull @.str.3, ptr noundef %set, ptr noundef nonnull %cond) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

do.end.if.end13_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end13:                                         ; preds = %do.end.if.end13_crit_edge, %do.end.if.end13_crit_edge333
  %arrayidx.i = getelementptr ptr, ptr %tb, i32 18
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i296 = icmp eq ptr %6, null
  br i1 %tobool.not.i296, label %if.end13.lor.lhs.false15_crit_edge, label %ip_set_optattr_netorder.exit

if.end13.lor.lhs.false15_crit_edge:               ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false15

ip_set_optattr_netorder.exit:                     ; preds = %if.end13
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %nla_type.i, align 2
  %9 = and i16 %8, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool2.i.not = icmp eq i16 %9, 0
  br i1 %tobool2.i.not, label %ip_set_optattr_netorder.exit.cleanup_crit_edge, label %ip_set_optattr_netorder.exit.lor.lhs.false15_crit_edge, !prof !225

ip_set_optattr_netorder.exit.lor.lhs.false15_crit_edge: ; preds = %ip_set_optattr_netorder.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false15

ip_set_optattr_netorder.exit.cleanup_crit_edge:   ; preds = %ip_set_optattr_netorder.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false15:                                  ; preds = %ip_set_optattr_netorder.exit.lor.lhs.false15_crit_edge, %if.end13.lor.lhs.false15_crit_edge
  %arrayidx.i297 = getelementptr ptr, ptr %tb, i32 19
  %10 = ptrtoint ptr %arrayidx.i297 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i297, align 4
  %tobool.not.i298 = icmp eq ptr %11, null
  br i1 %tobool.not.i298, label %lor.lhs.false15.lor.lhs.false17_crit_edge, label %ip_set_optattr_netorder.exit302

lor.lhs.false15.lor.lhs.false17_crit_edge:        ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false17

ip_set_optattr_netorder.exit302:                  ; preds = %lor.lhs.false15
  %nla_type.i299 = getelementptr inbounds %struct.nlattr, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %nla_type.i299 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %nla_type.i299, align 2
  %14 = and i16 %13, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool2.i300.not = icmp eq i16 %14, 0
  br i1 %tobool2.i300.not, label %ip_set_optattr_netorder.exit302.cleanup_crit_edge, label %ip_set_optattr_netorder.exit302.lor.lhs.false17_crit_edge, !prof !225

ip_set_optattr_netorder.exit302.lor.lhs.false17_crit_edge: ; preds = %ip_set_optattr_netorder.exit302
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false17

ip_set_optattr_netorder.exit302.cleanup_crit_edge: ; preds = %ip_set_optattr_netorder.exit302
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false17:                                  ; preds = %ip_set_optattr_netorder.exit302.lor.lhs.false17_crit_edge, %lor.lhs.false15.lor.lhs.false17_crit_edge
  %arrayidx.i303 = getelementptr ptr, ptr %tb, i32 6
  %15 = ptrtoint ptr %arrayidx.i303 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i303, align 4
  %tobool.not.i304 = icmp eq ptr %16, null
  br i1 %tobool.not.i304, label %lor.lhs.false17.lor.rhs_crit_edge, label %ip_set_optattr_netorder.exit308

lor.lhs.false17.lor.rhs_crit_edge:                ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.rhs

ip_set_optattr_netorder.exit308:                  ; preds = %lor.lhs.false17
  %nla_type.i305 = getelementptr inbounds %struct.nlattr, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %nla_type.i305 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %nla_type.i305, align 2
  %19 = and i16 %18, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool2.i306.not = icmp eq i16 %19, 0
  br i1 %tobool2.i306.not, label %ip_set_optattr_netorder.exit308.cleanup_crit_edge, label %ip_set_optattr_netorder.exit308.lor.rhs_crit_edge, !prof !225

ip_set_optattr_netorder.exit308.lor.rhs_crit_edge: ; preds = %ip_set_optattr_netorder.exit308
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.rhs

ip_set_optattr_netorder.exit308.cleanup_crit_edge: ; preds = %ip_set_optattr_netorder.exit308
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.rhs:                                          ; preds = %ip_set_optattr_netorder.exit308.lor.rhs_crit_edge, %lor.lhs.false17.lor.rhs_crit_edge
  %arrayidx.i309 = getelementptr ptr, ptr %tb, i32 8
  %20 = ptrtoint ptr %arrayidx.i309 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i309, align 4
  %tobool.not.i310 = icmp eq ptr %21, null
  br i1 %tobool.not.i310, label %lor.rhs.if.end29_crit_edge, label %ip_set_optattr_netorder.exit314

lor.rhs.if.end29_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29

ip_set_optattr_netorder.exit314:                  ; preds = %lor.rhs
  %nla_type.i311 = getelementptr inbounds %struct.nlattr, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %nla_type.i311 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %nla_type.i311, align 2
  %24 = and i16 %23, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool2.i312.not = icmp eq i16 %24, 0
  br i1 %tobool2.i312.not, label %ip_set_optattr_netorder.exit314.cleanup_crit_edge, label %ip_set_optattr_netorder.exit314.if.end29_crit_edge, !prof !225

ip_set_optattr_netorder.exit314.if.end29_crit_edge: ; preds = %ip_set_optattr_netorder.exit314
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29

ip_set_optattr_netorder.exit314.cleanup_crit_edge: ; preds = %ip_set_optattr_netorder.exit314
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end29:                                         ; preds = %ip_set_optattr_netorder.exit314.if.end29_crit_edge, %lor.rhs.if.end29_crit_edge
  br i1 %tobool.not.i296, label %if.end29.if.end38_crit_edge, label %if.then31

if.end29.if.end38_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end38

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end44

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i.i315 = getelementptr i8, ptr %11, i32 4
  %28 = ptrtoint ptr %add.ptr.i.i.i315 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr.i.i.i315, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %if.end38.if.end44_crit_edge
  %maxelem.0 = phi i32 [ %29, %if.then41 ], [ 65536, %if.end38.if.end44_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %30 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3520, i32 noundef 1204) #18
  %tobool46.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool46.not, label %if.end44.cleanup_crit_edge, label %if.end48

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end48:                                         ; preds = %if.end44
  %31 = tail call i32 @llvm.ctlz.i32(i32 %hashsize.0, i1 true) #15, !range !226
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
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %cleanup

if.end55:                                         ; preds = %if.end48
  %call56 = tail call ptr @ip_set_alloc(i32 noundef %add.i) #15
  %tobool57.not = icmp eq ptr %call56, null
  br i1 %tobool57.not, label %if.then58, label %if.end59

if.then58:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %cleanup

if.end59:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %hashsize.0)
  %cmp61 = icmp ult i32 %hashsize.0, 512
  %sub64 = sub nsw i32 22, %31
  %phi.bo = shl nuw nsw i32 52, %sub64
  %cond65 = select i1 %cmp61, i32 52, i32 %phi.bo
  %call66 = tail call ptr @ip_set_alloc(i32 noundef %cond65) #15
  %hregion = getelementptr inbounds %struct.htable, ptr %call56, i32 0, i32 4
  %32 = ptrtoint ptr %hregion to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call66, ptr %hregion, align 4
  %tobool68.not = icmp eq ptr %call66, null
  br i1 %tobool68.not, label %if.then69, label %if.end70

if.then69:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @ip_set_free(ptr noundef nonnull %call56) #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %cleanup

if.end70:                                         ; preds = %if.end59
  %set71 = getelementptr inbounds %struct.hash_netiface6, ptr %call7.i.i, i32 0, i32 1, i32 1
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
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx86, ptr noundef nonnull @.str.6, ptr noundef nonnull @hash_netiface_create.__key, i16 noundef signext 3) #15
  %inc = add nuw i32 %i.0330, 1
  %exitcond.not = icmp eq i32 %inc, %cond81
  br i1 %exitcond.not, label %for.end, label %do.body84.do.body84_crit_edge

do.body84.do.body84_crit_edge:                    ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body84

for.end:                                          ; preds = %do.body84
  %gc = getelementptr inbounds %struct.hash_netiface6, ptr %call7.i.i, i32 0, i32 1
  %maxelem90 = getelementptr inbounds %struct.hash_netiface6, ptr %call7.i.i, i32 0, i32 2
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
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i = getelementptr i8, ptr %38, i32 4
  %39 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr.i.i, align 4
  %initval = getelementptr inbounds %struct.hash_netiface6, ptr %call7.i.i, i32 0, i32 3
  %41 = ptrtoint ptr %initval to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %initval, align 4
  br label %if.end97

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  %initval96 = getelementptr inbounds %struct.hash_netiface6, ptr %call7.i.i, i32 0, i32 3
  tail call void @get_random_bytes(ptr noundef %initval96, i32 noundef 4) #15
  br label %if.end97

if.end97:                                         ; preds = %if.else, %if.then93
  %bucketsize = getelementptr inbounds %struct.hash_netiface6, ptr %call7.i.i, i32 0, i32 4
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
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end128.sink.split

if.else110:                                       ; preds = %if.then100
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %46)
  %cmp113 = icmp ugt i8 %46, 12
  br i1 %cmp113, label %if.else110.if.end128.sink.split_crit_edge, label %if.else117

if.else110.if.end128.sink.split_crit_edge:        ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end128.sink.split

if.else117:                                       ; preds = %if.else110
  %48 = and i8 %46, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool120.not = icmp eq i8 %48, 0
  br i1 %tobool120.not, label %if.else117.if.end128_crit_edge, label %if.then121

if.else117.if.end128_crit_edge:                   ; preds = %if.else117
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end128

if.then121:                                       ; preds = %if.else117
  call void @__sanitizer_cov_trace_pc() #17
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
  %ad = getelementptr inbounds %struct.hash_netiface6, ptr %call7.i.i, i32 0, i32 5
  %56 = ptrtoint ptr %ad to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %ad, ptr %ad, align 4
  %prev.i = getelementptr inbounds %struct.hash_netiface6, ptr %call7.i.i, i32 0, i32 5, i32 1
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
  %hash_netiface4_variant.hash_netiface6_variant = select i1 %cmp155, ptr @hash_netiface4_variant, ptr @hash_netiface6_variant
  %. = select i1 %cmp155, i32 28, i32 40
  %variant160 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 5
  %61 = ptrtoint ptr %variant160 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %hash_netiface4_variant.hash_netiface6_variant, ptr %variant160, align 4
  %call161 = tail call i32 @ip_set_elem_len(ptr noundef %set, ptr noundef %tb, i32 noundef %., i32 noundef 4) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body180

if.then166:                                       ; preds = %if.end128
  %add.ptr.i.i.i.i = getelementptr i8, ptr %66, i32 4
  %67 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %add.ptr.i.i.i.i, align 4
  %69 = tail call i32 @llvm.umin.i32(i32 %68, i32 2147483) #15
  %70 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %timeout, align 4
  %71 = ptrtoint ptr %family4 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %family4, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %72)
  %cmp172 = icmp eq i8 %72, 2
  tail call void @__init_work(ptr noundef %gc, i32 noundef 0) #15
  %73 = ptrtoint ptr %gc to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 -64, ptr %gc, align 4
  %lockdep_map.i = getelementptr inbounds %struct.hash_netiface6, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 0, i32 3
  br i1 %cmp172, label %if.then174, label %if.else176

if.then174:                                       ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.64, ptr noundef nonnull @hash_netiface4_gc_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %entry8.i = getelementptr inbounds %struct.hash_netiface6, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %74 = ptrtoint ptr %entry8.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %entry8.i, ptr %entry8.i, align 8
  br label %do.body180.sink.split

if.else176:                                       ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.64, ptr noundef nonnull @hash_netiface6_gc_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %entry8.i319 = getelementptr inbounds %struct.hash_netiface6, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %75 = ptrtoint ptr %entry8.i319 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %entry8.i319, ptr %entry8.i319, align 8
  br label %do.body180.sink.split

do.body180.sink.split:                            ; preds = %if.else176, %if.then174
  %entry8.i319.sink = phi ptr [ %entry8.i319, %if.else176 ], [ %entry8.i, %if.then174 ]
  %hash_netiface6_gc.sink = phi ptr [ @hash_netiface6_gc, %if.else176 ], [ @hash_netiface4_gc, %if.then174 ]
  %hash_netiface6_gc_init.__key.69.sink = phi ptr [ @hash_netiface6_gc_init.__key.69, %if.else176 ], [ @hash_netiface4_gc_init.__key.65, %if.then174 ]
  %prev.i.i320 = getelementptr inbounds %struct.hash_netiface6, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 0, i32 1, i32 1
  %76 = ptrtoint ptr %prev.i.i320 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %entry8.i319.sink, ptr %prev.i.i320, align 4
  %func.i321 = getelementptr inbounds %struct.hash_netiface6, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 0, i32 2
  %77 = ptrtoint ptr %func.i321 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %hash_netiface6_gc.sink, ptr %func.i321, align 8
  %timer.i322 = getelementptr inbounds %struct.hash_netiface6, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 1
  tail call void @init_timer_key(ptr noundef %timer.i322, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2621440, ptr noundef nonnull @.str.66, ptr noundef nonnull %hash_netiface6_gc_init.__key.69.sink) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %78 = load ptr, ptr @system_power_efficient_wq, align 4
  %call.i.i323 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %78, ptr noundef %gc, i32 noundef 100) #15
  br label %do.body180

do.body180:                                       ; preds = %do.body180.sink.split, %if.end128.do.body180_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_netiface_create.__UNIQUE_ID_ddebug773, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_netiface_create, %if.then192)) #15
          to label %cleanup [label %if.then192], !srcloc !224

if.then192:                                       ; preds = %do.body180
  call void @__sanitizer_cov_trace_pc() #17
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
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_netiface_create.__UNIQUE_ID_ddebug773, ptr noundef nonnull @.str.7, ptr noundef %set, i32 noundef %shl197, i32 noundef %conv196, i32 noundef %82, ptr noundef %84, ptr noundef nonnull %call56) #15
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
define internal i32 @hash_netiface4_kadt(ptr noundef %set, ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %par, i32 noundef %adt, ptr noundef %opt) #2 align 64 {
entry:
  %e = alloca %struct.hash_netiface4_elem, align 4
  %ext = alloca %struct.ip_set_ext, align 8
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %e) #15
  %6 = getelementptr inbounds i8, ptr %e, i32 4
  %7 = call ptr @memset(ptr %6, i32 0, i32 24)
  %cidr = getelementptr inbounds %struct.hash_netiface4_elem, ptr %e, i32 0, i32 2
  %cidr3 = getelementptr inbounds %struct.hash_netiface4, ptr %1, i32 0, i32 7, i32 0, i32 1
  %8 = ptrtoint ptr %cidr3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %cidr3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  %sub = add i8 %9, -1
  %spec.select = select i1 %tobool.not, i8 32, i8 %sub
  %10 = ptrtoint ptr %cidr to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %spec.select, ptr %cidr, align 1
  %elem = getelementptr inbounds %struct.hash_netiface4_elem, ptr %e, i32 0, i32 4
  %11 = ptrtoint ptr %elem to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %elem, align 1
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %ext) #15
  %12 = getelementptr inbounds i8, ptr %ext, i32 40
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 -1, ptr %12, align 8, !annotation !227
  %14 = call ptr @memset(ptr %ext, i32 0, i32 16)
  %packets = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 1
  %15 = ptrtoint ptr %packets to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 1, ptr %packets, align 8
  %bytes = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 2
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len, align 4
  %conv11 = zext i32 %17 to i64
  %18 = ptrtoint ptr %bytes to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %conv11, ptr %bytes, align 8
  %comment = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 3
  %19 = ptrtoint ptr %comment to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %comment, align 8
  %timeout = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 4
  %ext12 = getelementptr inbounds %struct.ip_set_adt_opt, ptr %opt, i32 0, i32 4
  %timeout13 = getelementptr inbounds %struct.ip_set_adt_opt, ptr %opt, i32 0, i32 4, i32 4
  %20 = ptrtoint ptr %timeout13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %timeout13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp.not = icmp eq i32 %21, -1
  br i1 %cmp.not, label %cond.false18, label %entry.cond.end20_crit_edge

entry.cond.end20_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end20

cond.false18:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %timeout19 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 10
  %22 = ptrtoint ptr %timeout19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %timeout19, align 4
  br label %cond.end20

cond.end20:                                       ; preds = %cond.false18, %entry.cond.end20_crit_edge
  %cond21 = phi i32 [ %23, %cond.false18 ], [ %21, %entry.cond.end20_crit_edge ]
  %24 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %cond21, ptr %timeout, align 4
  %packets_op = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 5
  %25 = ptrtoint ptr %packets_op to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %packets_op, align 8
  %bytes_op = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 6
  %26 = ptrtoint ptr %bytes_op to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %bytes_op, align 1
  %target = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 7
  %27 = ptrtoint ptr %target to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %target, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %adt)
  %cmp22 = icmp eq i32 %adt, 2
  br i1 %cmp22, label %if.then, label %cond.end20.if.end_crit_edge

cond.end20.if.end_crit_edge:                      ; preds = %cond.end20
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %cond.end20
  call void @__sanitizer_cov_trace_pc() #17
  %28 = ptrtoint ptr %cidr to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 32, ptr %cidr, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end20.if.end_crit_edge
  %flags = getelementptr inbounds %struct.ip_set_adt_opt, ptr %opt, i32 0, i32 2
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %flags, align 2
  %31 = and i8 %30, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool26.not = icmp eq i8 %31, 0
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %32 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %34 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %35 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %33, i32 %conv.i.i.i
  %saddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 8
  %daddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 9
  %cond.in.i = select i1 %tobool26.not, ptr %daddr.i, ptr %saddr.i
  %36 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %cond.i = load i32, ptr %cond.in.i, align 4
  %37 = ptrtoint ptr %cidr to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %cidr, align 1
  %idxprom.i = zext i8 %38 to i32
  %arrayidx.i = getelementptr [0 x %union.nf_inet_addr], ptr @ip_set_netmask_map, i32 0, i32 %idxprom.i
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i, align 4
  %and29 = and i32 %40, %cond.i
  %41 = ptrtoint ptr %e to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %and29, ptr %e, align 4
  %cmdflags = getelementptr inbounds %struct.ip_set_adt_opt, ptr %opt, i32 0, i32 3
  %42 = ptrtoint ptr %cmdflags to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cmdflags, align 4
  %and30 = and i32 %43, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.else, label %if.then32

if.then32:                                        ; preds = %if.end
  %44 = and i8 %30, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool36.not = icmp eq i8 %44, 0
  %active_extensions.i.i.i.i.i115 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %45 = ptrtoint ptr %active_extensions.i.i.i.i.i115 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %active_extensions.i.i.i.i.i115, align 1
  %47 = and i8 %46, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.i.not.i.i.i.i116 = icmp eq i8 %47, 0
  br i1 %tobool36.not, label %cond.false39, label %cond.true37

cond.true37:                                      ; preds = %if.then32
  br i1 %tobool.i.not.i.i.i.i116, label %cond.true37.cleanup87_crit_edge, label %nf_bridge_info_get.exit.i.i

cond.true37.cleanup87_crit_edge:                  ; preds = %cond.true37
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup87

nf_bridge_info_get.exit.i.i:                      ; preds = %cond.true37
  %extensions.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %48 = ptrtoint ptr %extensions.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %extensions.i.i.i.i, align 8
  %offset.i.i.i.i = getelementptr inbounds %struct.skb_ext, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %offset.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %offset.i.i.i.i, align 1
  %conv.i.i.i.i = zext i8 %51 to i32
  %shl.i.i.i.i = shl nuw nsw i32 %conv.i.i.i.i, 3
  %add.ptr.i.i.i.i = getelementptr i8, ptr %49, i32 %shl.i.i.i.i
  %tobool.not.i.i = icmp eq ptr %add.ptr.i.i.i.i, null
  br i1 %tobool.not.i.i, label %nf_bridge_info_get.exit.i.i.cleanup87_crit_edge, label %cond.true.i.i

nf_bridge_info_get.exit.i.i.cleanup87_crit_edge:  ; preds = %nf_bridge_info_get.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup87

cond.true.i.i:                                    ; preds = %nf_bridge_info_get.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %physindev.i.i = getelementptr inbounds %struct.nf_bridge_info, ptr %add.ptr.i.i.i.i, i32 0, i32 2
  br label %cond.end41

cond.false39:                                     ; preds = %if.then32
  br i1 %tobool.i.not.i.i.i.i116, label %cond.false39.cleanup87_crit_edge, label %nf_bridge_info_get.exit.i.i123

cond.false39.cleanup87_crit_edge:                 ; preds = %cond.false39
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup87

nf_bridge_info_get.exit.i.i123:                   ; preds = %cond.false39
  %extensions.i.i.i.i117 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %52 = ptrtoint ptr %extensions.i.i.i.i117 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %extensions.i.i.i.i117, align 8
  %offset.i.i.i.i118 = getelementptr inbounds %struct.skb_ext, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %offset.i.i.i.i118 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %offset.i.i.i.i118, align 1
  %conv.i.i.i.i119 = zext i8 %55 to i32
  %shl.i.i.i.i120 = shl nuw nsw i32 %conv.i.i.i.i119, 3
  %add.ptr.i.i.i.i121 = getelementptr i8, ptr %53, i32 %shl.i.i.i.i120
  %tobool.not.i.i122 = icmp eq ptr %add.ptr.i.i.i.i121, null
  br i1 %tobool.not.i.i122, label %nf_bridge_info_get.exit.i.i123.cleanup87_crit_edge, label %cond.true.i.i124

nf_bridge_info_get.exit.i.i123.cleanup87_crit_edge: ; preds = %nf_bridge_info_get.exit.i.i123
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup87

cond.true.i.i124:                                 ; preds = %nf_bridge_info_get.exit.i.i123
  call void @__sanitizer_cov_trace_pc() #17
  %physoutdev.i.i = getelementptr inbounds %struct.nf_bridge_info, ptr %add.ptr.i.i.i.i121, i32 0, i32 3
  br label %cond.end41

cond.end41:                                       ; preds = %cond.true.i.i124, %cond.true.i.i
  %cond42.in = phi ptr [ %physindev.i.i, %cond.true.i.i ], [ %physoutdev.i.i, %cond.true.i.i124 ]
  %56 = ptrtoint ptr %cond42.in to i32
  call void @__asan_load4_noabort(i32 %56)
  %cond42 = load ptr, ptr %cond42.in, align 4
  %tobool43.not = icmp eq ptr %cond42, null
  br i1 %tobool43.not, label %cond.end41.cleanup87_crit_edge, label %if.end45

cond.end41.cleanup87_crit_edge:                   ; preds = %cond.end41
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup87

if.end45:                                         ; preds = %cond.end41
  call void @__sanitizer_cov_trace_pc() #17
  %iface = getelementptr inbounds %struct.hash_netiface4_elem, ptr %e, i32 0, i32 6
  %call46 = call i32 @strlcpy(ptr noundef %iface, ptr noundef nonnull %cond42, i32 noundef 16) #15
  %physdev = getelementptr inbounds %struct.hash_netiface4_elem, ptr %e, i32 0, i32 1
  %57 = ptrtoint ptr %physdev to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %physdev, align 4
  br label %if.end76

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %iface47 = getelementptr inbounds %struct.hash_netiface4_elem, ptr %e, i32 0, i32 6
  %58 = and i8 %30, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool52.not = icmp eq i8 %58, 0
  %state63 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 2
  %59 = ptrtoint ptr %state63 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %state63, align 4
  %out = getelementptr inbounds %struct.nf_hook_state, ptr %60, i32 0, i32 3
  %in = getelementptr inbounds %struct.nf_hook_state, ptr %60, i32 0, i32 2
  %out.sink = select i1 %tobool52.not, ptr %out, ptr %in
  %61 = ptrtoint ptr %out.sink to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %out.sink, align 4
  %tobool64.not = icmp eq ptr %62, null
  %spec.select114 = select i1 %tobool64.not, ptr @.str.8, ptr %62
  %call75 = call i32 @strlcpy(ptr noundef %iface47, ptr noundef nonnull %spec.select114, i32 noundef 16) #15
  br label %if.end76

if.end76:                                         ; preds = %if.else, %if.end45
  %iface77 = getelementptr inbounds %struct.hash_netiface4_elem, ptr %e, i32 0, i32 6
  %63 = ptrtoint ptr %iface77 to i32
  call void @__asan_load1_noabort(i32 %63)
  %char0 = load i8, ptr %iface77, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %cmp80 = icmp eq i8 %char0, 0
  br i1 %cmp80, label %if.end76.cleanup87_crit_edge, label %if.end83

if.end76.cleanup87_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup87

if.end83:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #17
  %64 = ptrtoint ptr %cmdflags to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %cmdflags, align 4
  %call86 = call i32 %5(ptr noundef %set, ptr noundef nonnull %e, ptr noundef nonnull %ext, ptr noundef %ext12, i32 noundef %65) #15
  br label %cleanup87

cleanup87:                                        ; preds = %if.end83, %if.end76.cleanup87_crit_edge, %cond.end41.cleanup87_crit_edge, %nf_bridge_info_get.exit.i.i123.cleanup87_crit_edge, %cond.false39.cleanup87_crit_edge, %nf_bridge_info_get.exit.i.i.cleanup87_crit_edge, %cond.true37.cleanup87_crit_edge
  %retval.1 = phi i32 [ %call86, %if.end83 ], [ -22, %if.end76.cleanup87_crit_edge ], [ -22, %cond.end41.cleanup87_crit_edge ], [ -22, %nf_bridge_info_get.exit.i.i.cleanup87_crit_edge ], [ -22, %cond.true37.cleanup87_crit_edge ], [ -22, %nf_bridge_info_get.exit.i.i123.cleanup87_crit_edge ], [ -22, %cond.false39.cleanup87_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %ext) #15
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %e) #15
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hash_netiface4_uadt(ptr noundef %set, ptr noundef %tb, i32 noundef %adt, ptr nocapture noundef writeonly %lineno, i32 noundef %flags, i1 noundef zeroext %retried) #2 align 64 {
entry:
  %ip.i194 = alloca i32, align 4
  %ip.i = alloca i32, align 4
  %e = alloca %struct.hash_netiface4_elem, align 4
  %ext = alloca %struct.ip_set_ext, align 8
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %e) #15
  %6 = call ptr @memcpy(ptr %e, ptr @__const.hash_netiface4_uadt.e, i32 28)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %ext) #15
  %7 = getelementptr inbounds i8, ptr %ext, i32 40
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -1, ptr %7, align 8, !annotation !227
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
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
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false, !prof !225

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %arrayidx7 = getelementptr ptr, ptr %tb, i32 23
  %25 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx7, align 4
  %tobool8.not = icmp eq ptr %26, null
  br i1 %tobool8.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.rhs, !prof !225

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.rhs:                                          ; preds = %lor.lhs.false
  %arrayidx.i = getelementptr ptr, ptr %tb, i32 8
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %lor.rhs.if.end14_crit_edge, label %ip_set_optattr_netorder.exit

lor.rhs.if.end14_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

ip_set_optattr_netorder.exit:                     ; preds = %lor.rhs
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %nla_type.i, align 2
  %31 = and i16 %30, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool2.i.not = icmp eq i16 %31, 0
  br i1 %tobool2.i.not, label %ip_set_optattr_netorder.exit.cleanup_crit_edge, label %ip_set_optattr_netorder.exit.if.end14_crit_edge, !prof !225

ip_set_optattr_netorder.exit.if.end14_crit_edge:  ; preds = %ip_set_optattr_netorder.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

ip_set_optattr_netorder.exit.cleanup_crit_edge:   ; preds = %ip_set_optattr_netorder.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end14:                                         ; preds = %ip_set_optattr_netorder.exit.if.end14_crit_edge, %lor.rhs.if.end14_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ip.i) #15
  %32 = ptrtoint ptr %ip.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %ip.i, align 4, !annotation !227
  %call.i = call i32 @ip_set_get_ipaddr4(ptr noundef nonnull %24, ptr noundef nonnull %ip.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i189 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i189, label %if.end19, label %ip_set_get_hostipaddr4.exit

ip_set_get_hostipaddr4.exit:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip.i) #15
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %33 = ptrtoint ptr %ip.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ip.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip.i) #15
  %call20 = call i32 @ip_set_get_extensions(ptr noundef %set, ptr noundef %tb, ptr noundef nonnull %ext) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  %arrayidx24 = getelementptr ptr, ptr %tb, i32 3
  %35 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx24, align 4
  %tobool25.not = icmp eq ptr %36, null
  br i1 %tobool25.not, label %if.end23.if.end33_crit_edge, label %if.then26

if.end23.if.end33_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33

if.then26:                                        ; preds = %if.end23
  %add.ptr.i.i190 = getelementptr i8, ptr %36, i32 4
  %37 = ptrtoint ptr %add.ptr.i.i190 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %add.ptr.i.i190, align 1
  %cidr = getelementptr inbounds %struct.hash_netiface4_elem, ptr %e, i32 0, i32 2
  %39 = ptrtoint ptr %cidr to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %cidr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %38)
  %cmp = icmp ugt i8 %38, 32
  br i1 %cmp, label %if.then26.cleanup_crit_edge, label %if.then26.if.end33_crit_edge

if.then26.if.end33_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end33:                                         ; preds = %if.then26.if.end33_crit_edge, %if.end23.if.end33_crit_edge
  %iface = getelementptr inbounds %struct.hash_netiface4_elem, ptr %e, i32 0, i32 6
  %40 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx7, align 4
  %call35 = call i32 @nla_strscpy(ptr noundef %iface, ptr noundef %41, i32 noundef 16) #15
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i, align 4
  %tobool37.not = icmp eq ptr %43, null
  br i1 %tobool37.not, label %if.end33.if.end52_crit_edge, label %if.then38

if.end33.if.end52_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end52

if.then38:                                        ; preds = %if.end33
  %add.ptr.i.i.i = getelementptr i8, ptr %43, i32 4
  %44 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr.i.i.i, align 4
  %and = and i32 %45, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool41.not = icmp eq i32 %and, 0
  br i1 %tobool41.not, label %if.then38.if.end43_crit_edge, label %if.then42

if.then38.if.end43_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end43

if.then42:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #17
  %physdev = getelementptr inbounds %struct.hash_netiface4_elem, ptr %e, i32 0, i32 1
  %46 = ptrtoint ptr %physdev to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %physdev, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.then38.if.end43_crit_edge
  %and44 = shl i32 %45, 16
  %47 = and i32 %and44, 262144
  %48 = or i32 %47, %flags
  %and48 = and i32 %45, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end43.if.end52_crit_edge, label %if.then50

if.end43.if.end52_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end52

if.then50:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #17
  %wildcard = getelementptr inbounds %struct.hash_netiface4_elem, ptr %e, i32 0, i32 5
  %49 = ptrtoint ptr %wildcard to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %wildcard, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %if.end43.if.end52_crit_edge, %if.end33.if.end52_crit_edge
  %flags.addr.1 = phi i32 [ %flags, %if.end33.if.end52_crit_edge ], [ %48, %if.then50 ], [ %48, %if.end43.if.end52_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %adt)
  %cmp53 = icmp eq i32 %adt, 2
  br i1 %cmp53, label %if.end52.if.then58_crit_edge, label %lor.lhs.false55

if.end52.if.then58_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then58

lor.lhs.false55:                                  ; preds = %if.end52
  %arrayidx56 = getelementptr ptr, ptr %tb, i32 2
  %50 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx56, align 4
  %tobool57.not = icmp eq ptr %51, null
  br i1 %tobool57.not, label %lor.lhs.false55.if.then58_crit_edge, label %if.then75

lor.lhs.false55.if.then58_crit_edge:              ; preds = %lor.lhs.false55
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then58

if.then58:                                        ; preds = %lor.lhs.false55.if.then58_crit_edge, %if.end52.if.then58_crit_edge
  %cidr59 = getelementptr inbounds %struct.hash_netiface4_elem, ptr %e, i32 0, i32 2
  %52 = ptrtoint ptr %cidr59 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %cidr59, align 1
  %idxprom.i = zext i8 %53 to i32
  %arrayidx.i191 = getelementptr [0 x %union.nf_inet_addr], ptr @ip_set_hostmask_map, i32 0, i32 %idxprom.i
  %54 = ptrtoint ptr %arrayidx.i191 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.i191, align 4
  %and61 = and i32 %55, %34
  %56 = ptrtoint ptr %e to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %and61, ptr %e, align 4
  %call63 = call i32 %5(ptr noundef %set, ptr noundef nonnull %e, ptr noundef nonnull %ext, ptr noundef nonnull %ext, i32 noundef %flags.addr.1) #15
  br i1 %cmp53, label %land.lhs.true.i, label %if.then58.cond.false_crit_edge

if.then58.cond.false_crit_edge:                   ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.false

land.lhs.true.i:                                  ; preds = %if.then58
  %type.i = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 4
  %57 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %type.i, align 4
  %features.i = getelementptr inbounds %struct.ip_set_type, ptr %58, i32 0, i32 8
  %59 = ptrtoint ptr %features.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %features.i, align 4
  %61 = and i16 %60, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %tobool.not.i192 = icmp eq i16 %61, 0
  %62 = and i32 %flags.addr.1, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool3.not.i = icmp eq i32 %62, 0
  %or.cond.i = or i1 %tobool3.not.i, %tobool.not.i192
  br i1 %or.cond.i, label %land.lhs.true.i.cond.false_crit_edge, label %ip_set_enomatch.exit

land.lhs.true.i.cond.false_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.false

ip_set_enomatch.exit:                             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp4.i = icmp sgt i32 %call63, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -39, i32 %call63)
  %cmp6.i = icmp eq i32 %call63, -39
  %spec.select.i = or i1 %cmp4.i, %cmp6.i
  br i1 %spec.select.i, label %cond.true, label %ip_set_enomatch.exit.cond.false_crit_edge

ip_set_enomatch.exit.cond.false_crit_edge:        ; preds = %ip_set_enomatch.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.false

cond.true:                                        ; preds = %ip_set_enomatch.exit
  call void @__sanitizer_cov_trace_pc() #17
  %sub = sub nsw i32 0, %call63
  br label %cleanup

cond.false:                                       ; preds = %ip_set_enomatch.exit.cond.false_crit_edge, %land.lhs.true.i.cond.false_crit_edge, %if.then58.cond.false_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4103, i32 %call63)
  %cmp.i193 = icmp eq i32 %call63, -4103
  %and.i = and i32 %flags.addr.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %63 = and i1 %tobool.i, %cmp.i193
  %spec.select188 = select i1 %63, i32 0, i32 %call63
  br label %cleanup

if.then75:                                        ; preds = %lor.lhs.false55
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ip.i194) #15
  %64 = ptrtoint ptr %ip.i194 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 -1, ptr %ip.i194, align 4, !annotation !227
  %call.i195 = call i32 @ip_set_get_ipaddr4(ptr noundef nonnull %51, ptr noundef nonnull %ip.i194) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i195)
  %tobool.not.i196 = icmp eq i32 %call.i195, 0
  br i1 %tobool.not.i196, label %if.end80, label %ip_set_get_hostipaddr4.exit198

ip_set_get_hostipaddr4.exit198:                   ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip.i194) #15
  br label %cleanup

if.end80:                                         ; preds = %if.then75
  %65 = ptrtoint ptr %ip.i194 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ip.i194, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip.i194) #15
  %67 = call i32 @llvm.umin.i32(i32 %66, i32 %34)
  %68 = call i32 @llvm.umax.i32(i32 %66, i32 %34)
  %add = add i32 %67, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %68)
  %cmp85 = icmp eq i32 %add, %68
  br i1 %cmp85, label %if.end80.cleanup_crit_edge, label %do.body99.preheader

if.end80.cleanup_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body99.preheader:                              ; preds = %if.end80
  %cidr100 = getelementptr inbounds %struct.hash_netiface4_elem, ptr %e, i32 0, i32 2
  br label %do.body99

do.body99:                                        ; preds = %do.body99.do.body99_crit_edge, %do.body99.preheader
  %ipn.0 = phi i32 [ %inc103, %do.body99.do.body99_crit_edge ], [ %67, %do.body99.preheader ]
  %n.0 = phi i32 [ %inc, %do.body99.do.body99_crit_edge ], [ 0, %do.body99.preheader ]
  %call101 = call i32 @ip_set_range_to_cidr(i32 noundef %ipn.0, i32 noundef %68, ptr noundef %cidr100) #15
  %inc = add i32 %n.0, 1
  %inc103 = add i32 %call101, 1
  %cmp104 = icmp ult i32 %call101, %68
  br i1 %cmp104, label %do.body99.do.body99_crit_edge, label %do.end106

do.body99.do.body99_crit_edge:                    ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body99

do.end106:                                        ; preds = %do.body99
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %inc)
  %cmp107 = icmp ugt i32 %inc, 1048576
  br i1 %cmp107, label %do.end106.cleanup_crit_edge, label %if.end110

do.end106.cleanup_crit_edge:                      ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end110:                                        ; preds = %do.end106
  br i1 %retried, label %if.then112, label %if.end110.if.end114_crit_edge

if.end110.if.end114_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end114

if.then112:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #17
  %next = getelementptr inbounds %struct.hash_netiface4, ptr %1, i32 0, i32 6
  %69 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %next, align 4
  br label %if.end114

if.end114:                                        ; preds = %if.then112, %if.end110.if.end114_crit_edge
  %ip.2 = phi i32 [ %70, %if.then112 ], [ %67, %if.end110.if.end114_crit_edge ]
  %and.i200 = and i32 %flags.addr.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i200)
  %tobool.i201 = icmp ne i32 %and.i200, 0
  br label %do.body115

do.body115:                                       ; preds = %if.end123.do.body115_crit_edge, %if.end114
  %ip.3 = phi i32 [ %ip.2, %if.end114 ], [ %inc125, %if.end123.do.body115_crit_edge ]
  %71 = ptrtoint ptr %e to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %ip.3, ptr %e, align 4
  %call118 = call i32 @ip_set_range_to_cidr(i32 noundef %ip.3, i32 noundef %68, ptr noundef %cidr100) #15
  %call119 = call i32 %5(ptr noundef %set, ptr noundef nonnull %e, ptr noundef nonnull %ext, ptr noundef nonnull %ext, i32 noundef %flags.addr.1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %tobool120.not = icmp eq i32 %call119, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4103, i32 %call119)
  %cmp.i199 = icmp eq i32 %call119, -4103
  %72 = and i1 %tobool.i201, %cmp.i199
  %or.cond = select i1 %tobool120.not, i1 true, i1 %72
  br i1 %or.cond, label %if.end123, label %do.body115.cleanup_crit_edge

do.body115.cleanup_crit_edge:                     ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end123:                                        ; preds = %do.body115
  %inc125 = add i32 %call118, 1
  %cmp126 = icmp ult i32 %call118, %68
  br i1 %cmp126, label %if.end123.do.body115_crit_edge, label %if.end123.cleanup_crit_edge

if.end123.cleanup_crit_edge:                      ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end123.do.body115_crit_edge:                   ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body115

cleanup:                                          ; preds = %if.end123.cleanup_crit_edge, %do.body115.cleanup_crit_edge, %do.end106.cleanup_crit_edge, %if.end80.cleanup_crit_edge, %ip_set_get_hostipaddr4.exit198, %cond.false, %cond.true, %if.then26.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %ip_set_get_hostipaddr4.exit, %ip_set_optattr_netorder.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -4097, %ip_set_optattr_netorder.exit.cleanup_crit_edge ], [ %call.i, %ip_set_get_hostipaddr4.exit ], [ %call20, %if.end19.cleanup_crit_edge ], [ -4104, %if.then26.cleanup_crit_edge ], [ %sub, %cond.true ], [ %spec.select188, %cond.false ], [ %call.i195, %ip_set_get_hostipaddr4.exit198 ], [ -4357, %if.end80.cleanup_crit_edge ], [ -34, %do.end106.cleanup_crit_edge ], [ -4097, %lor.lhs.false.cleanup_crit_edge ], [ -4097, %if.end.cleanup_crit_edge ], [ 0, %if.end123.cleanup_crit_edge ], [ %call119, %do.body115.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %ext) #15
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %e) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hash_netiface4_add(ptr noundef %set, ptr nocapture noundef readonly %value, ptr noundef %ext, ptr nocapture noundef readonly %mext, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 15
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  tail call fastcc void @local_bh_disable() #15
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %entry.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock_bh.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock_bh.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock_bh.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock_bh.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 750, ptr noundef nonnull @.str.15) #15
  br label %rcu_read_lock_bh.exit

rcu_read_lock_bh.exit:                            ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, %entry.rcu_read_lock_bh.exit_crit_edge
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %1, align 4
  %call3 = tail call i32 @rcu_read_lock_bh_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true, label %rcu_read_lock_bh.exit.do.end10_crit_edge

rcu_read_lock_bh.exit.do.end10_crit_edge:         ; preds = %rcu_read_lock_bh.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end10

land.lhs.true:                                    ; preds = %rcu_read_lock_bh.exit
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end10_crit_edge, label %land.lhs.true7

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end10

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b603 = load i1, ptr @hash_netiface4_add.__warned, align 1
  br i1 %.b603, label %land.lhs.true7.do.end10_crit_edge, label %if.then

land.lhs.true7.do.end10_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end10

if.then:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @hash_netiface4_add.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 855, ptr noundef nonnull @.str.9) #15
  br label %do.end10

do.end10:                                         ; preds = %if.then, %land.lhs.true7.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %rcu_read_lock_bh.exit.do.end10_crit_edge
  %initval = getelementptr inbounds %struct.hash_netiface4, ptr %1, i32 0, i32 3
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
  %or.i140.i = tail call i32 @llvm.fshl.i32(i32 %add33.i, i32 %add33.i, i32 14) #15
  %sub39.i = sub i32 %xor37.i, %or.i140.i
  %xor40.i = xor i32 %sub39.i, %add36.i
  %or.i141.i = tail call i32 @llvm.fshl.i32(i32 %sub39.i, i32 %sub39.i, i32 11) #15
  %sub42.i = sub i32 %xor40.i, %or.i141.i
  %xor43.i = xor i32 %sub42.i, %add33.i
  %or.i142.i = tail call i32 @llvm.fshl.i32(i32 %sub42.i, i32 %sub42.i, i32 25) #15
  %sub45.i = sub i32 %xor43.i, %or.i142.i
  %xor46.i = xor i32 %sub45.i, %sub39.i
  %or.i143.i = tail call i32 @llvm.fshl.i32(i32 %sub45.i, i32 %sub45.i, i32 16) #15
  %sub48.i = sub i32 %xor46.i, %or.i143.i
  %xor49.i = xor i32 %sub48.i, %sub42.i
  %or.i144.i = tail call i32 @llvm.fshl.i32(i32 %sub48.i, i32 %sub48.i, i32 4) #15
  %sub51.i = sub i32 %xor49.i, %or.i144.i
  %xor52.i = xor i32 %sub51.i, %sub45.i
  %or.i145.i = tail call i32 @llvm.fshl.i32(i32 %sub51.i, i32 %sub51.i, i32 14) #15
  %sub54.i = sub i32 %xor52.i, %or.i145.i
  %xor55.i = xor i32 %sub54.i, %sub48.i
  %or.i146.i = tail call i32 @llvm.fshl.i32(i32 %sub54.i, i32 %sub54.i, i32 24) #15
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
  %notmask737 = shl nsw i32 -1, %sub23
  %shl24.op = xor i32 %notmask737, -1
  %12 = select i1 %cmp, i32 0, i32 %shl24.op
  %rem = and i32 %and17, %12
  %uref = getelementptr inbounds %struct.htable, ptr %3, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %uref, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %uref, i32 1, i32 3, i32 1) #15
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uref, ptr %uref, i32 1, ptr elementtype(i32) %uref) #15, !srcloc !228
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
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

if.then33:                                        ; preds = %if.then29
  %call.i610 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i610, label %if.then33.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true.i613

if.then33.rcu_read_unlock_bh.exit_crit_edge:      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock_bh.exit

land.lhs.true.i613:                               ; preds = %if.then33
  %call1.i611 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i611)
  %tobool.not.i612 = icmp eq i32 %call1.i611, 0
  br i1 %tobool.not.i612, label %land.lhs.true.i613.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true2.i615

land.lhs.true.i613.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true.i613
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock_bh.exit

land.lhs.true2.i615:                              ; preds = %land.lhs.true.i613
  %.b4.i614 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i614, label %land.lhs.true2.i615.rcu_read_unlock_bh.exit_crit_edge, label %if.then.i616

land.lhs.true2.i615.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i615
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock_bh.exit

if.then.i616:                                     ; preds = %land.lhs.true2.i615
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 761, ptr noundef nonnull @.str.16) #15
  br label %rcu_read_unlock_bh.exit

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i616, %land.lhs.true2.i615.rcu_read_unlock_bh.exit_crit_edge, %land.lhs.true.i613.rcu_read_unlock_bh.exit_crit_edge, %if.then33.rcu_read_unlock_bh.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #15
  tail call fastcc void @local_bh_enable() #15
  tail call fastcc void @hash_netiface4_gc_do(ptr noundef %set, ptr noundef %1, ptr noundef %3, i32 noundef %rem)
  tail call fastcc void @local_bh_disable() #15
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #15
  %call.i617 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i617, label %rcu_read_unlock_bh.exit.if.end34_crit_edge, label %land.lhs.true.i620

rcu_read_unlock_bh.exit.if.end34_crit_edge:       ; preds = %rcu_read_unlock_bh.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

land.lhs.true.i620:                               ; preds = %rcu_read_unlock_bh.exit
  %call1.i618 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i618)
  %tobool.not.i619 = icmp eq i32 %call1.i618, 0
  br i1 %tobool.not.i619, label %land.lhs.true.i620.if.end34_crit_edge, label %land.lhs.true2.i622

land.lhs.true.i620.if.end34_crit_edge:            ; preds = %land.lhs.true.i620
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

land.lhs.true2.i622:                              ; preds = %land.lhs.true.i620
  %.b4.i621 = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i621, label %land.lhs.true2.i622.if.end34_crit_edge, label %if.then.i623

land.lhs.true2.i622.if.end34_crit_edge:           ; preds = %land.lhs.true2.i622
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

if.then.i623:                                     ; preds = %land.lhs.true2.i622
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 750, ptr noundef nonnull @.str.15) #15
  br label %if.end34

if.end34:                                         ; preds = %if.then.i623, %land.lhs.true2.i622.if.end34_crit_edge, %land.lhs.true.i620.if.end34_crit_edge, %rcu_read_unlock_bh.exit.if.end34_crit_edge, %if.then29.if.end34_crit_edge
  %maxelem35 = getelementptr inbounds %struct.hash_netiface4, ptr %1, i32 0, i32 2
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
  %e.0746 = phi i32 [ 0, %if.end34 ], [ %inc, %for.body.for.body_crit_edge ]
  %elements.0745 = phi i32 [ 0, %if.end34 ], [ %add, %for.body.for.body_crit_edge ]
  %elements52 = getelementptr %struct.ip_set_region, ptr %28, i32 %e.0746, i32 2
  %29 = ptrtoint ptr %elements52 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %elements52, align 4
  %add = add i32 %30, %elements.0745
  %inc = add nuw i32 %e.0746, 1
  %exitcond.not = icmp eq i32 %inc, %cond47
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %24)
  %cmp53.not = icmp ult i32 %add, %24
  br i1 %cmp53.not, label %for.end.if.end62_crit_edge, label %land.lhs.true55

for.end.if.end62_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end62

land.lhs.true55:                                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
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
  %call.i625 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i625, label %if.end62.rcu_read_unlock_bh.exit632_crit_edge, label %land.lhs.true.i628

if.end62.rcu_read_unlock_bh.exit632_crit_edge:    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock_bh.exit632

land.lhs.true.i628:                               ; preds = %if.end62
  %call1.i626 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i626)
  %tobool.not.i627 = icmp eq i32 %call1.i626, 0
  br i1 %tobool.not.i627, label %land.lhs.true.i628.rcu_read_unlock_bh.exit632_crit_edge, label %land.lhs.true2.i630

land.lhs.true.i628.rcu_read_unlock_bh.exit632_crit_edge: ; preds = %land.lhs.true.i628
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock_bh.exit632

land.lhs.true2.i630:                              ; preds = %land.lhs.true.i628
  %.b4.i629 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i629, label %land.lhs.true2.i630.rcu_read_unlock_bh.exit632_crit_edge, label %if.then.i631

land.lhs.true2.i630.rcu_read_unlock_bh.exit632_crit_edge: ; preds = %land.lhs.true2.i630
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock_bh.exit632

if.then.i631:                                     ; preds = %land.lhs.true2.i630
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 761, ptr noundef nonnull @.str.16) #15
  br label %rcu_read_unlock_bh.exit632

rcu_read_unlock_bh.exit632:                       ; preds = %if.then.i631, %land.lhs.true2.i630.rcu_read_unlock_bh.exit632_crit_edge, %land.lhs.true.i628.rcu_read_unlock_bh.exit632_crit_edge, %if.end62.rcu_read_unlock_bh.exit632_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #15
  tail call fastcc void @local_bh_enable() #15
  %34 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hregion, align 4
  %arrayidx64 = getelementptr %struct.ip_set_region, ptr %35, i32 %rem
  tail call void @_raw_spin_lock_bh(ptr noundef %arrayidx64) #15
  %arrayidx69 = getelementptr %struct.htable, ptr %3, i32 0, i32 5, i32 %and17
  %36 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %arrayidx69, align 4
  %call71 = tail call i32 @rcu_read_lock_bh_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %land.lhs.true73, label %rcu_read_unlock_bh.exit632.do.end81_crit_edge

rcu_read_unlock_bh.exit632.do.end81_crit_edge:    ; preds = %rcu_read_unlock_bh.exit632
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end81

land.lhs.true73:                                  ; preds = %rcu_read_unlock_bh.exit632
  %call74 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %land.lhs.true73.do.end81_crit_edge, label %land.lhs.true76

land.lhs.true73.do.end81_crit_edge:               ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end81

land.lhs.true76:                                  ; preds = %land.lhs.true73
  %.b592602 = load i1, ptr @hash_netiface4_add.__warned.10, align 1
  br i1 %.b592602, label %land.lhs.true76.do.end81_crit_edge, label %if.then78

land.lhs.true76.do.end81_crit_edge:               ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end81

if.then78:                                        ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @hash_netiface4_add.__warned.10, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 878, ptr noundef nonnull @.str.9) #15
  br label %do.end81

do.end81:                                         ; preds = %if.then78, %land.lhs.true76.do.end81_crit_edge, %land.lhs.true73.do.end81_crit_edge, %rcu_read_unlock_bh.exit632.do.end81_crit_edge
  %tobool83.not = icmp eq ptr %37, null
  br i1 %tobool83.not, label %if.then84, label %for.cond103.preheader

for.cond103.preheader:                            ; preds = %do.end81
  %pos = getelementptr inbounds %struct.hbucket, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %pos, align 1
  %conv104 = zext i8 %39 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %cmp105747.not = icmp eq i8 %39, 0
  br i1 %cmp105747.not, label %for.end154.thread, label %for.body107.lr.ph

for.body107.lr.ph:                                ; preds = %for.cond103.preheader
  %used = getelementptr inbounds %struct.hbucket, ptr %37, i32 0, i32 1
  %value116 = getelementptr inbounds %struct.hbucket, ptr %37, i32 0, i32 5
  %dsize118 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %cidr4.i = getelementptr inbounds %struct.hash_netiface4_elem, ptr %value, i32 0, i32 2
  %iface26.i = getelementptr inbounds %struct.hash_netiface4_elem, ptr %value, i32 0, i32 6
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %set_full

if.end90:                                         ; preds = %if.then84
  %dsize = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %40 = ptrtoint ptr %dsize to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dsize, align 4
  %mul = shl i32 %41, 1
  %add91 = add i32 %mul, 24
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add91, i32 noundef 2848) #19
  %tobool93.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool93.not, label %if.end90.unlock_crit_edge, label %if.end90.copy_elem.sink.split_crit_edge

if.end90.copy_elem.sink.split_crit_edge:          ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_elem.sink.split

if.end90.unlock_crit_edge:                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #17
  br label %unlock

for.body107:                                      ; preds = %for.inc152.for.body107_crit_edge, %for.body107.lr.ph
  %i.0752 = phi i32 [ 0, %for.body107.lr.ph ], [ %inc153, %for.inc152.for.body107_crit_edge ]
  %j.0751 = phi i32 [ -1, %for.body107.lr.ph ], [ %j.1, %for.inc152.for.body107_crit_edge ]
  %reuse.0.off0750 = phi i1 [ false, %for.body107.lr.ph ], [ %reuse.1.off0, %for.inc152.for.body107_crit_edge ]
  %deleted.0.off0749 = phi i1 [ false, %for.body107.lr.ph ], [ %deleted.1.off0, %for.inc152.for.body107_crit_edge ]
  %multi.0748 = phi i32 [ 0, %for.body107.lr.ph ], [ %multi.2, %for.inc152.for.body107_crit_edge ]
  %div3.i = lshr i32 %i.0752, 5
  %arrayidx.i = getelementptr i32, ptr %used, i32 %div3.i
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.0752, 31
  %44 = shl nuw i32 1, %and.i
  %45 = and i32 %43, %44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool109.not = icmp eq i32 %45, 0
  br i1 %tobool109.not, label %if.then110, label %if.end115

if.then110:                                       ; preds = %for.body107
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %j.0751)
  %cmp111 = icmp eq i32 %j.0751, -1
  br i1 %cmp111, label %if.then113, label %if.then110.for.inc152_crit_edge

if.then110.for.inc152_crit_edge:                  ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc152

if.then113:                                       ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc152

if.end115:                                        ; preds = %for.body107
  %46 = ptrtoint ptr %dsize118 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dsize118, align 4
  %mul119 = mul i32 %47, %i.0752
  %add.ptr = getelementptr i8, ptr %value116, i32 %mul119
  %48 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %add.ptr, align 4
  %50 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %51)
  %cmp.i = icmp eq i32 %49, %51
  br i1 %cmp.i, label %land.lhs.true.i634, label %if.end115.if.end136_crit_edge

if.end115.if.end136_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end136

land.lhs.true.i634:                               ; preds = %if.end115
  %cidr.i = getelementptr inbounds %struct.hash_netiface4_elem, ptr %add.ptr, i32 0, i32 2
  %52 = ptrtoint ptr %cidr.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %cidr.i, align 1
  %54 = ptrtoint ptr %cidr4.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %cidr4.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %53, i8 %55)
  %cmp6.i = icmp eq i8 %53, %55
  br i1 %cmp6.i, label %land.lhs.true8.i, label %land.lhs.true.i634.if.end136_crit_edge

land.lhs.true.i634.if.end136_crit_edge:           ; preds = %land.lhs.true.i634
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end136

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i634
  %inc.i = add i32 %multi.0748, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i)
  %tobool.not.i635 = icmp eq i32 %inc.i, 0
  br i1 %tobool.not.i635, label %land.lhs.true8.i.if.end136_crit_edge, label %land.lhs.true9.i

land.lhs.true8.i.if.end136_crit_edge:             ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end136

land.lhs.true9.i:                                 ; preds = %land.lhs.true8.i
  %physdev.i = getelementptr inbounds %struct.hash_netiface4_elem, ptr %add.ptr, i32 0, i32 1
  %56 = ptrtoint ptr %physdev.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %physdev.i, align 4
  %58 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx32.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %57, i8 %59)
  %cmp13.i = icmp eq i8 %57, %59
  br i1 %cmp13.i, label %land.rhs.i, label %land.lhs.true9.i.if.end136_crit_edge

land.lhs.true9.i.if.end136_crit_edge:             ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end136

land.rhs.i:                                       ; preds = %land.lhs.true9.i
  %wildcard.i = getelementptr inbounds %struct.hash_netiface4_elem, ptr %add.ptr, i32 0, i32 5
  %60 = ptrtoint ptr %wildcard.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %wildcard.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool16.not.i = icmp eq i8 %61, 0
  %iface24.i = getelementptr inbounds %struct.hash_netiface4_elem, ptr %add.ptr, i32 0, i32 6
  br i1 %tobool16.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i636 = tail call i32 @strlen(ptr noundef %iface24.i) #20
  %call21.i = tail call i32 @strncmp(ptr noundef %iface24.i, ptr noundef %iface26.i, i32 noundef %call.i636) #15
  br label %hash_netiface4_data_equal.exit

cond.false.i:                                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  %call28.i = tail call i32 @strcmp(ptr noundef %iface24.i, ptr noundef %iface26.i) #20
  br label %hash_netiface4_data_equal.exit

hash_netiface4_data_equal.exit:                   ; preds = %cond.false.i, %cond.true.i
  %cond.in.in.i = phi i32 [ %call21.i, %cond.true.i ], [ %call28.i, %cond.false.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.in.in.i)
  %cond.in.i = icmp eq i32 %cond.in.in.i, 0
  br i1 %cond.in.i, label %if.then121, label %hash_netiface4_data_equal.exit.if.end136_crit_edge

hash_netiface4_data_equal.exit.if.end136_crit_edge: ; preds = %hash_netiface4_data_equal.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end136

if.then121:                                       ; preds = %hash_netiface4_data_equal.exit
  br i1 %tobool.not, label %lor.lhs.false124, label %if.then121.overwrite_extensions_crit_edge

if.then121.overwrite_extensions_crit_edge:        ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %unlock

ip_set_timeout_expired.exit:                      ; preds = %land.lhs.true129
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %69 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %68, %69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp1.i = icmp slt i32 %sub.i, 0
  br i1 %cmp1.i, label %ip_set_timeout_expired.exit.overwrite_extensions_crit_edge, label %ip_set_timeout_expired.exit.unlock_crit_edge

ip_set_timeout_expired.exit.unlock_crit_edge:     ; preds = %ip_set_timeout_expired.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %unlock

ip_set_timeout_expired.exit.overwrite_extensions_crit_edge: ; preds = %ip_set_timeout_expired.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %overwrite_extensions

if.end136:                                        ; preds = %hash_netiface4_data_equal.exit.if.end136_crit_edge, %land.lhs.true9.i.if.end136_crit_edge, %land.lhs.true8.i.if.end136_crit_edge, %land.lhs.true.i634.if.end136_crit_edge, %if.end115.if.end136_crit_edge
  %multi.1732 = phi i32 [ %inc.i, %hash_netiface4_data_equal.exit.if.end136_crit_edge ], [ %multi.0748, %if.end115.if.end136_crit_edge ], [ %multi.0748, %land.lhs.true.i634.if.end136_crit_edge ], [ %inc.i, %land.lhs.true9.i.if.end136_crit_edge ], [ 0, %land.lhs.true8.i.if.end136_crit_edge ]
  %70 = ptrtoint ptr %extensions137 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %extensions137, align 2
  %72 = and i8 %71, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool140.not = icmp eq i8 %72, 0
  br i1 %tobool140.not, label %if.end136.for.inc152_crit_edge, label %land.lhs.true141

if.end136.for.inc152_crit_edge:                   ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #17
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
  %cmp.not.i638 = icmp eq i32 %76, 0
  br i1 %cmp.not.i638, label %land.lhs.true141.ip_set_timeout_expired.exit642_crit_edge, label %land.rhs.i641

land.lhs.true141.ip_set_timeout_expired.exit642_crit_edge: ; preds = %land.lhs.true141
  call void @__sanitizer_cov_trace_pc() #17
  br label %ip_set_timeout_expired.exit642

land.rhs.i641:                                    ; preds = %land.lhs.true141
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %77 = load volatile i32, ptr @jiffies, align 128
  %sub.i639 = sub i32 %76, %77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i639)
  %cmp1.i640 = icmp slt i32 %sub.i639, 0
  br label %ip_set_timeout_expired.exit642

ip_set_timeout_expired.exit642:                   ; preds = %land.rhs.i641, %land.lhs.true141.ip_set_timeout_expired.exit642_crit_edge
  %78 = phi i1 [ false, %land.lhs.true141.ip_set_timeout_expired.exit642_crit_edge ], [ %cmp1.i640, %land.rhs.i641 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %j.0751)
  %cmp148 = icmp eq i32 %j.0751, -1
  %or.cond604 = select i1 %78, i1 %cmp148, i1 false
  %spec.select605 = select i1 %or.cond604, i1 true, i1 %reuse.0.off0750
  %spec.select606 = select i1 %or.cond604, i32 %i.0752, i32 %j.0751
  br label %for.inc152

for.inc152:                                       ; preds = %ip_set_timeout_expired.exit642, %if.end136.for.inc152_crit_edge, %if.then113, %if.then110.for.inc152_crit_edge
  %multi.2 = phi i32 [ %multi.0748, %if.then113 ], [ %multi.0748, %if.then110.for.inc152_crit_edge ], [ %multi.1732, %if.end136.for.inc152_crit_edge ], [ %multi.1732, %ip_set_timeout_expired.exit642 ]
  %deleted.1.off0 = phi i1 [ true, %if.then113 ], [ %deleted.0.off0749, %if.then110.for.inc152_crit_edge ], [ %deleted.0.off0749, %if.end136.for.inc152_crit_edge ], [ %deleted.0.off0749, %ip_set_timeout_expired.exit642 ]
  %reuse.1.off0 = phi i1 [ true, %if.then113 ], [ %reuse.0.off0750, %if.then110.for.inc152_crit_edge ], [ %reuse.0.off0750, %if.end136.for.inc152_crit_edge ], [ %spec.select605, %ip_set_timeout_expired.exit642 ]
  %j.1 = phi i32 [ %i.0752, %if.then113 ], [ %j.0751, %if.then110.for.inc152_crit_edge ], [ %j.0751, %if.end136.for.inc152_crit_edge ], [ %spec.select606, %ip_set_timeout_expired.exit642 ]
  %inc153 = add nuw nsw i32 %i.0752, 1
  %exitcond761.not = icmp eq i32 %inc153, %conv104
  br i1 %exitcond761.not, label %for.end154, label %for.inc152.for.body107_crit_edge

for.inc152.for.body107_crit_edge:                 ; preds = %for.inc152
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body107

for.end154:                                       ; preds = %for.inc152
  %brmerge = select i1 %reuse.1.off0, i1 true, i1 %forceadd.1.off0
  br i1 %brmerge, label %if.then160, label %for.end154.if.end187_crit_edge

for.end154.if.end187_crit_edge:                   ; preds = %for.end154
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end187

for.end154.thread:                                ; preds = %for.cond103.preheader
  br i1 %forceadd.1.off0, label %if.then160.thread, label %for.end154.thread.if.end187_crit_edge

for.end154.thread.if.end187_crit_edge:            ; preds = %for.end154.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end187

if.then160.thread:                                ; preds = %for.end154.thread
  call void @__sanitizer_cov_trace_pc() #17
  %value165774 = getelementptr inbounds %struct.hbucket, ptr %37, i32 0, i32 5
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body175

if.then160.copy_data_crit_edge:                   ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_data

for.body175:                                      ; preds = %if.then160.for.body175_crit_edge, %if.then160.thread
  %add.ptr169779 = phi ptr [ %value165774, %if.then160.thread ], [ %add.ptr169, %if.then160.for.body175_crit_edge ]
  %spec.store.select778 = phi i32 [ 0, %if.then160.thread ], [ %spec.store.select, %if.then160.for.body175_crit_edge ]
  %cidr = getelementptr inbounds %struct.hash_netiface4_elem, ptr %add.ptr169779, i32 0, i32 2
  %81 = ptrtoint ptr %cidr to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %cidr, align 1
  %add177 = add i8 %82, 1
  %lock.i = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #15
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc57.i.for.body.i_crit_edge, %for.body175
  %indvars.iv.i = phi i32 [ 0, %for.body175 ], [ %indvars.iv.next.i, %for.inc57.i.for.body.i_crit_edge ]
  %arrayidx4.i = getelementptr %struct.hash_netiface4, ptr %1, i32 0, i32 7, i32 %indvars.iv.i, i32 1, i32 0
  %83 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx4.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %84, i8 %add177)
  %cmp7.not.i = icmp eq i8 %84, %add177
  br i1 %cmp7.not.i, label %if.end.i, label %for.inc57.i

if.end.i:                                         ; preds = %for.body.i
  %conv6.i = zext i8 %add177 to i32
  %sub.i643 = add nsw i32 %conv6.i, -1
  %arrayidx11.i = getelementptr %struct.hash_netiface4, ptr %1, i32 0, i32 7, i32 %sub.i643
  %85 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx11.i, align 4
  %dec.i = add i32 %86, -1
  store i32 %dec.i, ptr %arrayidx11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp22.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp22.not.i, label %for.cond26.preheader.i, label %if.end.i.hash_netiface4_del_cidr.exit_crit_edge

if.end.i.hash_netiface4_del_cidr.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %hash_netiface4_del_cidr.exit

for.cond26.preheader.i:                           ; preds = %if.end.i
  %conv2786.i = and i32 %indvars.iv.i, 255
  %87 = and i32 %indvars.iv.i, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp2987.i = icmp eq i32 %87, 0
  br i1 %cmp2987.i, label %for.cond26.preheader.i.land.rhs.i645_crit_edge, label %for.cond26.preheader.i.for.end.i_crit_edge

for.cond26.preheader.i.for.end.i_crit_edge:       ; preds = %for.cond26.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.cond26.preheader.i.land.rhs.i645_crit_edge:   ; preds = %for.cond26.preheader.i
  br label %land.rhs.i645

land.rhs.i645:                                    ; preds = %for.body38.i.land.rhs.i645_crit_edge, %for.cond26.preheader.i.land.rhs.i645_crit_edge
  %indvars.iv92.i = phi i32 [ %add.i, %for.body38.i.land.rhs.i645_crit_edge ], [ %indvars.iv.i, %for.cond26.preheader.i.land.rhs.i645_crit_edge ]
  %arrayidx36.i = getelementptr %struct.hash_netiface4, ptr %1, i32 0, i32 7, i32 %indvars.iv92.i, i32 1, i32 0
  %88 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx36.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool.not.i644 = icmp eq i8 %89, 0
  br i1 %tobool.not.i644, label %land.rhs.i645.for.end.i_crit_edge, label %for.body38.i

land.rhs.i645.for.end.i_crit_edge:                ; preds = %land.rhs.i645
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.body38.i:                                     ; preds = %land.rhs.i645
  %add.i = add nuw nsw i32 %indvars.iv92.i, 1
  %arrayidx44.i = getelementptr %struct.hash_netiface4, ptr %1, i32 0, i32 7, i32 %add.i, i32 1, i32 0
  %90 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx44.i, align 1
  %92 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %arrayidx36.i, align 1
  %exitcond94.not.i = icmp eq i32 %add.i, 32
  br i1 %exitcond94.not.i, label %for.body38.i.for.end.i_crit_edge, label %for.body38.i.land.rhs.i645_crit_edge

for.body38.i.land.rhs.i645_crit_edge:             ; preds = %for.body38.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs.i645

for.body38.i.for.end.i_crit_edge:                 ; preds = %for.body38.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.end.i:                                        ; preds = %for.body38.i.for.end.i_crit_edge, %land.rhs.i645.for.end.i_crit_edge, %for.cond26.preheader.i.for.end.i_crit_edge
  %conv27.lcssa.i = phi i32 [ %conv2786.i, %for.cond26.preheader.i.for.end.i_crit_edge ], [ %indvars.iv92.i, %land.rhs.i645.for.end.i_crit_edge ], [ 32, %for.body38.i.for.end.i_crit_edge ]
  %arrayidx56.i = getelementptr %struct.hash_netiface4, ptr %1, i32 0, i32 7, i32 %conv27.lcssa.i, i32 1, i32 0
  %93 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %arrayidx56.i, align 1
  br label %hash_netiface4_del_cidr.exit

for.inc57.i:                                      ; preds = %for.body.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 33
  br i1 %exitcond.not.i, label %for.inc57.i.hash_netiface4_del_cidr.exit_crit_edge, label %for.inc57.i.for.body.i_crit_edge

for.inc57.i.for.body.i_crit_edge:                 ; preds = %for.inc57.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc57.i.hash_netiface4_del_cidr.exit_crit_edge: ; preds = %for.inc57.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %hash_netiface4_del_cidr.exit

hash_netiface4_del_cidr.exit:                     ; preds = %for.inc57.i.hash_netiface4_del_cidr.exit_crit_edge, %for.end.i, %if.end.i.hash_netiface4_del_cidr.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #15
  %extensions.i = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 8
  %94 = ptrtoint ptr %extensions.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %extensions.i, align 2
  %96 = and i8 %95, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool.not.i646 = icmp eq i8 %96, 0
  br i1 %tobool.not.i646, label %hash_netiface4_del_cidr.exit.ip_set_ext_destroy.exit_crit_edge, label %if.then.i648

hash_netiface4_del_cidr.exit.ip_set_ext_destroy.exit_crit_edge: ; preds = %hash_netiface4_del_cidr.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %ip_set_ext_destroy.exit

if.then.i648:                                     ; preds = %hash_netiface4_del_cidr.exit
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx.i647 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 3
  %97 = ptrtoint ptr %arrayidx.i647 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx.i647, align 4
  %add.ptr.i = getelementptr i8, ptr %add.ptr169779, i32 %98
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.ip_set_ext_type], ptr @ip_set_extensions, i32 0, i32 3) to i32))
  %99 = load ptr, ptr getelementptr inbounds ([0 x %struct.ip_set_ext_type], ptr @ip_set_extensions, i32 0, i32 3), align 4
  tail call void %99(ptr noundef %set, ptr noundef %add.ptr.i) #15
  br label %ip_set_ext_destroy.exit

ip_set_ext_destroy.exit:                          ; preds = %if.then.i648, %hash_netiface4_del_cidr.exit.ip_set_ext_destroy.exit_crit_edge
  %100 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %hregion, align 4
  %elements185 = getelementptr %struct.ip_set_region, ptr %101, i32 %rem, i32 2
  %102 = ptrtoint ptr %elements185 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %elements185, align 4
  %dec = add i32 %103, -1
  store i32 %dec, ptr %elements185, align 4
  br label %copy_data

if.end187:                                        ; preds = %for.end154.thread.if.end187_crit_edge, %for.end154.if.end187_crit_edge
  %multi.0.lcssa767 = phi i32 [ 0, %for.end154.thread.if.end187_crit_edge ], [ %multi.2, %for.end154.if.end187_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %elements.1, i32 %maxelem.0)
  %cmp188.not = icmp ult i32 %elements.1, %maxelem.0
  br i1 %cmp188.not, label %if.end191, label %if.end187.set_full_crit_edge

if.end187.set_full_crit_edge:                     ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #17
  br label %set_full

if.end191:                                        ; preds = %if.end187
  %size194 = getelementptr inbounds %struct.hbucket, ptr %37, i32 0, i32 2
  %104 = ptrtoint ptr %size194 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %size194, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %39, i8 %105)
  %cmp196.not = icmp ult i8 %39, %105
  br i1 %cmp196.not, label %if.end191.copy_elem_crit_edge, label %if.then198

if.end191.copy_elem_crit_edge:                    ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_elem

if.then198:                                       ; preds = %if.end191
  %bucketsize = getelementptr inbounds %struct.hash_netiface4, ptr %1, i32 0, i32 4
  %106 = ptrtoint ptr %bucketsize to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %bucketsize, align 4
  %conv.i = zext i8 %107 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %multi.0.lcssa767, i32 %conv.i)
  %cmp.i650 = icmp ult i32 %multi.0.lcssa767, %conv.i
  %add.i651 = add i8 %107, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %107)
  %cmp6.i652 = icmp ult i8 %107, 63
  %cond.i = select i1 %cmp6.i652, i8 %add.i651, i8 %107
  %retval.0.i653 = select i1 %cmp.i650, i8 %107, i8 %cond.i
  %108 = ptrtoint ptr %bucketsize to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %retval.0.i653, ptr %bucketsize, align 4
  %109 = ptrtoint ptr %size194 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %size194, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %110, i8 %retval.0.i653)
  %cmp205.not = icmp ult i8 %110, %retval.0.i653
  br i1 %cmp205.not, label %if.end208, label %if.then207

if.then207:                                       ; preds = %if.then198
  call void @__sanitizer_cov_trace_pc() #17
  %next = getelementptr inbounds %struct.hash_netiface4, ptr %1, i32 0, i32 6
  %111 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %value, align 4
  %113 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %next, align 4
  br label %resize

if.end208:                                        ; preds = %if.then198
  %dsize212 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %114 = ptrtoint ptr %dsize212 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %dsize212, align 4
  %conv202 = zext i8 %110 to i32
  %add211 = add nuw nsw i32 %conv202, 2
  %mul213 = mul i32 %115, %add211
  %add214 = add i32 %mul213, 24
  %call9.i.i682 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add214, i32 noundef 2848) #19
  %tobool216.not = icmp eq ptr %call9.i.i682, null
  br i1 %tobool216.not, label %if.end208.unlock_crit_edge, label %if.end218

if.end208.unlock_crit_edge:                       ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #17
  br label %unlock

if.end218:                                        ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #17
  %116 = ptrtoint ptr %size194 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %size194, align 8
  %conv220 = zext i8 %117 to i32
  %118 = ptrtoint ptr %dsize212 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %dsize212, align 4
  %mul222 = mul i32 %119, %conv220
  %add223 = add i32 %mul222, 24
  %120 = call ptr @memcpy(ptr %call9.i.i682, ptr %37, i32 %add223)
  %121 = load i8, ptr %size194, align 8
  %add226 = add i8 %121, 2
  br label %copy_elem.sink.split

copy_elem.sink.split:                             ; preds = %if.end218, %if.end90.copy_elem.sink.split_crit_edge
  %retval.1.i.i730.sink = phi ptr [ %call9.i.i682, %if.end218 ], [ %call9.i.i, %if.end90.copy_elem.sink.split_crit_edge ]
  %.sink = phi i8 [ %add226, %if.end218 ], [ 2, %if.end90.copy_elem.sink.split_crit_edge ]
  %dsize.sink = phi ptr [ %dsize212, %if.end218 ], [ %dsize, %if.end90.copy_elem.sink.split_crit_edge ]
  %old.0.ph = phi ptr [ %37, %if.end218 ], [ null, %if.end90.copy_elem.sink.split_crit_edge ]
  %size = getelementptr inbounds %struct.hbucket, ptr %retval.1.i.i730.sink, i32 0, i32 2
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
  %add235 = add i32 %add98, %128
  store i32 %add235, ptr %ext_size, align 4
  br label %copy_elem

copy_elem:                                        ; preds = %copy_elem.sink.split, %if.end191.copy_elem_crit_edge
  %old.0 = phi ptr [ inttoptr (i32 -2 to ptr), %if.end191.copy_elem_crit_edge ], [ %old.0.ph, %copy_elem.sink.split ]
  %n.0 = phi ptr [ %37, %if.end191.copy_elem_crit_edge ], [ %retval.1.i.i730.sink, %copy_elem.sink.split ]
  %pos237 = getelementptr inbounds %struct.hbucket, ptr %n.0, i32 0, i32 3
  %129 = ptrtoint ptr %pos237 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %pos237, align 1
  %inc238 = add i8 %130, 1
  store i8 %inc238, ptr %pos237, align 1
  %conv239 = zext i8 %130 to i32
  %value240 = getelementptr inbounds %struct.hbucket, ptr %n.0, i32 0, i32 5
  %dsize242 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %131 = ptrtoint ptr %dsize242 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %dsize242, align 4
  %mul243 = mul i32 %132, %conv239
  %add.ptr244 = getelementptr i8, ptr %value240, i32 %mul243
  br label %copy_data

copy_data:                                        ; preds = %copy_elem, %ip_set_ext_destroy.exit, %if.then160.copy_data_crit_edge
  %j.2 = phi i32 [ %spec.store.select, %if.then160.copy_data_crit_edge ], [ %spec.store.select778, %ip_set_ext_destroy.exit ], [ %conv239, %copy_elem ]
  %old.1 = phi ptr [ inttoptr (i32 -2 to ptr), %if.then160.copy_data_crit_edge ], [ inttoptr (i32 -2 to ptr), %ip_set_ext_destroy.exit ], [ %old.0, %copy_elem ]
  %n.1 = phi ptr [ %37, %if.then160.copy_data_crit_edge ], [ %37, %ip_set_ext_destroy.exit ], [ %n.0, %copy_elem ]
  %data1.0 = phi ptr [ %add.ptr169, %if.then160.copy_data_crit_edge ], [ %add.ptr169779, %ip_set_ext_destroy.exit ], [ %add.ptr244, %copy_elem ]
  %133 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %hregion, align 4
  %elements247 = getelementptr %struct.ip_set_region, ptr %134, i32 %rem, i32 2
  %135 = ptrtoint ptr %elements247 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %elements247, align 4
  %inc248 = add i32 %136, 1
  store i32 %inc248, ptr %elements247, align 4
  %cidr253 = getelementptr inbounds %struct.hash_netiface4_elem, ptr %value, i32 0, i32 2
  %137 = ptrtoint ptr %cidr253 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %cidr253, align 1
  %add255 = add i8 %138, 1
  %lock.i686 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i686) #15
  br label %land.rhs.i688

land.rhs.i688:                                    ; preds = %for.inc.i.land.rhs.i688_crit_edge, %copy_data
  %j.05.i = phi i32 [ -1, %copy_data ], [ %j.1.i, %for.inc.i.land.rhs.i688_crit_edge ]
  %i.03.i = phi i32 [ 0, %copy_data ], [ %inc34.i, %for.inc.i.land.rhs.i688_crit_edge ]
  %cidr1.i = getelementptr %struct.hash_netiface4, ptr %1, i32 0, i32 7, i32 %i.03.i, i32 1
  %139 = ptrtoint ptr %cidr1.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %cidr1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %tobool.not.i687 = icmp eq i8 %140, 0
  br i1 %tobool.not.i687, label %land.rhs.i688.for.end.i693_crit_edge, label %for.body.i689

land.rhs.i688.for.end.i693_crit_edge:             ; preds = %land.rhs.i688
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i693

for.body.i689:                                    ; preds = %land.rhs.i688
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %j.05.i)
  %cmp3.not.i = icmp eq i32 %j.05.i, -1
  br i1 %cmp3.not.i, label %if.else.i, label %for.body.i689.for.inc.i_crit_edge

for.body.i689.for.inc.i_crit_edge:                ; preds = %for.body.i689
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i689
  call void @__sanitizer_cov_trace_cmp1(i8 %140, i8 %add255)
  %cmp12.i = icmp ult i8 %140, %add255
  br i1 %cmp12.i, label %if.else.i.for.inc.i_crit_edge, label %if.else15.i

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.else15.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_cmp1(i8 %140, i8 %add255)
  %cmp23.i = icmp eq i8 %140, %add255
  br i1 %cmp23.i, label %if.then25.i, label %if.else15.i.for.inc.i_crit_edge

if.else15.i.for.inc.i_crit_edge:                  ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.then25.i:                                      ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv11.le.i = zext i8 %add255 to i32
  %sub.i690 = add nsw i32 %conv11.le.i, -1
  %arrayidx28.i = getelementptr %struct.hash_netiface4, ptr %1, i32 0, i32 7, i32 %sub.i690
  %141 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %arrayidx28.i, align 4
  %inc.i691 = add i32 %142, 1
  store i32 %inc.i691, ptr %arrayidx28.i, align 4
  br label %hash_netiface4_add_cidr.exit

for.inc.i:                                        ; preds = %if.else15.i.for.inc.i_crit_edge, %if.else.i.for.inc.i_crit_edge, %for.body.i689.for.inc.i_crit_edge
  %j.1.i = phi i32 [ %j.05.i, %for.body.i689.for.inc.i_crit_edge ], [ -1, %if.else15.i.for.inc.i_crit_edge ], [ %i.03.i, %if.else.i.for.inc.i_crit_edge ]
  %inc34.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i692 = icmp eq i32 %inc34.i, 33
  br i1 %exitcond.not.i692, label %for.inc.i.for.end.i693_crit_edge, label %for.inc.i.land.rhs.i688_crit_edge

for.inc.i.land.rhs.i688_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs.i688

for.inc.i.for.end.i693_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i693

for.end.i693:                                     ; preds = %for.inc.i.for.end.i693_crit_edge, %land.rhs.i688.for.end.i693_crit_edge
  %i.0.lcssa.i = phi i32 [ 33, %for.inc.i.for.end.i693_crit_edge ], [ %i.03.i, %land.rhs.i688.for.end.i693_crit_edge ]
  %j.0.lcssa.i = phi i32 [ %j.1.i, %for.inc.i.for.end.i693_crit_edge ], [ %j.05.i, %land.rhs.i688.for.end.i693_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %j.0.lcssa.i)
  %cmp35.not.i = icmp ne i32 %j.0.lcssa.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i, i32 %j.0.lcssa.i)
  %cmp396.i = icmp sgt i32 %i.0.lcssa.i, %j.0.lcssa.i
  %or.cond.i = select i1 %cmp35.not.i, i1 %cmp396.i, i1 false
  br i1 %or.cond.i, label %for.end.i693.for.body41.i_crit_edge, label %for.end.i693.if.end55.i_crit_edge

for.end.i693.if.end55.i_crit_edge:                ; preds = %for.end.i693
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end55.i

for.end.i693.for.body41.i_crit_edge:              ; preds = %for.end.i693
  br label %for.body41.i

for.body41.i:                                     ; preds = %for.body41.i.for.body41.i_crit_edge, %for.end.i693.for.body41.i_crit_edge
  %i.17.i = phi i32 [ %sub43.i, %for.body41.i.for.body41.i_crit_edge ], [ %i.0.lcssa.i, %for.end.i693.for.body41.i_crit_edge ]
  %sub43.i = add nsw i32 %i.17.i, -1
  %cidr45.i = getelementptr %struct.hash_netiface4, ptr %1, i32 0, i32 7, i32 %sub43.i, i32 1
  %143 = ptrtoint ptr %cidr45.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %cidr45.i, align 1
  %cidr50.i = getelementptr %struct.hash_netiface4, ptr %1, i32 0, i32 7, i32 %i.17.i, i32 1
  %145 = ptrtoint ptr %cidr50.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %144, ptr %cidr50.i, align 1
  %cmp39.i = icmp sgt i32 %sub43.i, %j.0.lcssa.i
  br i1 %cmp39.i, label %for.body41.i.for.body41.i_crit_edge, label %for.body41.i.if.end55.i_crit_edge

for.body41.i.if.end55.i_crit_edge:                ; preds = %for.body41.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end55.i

for.body41.i.for.body41.i_crit_edge:              ; preds = %for.body41.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body41.i

if.end55.i:                                       ; preds = %for.body41.i.if.end55.i_crit_edge, %for.end.i693.if.end55.i_crit_edge
  %i.2.i = phi i32 [ %i.0.lcssa.i, %for.end.i693.if.end55.i_crit_edge ], [ %j.0.lcssa.i, %for.body41.i.if.end55.i_crit_edge ]
  %cidr58.i = getelementptr %struct.hash_netiface4, ptr %1, i32 0, i32 7, i32 %i.2.i, i32 1
  %146 = ptrtoint ptr %cidr58.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %add255, ptr %cidr58.i, align 1
  %conv62.i = zext i8 %add255 to i32
  %sub63.i = add nsw i32 %conv62.i, -1
  %arrayidx64.i = getelementptr %struct.hash_netiface4, ptr %1, i32 0, i32 7, i32 %sub63.i
  %147 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 1, ptr %arrayidx64.i, align 4
  br label %hash_netiface4_add_cidr.exit

hash_netiface4_add_cidr.exit:                     ; preds = %if.end55.i, %if.then25.i
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i686) #15
  %148 = call ptr @memcpy(ptr %data1.0, ptr %value, i32 28)
  br label %overwrite_extensions

overwrite_extensions:                             ; preds = %hash_netiface4_add_cidr.exit, %ip_set_timeout_expired.exit.overwrite_extensions_crit_edge, %if.then121.overwrite_extensions_crit_edge
  %j.3 = phi i32 [ %j.2, %hash_netiface4_add_cidr.exit ], [ %i.0752, %ip_set_timeout_expired.exit.overwrite_extensions_crit_edge ], [ %i.0752, %if.then121.overwrite_extensions_crit_edge ]
  %old.2 = phi ptr [ %old.1, %hash_netiface4_add_cidr.exit ], [ inttoptr (i32 -2 to ptr), %ip_set_timeout_expired.exit.overwrite_extensions_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.then121.overwrite_extensions_crit_edge ]
  %n.2 = phi ptr [ %n.1, %hash_netiface4_add_cidr.exit ], [ %37, %ip_set_timeout_expired.exit.overwrite_extensions_crit_edge ], [ %37, %if.then121.overwrite_extensions_crit_edge ]
  %data1.1 = phi ptr [ %data1.0, %hash_netiface4_add_cidr.exit ], [ %add.ptr, %ip_set_timeout_expired.exit.overwrite_extensions_crit_edge ], [ %add.ptr, %if.then121.overwrite_extensions_crit_edge ]
  %shr.i694 = lshr i32 %flags, 16
  %149 = trunc i32 %shr.i694 to i8
  %conv.i695 = and i8 %149, 4
  %nomatch.i = getelementptr inbounds %struct.hash_netiface4_elem, ptr %data1.1, i32 0, i32 3
  %150 = ptrtoint ptr %nomatch.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %conv.i695, ptr %nomatch.i, align 2
  %extensions261 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 8
  %151 = ptrtoint ptr %extensions261 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %extensions261, align 2
  %153 = and i8 %152, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %153)
  %tobool264.not = icmp eq i8 %153, 0
  br i1 %tobool264.not, label %overwrite_extensions.if.end269_crit_edge, label %if.then265

overwrite_extensions.if.end269_crit_edge:         ; preds = %overwrite_extensions
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end269

if.then265:                                       ; preds = %overwrite_extensions
  %offset266 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 14
  %154 = ptrtoint ptr %offset266 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %offset266, align 4
  %add.ptr268 = getelementptr i8, ptr %data1.1, i32 %155
  %bytes.i = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 2
  %156 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load8_noabort(i32 %156)
  %157 = load i64, ptr %bytes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %157)
  %cmp.not.i696 = icmp eq i64 %157, -1
  br i1 %cmp.not.i696, label %if.then265.if.end.i699_crit_edge, label %if.then.i697

if.then265.if.end.i699_crit_edge:                 ; preds = %if.then265
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i699

if.then.i697:                                     ; preds = %if.then265
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr268, i32 noundef 8) #15
  tail call void @generic_atomic64_set(ptr noundef %add.ptr268, i64 noundef %157) #15
  br label %if.end.i699

if.end.i699:                                      ; preds = %if.then.i697, %if.then265.if.end.i699_crit_edge
  %packets.i = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 1
  %158 = ptrtoint ptr %packets.i to i32
  call void @__asan_load8_noabort(i32 %158)
  %159 = load i64, ptr %packets.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %159)
  %cmp3.not.i698 = icmp eq i64 %159, -1
  br i1 %cmp3.not.i698, label %if.end.i699.if.end269_crit_edge, label %if.then4.i

if.end.i699.if.end269_crit_edge:                  ; preds = %if.end.i699
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end269

if.then4.i:                                       ; preds = %if.end.i699
  call void @__sanitizer_cov_trace_pc() #17
  %packets5.i = getelementptr inbounds %struct.ip_set_counter, ptr %add.ptr268, i32 0, i32 1
  %call.i.i13.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %packets5.i, i32 noundef 8) #15
  tail call void @generic_atomic64_set(ptr noundef %packets5.i, i64 noundef %159) #15
  br label %if.end269

if.end269:                                        ; preds = %if.then4.i, %if.end.i699.if.end269_crit_edge, %overwrite_extensions.if.end269_crit_edge
  %160 = ptrtoint ptr %extensions261 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %extensions261, align 2
  %162 = and i8 %161, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %162)
  %tobool273.not = icmp eq i8 %162, 0
  br i1 %tobool273.not, label %if.end269.if.end278_crit_edge, label %if.then274

if.end269.if.end278_crit_edge:                    ; preds = %if.end269
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end278

if.then274:                                       ; preds = %if.end269
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx276 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 3
  %163 = ptrtoint ptr %arrayidx276 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %arrayidx276, align 4
  %add.ptr277 = getelementptr i8, ptr %data1.1, i32 %164
  tail call void @ip_set_init_comment(ptr noundef %set, ptr noundef %add.ptr277, ptr noundef %ext) #15
  br label %if.end278

if.end278:                                        ; preds = %if.then274, %if.end269.if.end278_crit_edge
  %165 = ptrtoint ptr %extensions261 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %extensions261, align 2
  %167 = and i8 %166, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %167)
  %tobool282.not = icmp eq i8 %167, 0
  br i1 %tobool282.not, label %if.end278.if.end287_crit_edge, label %if.then283

if.end278.if.end287_crit_edge:                    ; preds = %if.end278
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end287

if.then283:                                       ; preds = %if.end278
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx285 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 2
  %168 = ptrtoint ptr %arrayidx285 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %arrayidx285, align 4
  %add.ptr286 = getelementptr i8, ptr %data1.1, i32 %169
  %170 = call ptr @memcpy(ptr %add.ptr286, ptr %ext, i32 16)
  br label %if.end287

if.end287:                                        ; preds = %if.then283, %if.end278.if.end287_crit_edge
  %171 = ptrtoint ptr %extensions261 to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %extensions261, align 2
  %173 = and i8 %172, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %173)
  %tobool291.not = icmp eq i8 %173, 0
  br i1 %tobool291.not, label %if.end287.do.end300_crit_edge, label %if.then292

if.end287.do.end300_crit_edge:                    ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end300

if.then292:                                       ; preds = %if.end287
  %arrayidx294 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 1
  %174 = ptrtoint ptr %arrayidx294 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %arrayidx294, align 4
  %add.ptr295 = getelementptr i8, ptr %data1.1, i32 %175
  %timeout = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 4
  %176 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %177)
  %tobool.not.i700 = icmp eq i32 %177, 0
  br i1 %tobool.not.i700, label %if.then292.ip_set_timeout_set.exit_crit_edge, label %if.else.i.i

if.then292.ip_set_timeout_set.exit_crit_edge:     ; preds = %if.then292
  call void @__sanitizer_cov_trace_pc() #17
  br label %ip_set_timeout_set.exit

if.else.i.i:                                      ; preds = %if.then292
  call void @__sanitizer_cov_trace_pc() #17
  %mul.i = mul i32 %177, 1000
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %mul.i) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %178 = load volatile i32, ptr @jiffies, align 128
  %add.i705 = add i32 %178, %call2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i705)
  %cmp.i706 = icmp eq i32 %add.i705, 0
  %spec.select.i = select i1 %cmp.i706, i32 -1, i32 %add.i705
  br label %ip_set_timeout_set.exit

ip_set_timeout_set.exit:                          ; preds = %if.else.i.i, %if.then292.ip_set_timeout_set.exit_crit_edge
  %storemerge.i = phi i32 [ %spec.select.i, %if.else.i.i ], [ 0, %if.then292.ip_set_timeout_set.exit_crit_edge ]
  %179 = ptrtoint ptr %add.ptr295 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %storemerge.i, ptr %add.ptr295, align 4
  br label %do.end300

do.end300:                                        ; preds = %ip_set_timeout_set.exit, %if.end287.do.end300_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !229
  %used303 = getelementptr inbounds %struct.hbucket, ptr %n.2, i32 0, i32 1
  tail call void @_set_bit(i32 noundef %j.3, ptr noundef %used303) #15
  %cmp306.not = icmp eq ptr %old.2, inttoptr (i32 -2 to ptr)
  br i1 %cmp306.not, label %do.end300.resize_crit_edge, label %do.body309

do.end300.resize_crit_edge:                       ; preds = %do.end300
  call void @__sanitizer_cov_trace_pc() #17
  br label %resize

do.body309:                                       ; preds = %do.end300
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !230
  %180 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store4_noabort(i32 %180)
  store volatile ptr %n.2, ptr %arrayidx69, align 4
  %tobool351.not = icmp eq ptr %old.2, null
  br i1 %tobool351.not, label %do.body309.resize_crit_edge, label %do.end358

do.body309.resize_crit_edge:                      ; preds = %do.body309
  call void @__sanitizer_cov_trace_pc() #17
  br label %resize

do.end358:                                        ; preds = %do.body309
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kvfree_call_rcu(ptr noundef nonnull %old.2, ptr noundef null) #15
  br label %resize

resize:                                           ; preds = %do.end358, %do.body309.resize_crit_edge, %do.end300.resize_crit_edge, %if.then207
  %ret.0 = phi i32 [ -11, %if.then207 ], [ 0, %do.body309.resize_crit_edge ], [ 0, %do.end358 ], [ 0, %do.end300.resize_crit_edge ]
  %181 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %hregion, align 4
  %arrayidx365 = getelementptr %struct.ip_set_region, ptr %182, i32 %rem
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx365) #15
  %call.i.i607 = tail call zeroext i1 @__kasan_check_read(ptr noundef %3, i32 noundef 4) #15
  %183 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load volatile i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %tobool368.not = icmp eq i32 %184, 0
  br i1 %tobool368.not, label %resize.out_crit_edge, label %land.lhs.true369

resize.out_crit_edge:                             ; preds = %resize
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

land.lhs.true369:                                 ; preds = %resize
  %target = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 7
  %185 = ptrtoint ptr %target to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %target, align 2, !range !231
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %186)
  %tobool370.not = icmp eq i8 %186, 0
  br i1 %tobool370.not, label %land.lhs.true369.out_crit_edge, label %if.then372

land.lhs.true369.out_crit_edge:                   ; preds = %land.lhs.true369
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then372:                                       ; preds = %land.lhs.true369
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %187 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i714 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %187, i32 noundef 2848, i32 noundef 144) #18
  %tobool374.not = icmp eq ptr %call7.i.i714, null
  br i1 %tobool374.not, label %if.then372.out_crit_edge, label %if.end376

if.then372.out_crit_edge:                         ; preds = %if.then372
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end376:                                        ; preds = %if.then372
  %ad = getelementptr inbounds %struct.hash_netiface4_resize_ad, ptr %call7.i.i714, i32 0, i32 1
  %188 = ptrtoint ptr %ad to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 0, ptr %ad, align 8
  %d377 = getelementptr inbounds %struct.hash_netiface4_resize_ad, ptr %call7.i.i714, i32 0, i32 2
  %189 = call ptr @memcpy(ptr %d377, ptr %value, i32 28)
  %ext378 = getelementptr inbounds %struct.hash_netiface4_resize_ad, ptr %call7.i.i714, i32 0, i32 3
  %190 = call ptr @memcpy(ptr %ext378, ptr %ext, i32 48)
  %mext379 = getelementptr inbounds %struct.hash_netiface4_resize_ad, ptr %call7.i.i714, i32 0, i32 4
  %191 = call ptr @memcpy(ptr %mext379, ptr %mext, i32 48)
  %flags380 = getelementptr inbounds %struct.hash_netiface4_resize_ad, ptr %call7.i.i714, i32 0, i32 5
  %192 = ptrtoint ptr %flags380 to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %flags, ptr %flags380, align 8
  %lock381 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock381) #15
  %ad382 = getelementptr inbounds %struct.hash_netiface4, ptr %1, i32 0, i32 5
  %prev.i = getelementptr inbounds %struct.hash_netiface4, ptr %1, i32 0, i32 5, i32 1
  %193 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %prev.i, align 4
  %call.i.i716 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i714, ptr noundef %194, ptr noundef %ad382) #15
  br i1 %call.i.i716, label %if.end.i.i717, label %if.end376.out.sink.split_crit_edge

if.end376.out.sink.split_crit_edge:               ; preds = %if.end376
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.sink.split

if.end.i.i717:                                    ; preds = %if.end376
  call void @__sanitizer_cov_trace_pc() #17
  %195 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %call7.i.i714, ptr %prev.i, align 4
  %196 = ptrtoint ptr %call7.i.i714 to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %ad382, ptr %call7.i.i714, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i714, i32 0, i32 1
  %197 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %194, ptr %prev3.i.i, align 4
  %198 = ptrtoint ptr %194 to i32
  call void @__asan_store4_noabort(i32 %198)
  store volatile ptr %call7.i.i714, ptr %194, align 4
  br label %out.sink.split

set_full:                                         ; preds = %if.end187.set_full_crit_edge, %if.then84.set_full_crit_edge
  %call385 = tail call i32 @net_ratelimit() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call385)
  %tobool386.not = icmp eq i32 %call385, 0
  br i1 %tobool386.not, label %set_full.unlock_crit_edge, label %do.end390

set_full.unlock_crit_edge:                        ; preds = %set_full
  call void @__sanitizer_cov_trace_pc() #17
  br label %unlock

do.end390:                                        ; preds = %set_full
  call void @__sanitizer_cov_trace_pc() #17
  %call393 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %set, i32 noundef %maxelem.0) #21
  br label %unlock

unlock:                                           ; preds = %do.end390, %set_full.unlock_crit_edge, %if.end208.unlock_crit_edge, %ip_set_timeout_expired.exit.unlock_crit_edge, %land.lhs.true129.unlock_crit_edge, %lor.lhs.false124.unlock_crit_edge, %if.end90.unlock_crit_edge
  %ret.1 = phi i32 [ -12, %if.end90.unlock_crit_edge ], [ -4103, %ip_set_timeout_expired.exit.unlock_crit_edge ], [ -4103, %lor.lhs.false124.unlock_crit_edge ], [ -12, %if.end208.unlock_crit_edge ], [ -4352, %do.end390 ], [ -4352, %set_full.unlock_crit_edge ], [ -4103, %land.lhs.true129.unlock_crit_edge ]
  %199 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %hregion, align 4
  %arrayidx396 = getelementptr %struct.ip_set_region, ptr %200, i32 %rem
  br label %out.sink.split

out.sink.split:                                   ; preds = %unlock, %if.end.i.i717, %if.end376.out.sink.split_crit_edge
  %lock381.sink = phi ptr [ %arrayidx396, %unlock ], [ %lock381, %if.end376.out.sink.split_crit_edge ], [ %lock381, %if.end.i.i717 ]
  %ret.2.ph = phi i32 [ %ret.1, %unlock ], [ %ret.0, %if.end376.out.sink.split_crit_edge ], [ %ret.0, %if.end.i.i717 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock381.sink) #15
  br label %out

out:                                              ; preds = %out.sink.split, %if.then372.out_crit_edge, %land.lhs.true369.out_crit_edge, %resize.out_crit_edge
  %ret.2 = phi i32 [ %ret.0, %land.lhs.true369.out_crit_edge ], [ %ret.0, %resize.out_crit_edge ], [ %ret.0, %if.then372.out_crit_edge ], [ %ret.2.ph, %out.sink.split ]
  %call.i.i608 = tail call zeroext i1 @__kasan_check_write(ptr noundef %uref, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !232
  tail call void @llvm.prefetch.p0(ptr %uref, i32 1, i32 3, i32 1) #15
  %201 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uref, ptr %uref, i32 1, ptr elementtype(i32) %uref) #15, !srcloc !233
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %201, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !234
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true401, label %out.cleanup418_crit_edge

out.cleanup418_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup418

land.lhs.true401:                                 ; preds = %out
  %call.i.i609 = tail call zeroext i1 @__kasan_check_read(ptr noundef %3, i32 noundef 4) #15
  %202 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load volatile i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %203)
  %tobool404.not = icmp eq i32 %203, 0
  br i1 %tobool404.not, label %land.lhs.true401.cleanup418_crit_edge, label %do.body406

land.lhs.true401.cleanup418_crit_edge:            ; preds = %land.lhs.true401
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup418

do.body406:                                       ; preds = %land.lhs.true401
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_netiface4_add.__UNIQUE_ID_ddebug657, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_netiface4_add, %if.then413)) #15
          to label %do.end.i [label %if.then413], !srcloc !224

if.then413:                                       ; preds = %do.body406
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_netiface4_add.__UNIQUE_ID_ddebug657, ptr noundef nonnull @.str.13, ptr noundef %3) #15
  br label %do.end.i

do.end.i:                                         ; preds = %for.inc.i725.do.end.i_crit_edge, %if.then413, %do.body406
  %i.017.i = phi i32 [ %inc.i722, %for.inc.i725.do.end.i_crit_edge ], [ 0, %do.body406 ], [ 0, %if.then413 ]
  %arrayidx.i719 = getelementptr %struct.htable, ptr %3, i32 0, i32 5, i32 %i.017.i
  %204 = ptrtoint ptr %arrayidx.i719 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %arrayidx.i719, align 4
  %tobool.not.i720 = icmp eq ptr %205, null
  br i1 %tobool.not.i720, label %do.end.i.for.inc.i725_crit_edge, label %if.end.i721

do.end.i.for.inc.i725_crit_edge:                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i725

if.end.i721:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %205) #15
  br label %for.inc.i725

for.inc.i725:                                     ; preds = %if.end.i721, %do.end.i.for.inc.i725_crit_edge
  %inc.i722 = add i32 %i.017.i, 1
  %206 = ptrtoint ptr %htable_bits to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %htable_bits, align 4
  %conv.i723 = zext i8 %207 to i32
  %i.0.highbits.i = lshr i32 %inc.i722, %conv.i723
  %cmp.i724 = icmp eq i32 %i.0.highbits.i, 0
  br i1 %cmp.i724, label %for.inc.i725.do.end.i_crit_edge, label %hash_netiface4_ahash_destroy.exit

for.inc.i725.do.end.i_crit_edge:                  ; preds = %for.inc.i725
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

hash_netiface4_ahash_destroy.exit:                ; preds = %for.inc.i725
  call void @__sanitizer_cov_trace_pc() #17
  %208 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %hregion, align 4
  tail call void @ip_set_free(ptr noundef %209) #15
  tail call void @ip_set_free(ptr noundef %3) #15
  br label %cleanup418

cleanup418:                                       ; preds = %hash_netiface4_ahash_destroy.exit, %land.lhs.true401.cleanup418_crit_edge, %out.cleanup418_crit_edge
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hash_netiface4_del(ptr noundef %set, ptr nocapture noundef readonly %value, ptr nocapture noundef readonly %ext, ptr nocapture noundef readnone %mext, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 15
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %dsize2 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %2 = ptrtoint ptr %dsize2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dsize2, align 4
  tail call fastcc void @local_bh_disable() #15
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %entry.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock_bh.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock_bh.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock_bh.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock_bh.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 750, ptr noundef nonnull @.str.15) #15
  br label %rcu_read_lock_bh.exit

rcu_read_lock_bh.exit:                            ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, %entry.rcu_read_lock_bh.exit_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %1, align 4
  %call = tail call i32 @rcu_read_lock_bh_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock_bh.exit.do.end9_crit_edge

rcu_read_lock_bh.exit.do.end9_crit_edge:          ; preds = %rcu_read_lock_bh.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end9

land.lhs.true:                                    ; preds = %rcu_read_lock_bh.exit
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true6

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end9

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b443 = load i1, ptr @hash_netiface4_del.__warned, align 1
  br i1 %.b443, label %land.lhs.true6.do.end9_crit_edge, label %if.then

land.lhs.true6.do.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end9

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @hash_netiface4_del.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1048, ptr noundef nonnull @.str.9) #15
  br label %do.end9

do.end9:                                          ; preds = %if.then, %land.lhs.true6.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %rcu_read_lock_bh.exit.do.end9_crit_edge
  %initval = getelementptr inbounds %struct.hash_netiface4, ptr %1, i32 0, i32 3
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
  %or.i140.i = tail call i32 @llvm.fshl.i32(i32 %add33.i, i32 %add33.i, i32 14) #15
  %sub39.i = sub i32 %xor37.i, %or.i140.i
  %xor40.i = xor i32 %sub39.i, %add36.i
  %or.i141.i = tail call i32 @llvm.fshl.i32(i32 %sub39.i, i32 %sub39.i, i32 11) #15
  %sub42.i = sub i32 %xor40.i, %or.i141.i
  %xor43.i = xor i32 %sub42.i, %add33.i
  %or.i142.i = tail call i32 @llvm.fshl.i32(i32 %sub42.i, i32 %sub42.i, i32 25) #15
  %sub45.i = sub i32 %xor43.i, %or.i142.i
  %xor46.i = xor i32 %sub45.i, %sub39.i
  %or.i143.i = tail call i32 @llvm.fshl.i32(i32 %sub45.i, i32 %sub45.i, i32 16) #15
  %sub48.i = sub i32 %xor46.i, %or.i143.i
  %xor49.i = xor i32 %sub48.i, %sub42.i
  %or.i144.i = tail call i32 @llvm.fshl.i32(i32 %sub48.i, i32 %sub48.i, i32 4) #15
  %sub51.i = sub i32 %xor49.i, %or.i144.i
  %xor52.i = xor i32 %sub51.i, %sub45.i
  %or.i145.i = tail call i32 @llvm.fshl.i32(i32 %sub51.i, i32 %sub51.i, i32 14) #15
  %sub54.i = sub i32 %xor52.i, %or.i145.i
  %xor55.i = xor i32 %sub54.i, %sub48.i
  %or.i146.i = tail call i32 @llvm.fshl.i32(i32 %sub54.i, i32 %sub54.i, i32 24) #15
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
  %notmask491 = shl nsw i32 -1, %sub21
  %shl22.op = xor i32 %notmask491, -1
  %14 = select i1 %cmp, i32 0, i32 %shl22.op
  %rem = and i32 %and, %14
  %uref = getelementptr inbounds %struct.htable, ptr %5, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %uref, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %uref, i32 1, i32 3, i32 1) #15
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uref, ptr %uref, i32 1, ptr elementtype(i32) %uref) #15, !srcloc !228
  %call.i457 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i457, label %do.end9.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true.i460

do.end9.rcu_read_unlock_bh.exit_crit_edge:        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock_bh.exit

land.lhs.true.i460:                               ; preds = %do.end9
  %call1.i458 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i458)
  %tobool.not.i459 = icmp eq i32 %call1.i458, 0
  br i1 %tobool.not.i459, label %land.lhs.true.i460.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true2.i462

land.lhs.true.i460.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true.i460
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock_bh.exit

land.lhs.true2.i462:                              ; preds = %land.lhs.true.i460
  %.b4.i461 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i461, label %land.lhs.true2.i462.rcu_read_unlock_bh.exit_crit_edge, label %if.then.i463

land.lhs.true2.i462.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i462
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock_bh.exit

if.then.i463:                                     ; preds = %land.lhs.true2.i462
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 761, ptr noundef nonnull @.str.16) #15
  br label %rcu_read_unlock_bh.exit

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i463, %land.lhs.true2.i462.rcu_read_unlock_bh.exit_crit_edge, %land.lhs.true.i460.rcu_read_unlock_bh.exit_crit_edge, %do.end9.rcu_read_unlock_bh.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #15
  tail call fastcc void @local_bh_enable() #15
  %hregion = getelementptr inbounds %struct.htable, ptr %5, i32 0, i32 4
  %16 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hregion, align 4
  %arrayidx = getelementptr %struct.ip_set_region, ptr %17, i32 %rem
  tail call void @_raw_spin_lock_bh(ptr noundef %arrayidx) #15
  %arrayidx27 = getelementptr %struct.htable, ptr %5, i32 0, i32 5, i32 %and
  %18 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %arrayidx27, align 4
  %call29 = tail call i32 @rcu_read_lock_bh_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %land.lhs.true31, label %rcu_read_unlock_bh.exit.do.end39_crit_edge

rcu_read_unlock_bh.exit.do.end39_crit_edge:       ; preds = %rcu_read_unlock_bh.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end39

land.lhs.true31:                                  ; preds = %rcu_read_unlock_bh.exit
  %call32 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %land.lhs.true31.do.end39_crit_edge, label %land.lhs.true34

land.lhs.true31.do.end39_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end39

land.lhs.true34:                                  ; preds = %land.lhs.true31
  %.b441442 = load i1, ptr @hash_netiface4_del.__warned.19, align 1
  br i1 %.b441442, label %land.lhs.true34.do.end39_crit_edge, label %if.then36

land.lhs.true34.do.end39_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end39

if.then36:                                        ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @hash_netiface4_del.__warned.19, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1055, ptr noundef nonnull @.str.9) #15
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %land.lhs.true34.do.end39_crit_edge, %land.lhs.true31.do.end39_crit_edge, %rcu_read_unlock_bh.exit.do.end39_crit_edge
  %tobool41.not = icmp eq ptr %19, null
  br i1 %tobool41.not, label %do.end39.out_crit_edge, label %for.cond.preheader

do.end39.out_crit_edge:                           ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

for.cond.preheader:                               ; preds = %do.end39
  %pos = getelementptr inbounds %struct.hbucket, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %pos, align 1
  %conv44 = zext i8 %21 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp45496.not = icmp eq i8 %21, 0
  br i1 %cmp45496.not, label %for.cond.preheader.out_crit_edge, label %for.body.lr.ph

for.cond.preheader.out_crit_edge:                 ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %used = getelementptr inbounds %struct.hbucket, ptr %19, i32 0, i32 1
  %value51 = getelementptr inbounds %struct.hbucket, ptr %19, i32 0, i32 5
  %cidr4.i = getelementptr inbounds %struct.hash_netiface4_elem, ptr %value, i32 0, i32 2
  %iface26.i = getelementptr inbounds %struct.hash_netiface4_elem, ptr %value, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc296.for.body_crit_edge, %for.body.lr.ph
  %i.0499 = phi i32 [ 0, %for.body.lr.ph ], [ %inc297, %for.inc296.for.body_crit_edge ]
  %k.0498 = phi i32 [ 0, %for.body.lr.ph ], [ %k.5, %for.inc296.for.body_crit_edge ]
  %multi.0497 = phi i32 [ 0, %for.body.lr.ph ], [ %multi.2, %for.inc296.for.body_crit_edge ]
  %div3.i = lshr i32 %i.0499, 5
  %arrayidx.i = getelementptr i32, ptr %used, i32 %div3.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.0499, 31
  %24 = shl nuw i32 1, %and.i
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool48.not = icmp eq i32 %25, 0
  br i1 %tobool48.not, label %if.then49, label %if.end50

if.then49:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %inc = add i32 %k.0498, 1
  br label %for.inc296

if.end50:                                         ; preds = %for.body
  %mul = mul i32 %i.0499, %3
  %add.ptr = getelementptr i8, ptr %value51, i32 %mul
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr, align 4
  %28 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp.i = icmp eq i32 %27, %29
  br i1 %cmp.i, label %land.lhs.true.i464, label %if.end50.for.inc296_crit_edge

if.end50.for.inc296_crit_edge:                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc296

land.lhs.true.i464:                               ; preds = %if.end50
  %cidr.i = getelementptr inbounds %struct.hash_netiface4_elem, ptr %add.ptr, i32 0, i32 2
  %30 = ptrtoint ptr %cidr.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %cidr.i, align 1
  %32 = ptrtoint ptr %cidr4.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %cidr4.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %31, i8 %33)
  %cmp6.i = icmp eq i8 %31, %33
  br i1 %cmp6.i, label %land.lhs.true8.i, label %land.lhs.true.i464.for.inc296_crit_edge

land.lhs.true.i464.for.inc296_crit_edge:          ; preds = %land.lhs.true.i464
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc296

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i464
  %inc.i = add i32 %multi.0497, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i)
  %tobool.not.i465 = icmp eq i32 %inc.i, 0
  br i1 %tobool.not.i465, label %land.lhs.true8.i.for.inc296_crit_edge, label %land.lhs.true9.i

land.lhs.true8.i.for.inc296_crit_edge:            ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc296

land.lhs.true9.i:                                 ; preds = %land.lhs.true8.i
  %physdev.i = getelementptr inbounds %struct.hash_netiface4_elem, ptr %add.ptr, i32 0, i32 1
  %34 = ptrtoint ptr %physdev.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %physdev.i, align 4
  %36 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx32.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %35, i8 %37)
  %cmp13.i = icmp eq i8 %35, %37
  br i1 %cmp13.i, label %land.rhs.i, label %land.lhs.true9.i.for.inc296_crit_edge

land.lhs.true9.i.for.inc296_crit_edge:            ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc296

land.rhs.i:                                       ; preds = %land.lhs.true9.i
  %wildcard.i = getelementptr inbounds %struct.hash_netiface4_elem, ptr %add.ptr, i32 0, i32 5
  %38 = ptrtoint ptr %wildcard.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %wildcard.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool16.not.i = icmp eq i8 %39, 0
  %iface24.i = getelementptr inbounds %struct.hash_netiface4_elem, ptr %add.ptr, i32 0, i32 6
  br i1 %tobool16.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i466 = tail call i32 @strlen(ptr noundef %iface24.i) #20
  %call21.i = tail call i32 @strncmp(ptr noundef %iface24.i, ptr noundef %iface26.i, i32 noundef %call.i466) #15
  br label %hash_netiface4_data_equal.exit

cond.false.i:                                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  %call28.i = tail call i32 @strcmp(ptr noundef %iface24.i, ptr noundef %iface26.i) #20
  br label %hash_netiface4_data_equal.exit

hash_netiface4_data_equal.exit:                   ; preds = %cond.false.i, %cond.true.i
  %cond.in.in.i = phi i32 [ %call21.i, %cond.true.i ], [ %call28.i, %cond.false.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.in.in.i)
  %cond.in.i = icmp eq i32 %cond.in.in.i, 0
  br i1 %cond.in.i, label %if.end55, label %hash_netiface4_data_equal.exit.for.inc296_crit_edge

hash_netiface4_data_equal.exit.for.inc296_crit_edge: ; preds = %hash_netiface4_data_equal.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc296

if.end55:                                         ; preds = %hash_netiface4_data_equal.exit
  %extensions = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 8
  %40 = ptrtoint ptr %extensions to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %extensions, align 2
  %42 = and i8 %41, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool58.not = icmp eq i8 %42, 0
  br i1 %tobool58.not, label %if.end55.if.end65_crit_edge, label %land.lhs.true59

if.end55.if.end65_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end65

ip_set_timeout_expired.exit:                      ; preds = %land.lhs.true59
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %47 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %46, %47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp1.i = icmp slt i32 %sub.i, 0
  br i1 %cmp1.i, label %ip_set_timeout_expired.exit.out_crit_edge, label %ip_set_timeout_expired.exit.if.end65_crit_edge

ip_set_timeout_expired.exit.if.end65_crit_edge:   ; preds = %ip_set_timeout_expired.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end65

ip_set_timeout_expired.exit.out_crit_edge:        ; preds = %ip_set_timeout_expired.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end65:                                         ; preds = %ip_set_timeout_expired.exit.if.end65_crit_edge, %land.lhs.true59.if.end65_crit_edge, %if.end55.if.end65_crit_edge
  tail call void @_clear_bit(i32 noundef %i.0499, ptr noundef %used) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !235
  %add = add nuw nsw i32 %i.0499, 1
  %48 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %pos, align 1
  %conv75 = zext i8 %49 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv75)
  %cmp76 = icmp eq i32 %add, %conv75
  br i1 %cmp76, label %if.then78, label %if.end65.if.end80_crit_edge

if.end65.if.end80_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end80

if.then78:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #17
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
  %55 = ptrtoint ptr %cidr4.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %cidr4.i, align 1
  %add89 = add i8 %56, 1
  %lock.i = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #15
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc57.i.for.body.i_crit_edge, %if.end80
  %indvars.iv.i = phi i32 [ 0, %if.end80 ], [ %indvars.iv.next.i, %for.inc57.i.for.body.i_crit_edge ]
  %arrayidx4.i = getelementptr %struct.hash_netiface4, ptr %1, i32 0, i32 7, i32 %indvars.iv.i, i32 1, i32 0
  %57 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx4.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %58, i8 %add89)
  %cmp7.not.i = icmp eq i8 %58, %add89
  br i1 %cmp7.not.i, label %if.end.i, label %for.inc57.i

if.end.i:                                         ; preds = %for.body.i
  %conv6.i = zext i8 %add89 to i32
  %sub.i468 = add nsw i32 %conv6.i, -1
  %arrayidx11.i = getelementptr %struct.hash_netiface4, ptr %1, i32 0, i32 7, i32 %sub.i468
  %59 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx11.i, align 4
  %dec.i = add i32 %60, -1
  store i32 %dec.i, ptr %arrayidx11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp22.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp22.not.i, label %for.cond26.preheader.i, label %if.end.i.hash_netiface4_del_cidr.exit_crit_edge

if.end.i.hash_netiface4_del_cidr.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %hash_netiface4_del_cidr.exit

for.cond26.preheader.i:                           ; preds = %if.end.i
  %conv2786.i = and i32 %indvars.iv.i, 255
  %61 = and i32 %indvars.iv.i, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp2987.i = icmp eq i32 %61, 0
  br i1 %cmp2987.i, label %for.cond26.preheader.i.land.rhs.i470_crit_edge, label %for.cond26.preheader.i.for.end.i_crit_edge

for.cond26.preheader.i.for.end.i_crit_edge:       ; preds = %for.cond26.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.cond26.preheader.i.land.rhs.i470_crit_edge:   ; preds = %for.cond26.preheader.i
  br label %land.rhs.i470

land.rhs.i470:                                    ; preds = %for.body38.i.land.rhs.i470_crit_edge, %for.cond26.preheader.i.land.rhs.i470_crit_edge
  %indvars.iv92.i = phi i32 [ %add.i, %for.body38.i.land.rhs.i470_crit_edge ], [ %indvars.iv.i, %for.cond26.preheader.i.land.rhs.i470_crit_edge ]
  %arrayidx36.i = getelementptr %struct.hash_netiface4, ptr %1, i32 0, i32 7, i32 %indvars.iv92.i, i32 1, i32 0
  %62 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx36.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not.i469 = icmp eq i8 %63, 0
  br i1 %tobool.not.i469, label %land.rhs.i470.for.end.i_crit_edge, label %for.body38.i

land.rhs.i470.for.end.i_crit_edge:                ; preds = %land.rhs.i470
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.body38.i:                                     ; preds = %land.rhs.i470
  %add.i = add nuw nsw i32 %indvars.iv92.i, 1
  %arrayidx44.i = getelementptr %struct.hash_netiface4, ptr %1, i32 0, i32 7, i32 %add.i, i32 1, i32 0
  %64 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx44.i, align 1
  %66 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %arrayidx36.i, align 1
  %exitcond94.not.i = icmp eq i32 %add.i, 32
  br i1 %exitcond94.not.i, label %for.body38.i.for.end.i_crit_edge, label %for.body38.i.land.rhs.i470_crit_edge

for.body38.i.land.rhs.i470_crit_edge:             ; preds = %for.body38.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs.i470

for.body38.i.for.end.i_crit_edge:                 ; preds = %for.body38.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.end.i:                                        ; preds = %for.body38.i.for.end.i_crit_edge, %land.rhs.i470.for.end.i_crit_edge, %for.cond26.preheader.i.for.end.i_crit_edge
  %conv27.lcssa.i = phi i32 [ %conv2786.i, %for.cond26.preheader.i.for.end.i_crit_edge ], [ %indvars.iv92.i, %land.rhs.i470.for.end.i_crit_edge ], [ 32, %for.body38.i.for.end.i_crit_edge ]
  %arrayidx56.i = getelementptr %struct.hash_netiface4, ptr %1, i32 0, i32 7, i32 %conv27.lcssa.i, i32 1, i32 0
  %67 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %arrayidx56.i, align 1
  br label %hash_netiface4_del_cidr.exit

for.inc57.i:                                      ; preds = %for.body.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 33
  br i1 %exitcond.not.i, label %for.inc57.i.hash_netiface4_del_cidr.exit_crit_edge, label %for.inc57.i.for.body.i_crit_edge

for.inc57.i.for.body.i_crit_edge:                 ; preds = %for.inc57.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc57.i.hash_netiface4_del_cidr.exit_crit_edge: ; preds = %for.inc57.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %hash_netiface4_del_cidr.exit

hash_netiface4_del_cidr.exit:                     ; preds = %for.inc57.i.hash_netiface4_del_cidr.exit_crit_edge, %for.end.i, %if.end.i.hash_netiface4_del_cidr.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #15
  %68 = ptrtoint ptr %extensions to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %extensions, align 2
  %70 = and i8 %69, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool.not.i471 = icmp eq i8 %70, 0
  br i1 %tobool.not.i471, label %hash_netiface4_del_cidr.exit.ip_set_ext_destroy.exit_crit_edge, label %if.then.i473

hash_netiface4_del_cidr.exit.ip_set_ext_destroy.exit_crit_edge: ; preds = %hash_netiface4_del_cidr.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %ip_set_ext_destroy.exit

if.then.i473:                                     ; preds = %hash_netiface4_del_cidr.exit
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx.i472 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 3
  %71 = ptrtoint ptr %arrayidx.i472 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx.i472, align 4
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 %72
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.ip_set_ext_type], ptr @ip_set_extensions, i32 0, i32 3) to i32))
  %73 = load ptr, ptr getelementptr inbounds ([0 x %struct.ip_set_ext_type], ptr @ip_set_extensions, i32 0, i32 3), align 4
  tail call void %73(ptr noundef %set, ptr noundef %add.ptr.i) #15
  br label %ip_set_ext_destroy.exit

ip_set_ext_destroy.exit:                          ; preds = %if.then.i473, %hash_netiface4_del_cidr.exit.ip_set_ext_destroy.exit_crit_edge
  %call.i.i444 = tail call zeroext i1 @__kasan_check_read(ptr noundef %5, i32 noundef 4) #15
  %74 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool94.not = icmp eq i32 %75, 0
  br i1 %tobool94.not, label %ip_set_ext_destroy.exit.if.end105_crit_edge, label %land.lhs.true95

ip_set_ext_destroy.exit.if.end105_crit_edge:      ; preds = %ip_set_ext_destroy.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end105

land.lhs.true95:                                  ; preds = %ip_set_ext_destroy.exit
  %target = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 7
  %76 = ptrtoint ptr %target to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %target, align 2, !range !231
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool96.not = icmp eq i8 %77, 0
  br i1 %tobool96.not, label %land.lhs.true95.if.end105_crit_edge, label %if.then98

land.lhs.true95.if.end105_crit_edge:              ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end105

if.then98:                                        ; preds = %land.lhs.true95
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %78 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %78, i32 noundef 2848, i32 noundef 144) #18
  %tobool100.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool100.not, label %if.then98.if.end105_crit_edge, label %if.then101

if.then98.if.end105_crit_edge:                    ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end105

if.then101:                                       ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #17
  %ad = getelementptr inbounds %struct.hash_netiface4_resize_ad, ptr %call7.i.i, i32 0, i32 1
  %79 = ptrtoint ptr %ad to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 1, ptr %ad, align 8
  %d102 = getelementptr inbounds %struct.hash_netiface4_resize_ad, ptr %call7.i.i, i32 0, i32 2
  %80 = call ptr @memcpy(ptr %d102, ptr %value, i32 28)
  %flags103 = getelementptr inbounds %struct.hash_netiface4_resize_ad, ptr %call7.i.i, i32 0, i32 5
  %81 = ptrtoint ptr %flags103 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %flags, ptr %flags103, align 8
  br label %if.end105

if.end105:                                        ; preds = %if.then101, %if.then98.if.end105_crit_edge, %land.lhs.true95.if.end105_crit_edge, %ip_set_ext_destroy.exit.if.end105_crit_edge
  %x.0 = phi ptr [ %call7.i.i, %if.then101 ], [ null, %if.then98.if.end105_crit_edge ], [ null, %land.lhs.true95.if.end105_crit_edge ], [ null, %ip_set_ext_destroy.exit.if.end105_crit_edge ]
  %82 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %pos, align 1
  %conv108 = zext i8 %83 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0499, i32 %conv108)
  %cmp109501 = icmp ult i32 %i.0499, %conv108
  br i1 %cmp109501, label %if.end105.for.body111_crit_edge, label %if.end105.for.end121_crit_edge

if.end105.for.end121_crit_edge:                   ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end121

if.end105.for.body111_crit_edge:                  ; preds = %if.end105
  br label %for.body111

for.body111:                                      ; preds = %for.body111.for.body111_crit_edge, %if.end105.for.body111_crit_edge
  %i.1503 = phi i32 [ %inc120, %for.body111.for.body111_crit_edge ], [ %i.0499, %if.end105.for.body111_crit_edge ]
  %k.1502 = phi i32 [ %spec.select, %for.body111.for.body111_crit_edge ], [ %k.0498, %if.end105.for.body111_crit_edge ]
  %div3.i445 = lshr i32 %i.1503, 5
  %arrayidx.i446 = getelementptr i32, ptr %used, i32 %div3.i445
  %84 = ptrtoint ptr %arrayidx.i446 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %arrayidx.i446, align 4
  %and.i447 = and i32 %i.1503, 31
  %86 = xor i32 %85, -1
  %87 = lshr i32 %86, %and.i447
  %88 = and i32 %87, 1
  %spec.select = add i32 %88, %k.1502
  %inc120 = add nuw nsw i32 %i.1503, 1
  %exitcond514.not = icmp eq i32 %inc120, %conv108
  br i1 %exitcond514.not, label %for.body111.for.end121_crit_edge, label %for.body111.for.body111_crit_edge

for.body111.for.body111_crit_edge:                ; preds = %for.body111
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body111

for.body111.for.end121_crit_edge:                 ; preds = %for.body111
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end121

for.end121:                                       ; preds = %for.body111.for.end121_crit_edge, %if.end105.for.end121_crit_edge
  %k.1.lcssa = phi i32 [ %k.0498, %if.end105.for.end121_crit_edge ], [ %spec.select, %for.body111.for.end121_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %cmp124 = icmp eq i8 %83, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %k.1.lcssa)
  %cmp127 = icmp eq i32 %k.1.lcssa, 0
  %or.cond = select i1 %cmp124, i1 %cmp127, i1 false
  br i1 %or.cond, label %if.then129, label %if.else186

if.then129:                                       ; preds = %for.end121
  call void @__sanitizer_cov_trace_pc() #17
  %size = getelementptr inbounds %struct.hbucket, ptr %19, i32 0, i32 2
  %89 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %size, align 8
  %conv130 = zext i8 %90 to i32
  %mul131 = mul i32 %3, %conv130
  %91 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %hregion, align 4
  %ext_size = getelementptr %struct.ip_set_region, ptr %92, i32 %rem, i32 1
  %93 = ptrtoint ptr %ext_size to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %ext_size, align 4
  %add132.neg = add i32 %94, -24
  %sub135 = sub i32 %add132.neg, %mul131
  store i32 %sub135, ptr %ext_size, align 4
  br label %out.sink.split

if.else186:                                       ; preds = %for.end121
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %k.1.lcssa)
  %cmp187 = icmp sgt i32 %k.1.lcssa, 1
  br i1 %cmp187, label %if.then189, label %if.else186.out_crit_edge

if.else186.out_crit_edge:                         ; preds = %if.else186
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then189:                                       ; preds = %if.else186
  %size191 = getelementptr inbounds %struct.hbucket, ptr %19, i32 0, i32 2
  %95 = ptrtoint ptr %size191 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %size191, align 8
  %conv192 = zext i8 %96 to i32
  %sub193 = add nsw i32 %conv192, -2
  %mul194 = mul i32 %sub193, %3
  %add195 = add i32 %mul194, 24
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add195, i32 noundef 2848) #19
  %tobool197.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool197.not, label %if.then189.out_crit_edge, label %if.end199

if.then189.out_crit_edge:                         ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end199:                                        ; preds = %if.then189
  %97 = ptrtoint ptr %size191 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %size191, align 8
  %sub202 = add i8 %98, -2
  %size204 = getelementptr inbounds %struct.hbucket, ptr %call9.i.i, i32 0, i32 2
  %99 = ptrtoint ptr %size204 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %sub202, ptr %size204, align 16
  %100 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %pos, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %cmp208506.not = icmp eq i8 %101, 0
  br i1 %cmp208506.not, label %if.end199.for.end230_crit_edge, label %for.body210.lr.ph

if.end199.for.end230_crit_edge:                   ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end230

for.body210.lr.ph:                                ; preds = %if.end199
  %value221 = getelementptr inbounds %struct.hbucket, ptr %call9.i.i, i32 0, i32 5
  %used225 = getelementptr inbounds %struct.hbucket, ptr %call9.i.i, i32 0, i32 1
  br label %for.body210

for.body210:                                      ; preds = %for.inc228.for.body210_crit_edge, %for.body210.lr.ph
  %j.1508 = phi i32 [ 0, %for.body210.lr.ph ], [ %inc229, %for.inc228.for.body210_crit_edge ]
  %k.3507 = phi i32 [ 0, %for.body210.lr.ph ], [ %k.4, %for.inc228.for.body210_crit_edge ]
  %div3.i450 = lshr i32 %j.1508, 5
  %arrayidx.i451 = getelementptr i32, ptr %used, i32 %div3.i450
  %102 = ptrtoint ptr %arrayidx.i451 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load volatile i32, ptr %arrayidx.i451, align 4
  %and.i452 = and i32 %j.1508, 31
  %104 = shl nuw i32 1, %and.i452
  %105 = and i32 %103, %104
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool214.not = icmp eq i32 %105, 0
  br i1 %tobool214.not, label %for.body210.for.inc228_crit_edge, label %if.end216

for.body210.for.inc228_crit_edge:                 ; preds = %for.body210
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc228

if.end216:                                        ; preds = %for.body210
  call void @__sanitizer_cov_trace_pc() #17
  %mul219 = mul i32 %j.1508, %3
  %add.ptr220 = getelementptr i8, ptr %value51, i32 %mul219
  %mul223 = mul i32 %k.3507, %3
  %add.ptr224 = getelementptr i8, ptr %value221, i32 %mul223
  %106 = call ptr @memcpy(ptr %add.ptr224, ptr %add.ptr220, i32 %3)
  tail call void @_set_bit(i32 noundef %k.3507, ptr noundef %used225) #15
  %inc227 = add i32 %k.3507, 1
  br label %for.inc228

for.inc228:                                       ; preds = %if.end216, %for.body210.for.inc228_crit_edge
  %k.4 = phi i32 [ %inc227, %if.end216 ], [ %k.3507, %for.body210.for.inc228_crit_edge ]
  %inc229 = add nuw nsw i32 %j.1508, 1
  %107 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %pos, align 1
  %conv207 = zext i8 %108 to i32
  %cmp208 = icmp ult i32 %inc229, %conv207
  br i1 %cmp208, label %for.inc228.for.body210_crit_edge, label %for.inc228.for.end230_crit_edge

for.inc228.for.end230_crit_edge:                  ; preds = %for.inc228
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end230

for.inc228.for.body210_crit_edge:                 ; preds = %for.inc228
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body210

for.end230:                                       ; preds = %for.inc228.for.end230_crit_edge, %if.end199.for.end230_crit_edge
  %k.3.lcssa = phi i32 [ 0, %if.end199.for.end230_crit_edge ], [ %k.4, %for.inc228.for.end230_crit_edge ]
  %conv231 = trunc i32 %k.3.lcssa to i8
  %pos232 = getelementptr inbounds %struct.hbucket, ptr %call9.i.i, i32 0, i32 3
  %109 = ptrtoint ptr %pos232 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %conv231, ptr %pos232, align 1
  %mul233.neg = mul i32 %3, -2
  %add234.neg = add i32 %mul233.neg, -24
  %110 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %hregion, align 4
  %ext_size237 = getelementptr %struct.ip_set_region, ptr %111, i32 %rem, i32 1
  %112 = ptrtoint ptr %ext_size237 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %ext_size237, align 4
  %sub238 = add i32 %add234.neg, %113
  store i32 %sub238, ptr %ext_size237, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !236
  br label %out.sink.split

for.inc296:                                       ; preds = %hash_netiface4_data_equal.exit.for.inc296_crit_edge, %land.lhs.true9.i.for.inc296_crit_edge, %land.lhs.true8.i.for.inc296_crit_edge, %land.lhs.true.i464.for.inc296_crit_edge, %if.end50.for.inc296_crit_edge, %if.then49
  %multi.2 = phi i32 [ %multi.0497, %if.then49 ], [ %inc.i, %hash_netiface4_data_equal.exit.for.inc296_crit_edge ], [ %multi.0497, %if.end50.for.inc296_crit_edge ], [ %multi.0497, %land.lhs.true.i464.for.inc296_crit_edge ], [ %inc.i, %land.lhs.true9.i.for.inc296_crit_edge ], [ 0, %land.lhs.true8.i.for.inc296_crit_edge ]
  %k.5 = phi i32 [ %inc, %if.then49 ], [ %k.0498, %hash_netiface4_data_equal.exit.for.inc296_crit_edge ], [ %k.0498, %if.end50.for.inc296_crit_edge ], [ %k.0498, %land.lhs.true.i464.for.inc296_crit_edge ], [ %k.0498, %land.lhs.true9.i.for.inc296_crit_edge ], [ %k.0498, %land.lhs.true8.i.for.inc296_crit_edge ]
  %inc297 = add nuw nsw i32 %i.0499, 1
  %exitcond.not = icmp eq i32 %inc297, %conv44
  br i1 %exitcond.not, label %for.inc296.out_crit_edge, label %for.inc296.for.body_crit_edge

for.inc296.for.body_crit_edge:                    ; preds = %for.inc296
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc296.out_crit_edge:                         ; preds = %for.inc296
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

out.sink.split:                                   ; preds = %for.end230, %if.then129
  %retval.1.i.i489.sink = phi ptr [ %call9.i.i, %for.end230 ], [ null, %if.then129 ]
  %114 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %114)
  store volatile ptr %retval.1.i.i489.sink, ptr %arrayidx27, align 4
  tail call void @kvfree_call_rcu(ptr noundef nonnull %19, ptr noundef null) #15
  br label %out

out:                                              ; preds = %out.sink.split, %for.inc296.out_crit_edge, %if.then189.out_crit_edge, %if.else186.out_crit_edge, %ip_set_timeout_expired.exit.out_crit_edge, %for.cond.preheader.out_crit_edge, %do.end39.out_crit_edge
  %ret.0 = phi i32 [ -4103, %ip_set_timeout_expired.exit.out_crit_edge ], [ 0, %if.else186.out_crit_edge ], [ -4103, %do.end39.out_crit_edge ], [ 0, %if.then189.out_crit_edge ], [ -4103, %for.cond.preheader.out_crit_edge ], [ 0, %out.sink.split ], [ -4103, %for.inc296.out_crit_edge ]
  %x.1 = phi ptr [ null, %ip_set_timeout_expired.exit.out_crit_edge ], [ %x.0, %if.else186.out_crit_edge ], [ null, %do.end39.out_crit_edge ], [ %x.0, %if.then189.out_crit_edge ], [ null, %for.cond.preheader.out_crit_edge ], [ %x.0, %out.sink.split ], [ null, %for.inc296.out_crit_edge ]
  %115 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %hregion, align 4
  %arrayidx300 = getelementptr %struct.ip_set_region, ptr %116, i32 %rem
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx300) #15
  %tobool302.not = icmp eq ptr %x.1, null
  br i1 %tobool302.not, label %out.if.end307_crit_edge, label %if.then303

out.if.end307_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end307

if.then303:                                       ; preds = %out
  %lock304 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock304) #15
  %ad305 = getelementptr inbounds %struct.hash_netiface4, ptr %1, i32 0, i32 5
  %117 = ptrtoint ptr %ad305 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %ad305, align 4
  %call.i.i477 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %x.1, ptr noundef %ad305, ptr noundef %118) #15
  br i1 %call.i.i477, label %if.end.i.i478, label %if.then303.list_add.exit_crit_edge

if.then303.list_add.exit_crit_edge:               ; preds = %if.then303
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add.exit

if.end.i.i478:                                    ; preds = %if.then303
  call void @__sanitizer_cov_trace_pc() #17
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %x.1, ptr %prev1.i.i, align 4
  %120 = ptrtoint ptr %x.1 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %118, ptr %x.1, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %x.1, i32 0, i32 1
  %121 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %ad305, ptr %prev3.i.i, align 4
  %122 = ptrtoint ptr %ad305 to i32
  call void @__asan_store4_noabort(i32 %122)
  store volatile ptr %x.1, ptr %ad305, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i478, %if.then303.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock304) #15
  br label %if.end307

if.end307:                                        ; preds = %list_add.exit, %out.if.end307_crit_edge
  %call.i.i455 = tail call zeroext i1 @__kasan_check_write(ptr noundef %uref, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !232
  tail call void @llvm.prefetch.p0(ptr %uref, i32 1, i32 3, i32 1) #15
  %123 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uref, ptr %uref, i32 1, ptr elementtype(i32) %uref) #15, !srcloc !233
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %123, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !234
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true311, label %if.end307.cleanup327_crit_edge

if.end307.cleanup327_crit_edge:                   ; preds = %if.end307
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup327

land.lhs.true311:                                 ; preds = %if.end307
  %call.i.i456 = tail call zeroext i1 @__kasan_check_read(ptr noundef %5, i32 noundef 4) #15
  %124 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load volatile i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool314.not = icmp eq i32 %125, 0
  br i1 %tobool314.not, label %land.lhs.true311.cleanup327_crit_edge, label %do.body316

land.lhs.true311.cleanup327_crit_edge:            ; preds = %land.lhs.true311
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup327

do.body316:                                       ; preds = %land.lhs.true311
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_netiface4_del.__UNIQUE_ID_ddebug671, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_netiface4_del, %if.then322)) #15
          to label %do.end.i [label %if.then322], !srcloc !224

if.then322:                                       ; preds = %do.body316
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_netiface4_del.__UNIQUE_ID_ddebug671, ptr noundef nonnull @.str.21, ptr noundef %5) #15
  br label %do.end.i

do.end.i:                                         ; preds = %for.inc.i.do.end.i_crit_edge, %if.then322, %do.body316
  %i.017.i = phi i32 [ %inc.i483, %for.inc.i.do.end.i_crit_edge ], [ 0, %do.body316 ], [ 0, %if.then322 ]
  %arrayidx.i480 = getelementptr %struct.htable, ptr %5, i32 0, i32 5, i32 %i.017.i
  %126 = ptrtoint ptr %arrayidx.i480 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %arrayidx.i480, align 4
  %tobool.not.i481 = icmp eq ptr %127, null
  br i1 %tobool.not.i481, label %do.end.i.for.inc.i_crit_edge, label %if.end.i482

do.end.i.for.inc.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.end.i482:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %127) #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i482, %do.end.i.for.inc.i_crit_edge
  %inc.i483 = add i32 %i.017.i, 1
  %128 = ptrtoint ptr %htable_bits to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %htable_bits, align 4
  %conv.i = zext i8 %129 to i32
  %i.0.highbits.i = lshr i32 %inc.i483, %conv.i
  %cmp.i484 = icmp eq i32 %i.0.highbits.i, 0
  br i1 %cmp.i484, label %for.inc.i.do.end.i_crit_edge, label %hash_netiface4_ahash_destroy.exit

for.inc.i.do.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

hash_netiface4_ahash_destroy.exit:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  %130 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %hregion, align 4
  tail call void @ip_set_free(ptr noundef %131) #15
  tail call void @ip_set_free(ptr noundef %5) #15
  br label %cleanup327

cleanup327:                                       ; preds = %hash_netiface4_ahash_destroy.exit, %land.lhs.true311.cleanup327_crit_edge, %if.end307.cleanup327_crit_edge
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hash_netiface4_test(ptr noundef %set, ptr nocapture noundef %value, ptr noundef %ext, ptr noundef %mext, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 15
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  tail call fastcc void @local_bh_disable() #15
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %entry.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock_bh.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock_bh.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock_bh.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock_bh.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 750, ptr noundef nonnull @.str.15) #15
  br label %rcu_read_lock_bh.exit

rcu_read_lock_bh.exit:                            ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, %entry.rcu_read_lock_bh.exit_crit_edge
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %1, align 4
  %call = tail call i32 @rcu_read_lock_bh_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock_bh.exit.do.end8_crit_edge

rcu_read_lock_bh.exit.do.end8_crit_edge:          ; preds = %rcu_read_lock_bh.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock_bh.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b91 = load i1, ptr @hash_netiface4_test.__warned, align 1
  br i1 %.b91, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @hash_netiface4_test.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1224, ptr noundef nonnull @.str.9) #15
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock_bh.exit.do.end8_crit_edge
  %cidr = getelementptr inbounds %struct.hash_netiface4_elem, ptr %value, i32 0, i32 2
  %4 = ptrtoint ptr %cidr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cidr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %5)
  %cmp10.not = icmp eq i8 %5, 32
  br i1 %cmp10.not, label %if.then16, label %if.end18

if.then16:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #17
  %call17 = tail call fastcc i32 @hash_netiface4_test_cidrs(ptr noundef %set, ptr noundef %value, ptr noundef %ext, ptr noundef %mext, i32 noundef %flags)
  br label %out

if.end18:                                         ; preds = %do.end8
  %initval = getelementptr inbounds %struct.hash_netiface4, ptr %1, i32 0, i32 3
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
  %or.i140.i = tail call i32 @llvm.fshl.i32(i32 %add33.i, i32 %add33.i, i32 14) #15
  %sub39.i = sub i32 %xor37.i, %or.i140.i
  %xor40.i = xor i32 %sub39.i, %add36.i
  %or.i141.i = tail call i32 @llvm.fshl.i32(i32 %sub39.i, i32 %sub39.i, i32 11) #15
  %sub42.i = sub i32 %xor40.i, %or.i141.i
  %xor43.i = xor i32 %sub42.i, %add33.i
  %or.i142.i = tail call i32 @llvm.fshl.i32(i32 %sub42.i, i32 %sub42.i, i32 25) #15
  %sub45.i = sub i32 %xor43.i, %or.i142.i
  %xor46.i = xor i32 %sub45.i, %sub39.i
  %or.i143.i = tail call i32 @llvm.fshl.i32(i32 %sub45.i, i32 %sub45.i, i32 16) #15
  %sub48.i = sub i32 %xor46.i, %or.i143.i
  %xor49.i = xor i32 %sub48.i, %sub42.i
  %or.i144.i = tail call i32 @llvm.fshl.i32(i32 %sub48.i, i32 %sub48.i, i32 4) #15
  %sub51.i = sub i32 %xor49.i, %or.i144.i
  %xor52.i = xor i32 %sub51.i, %sub45.i
  %or.i145.i = tail call i32 @llvm.fshl.i32(i32 %sub51.i, i32 %sub51.i, i32 14) #15
  %sub54.i = sub i32 %xor52.i, %or.i145.i
  %xor55.i = xor i32 %sub54.i, %sub48.i
  %or.i146.i = tail call i32 @llvm.fshl.i32(i32 %sub54.i, i32 %sub54.i, i32 24) #15
  %sub57.i = sub i32 %xor55.i, %or.i146.i
  %htable_bits = getelementptr inbounds %struct.htable, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %htable_bits to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %htable_bits, align 4
  %conv24 = zext i8 %13 to i32
  %notmask = shl nsw i32 -1, %conv24
  %sub = xor i32 %notmask, -1
  %and = and i32 %sub57.i, %sub
  %arrayidx = getelementptr %struct.htable, ptr %3, i32 0, i32 5, i32 %and
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %arrayidx, align 4
  %call30 = tail call i32 @rcu_read_lock_bh_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %land.lhs.true32, label %if.end18.do.end40_crit_edge

if.end18.do.end40_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end40

land.lhs.true32:                                  ; preds = %if.end18
  %call33 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %land.lhs.true32.do.end40_crit_edge, label %land.lhs.true35

land.lhs.true32.do.end40_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end40

land.lhs.true35:                                  ; preds = %land.lhs.true32
  %.b8990 = load i1, ptr @hash_netiface4_test.__warned.22, align 1
  br i1 %.b8990, label %land.lhs.true35.do.end40_crit_edge, label %if.then37

land.lhs.true35.do.end40_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end40

if.then37:                                        ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @hash_netiface4_test.__warned.22, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1239, ptr noundef nonnull @.str.9) #15
  br label %do.end40

do.end40:                                         ; preds = %if.then37, %land.lhs.true35.do.end40_crit_edge, %land.lhs.true32.do.end40_crit_edge, %if.end18.do.end40_crit_edge
  %tobool42.not = icmp eq ptr %15, null
  br i1 %tobool42.not, label %do.end40.out_crit_edge, label %for.cond45.preheader

do.end40.out_crit_edge:                           ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

for.cond45.preheader:                             ; preds = %do.end40
  %pos = getelementptr inbounds %struct.hbucket, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pos, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp47108.not = icmp eq i8 %17, 0
  br i1 %cmp47108.not, label %for.cond45.preheader.out_crit_edge, label %for.body49.lr.ph

for.cond45.preheader.out_crit_edge:               ; preds = %for.cond45.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

for.body49.lr.ph:                                 ; preds = %for.cond45.preheader
  %used = getelementptr inbounds %struct.hbucket, ptr %15, i32 0, i32 1
  %value54 = getelementptr inbounds %struct.hbucket, ptr %15, i32 0, i32 5
  %dsize = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %iface26.i = getelementptr inbounds %struct.hash_netiface4_elem, ptr %value, i32 0, i32 6
  br label %for.body49

for.body49:                                       ; preds = %for.inc64.for.body49_crit_edge, %for.body49.lr.ph
  %i.1110 = phi i32 [ 0, %for.body49.lr.ph ], [ %inc65, %for.inc64.for.body49_crit_edge ]
  %multi.0109 = phi i32 [ 0, %for.body49.lr.ph ], [ %multi.2, %for.inc64.for.body49_crit_edge ]
  %div3.i = lshr i32 %i.1110, 5
  %arrayidx.i = getelementptr i32, ptr %used, i32 %div3.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.1110, 31
  %20 = shl nuw i32 1, %and.i
  %21 = and i32 %19, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool51.not = icmp eq i32 %21, 0
  br i1 %tobool51.not, label %for.body49.for.inc64_crit_edge, label %if.end53

for.body49.for.inc64_crit_edge:                   ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc64

if.end53:                                         ; preds = %for.body49
  %22 = ptrtoint ptr %dsize to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dsize, align 4
  %mul = mul i32 %23, %i.1110
  %add.ptr = getelementptr i8, ptr %value54, i32 %mul
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr, align 4
  %26 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp.i = icmp eq i32 %25, %27
  br i1 %cmp.i, label %land.lhs.true.i92, label %if.end53.for.inc64_crit_edge

if.end53.for.inc64_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc64

land.lhs.true.i92:                                ; preds = %if.end53
  %cidr.i = getelementptr inbounds %struct.hash_netiface4_elem, ptr %add.ptr, i32 0, i32 2
  %28 = ptrtoint ptr %cidr.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %cidr.i, align 1
  %30 = ptrtoint ptr %cidr to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %cidr, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %29, i8 %31)
  %cmp6.i = icmp eq i8 %29, %31
  br i1 %cmp6.i, label %land.lhs.true8.i, label %land.lhs.true.i92.for.inc64_crit_edge

land.lhs.true.i92.for.inc64_crit_edge:            ; preds = %land.lhs.true.i92
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc64

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i92
  %inc.i = add i32 %multi.0109, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i)
  %tobool.not.i93 = icmp eq i32 %inc.i, 0
  br i1 %tobool.not.i93, label %land.lhs.true8.i.for.inc64_crit_edge, label %land.lhs.true9.i

land.lhs.true8.i.for.inc64_crit_edge:             ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc64

land.lhs.true9.i:                                 ; preds = %land.lhs.true8.i
  %physdev.i = getelementptr inbounds %struct.hash_netiface4_elem, ptr %add.ptr, i32 0, i32 1
  %32 = ptrtoint ptr %physdev.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %physdev.i, align 4
  %34 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx32.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %33, i8 %35)
  %cmp13.i = icmp eq i8 %33, %35
  br i1 %cmp13.i, label %land.rhs.i, label %land.lhs.true9.i.for.inc64_crit_edge

land.lhs.true9.i.for.inc64_crit_edge:             ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc64

land.rhs.i:                                       ; preds = %land.lhs.true9.i
  %wildcard.i = getelementptr inbounds %struct.hash_netiface4_elem, ptr %add.ptr, i32 0, i32 5
  %36 = ptrtoint ptr %wildcard.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %wildcard.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool16.not.i = icmp eq i8 %37, 0
  %iface24.i = getelementptr inbounds %struct.hash_netiface4_elem, ptr %add.ptr, i32 0, i32 6
  br i1 %tobool16.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i94 = tail call i32 @strlen(ptr noundef %iface24.i) #20
  %call21.i = tail call i32 @strncmp(ptr noundef %iface24.i, ptr noundef %iface26.i, i32 noundef %call.i94) #15
  br label %hash_netiface4_data_equal.exit

cond.false.i:                                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  %call28.i = tail call i32 @strcmp(ptr noundef %iface24.i, ptr noundef %iface26.i) #20
  br label %hash_netiface4_data_equal.exit

hash_netiface4_data_equal.exit:                   ; preds = %cond.false.i, %cond.true.i
  %cond.in.in.i = phi i32 [ %call21.i, %cond.true.i ], [ %call28.i, %cond.false.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.in.in.i)
  %cond.in.i = icmp eq i32 %cond.in.in.i, 0
  br i1 %cond.in.i, label %if.end58, label %hash_netiface4_data_equal.exit.for.inc64_crit_edge

hash_netiface4_data_equal.exit.for.inc64_crit_edge: ; preds = %hash_netiface4_data_equal.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc64

if.end58:                                         ; preds = %hash_netiface4_data_equal.exit
  %call.i95 = tail call zeroext i1 @ip_set_match_extensions(ptr noundef %set, ptr noundef %ext, ptr noundef %mext, i32 noundef %flags, ptr noundef %add.ptr) #15
  br i1 %call.i95, label %hash_netiface4_data_match.exit, label %if.end58.for.inc64_crit_edge

if.end58.for.inc64_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc64

hash_netiface4_data_match.exit:                   ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #17
  %nomatch.i.i = getelementptr inbounds %struct.hash_netiface4_elem, ptr %add.ptr, i32 0, i32 3
  %38 = ptrtoint ptr %nomatch.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %nomatch.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i.i = icmp eq i8 %39, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 1, i32 -39
  br label %out

for.inc64:                                        ; preds = %if.end58.for.inc64_crit_edge, %hash_netiface4_data_equal.exit.for.inc64_crit_edge, %land.lhs.true9.i.for.inc64_crit_edge, %land.lhs.true8.i.for.inc64_crit_edge, %land.lhs.true.i92.for.inc64_crit_edge, %if.end53.for.inc64_crit_edge, %for.body49.for.inc64_crit_edge
  %multi.2 = phi i32 [ %multi.0109, %for.body49.for.inc64_crit_edge ], [ %inc.i, %hash_netiface4_data_equal.exit.for.inc64_crit_edge ], [ %multi.0109, %if.end53.for.inc64_crit_edge ], [ %multi.0109, %land.lhs.true.i92.for.inc64_crit_edge ], [ %inc.i, %land.lhs.true9.i.for.inc64_crit_edge ], [ 0, %land.lhs.true8.i.for.inc64_crit_edge ], [ %inc.i, %if.end58.for.inc64_crit_edge ]
  %inc65 = add nuw nsw i32 %i.1110, 1
  %40 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %pos, align 1
  %conv46 = zext i8 %41 to i32
  %cmp47 = icmp ult i32 %inc65, %conv46
  br i1 %cmp47, label %for.inc64.for.body49_crit_edge, label %for.inc64.out_crit_edge

for.inc64.out_crit_edge:                          ; preds = %for.inc64
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

for.inc64.for.body49_crit_edge:                   ; preds = %for.inc64
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body49

out:                                              ; preds = %for.inc64.out_crit_edge, %hash_netiface4_data_match.exit, %for.cond45.preheader.out_crit_edge, %do.end40.out_crit_edge, %if.then16
  %ret.2 = phi i32 [ %call17, %if.then16 ], [ %cond.i.i, %hash_netiface4_data_match.exit ], [ 0, %do.end40.out_crit_edge ], [ 0, %for.cond45.preheader.out_crit_edge ], [ 0, %for.inc64.out_crit_edge ]
  %call.i96 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i96, label %out.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true.i99

out.rcu_read_unlock_bh.exit_crit_edge:            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock_bh.exit

land.lhs.true.i99:                                ; preds = %out
  %call1.i97 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i97)
  %tobool.not.i98 = icmp eq i32 %call1.i97, 0
  br i1 %tobool.not.i98, label %land.lhs.true.i99.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true2.i101

land.lhs.true.i99.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true.i99
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock_bh.exit

land.lhs.true2.i101:                              ; preds = %land.lhs.true.i99
  %.b4.i100 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i100, label %land.lhs.true2.i101.rcu_read_unlock_bh.exit_crit_edge, label %if.then.i102

land.lhs.true2.i101.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i101
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock_bh.exit

if.then.i102:                                     ; preds = %land.lhs.true2.i101
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 761, ptr noundef nonnull @.str.16) #15
  br label %rcu_read_unlock_bh.exit

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i102, %land.lhs.true2.i101.rcu_read_unlock_bh.exit_crit_edge, %land.lhs.true.i99.rcu_read_unlock_bh.exit_crit_edge, %out.rcu_read_unlock_bh.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #15
  tail call fastcc void @local_bh_enable() #15
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hash_netiface4_resize(ptr noundef %set, i1 noundef zeroext %retried) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 15
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %dsize1 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %2 = ptrtoint ptr %dsize1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dsize1, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 3264) #19
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup426_crit_edge, label %if.end

entry.cleanup426_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup426

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %1, align 4
  %call5 = tail call zeroext i1 @lockdep_nfnl_is_held(i8 noundef zeroext 6) #15
  br i1 %call5, label %if.end.do.end15_crit_edge, label %lor.lhs.false

if.end.do.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end15

lor.lhs.false:                                    ; preds = %if.end
  %call6 = tail call i32 @rcu_read_lock_bh_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true, label %lor.lhs.false.do.end15_crit_edge

lor.lhs.false.do.end15_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end15

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call8 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true.do.end15_crit_edge, label %land.lhs.true10

land.lhs.true.do.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end15

land.lhs.true10:                                  ; preds = %land.lhs.true
  %.b581 = load i1, ptr @hash_netiface4_resize.__warned, align 1
  br i1 %.b581, label %land.lhs.true10.do.end15_crit_edge, label %if.then12

land.lhs.true10.do.end15_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end15

if.then12:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @hash_netiface4_resize.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 647, ptr noundef nonnull @.str.9) #15
  br label %do.end15

do.end15:                                         ; preds = %if.then12, %land.lhs.true10.do.end15_crit_edge, %land.lhs.true.do.end15_crit_edge, %lor.lhs.false.do.end15_crit_edge, %if.end.do.end15_crit_edge
  %htable_bits17 = getelementptr inbounds %struct.htable, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %htable_bits17 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %htable_bits17, align 4
  %maxelem = getelementptr inbounds %struct.hash_netiface4, ptr %1, i32 0, i32 2
  %extensions = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 8
  %arrayidx165 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 1
  %nomatch.i = getelementptr inbounds %struct.hash_netiface4_elem, ptr %call9.i, i32 0, i32 3
  %initval = getelementptr inbounds %struct.hash_netiface4, ptr %1, i32 0, i32 3
  %arrayidx32.i = getelementptr i32, ptr %call9.i, i32 1
  %bucketsize = getelementptr inbounds %struct.hash_netiface4, ptr %1, i32 0, i32 4
  %mul260 = shl i32 %3, 1
  %add261 = add i32 %mul260, 24
  br label %retry

retry:                                            ; preds = %hash_netiface4_ahash_destroy.exit673.retry_crit_edge, %do.end15
  %htable_bits.0 = phi i8 [ %7, %do.end15 ], [ %inc, %hash_netiface4_ahash_destroy.exit673.retry_crit_edge ]
  %inc = add i8 %htable_bits.0, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %inc)
  %tobool18.not = icmp eq i8 %inc, 0
  br i1 %tobool18.not, label %retry.do.end421_crit_edge, label %if.end20

retry.do.end421_crit_edge:                        ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end421

if.end20:                                         ; preds = %retry
  call void @__sanitizer_cov_trace_const_cmp1(i8 28, i8 %inc)
  %cmp3.i = icmp ugt i8 %inc, 28
  %conv.i = zext i8 %inc to i32
  %mul.i = shl i32 4, %conv.i
  %add.i = add i32 %mul.i, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %tobool22.not695 = icmp eq i32 %add.i, 0
  %tobool22.not = select i1 %cmp3.i, i1 true, i1 %tobool22.not695
  br i1 %tobool22.not, label %if.end20.do.end421_crit_edge, label %if.end24

if.end20.do.end421_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end421

if.end24:                                         ; preds = %if.end20
  %call25 = tail call ptr @ip_set_alloc(i32 noundef %add.i) #15
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %if.end24.out_crit_edge, label %if.end28

if.end24.out_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end28:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %inc)
  %cmp = icmp ult i8 %inc, 10
  %sub = add nsw i32 %conv.i, -10
  %shl = shl nuw i32 1, %sub
  %cond = select i1 %cmp, i32 1, i32 %shl
  %mul = mul i32 %cond, 52
  %call31 = tail call ptr @ip_set_alloc(i32 noundef %mul) #15
  %hregion = getelementptr inbounds %struct.htable, ptr %call25, i32 0, i32 4
  %8 = ptrtoint ptr %hregion to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call31, ptr %hregion, align 4
  %tobool33.not = icmp eq ptr %call31, null
  br i1 %tobool33.not, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @ip_set_free(ptr noundef nonnull %call25) #15
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
  %div696 = lshr i32 %11, %12
  %maxelem47 = getelementptr inbounds %struct.htable, ptr %call25, i32 0, i32 3
  %13 = ptrtoint ptr %maxelem47 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %div696, ptr %maxelem47, align 4
  br label %do.body60

do.body60:                                        ; preds = %do.body60.do.body60_crit_edge, %if.end35
  %i.0700 = phi i32 [ 0, %if.end35 ], [ %inc65, %do.body60.do.body60_crit_edge ]
  %14 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hregion, align 4
  %arrayidx = getelementptr %struct.ip_set_region, ptr %15, i32 %i.0700
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx, ptr noundef nonnull @.str.6, ptr noundef nonnull @hash_netiface4_resize.__key, i16 noundef signext 3) #15
  %inc65 = add nuw i32 %i.0700, 1
  %exitcond.not = icmp eq i32 %inc65, %cond
  br i1 %exitcond.not, label %for.end, label %do.body60.do.body60_crit_edge

do.body60.do.body60_crit_edge:                    ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body60

for.end:                                          ; preds = %do.body60
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %1, align 4
  %call72 = tail call zeroext i1 @lockdep_nfnl_is_held(i8 noundef zeroext 6) #15
  br i1 %call72, label %for.end.do.end85_crit_edge, label %lor.lhs.false74

for.end.do.end85_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end85

lor.lhs.false74:                                  ; preds = %for.end
  %call75 = tail call i32 @rcu_read_lock_bh_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %land.lhs.true77, label %lor.lhs.false74.do.end85_crit_edge

lor.lhs.false74.do.end85_crit_edge:               ; preds = %lor.lhs.false74
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end85

land.lhs.true77:                                  ; preds = %lor.lhs.false74
  %call78 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %land.lhs.true77.do.end85_crit_edge, label %land.lhs.true80

land.lhs.true77.do.end85_crit_edge:               ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end85

land.lhs.true80:                                  ; preds = %land.lhs.true77
  %.b579580 = load i1, ptr @hash_netiface4_resize.__warned.26, align 1
  br i1 %.b579580, label %land.lhs.true80.do.end85_crit_edge, label %if.then82

land.lhs.true80.do.end85_crit_edge:               ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end85

if.then82:                                        ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @hash_netiface4_resize.__warned.26, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 677, ptr noundef nonnull @.str.9) #15
  br label %do.end85

do.end85:                                         ; preds = %if.then82, %land.lhs.true80.do.end85_crit_edge, %land.lhs.true77.do.end85_crit_edge, %lor.lhs.false74.do.end85_crit_edge, %for.end.do.end85_crit_edge
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %17, i32 noundef 4) #15
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 1, ptr %17, align 4
  %uref = getelementptr inbounds %struct.htable, ptr %17, i32 0, i32 1
  %call.i.i584 = tail call zeroext i1 @__kasan_check_write(ptr noundef %uref, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %uref, i32 1, i32 3, i32 1) #15
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uref, ptr %uref, i32 1, ptr elementtype(i32) %uref) #15, !srcloc !228
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_netiface4_resize.__UNIQUE_ID_ddebug635, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_netiface4_resize, %if.then94)) #15
          to label %do.end100 [label %if.then94], !srcloc !224

if.then94:                                        ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #17
  %htable_bits95 = getelementptr inbounds %struct.htable, ptr %17, i32 0, i32 2
  %20 = ptrtoint ptr %htable_bits95 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %htable_bits95, align 4
  %conv96 = zext i8 %21 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_netiface4_resize.__UNIQUE_ID_ddebug635, ptr noundef nonnull @.str.28, ptr noundef %set, i32 noundef %conv96, i32 noundef %conv.i, ptr noundef %17) #15
  br label %do.end100

do.end100:                                        ; preds = %if.then94, %do.end85
  %htable_bits102 = getelementptr inbounds %struct.htable, ptr %17, i32 0, i32 2
  %notmask = shl nsw i32 -1, %conv.i
  %sub178 = xor i32 %notmask, -1
  %22 = add i32 %cond, -1
  br label %for.body116

for.body116:                                      ; preds = %rcu_read_unlock_bh.exit.for.body116_crit_edge, %do.end100
  %r.0716 = phi i32 [ 0, %do.end100 ], [ %inc303, %rcu_read_unlock_bh.exit.for.body116_crit_edge ]
  tail call fastcc void @local_bh_disable() #15
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %for.body116.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true.i

for.body116.rcu_read_lock_bh.exit_crit_edge:      ; preds = %for.body116
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock_bh.exit

land.lhs.true.i:                                  ; preds = %for.body116
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock_bh.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, label %if.then.i596

land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock_bh.exit

if.then.i596:                                     ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 750, ptr noundef nonnull @.str.15) #15
  br label %rcu_read_lock_bh.exit

rcu_read_lock_bh.exit:                            ; preds = %if.then.i596, %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, %for.body116.rcu_read_lock_bh.exit_crit_edge
  %23 = ptrtoint ptr %htable_bits102 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %htable_bits102, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %24)
  %cmp119 = icmp ult i8 %24, 10
  %mul123 = shl i32 %r.0716, 10
  %spec.select = select i1 %cmp119, i32 0, i32 %mul123
  %mul136 = add i32 %mul123, 1024
  %conv128706 = zext i8 %24 to i32
  %shl134707 = shl nuw i32 1, %conv128706
  %cond138708 = select i1 %cmp119, i32 %shl134707, i32 %mul136
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %cond138708)
  %cmp139709 = icmp ult i32 %spec.select, %cond138708
  br i1 %cmp139709, label %rcu_read_lock_bh.exit.do.end144_crit_edge, label %rcu_read_lock_bh.exit.for.end301_crit_edge

rcu_read_lock_bh.exit.for.end301_crit_edge:       ; preds = %rcu_read_lock_bh.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end301

rcu_read_lock_bh.exit.do.end144_crit_edge:        ; preds = %rcu_read_lock_bh.exit
  br label %do.end144

do.end144:                                        ; preds = %for.inc299.do.end144_crit_edge, %rcu_read_lock_bh.exit.do.end144_crit_edge
  %i.1710 = phi i32 [ %inc300, %for.inc299.do.end144_crit_edge ], [ %spec.select, %rcu_read_lock_bh.exit.do.end144_crit_edge ]
  %arrayidx146 = getelementptr %struct.htable, ptr %17, i32 0, i32 5, i32 %i.1710
  %25 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx146, align 4
  %tobool147.not = icmp eq ptr %26, null
  br i1 %tobool147.not, label %do.end144.for.inc299_crit_edge, label %for.cond150.preheader

do.end144.for.inc299_crit_edge:                   ; preds = %do.end144
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc299

for.cond150.preheader:                            ; preds = %do.end144
  %pos = getelementptr inbounds %struct.hbucket, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %pos, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp152702.not = icmp eq i8 %28, 0
  br i1 %cmp152702.not, label %for.cond150.preheader.for.inc299_crit_edge, label %for.body154.lr.ph

for.cond150.preheader.for.inc299_crit_edge:       ; preds = %for.cond150.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc299

for.body154.lr.ph:                                ; preds = %for.cond150.preheader
  %used = getelementptr inbounds %struct.hbucket, ptr %26, i32 0, i32 1
  %value = getelementptr inbounds %struct.hbucket, ptr %26, i32 0, i32 5
  br label %for.body154

for.body154:                                      ; preds = %for.inc296.for.body154_crit_edge, %for.body154.lr.ph
  %j.0703 = phi i32 [ 0, %for.body154.lr.ph ], [ %inc297, %for.inc296.for.body154_crit_edge ]
  %div3.i = lshr i32 %j.0703, 5
  %arrayidx.i = getelementptr i32, ptr %used, i32 %div3.i
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %j.0703, 31
  %31 = shl nuw i32 1, %and.i
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool157.not = icmp eq i32 %32, 0
  br i1 %tobool157.not, label %for.body154.for.inc296_crit_edge, label %if.end159

for.body154.for.inc296_crit_edge:                 ; preds = %for.body154
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc296

if.end159:                                        ; preds = %for.body154
  %mul161 = mul i32 %j.0703, %3
  %add.ptr = getelementptr i8, ptr %value, i32 %mul161
  %33 = ptrtoint ptr %extensions to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %extensions, align 2
  %35 = and i8 %34, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool163.not = icmp eq i8 %35, 0
  br i1 %tobool163.not, label %if.end159.if.end170_crit_edge, label %land.lhs.true164

if.end159.if.end170_crit_edge:                    ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end170

ip_set_timeout_expired.exit:                      ; preds = %land.lhs.true164
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %40 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %39, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp1.i = icmp slt i32 %sub.i, 0
  br i1 %cmp1.i, label %ip_set_timeout_expired.exit.for.inc296_crit_edge, label %ip_set_timeout_expired.exit.if.end170_crit_edge

ip_set_timeout_expired.exit.if.end170_crit_edge:  ; preds = %ip_set_timeout_expired.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end170

ip_set_timeout_expired.exit.for.inc296_crit_edge: ; preds = %ip_set_timeout_expired.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc296

if.end170:                                        ; preds = %ip_set_timeout_expired.exit.if.end170_crit_edge, %land.lhs.true164.if.end170_crit_edge, %if.end159.if.end170_crit_edge
  %41 = call ptr @memcpy(ptr %call9.i, ptr %add.ptr, i32 %3)
  %42 = ptrtoint ptr %nomatch.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %nomatch.i, align 2
  store i8 0, ptr %nomatch.i, align 2
  %44 = ptrtoint ptr %initval to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %initval, align 4
  %add1.i = add i32 %45, -559038729
  %46 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx32.i, align 4
  %add33.i = add i32 %47, %add1.i
  %48 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %call9.i, align 128
  %add36.i = add i32 %49, %add1.i
  %xor37.i = xor i32 %add33.i, %add1.i
  %or.i140.i = tail call i32 @llvm.fshl.i32(i32 %add33.i, i32 %add33.i, i32 14) #15
  %sub39.i = sub i32 %xor37.i, %or.i140.i
  %xor40.i = xor i32 %sub39.i, %add36.i
  %or.i141.i = tail call i32 @llvm.fshl.i32(i32 %sub39.i, i32 %sub39.i, i32 11) #15
  %sub42.i = sub i32 %xor40.i, %or.i141.i
  %xor43.i = xor i32 %sub42.i, %add33.i
  %or.i142.i = tail call i32 @llvm.fshl.i32(i32 %sub42.i, i32 %sub42.i, i32 25) #15
  %sub45.i = sub i32 %xor43.i, %or.i142.i
  %xor46.i = xor i32 %sub45.i, %sub39.i
  %or.i143.i = tail call i32 @llvm.fshl.i32(i32 %sub45.i, i32 %sub45.i, i32 16) #15
  %sub48.i = sub i32 %xor46.i, %or.i143.i
  %xor49.i = xor i32 %sub48.i, %sub42.i
  %or.i144.i = tail call i32 @llvm.fshl.i32(i32 %sub48.i, i32 %sub48.i, i32 4) #15
  %sub51.i = sub i32 %xor49.i, %or.i144.i
  %xor52.i = xor i32 %sub51.i, %sub45.i
  %or.i145.i = tail call i32 @llvm.fshl.i32(i32 %sub51.i, i32 %sub51.i, i32 14) #15
  %sub54.i = sub i32 %xor52.i, %or.i145.i
  %xor55.i = xor i32 %sub54.i, %sub48.i
  %or.i146.i = tail call i32 @llvm.fshl.i32(i32 %sub54.i, i32 %sub54.i, i32 24) #15
  %sub57.i = sub i32 %xor55.i, %or.i146.i
  %and179 = and i32 %sub57.i, %sub178
  %arrayidx185 = getelementptr %struct.htable, ptr %call25, i32 0, i32 5, i32 %and179
  %50 = ptrtoint ptr %arrayidx185 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx185, align 4
  %rem = and i32 %and179, %22
  %tobool196.not = icmp eq ptr %51, null
  br i1 %tobool196.not, label %if.end8.i.i, label %if.else

if.end8.i.i:                                      ; preds = %if.end170
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add261, i32 noundef 2848) #19
  %tobool201.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool201.not, label %if.end8.i.i.cleanup412_crit_edge, label %if.end203

if.end8.i.i.cleanup412_crit_edge:                 ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup412

if.end203:                                        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %size = getelementptr inbounds %struct.hbucket, ptr %call9.i.i, i32 0, i32 2
  %52 = ptrtoint ptr %size to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 2, ptr %size, align 16
  %53 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hregion, align 4
  %ext_size = getelementptr %struct.ip_set_region, ptr %54, i32 %rem, i32 1
  %55 = ptrtoint ptr %ext_size to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ext_size, align 4
  %add208 = add i32 %56, %add261
  store i32 %add208, ptr %ext_size, align 4
  br label %if.end281.sink.split

if.else:                                          ; preds = %if.end170
  %pos223 = getelementptr inbounds %struct.hbucket, ptr %51, i32 0, i32 3
  %57 = ptrtoint ptr %pos223 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %pos223, align 1
  %size225 = getelementptr inbounds %struct.hbucket, ptr %51, i32 0, i32 2
  %59 = ptrtoint ptr %size225 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %size225, align 8
  %conv226 = zext i8 %60 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %58, i8 %60)
  %cmp227.not = icmp ult i8 %58, %60
  br i1 %cmp227.not, label %if.else.if.end281_crit_edge, label %if.then229

if.else.if.end281_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end281

if.then229:                                       ; preds = %if.else
  %61 = ptrtoint ptr %bucketsize to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %bucketsize, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %60, i8 %62)
  %cmp233.not = icmp ult i8 %60, %62
  br i1 %cmp233.not, label %if.end8.i.i628, label %if.then229.cleanup412_crit_edge

if.then229.cleanup412_crit_edge:                  ; preds = %if.then229
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup412

if.end8.i.i628:                                   ; preds = %if.then229
  %add239 = add nuw nsw i32 %conv226, 2
  %mul240 = mul i32 %add239, %3
  %add241 = add i32 %mul240, 24
  %call9.i.i627 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add241, i32 noundef 2848) #19
  %tobool243.not = icmp eq ptr %call9.i.i627, null
  br i1 %tobool243.not, label %if.end8.i.i628.cleanup412_crit_edge, label %cleanup

if.end8.i.i628.cleanup412_crit_edge:              ; preds = %if.end8.i.i628
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup412

cleanup:                                          ; preds = %if.end8.i.i628
  call void @__sanitizer_cov_trace_pc() #17
  %63 = ptrtoint ptr %size225 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %size225, align 8
  %conv252 = zext i8 %64 to i32
  %mul253 = mul i32 %3, %conv252
  %add254 = add i32 %mul253, 24
  %65 = call ptr @memcpy(ptr %call9.i.i627, ptr %51, i32 %add254)
  %66 = load i8, ptr %size225, align 8
  %add257 = add i8 %66, 2
  %size259 = getelementptr inbounds %struct.hbucket, ptr %call9.i.i627, i32 0, i32 2
  %67 = ptrtoint ptr %size259 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %add257, ptr %size259, align 16
  %68 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %hregion, align 4
  %ext_size264 = getelementptr %struct.ip_set_region, ptr %69, i32 %rem, i32 1
  %70 = ptrtoint ptr %ext_size264 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %ext_size264, align 4
  %add265 = add i32 %add261, %71
  store i32 %add265, ptr %ext_size264, align 4
  tail call void @kfree(ptr noundef nonnull %51) #15
  br label %if.end281.sink.split

if.end281.sink.split:                             ; preds = %cleanup, %if.end203
  %ht.0.sink = phi ptr [ %call9.i.i627, %cleanup ], [ %call9.i.i, %if.end203 ]
  %72 = ptrtoint ptr %arrayidx185 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %ht.0.sink, ptr %arrayidx185, align 4
  br label %if.end281

if.end281:                                        ; preds = %if.end281.sink.split, %if.else.if.end281_crit_edge
  %m.1 = phi ptr [ %51, %if.else.if.end281_crit_edge ], [ %ht.0.sink, %if.end281.sink.split ]
  %value282 = getelementptr inbounds %struct.hbucket, ptr %m.1, i32 0, i32 5
  %pos284 = getelementptr inbounds %struct.hbucket, ptr %m.1, i32 0, i32 3
  %73 = ptrtoint ptr %pos284 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %pos284, align 1
  %conv285 = zext i8 %74 to i32
  %mul286 = mul i32 %3, %conv285
  %add.ptr287 = getelementptr i8, ptr %value282, i32 %mul286
  %75 = call ptr @memcpy(ptr %add.ptr287, ptr %call9.i, i32 %3)
  %76 = load i8, ptr %pos284, align 1
  %inc289 = add i8 %76, 1
  store i8 %inc289, ptr %pos284, align 1
  %conv290 = zext i8 %76 to i32
  %used291 = getelementptr inbounds %struct.hbucket, ptr %m.1, i32 0, i32 1
  tail call void @_set_bit(i32 noundef %conv290, ptr noundef %used291) #15
  %77 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %hregion, align 4
  %elements = getelementptr %struct.ip_set_region, ptr %78, i32 %rem, i32 2
  %79 = ptrtoint ptr %elements to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %elements, align 4
  %inc295 = add i32 %80, 1
  store i32 %inc295, ptr %elements, align 4
  %nomatch.i631 = getelementptr inbounds %struct.hash_netiface4_elem, ptr %add.ptr287, i32 0, i32 3
  %81 = ptrtoint ptr %nomatch.i631 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %43, ptr %nomatch.i631, align 2
  br label %for.inc296

for.inc296:                                       ; preds = %if.end281, %ip_set_timeout_expired.exit.for.inc296_crit_edge, %for.body154.for.inc296_crit_edge
  %inc297 = add nuw nsw i32 %j.0703, 1
  %82 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %pos, align 1
  %conv151 = zext i8 %83 to i32
  %cmp152 = icmp ult i32 %inc297, %conv151
  br i1 %cmp152, label %for.inc296.for.body154_crit_edge, label %for.inc296.for.inc299_crit_edge

for.inc296.for.inc299_crit_edge:                  ; preds = %for.inc296
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc299

for.inc296.for.body154_crit_edge:                 ; preds = %for.inc296
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body154

for.inc299:                                       ; preds = %for.inc296.for.inc299_crit_edge, %for.cond150.preheader.for.inc299_crit_edge, %do.end144.for.inc299_crit_edge
  %inc300 = add nuw i32 %i.1710, 1
  %84 = ptrtoint ptr %htable_bits102 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %htable_bits102, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %85)
  %cmp129 = icmp ult i8 %85, 10
  %conv128 = zext i8 %85 to i32
  %shl134 = shl nuw i32 1, %conv128
  %cond138 = select i1 %cmp129, i32 %shl134, i32 %mul136
  %cmp139 = icmp ult i32 %inc300, %cond138
  br i1 %cmp139, label %for.inc299.do.end144_crit_edge, label %for.inc299.for.end301_crit_edge

for.inc299.for.end301_crit_edge:                  ; preds = %for.inc299
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end301

for.inc299.do.end144_crit_edge:                   ; preds = %for.inc299
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end144

for.end301:                                       ; preds = %for.inc299.for.end301_crit_edge, %rcu_read_lock_bh.exit.for.end301_crit_edge
  %call.i632 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i632, label %for.end301.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true.i635

for.end301.rcu_read_unlock_bh.exit_crit_edge:     ; preds = %for.end301
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock_bh.exit

land.lhs.true.i635:                               ; preds = %for.end301
  %call1.i633 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i633)
  %tobool.not.i634 = icmp eq i32 %call1.i633, 0
  br i1 %tobool.not.i634, label %land.lhs.true.i635.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true2.i637

land.lhs.true.i635.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true.i635
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock_bh.exit

land.lhs.true2.i637:                              ; preds = %land.lhs.true.i635
  %.b4.i636 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i636, label %land.lhs.true2.i637.rcu_read_unlock_bh.exit_crit_edge, label %if.then.i638

land.lhs.true2.i637.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i637
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock_bh.exit

if.then.i638:                                     ; preds = %land.lhs.true2.i637
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 761, ptr noundef nonnull @.str.16) #15
  br label %rcu_read_unlock_bh.exit

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i638, %land.lhs.true2.i637.rcu_read_unlock_bh.exit_crit_edge, %land.lhs.true.i635.rcu_read_unlock_bh.exit_crit_edge, %for.end301.rcu_read_unlock_bh.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #15
  tail call fastcc void @local_bh_enable() #15
  %inc303 = add nuw i32 %r.0716, 1
  %86 = ptrtoint ptr %htable_bits102 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %htable_bits102, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %87)
  %cmp104 = icmp ult i8 %87, 10
  %conv103 = zext i8 %87 to i32
  %sub110 = add nsw i32 %conv103, -10
  %shl111 = shl nuw i32 1, %sub110
  %cond113 = select i1 %cmp104, i32 1, i32 %shl111
  %cmp114 = icmp ult i32 %inc303, %cond113
  br i1 %cmp114, label %rcu_read_unlock_bh.exit.for.body116_crit_edge, label %do.body305

rcu_read_unlock_bh.exit.for.body116_crit_edge:    ; preds = %rcu_read_unlock_bh.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body116

do.body305:                                       ; preds = %rcu_read_unlock_bh.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !237
  %88 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %call25, ptr %1, align 4
  tail call void @synchronize_rcu() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_netiface4_resize.__UNIQUE_ID_ddebug642, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_netiface4_resize, %if.then358)) #15
          to label %do.end367 [label %if.then358], !srcloc !224

if.then358:                                       ; preds = %do.body305
  call void @__sanitizer_cov_trace_pc() #17
  %89 = ptrtoint ptr %htable_bits102 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %htable_bits102, align 4
  %conv362 = zext i8 %90 to i32
  %91 = ptrtoint ptr %htable_bits36 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %htable_bits36, align 4
  %conv364 = zext i8 %92 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_netiface4_resize.__UNIQUE_ID_ddebug642, ptr noundef nonnull @.str.31, ptr noundef %set, i32 noundef %conv362, ptr noundef %17, i32 noundef %conv364, ptr noundef nonnull %call25) #15
  br label %do.end367

do.end367:                                        ; preds = %if.then358, %do.body305
  %ad = getelementptr inbounds %struct.hash_netiface4, ptr %1, i32 0, i32 5
  %93 = ptrtoint ptr %ad to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ad, align 4
  %cmp.i639.not718 = icmp eq ptr %94, %ad
  br i1 %cmp.i639.not718, label %do.end367.for.end391_crit_edge, label %do.end367.for.body375_crit_edge

do.end367.for.body375_crit_edge:                  ; preds = %do.end367
  br label %for.body375

do.end367.for.end391_crit_edge:                   ; preds = %do.end367
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end391

for.body375:                                      ; preds = %list_del.exit.for.body375_crit_edge, %do.end367.for.body375_crit_edge
  %l.0719 = phi ptr [ %lt.0721, %list_del.exit.for.body375_crit_edge ], [ %94, %do.end367.for.body375_crit_edge ]
  %95 = ptrtoint ptr %l.0719 to i32
  call void @__asan_load4_noabort(i32 %95)
  %lt.0721 = load ptr, ptr %l.0719, align 4
  %ad378 = getelementptr inbounds %struct.hash_netiface4_resize_ad, ptr %l.0719, i32 0, i32 1
  %96 = ptrtoint ptr %ad378 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %ad378, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %cmp379 = icmp eq i32 %97, 0
  %d382 = getelementptr inbounds %struct.hash_netiface4_resize_ad, ptr %l.0719, i32 0, i32 2
  br i1 %cmp379, label %if.then381, label %if.else385

if.then381:                                       ; preds = %for.body375
  call void @__sanitizer_cov_trace_pc() #17
  %ext = getelementptr inbounds %struct.hash_netiface4_resize_ad, ptr %l.0719, i32 0, i32 3
  %mext = getelementptr inbounds %struct.hash_netiface4_resize_ad, ptr %l.0719, i32 0, i32 4
  %flags383 = getelementptr inbounds %struct.hash_netiface4_resize_ad, ptr %l.0719, i32 0, i32 5
  %98 = ptrtoint ptr %flags383 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %flags383, align 8
  %call384 = tail call i32 @hash_netiface4_add(ptr noundef %set, ptr noundef %d382, ptr noundef %ext, ptr noundef %mext, i32 noundef %99)
  br label %if.end388

if.else385:                                       ; preds = %for.body375
  call void @__sanitizer_cov_trace_pc() #17
  %call387 = tail call i32 @hash_netiface4_del(ptr noundef %set, ptr noundef %d382, ptr noundef null, ptr noundef null, i32 noundef 0)
  br label %if.end388

if.end388:                                        ; preds = %if.else385, %if.then381
  %call.i.i641 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %l.0719) #15
  br i1 %call.i.i641, label %if.end.i.i642, label %if.end388.list_del.exit_crit_edge

if.end388.list_del.exit_crit_edge:                ; preds = %if.end388
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit

if.end.i.i642:                                    ; preds = %if.end388
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %l.0719, i32 0, i32 1
  %100 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %prev.i.i, align 4
  %102 = ptrtoint ptr %l.0719 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %l.0719, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %101, ptr %prev1.i.i.i, align 4
  %105 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %105)
  store volatile ptr %103, ptr %101, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i642, %if.end388.list_del.exit_crit_edge
  %106 = ptrtoint ptr %l.0719 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr inttoptr (i32 256 to ptr), ptr %l.0719, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %l.0719, i32 0, i32 1
  %107 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %l.0719) #15
  %cmp.i639.not = icmp eq ptr %lt.0721, %ad
  br i1 %cmp.i639.not, label %list_del.exit.for.end391_crit_edge, label %list_del.exit.for.body375_crit_edge

list_del.exit.for.body375_crit_edge:              ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body375

list_del.exit.for.end391_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end391

for.end391:                                       ; preds = %list_del.exit.for.end391_crit_edge, %do.end367.for.end391_crit_edge
  %call.i.i588 = tail call zeroext i1 @__kasan_check_write(ptr noundef %uref, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !232
  tail call void @llvm.prefetch.p0(ptr %uref, i32 1, i32 3, i32 1) #15
  %108 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uref, ptr %uref, i32 1, ptr elementtype(i32) %uref) #15, !srcloc !233
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %108, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !234
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i589 = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i589, label %do.body395, label %for.end391.out_crit_edge

for.end391.out_crit_edge:                         ; preds = %for.end391
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

do.body395:                                       ; preds = %for.end391
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_netiface4_resize.__UNIQUE_ID_ddebug643, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_netiface4_resize, %if.then407)) #15
          to label %do.end.i [label %if.then407], !srcloc !224

if.then407:                                       ; preds = %do.body395
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_netiface4_resize.__UNIQUE_ID_ddebug643, ptr noundef nonnull @.str.32, ptr noundef %17) #15
  br label %do.end.i

do.end.i:                                         ; preds = %for.inc.i.do.end.i_crit_edge, %if.then407, %do.body395
  %i.017.i = phi i32 [ %inc.i, %for.inc.i.do.end.i_crit_edge ], [ 0, %do.body395 ], [ 0, %if.then407 ]
  %arrayidx.i643 = getelementptr %struct.htable, ptr %17, i32 0, i32 5, i32 %i.017.i
  %109 = ptrtoint ptr %arrayidx.i643 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %arrayidx.i643, align 4
  %tobool.not.i644 = icmp eq ptr %110, null
  br i1 %tobool.not.i644, label %do.end.i.for.inc.i_crit_edge, label %if.end.i645

do.end.i.for.inc.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.end.i645:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %110) #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i645, %do.end.i.for.inc.i_crit_edge
  %inc.i = add i32 %i.017.i, 1
  %111 = ptrtoint ptr %htable_bits102 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %htable_bits102, align 4
  %conv.i646 = zext i8 %112 to i32
  %i.0.highbits.i = lshr i32 %inc.i, %conv.i646
  %cmp.i647 = icmp eq i32 %i.0.highbits.i, 0
  br i1 %cmp.i647, label %for.inc.i.do.end.i_crit_edge, label %hash_netiface4_ahash_destroy.exit

for.inc.i.do.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

hash_netiface4_ahash_destroy.exit:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  %hregion.i = getelementptr inbounds %struct.htable, ptr %17, i32 0, i32 4
  %113 = ptrtoint ptr %hregion.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %hregion.i, align 4
  tail call void @ip_set_free(ptr noundef %114) #15
  tail call void @ip_set_free(ptr noundef %17) #15
  br label %out

out:                                              ; preds = %do.end421, %hash_netiface4_ahash_destroy.exit673.out_crit_edge, %hash_netiface4_ahash_destroy.exit, %for.end391.out_crit_edge, %if.then34, %if.end24.out_crit_edge
  %ret.7 = phi i32 [ 0, %hash_netiface4_ahash_destroy.exit ], [ 0, %for.end391.out_crit_edge ], [ -12, %if.then34 ], [ -4352, %do.end421 ], [ -12, %if.end24.out_crit_edge ], [ %ret.8, %hash_netiface4_ahash_destroy.exit673.out_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #15
  br label %cleanup426

cleanup412:                                       ; preds = %if.end8.i.i628.cleanup412_crit_edge, %if.then229.cleanup412_crit_edge, %if.end8.i.i.cleanup412_crit_edge
  %cmp415 = phi i1 [ false, %if.end8.i.i628.cleanup412_crit_edge ], [ true, %if.then229.cleanup412_crit_edge ], [ false, %if.end8.i.i.cleanup412_crit_edge ]
  %ret.8 = phi i32 [ -12, %if.end8.i.i628.cleanup412_crit_edge ], [ -11, %if.then229.cleanup412_crit_edge ], [ -12, %if.end8.i.i.cleanup412_crit_edge ]
  %call.i648 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i648, label %cleanup412.rcu_read_unlock_bh.exit656_crit_edge, label %land.lhs.true.i651

cleanup412.rcu_read_unlock_bh.exit656_crit_edge:  ; preds = %cleanup412
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock_bh.exit656

land.lhs.true.i651:                               ; preds = %cleanup412
  %call1.i649 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i649)
  %tobool.not.i650 = icmp eq i32 %call1.i649, 0
  br i1 %tobool.not.i650, label %land.lhs.true.i651.rcu_read_unlock_bh.exit656_crit_edge, label %land.lhs.true2.i653

land.lhs.true.i651.rcu_read_unlock_bh.exit656_crit_edge: ; preds = %land.lhs.true.i651
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock_bh.exit656

land.lhs.true2.i653:                              ; preds = %land.lhs.true.i651
  %.b4.i652 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i652, label %land.lhs.true2.i653.rcu_read_unlock_bh.exit656_crit_edge, label %if.then.i654

land.lhs.true2.i653.rcu_read_unlock_bh.exit656_crit_edge: ; preds = %land.lhs.true2.i653
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock_bh.exit656

if.then.i654:                                     ; preds = %land.lhs.true2.i653
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 761, ptr noundef nonnull @.str.16) #15
  br label %rcu_read_unlock_bh.exit656

rcu_read_unlock_bh.exit656:                       ; preds = %if.then.i654, %land.lhs.true2.i653.rcu_read_unlock_bh.exit656_crit_edge, %land.lhs.true.i651.rcu_read_unlock_bh.exit656_crit_edge, %cleanup412.rcu_read_unlock_bh.exit656_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #15
  tail call fastcc void @local_bh_enable() #15
  %call.i.i593 = tail call zeroext i1 @__kasan_check_write(ptr noundef %17, i32 noundef 4) #15
  %115 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %115)
  store volatile i32 0, ptr %17, align 4
  %call.i.i594 = tail call zeroext i1 @__kasan_check_write(ptr noundef %uref, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %uref, i32 1, i32 3, i32 1) #15
  %116 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uref, ptr %uref, i32 1, ptr elementtype(i32) %uref) #15, !srcloc !238
  br label %do.end.i664

do.end.i664:                                      ; preds = %for.inc.i671.do.end.i664_crit_edge, %rcu_read_unlock_bh.exit656
  %i.017.i661 = phi i32 [ 0, %rcu_read_unlock_bh.exit656 ], [ %inc.i667, %for.inc.i671.do.end.i664_crit_edge ]
  %arrayidx.i662 = getelementptr %struct.htable, ptr %call25, i32 0, i32 5, i32 %i.017.i661
  %117 = ptrtoint ptr %arrayidx.i662 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %arrayidx.i662, align 4
  %tobool.not.i663 = icmp eq ptr %118, null
  br i1 %tobool.not.i663, label %do.end.i664.for.inc.i671_crit_edge, label %if.end.i666

do.end.i664.for.inc.i671_crit_edge:               ; preds = %do.end.i664
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i671

if.end.i666:                                      ; preds = %do.end.i664
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %118) #15
  br label %for.inc.i671

for.inc.i671:                                     ; preds = %if.end.i666, %do.end.i664.for.inc.i671_crit_edge
  %inc.i667 = add i32 %i.017.i661, 1
  %119 = ptrtoint ptr %htable_bits36 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %htable_bits36, align 4
  %conv.i668 = zext i8 %120 to i32
  %i.0.highbits.i669 = lshr i32 %inc.i667, %conv.i668
  %cmp.i670 = icmp eq i32 %i.0.highbits.i669, 0
  br i1 %cmp.i670, label %for.inc.i671.do.end.i664_crit_edge, label %hash_netiface4_ahash_destroy.exit673

for.inc.i671.do.end.i664_crit_edge:               ; preds = %for.inc.i671
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i664

hash_netiface4_ahash_destroy.exit673:             ; preds = %for.inc.i671
  %121 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %hregion, align 4
  tail call void @ip_set_free(ptr noundef %122) #15
  tail call void @ip_set_free(ptr noundef nonnull %call25) #15
  br i1 %cmp415, label %hash_netiface4_ahash_destroy.exit673.retry_crit_edge, label %hash_netiface4_ahash_destroy.exit673.out_crit_edge

hash_netiface4_ahash_destroy.exit673.out_crit_edge: ; preds = %hash_netiface4_ahash_destroy.exit673
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

hash_netiface4_ahash_destroy.exit673.retry_crit_edge: ; preds = %hash_netiface4_ahash_destroy.exit673
  call void @__sanitizer_cov_trace_pc() #17
  br label %retry

do.end421:                                        ; preds = %if.end20.do.end421_crit_edge, %retry.do.end421_crit_edge
  %call425 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %set) #21
  br label %out

cleanup426:                                       ; preds = %out, %entry.cleanup426_crit_edge
  %retval.0 = phi i32 [ %ret.7, %out ], [ -12, %entry.cleanup426_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hash_netiface4_destroy(ptr noundef %set) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %gc = getelementptr inbounds %struct.hash_netiface4, ptr %1, i32 0, i32 1
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %gc) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call1 = tail call zeroext i1 @lockdep_nfnl_is_held(i8 noundef zeroext 6) #15
  br i1 %call1, label %if.end.do.end_crit_edge, label %land.lhs.true

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true:                                    ; preds = %if.end
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b25 = load i1, ptr @hash_netiface4_destroy.__warned, align 1
  br i1 %.b25, label %land.lhs.true4.do.end_crit_edge, label %if.then6

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.then6:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @hash_netiface4_destroy.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 466, ptr noundef nonnull @.str.34) #15
  br label %do.end

do.end:                                           ; preds = %if.then6, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %if.end.do.end_crit_edge
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  tail call fastcc void @hash_netiface4_ahash_destroy(ptr noundef %set, ptr noundef %6, i1 noundef zeroext true)
  %ad = getelementptr inbounds %struct.hash_netiface4, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %ad to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ad, align 4
  %cmp.i.not27 = icmp eq ptr %8, %ad
  br i1 %cmp.i.not27, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %do.end.for.body_crit_edge
  %l.028 = phi ptr [ %lt.030, %list_del.exit.for.body_crit_edge ], [ %8, %do.end.for.body_crit_edge ]
  %9 = ptrtoint ptr %l.028 to i32
  call void @__asan_load4_noabort(i32 %9)
  %lt.030 = load ptr, ptr %l.028, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %l.028) #15
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
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
  tail call void @kfree(ptr noundef %l.028) #15
  %cmp.i.not = icmp eq ptr %lt.030, %ad
  br i1 %cmp.i.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %do.end.for.end_crit_edge
  tail call void @kfree(ptr noundef %1) #15
  %18 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %data, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hash_netiface4_flush(ptr noundef %set) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 15
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %call = tail call zeroext i1 @lockdep_nfnl_is_held(i8 noundef zeroext 6) #15
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b135 = load i1, ptr @hash_netiface4_flush.__warned, align 1
  br i1 %.b135, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @hash_netiface4_flush.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 412, ptr noundef nonnull @.str.34) #15
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
  tail call void @_raw_spin_lock_bh(ptr noundef %arrayidx) #15
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
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end40:                                         ; preds = %do.end35
  %10 = ptrtoint ptr %extensions to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %extensions, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %11)
  %tobool42.not = icmp sgt i8 %11, -1
  br i1 %tobool42.not, label %if.end40.do.body53_crit_edge, label %if.then43

if.end40.do.body53_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
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
  tail call void %25(ptr noundef %set, ptr noundef %add.ptr.i.i) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body53

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

do.body53:                                        ; preds = %for.inc.i.do.body53_crit_edge, %if.then43.do.body53_crit_edge, %if.end40.do.body53_crit_edge
  %28 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr null, ptr %arrayidx37, align 4
  tail call void @kvfree_call_rcu(ptr noundef nonnull %9, ptr noundef null) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc.do.end35_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
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
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx100) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end104:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  %nets = getelementptr inbounds %struct.hash_netiface4, ptr %1, i32 0, i32 7
  %39 = call ptr @memset(ptr %nets, i32 0, i32 264)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hash_netiface4_head(ptr noundef %set, ptr noundef %skb) #2 align 64 {
entry:
  %tmp.i.i103 = alloca i32, align 4
  %tmp.i.i101 = alloca i32, align 4
  %tmp.i.i99 = alloca i32, align 4
  %tmp.i.i97 = alloca i32, align 4
  %tmp.i = alloca i8, align 1
  %tmp.i.i94 = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 15
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  tail call fastcc void @local_bh_disable() #15
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %entry.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock_bh.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock_bh.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock_bh.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock_bh.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 750, ptr noundef nonnull @.str.15) #15
  br label %rcu_read_lock_bh.exit

rcu_read_lock_bh.exit:                            ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, %entry.rcu_read_lock_bh.exit_crit_edge
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %1, align 4
  %call = tail call i32 @rcu_read_lock_bh_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock_bh.exit.do.end7_crit_edge

rcu_read_lock_bh.exit.do.end7_crit_edge:          ; preds = %rcu_read_lock_bh.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock_bh.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b77 = load i1, ptr @hash_netiface4_head.__warned, align 1
  br i1 %.b77, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @hash_netiface4_head.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1272, ptr noundef nonnull @.str.9) #15
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock_bh.exit.do.end7_crit_edge
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %5, align 4
  %call.i78 = tail call i32 @rcu_read_lock_bh_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78)
  %tobool.not.i79 = icmp eq i32 %call.i78, 0
  br i1 %tobool.not.i79, label %land.lhs.true.i80, label %do.end7.do.end8.i_crit_edge

do.end7.do.end8.i_crit_edge:                      ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end8.i

land.lhs.true.i80:                                ; preds = %do.end7
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i80.do.end8.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i80.do.end8.i_crit_edge:            ; preds = %land.lhs.true.i80
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end8.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i80
  %.b112.i = load i1, ptr @hash_netiface4_ext_size.__warned, align 1
  br i1 %.b112.i, label %land.lhs.true5.i.do.end8.i_crit_edge, label %if.then.i81

land.lhs.true5.i.do.end8.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end8.i

if.then.i81:                                      ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @hash_netiface4_ext_size.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 818, ptr noundef nonnull @.str.9) #15
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
  call void @__sanitizer_cov_trace_pc() #17
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
  %call44.i = tail call i32 @rcu_read_lock_bh_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %tobool45.not.i = icmp eq i32 %call44.i, 0
  br i1 %tobool45.not.i, label %land.lhs.true46.i, label %for.body38.i.do.end54.i_crit_edge

for.body38.i.do.end54.i_crit_edge:                ; preds = %for.body38.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end54.i

land.lhs.true46.i:                                ; preds = %for.body38.i
  %call47.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.not.i = icmp eq i32 %call47.i, 0
  br i1 %tobool48.not.i, label %land.lhs.true46.i.do.end54.i_crit_edge, label %land.lhs.true49.i

land.lhs.true46.i.do.end54.i_crit_edge:           ; preds = %land.lhs.true46.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end54.i

land.lhs.true49.i:                                ; preds = %land.lhs.true46.i
  %.b110111.i = load i1, ptr @hash_netiface4_ext_size.__warned.36, align 1
  br i1 %.b110111.i, label %land.lhs.true49.i.do.end54.i_crit_edge, label %if.then51.i

land.lhs.true49.i.do.end54.i_crit_edge:           ; preds = %land.lhs.true49.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end54.i

if.then51.i:                                      ; preds = %land.lhs.true49.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @hash_netiface4_ext_size.__warned.36, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 822, ptr noundef nonnull @.str.9) #15
  br label %do.end54.i

do.end54.i:                                       ; preds = %if.then51.i, %land.lhs.true49.i.do.end54.i_crit_edge, %land.lhs.true46.i.do.end54.i_crit_edge, %for.body38.i.do.end54.i_crit_edge
  %tobool56.not.i = icmp eq ptr %13, null
  br i1 %tobool56.not.i, label %do.end54.i.for.inc80.i_crit_edge, label %for.cond59.preheader.i

do.end54.i.for.inc80.i_crit_edge:                 ; preds = %do.end54.i
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then77.i

ip_set_timeout_expired.exit.i:                    ; preds = %land.lhs.true72.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %29 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %28, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp1.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp1.i.i, label %ip_set_timeout_expired.exit.i.for.inc.i_crit_edge, label %ip_set_timeout_expired.exit.i.if.then77.i_crit_edge

ip_set_timeout_expired.exit.i.if.then77.i_crit_edge: ; preds = %ip_set_timeout_expired.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then77.i

ip_set_timeout_expired.exit.i.for.inc.i_crit_edge: ; preds = %ip_set_timeout_expired.exit.i
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body63.i

for.inc.i.for.inc80.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end82.i

for.inc80.i.for.body38.i_crit_edge:               ; preds = %for.inc80.i
  call void @__sanitizer_cov_trace_pc() #17
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
  br i1 %cmp13.i, label %for.end82.i.for.body.i_crit_edge, label %hash_netiface4_ext_size.exit

for.end82.i.for.body.i_crit_edge:                 ; preds = %for.end82.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

hash_netiface4_ext_size.exit:                     ; preds = %for.end82.i
  %htable_bits.i82 = getelementptr inbounds %struct.htable, ptr %3, i32 0, i32 2
  %38 = ptrtoint ptr %htable_bits.i82 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %htable_bits.i82, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %39)
  %cmp.i83 = icmp ult i8 %39, 10
  %conv.i84 = zext i8 %39 to i32
  %sub.i85 = add nsw i32 %conv.i84, -10
  %phi.bo.i = shl i32 52, %sub.i85
  %phi.bo1.i = add i32 %phi.bo.i, 444
  %cond.i86 = select i1 %cmp.i83, i32 496, i32 %phi.bo1.i
  %ext_size10 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 12
  %40 = ptrtoint ptr %ext_size10 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ext_size10, align 4
  %add = add i32 %41, %add85.i
  %add11 = add i32 %add, %cond.i86
  %call.i87 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i87, label %hash_netiface4_ext_size.exit.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true.i90

hash_netiface4_ext_size.exit.rcu_read_unlock_bh.exit_crit_edge: ; preds = %hash_netiface4_ext_size.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock_bh.exit

land.lhs.true.i90:                                ; preds = %hash_netiface4_ext_size.exit
  %call1.i88 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i88)
  %tobool.not.i89 = icmp eq i32 %call1.i88, 0
  br i1 %tobool.not.i89, label %land.lhs.true.i90.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true2.i92

land.lhs.true.i90.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true.i90
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock_bh.exit

land.lhs.true2.i92:                               ; preds = %land.lhs.true.i90
  %.b4.i91 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i91, label %land.lhs.true2.i92.rcu_read_unlock_bh.exit_crit_edge, label %if.then.i93

land.lhs.true2.i92.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i92
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock_bh.exit

if.then.i93:                                      ; preds = %land.lhs.true2.i92
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 761, ptr noundef nonnull @.str.16) #15
  br label %rcu_read_unlock_bh.exit

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i93, %land.lhs.true2.i92.rcu_read_unlock_bh.exit_crit_edge, %land.lhs.true.i90.rcu_read_unlock_bh.exit_crit_edge, %hash_netiface4_ext_size.exit.rcu_read_unlock_bh.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #15
  tail call fastcc void @local_bh_enable() #15
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %42 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 32775, i32 noundef 0, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool14.not108 = icmp eq ptr %43, null
  %tobool14.not = select i1 %cmp.i.i, i1 true, i1 %tobool14.not108
  br i1 %tobool14.not, label %rcu_read_unlock_bh.exit.cleanup_crit_edge, label %if.end16

rcu_read_unlock_bh.exit.cleanup_crit_edge:        ; preds = %rcu_read_unlock_bh.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end16:                                         ; preds = %rcu_read_unlock_bh.exit
  %shl = shl nuw i32 1, %conv.i84
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #15
  %44 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %shl, ptr %tmp.i.i, align 4
  %call.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 16402, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool18.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool18.not, label %lor.lhs.false, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end16
  %maxelem = getelementptr inbounds %struct.hash_netiface4, ptr %1, i32 0, i32 2
  %45 = ptrtoint ptr %maxelem to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %maxelem, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i94) #15
  %47 = ptrtoint ptr %tmp.i.i94 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %tmp.i.i94, align 4
  %call.i.i95 = call i32 @nla_put(ptr noundef %skb, i32 noundef 16403, i32 noundef 4, ptr noundef nonnull %tmp.i.i94) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i94) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i95)
  %tobool20.not = icmp eq i32 %call.i.i95, 0
  br i1 %tobool20.not, label %if.end22, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33

if.then25:                                        ; preds = %if.end22
  %bucketsize = getelementptr inbounds %struct.hash_netiface4, ptr %1, i32 0, i32 4
  %51 = ptrtoint ptr %bucketsize to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %bucketsize, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #15
  %53 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %tmp.i, align 1
  %call.i96 = call i32 @nla_put(ptr noundef %skb, i32 noundef 21, i32 noundef 1, ptr noundef nonnull %tmp.i) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96)
  %tobool27.not = icmp eq i32 %call.i96, 0
  br i1 %tobool27.not, label %lor.lhs.false28, label %if.then25.cleanup_crit_edge

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false28:                                  ; preds = %if.then25
  %initval = getelementptr inbounds %struct.hash_netiface4, ptr %1, i32 0, i32 3
  %54 = ptrtoint ptr %initval to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %initval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i97) #15
  %56 = ptrtoint ptr %tmp.i.i97 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %tmp.i.i97, align 4
  %call.i.i98 = call i32 @nla_put(ptr noundef %skb, i32 noundef 16401, i32 noundef 4, ptr noundef nonnull %tmp.i.i97) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i97) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i98)
  %tobool30.not = icmp eq i32 %call.i.i98, 0
  br i1 %tobool30.not, label %lor.lhs.false28.if.end33_crit_edge, label %lor.lhs.false28.cleanup_crit_edge

lor.lhs.false28.cleanup_crit_edge:                ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false28.if.end33_crit_edge:               ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33

if.end33:                                         ; preds = %lor.lhs.false28.if.end33_crit_edge, %if.end22.if.end33_crit_edge
  %ref = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 2
  %57 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ref, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i99) #15
  %59 = ptrtoint ptr %tmp.i.i99 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %tmp.i.i99, align 4
  %call.i.i100 = call i32 @nla_put(ptr noundef %skb, i32 noundef 16409, i32 noundef 4, ptr noundef nonnull %tmp.i.i99) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i99) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i100)
  %tobool35.not = icmp eq i32 %call.i.i100, 0
  br i1 %tobool35.not, label %lor.lhs.false36, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false36:                                  ; preds = %if.end33
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i101) #15
  %60 = ptrtoint ptr %tmp.i.i101 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %add11, ptr %tmp.i.i101, align 4
  %call.i.i102 = call i32 @nla_put(ptr noundef %skb, i32 noundef 16410, i32 noundef 4, ptr noundef nonnull %tmp.i.i101) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i101) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i102)
  %tobool38.not = icmp eq i32 %call.i.i102, 0
  br i1 %tobool38.not, label %lor.lhs.false39, label %lor.lhs.false36.cleanup_crit_edge

lor.lhs.false36.cleanup_crit_edge:                ; preds = %lor.lhs.false36
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false39:                                  ; preds = %lor.lhs.false36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i103) #15
  %61 = ptrtoint ptr %tmp.i.i103 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %elements.5, ptr %tmp.i.i103, align 4
  %call.i.i104 = call i32 @nla_put(ptr noundef %skb, i32 noundef 16408, i32 noundef 4, ptr noundef nonnull %tmp.i.i103) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i103) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i104)
  %tobool41.not = icmp eq i32 %call.i.i104, 0
  br i1 %tobool41.not, label %if.end43, label %lor.lhs.false39.cleanup_crit_edge

lor.lhs.false39.cleanup_crit_edge:                ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end43:                                         ; preds = %lor.lhs.false39
  %call44 = call i32 @ip_set_put_flags(ptr noundef %skb, ptr noundef %set) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end49, label %if.end43.cleanup_crit_edge, !prof !239

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end49:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #17
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
define internal i32 @hash_netiface4_list(ptr noundef %set, ptr noundef %skb, ptr nocapture noundef %cb) #2 align 64 {
entry:
  %tmp.i.i.i = alloca i32, align 4
  %tmp.i.i = alloca i8, align 1
  %tmp.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 5
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 32776, i32 noundef 0, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool.not227 = icmp eq ptr %3, null
  %tobool.not = select i1 %cmp.i.i, i1 true, i1 %tobool.not227
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_netiface4_list.__UNIQUE_ID_ddebug688, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_netiface4_list, %if.then5)) #15
          to label %do.end [label %if.then5], !srcloc !224

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_netiface4_list.__UNIQUE_ID_ddebug688, ptr noundef nonnull @.str.38, ptr noundef %set) #15
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %arrayidx7 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 4
  %4 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx7, align 4
  %6 = inttoptr i32 %5 to ptr
  %7 = tail call i32 @llvm.read_register.i32(metadata !214) #15
  %and.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !240
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %do.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

do.end.rcu_read_lock.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %do.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 696, ptr noundef nonnull @.str.42) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %do.end.rcu_read_lock.exit_crit_edge
  %htable_bits = getelementptr inbounds %struct.htable, ptr %6, i32 0, i32 2
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %13 = ptrtoint ptr %htable_bits to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %htable_bits, align 4
  %conv235 = zext i8 %14 to i32
  %.highbits236 = lshr i32 %12, %conv235
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.highbits236)
  %cmp237 = icmp eq i32 %.highbits236, 0
  br i1 %cmp237, label %for.body.lr.ph, label %rcu_read_lock.exit.for.end106_crit_edge

rcu_read_lock.exit.for.end106_crit_edge:          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
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
  %call18 = call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.lhs.true, label %for.body.do.end27_crit_edge

for.body.do.end27_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end27

land.lhs.true:                                    ; preds = %for.body
  %call20 = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %land.lhs.true.do.end27_crit_edge, label %land.lhs.true22

land.lhs.true.do.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end27

land.lhs.true22:                                  ; preds = %land.lhs.true
  %.b180 = load i1, ptr @hash_netiface4_list.__warned, align 1
  br i1 %.b180, label %land.lhs.true22.do.end27_crit_edge, label %if.then24

land.lhs.true22.do.end27_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end27

if.then24:                                        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @hash_netiface4_list.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1362, ptr noundef nonnull @.str.9) #15
  br label %do.end27

do.end27:                                         ; preds = %if.then24, %land.lhs.true22.do.end27_crit_edge, %land.lhs.true.do.end27_crit_edge, %for.body.do.end27_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_netiface4_list.__UNIQUE_ID_ddebug691, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_netiface4_list, %if.then41)) #15
          to label %do.end45 [label %if.then41], !srcloc !224

if.then41:                                        ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #17
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_netiface4_list.__UNIQUE_ID_ddebug691, ptr noundef nonnull @.str.39, i32 noundef %22, ptr noundef %6, ptr noundef %20) #15
  br label %do.end45

do.end45:                                         ; preds = %if.then41, %do.end27
  %tobool46.not = icmp eq ptr %20, null
  br i1 %tobool46.not, label %do.end45.for.inc103_crit_edge, label %for.cond49.preheader

do.end45.for.inc103_crit_edge:                    ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc103

for.cond49.preheader:                             ; preds = %do.end45
  %pos = getelementptr inbounds %struct.hbucket, ptr %20, i32 0, i32 3
  %23 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %pos, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp51231.not = icmp eq i8 %24, 0
  br i1 %cmp51231.not, label %for.cond49.preheader.for.inc103_crit_edge, label %for.body53.lr.ph

for.cond49.preheader.for.inc103_crit_edge:        ; preds = %for.cond49.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc103

for.body53.lr.ph:                                 ; preds = %for.cond49.preheader
  %used = getelementptr inbounds %struct.hbucket, ptr %20, i32 0, i32 1
  %value = getelementptr inbounds %struct.hbucket, ptr %20, i32 0, i32 5
  br label %for.body53

for.body53:                                       ; preds = %for.inc.for.body53_crit_edge, %for.body53.lr.ph
  %i.0232 = phi i32 [ 0, %for.body53.lr.ph ], [ %inc, %for.inc.for.body53_crit_edge ]
  %div3.i = lshr i32 %i.0232, 5
  %arrayidx.i = getelementptr i32, ptr %used, i32 %div3.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.0232, 31
  %27 = shl nuw i32 1, %and.i
  %28 = and i32 %26, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool56.not = icmp eq i32 %28, 0
  br i1 %tobool56.not, label %for.body53.for.inc_crit_edge, label %if.end58

for.body53.for.inc_crit_edge:                     ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end58:                                         ; preds = %for.body53
  %29 = ptrtoint ptr %dsize to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dsize, align 4
  %mul = mul i32 %30, %i.0232
  %add.ptr = getelementptr i8, ptr %value, i32 %mul
  %31 = ptrtoint ptr %extensions to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %extensions, align 2
  %33 = and i8 %32, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool61.not = icmp eq i8 %33, 0
  br i1 %tobool61.not, label %if.end58.do.body69_crit_edge, label %land.lhs.true62

if.end58.do.body69_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body69

ip_set_timeout_expired.exit:                      ; preds = %land.lhs.true62
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %38 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %37, %38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp1.i = icmp slt i32 %sub.i, 0
  br i1 %cmp1.i, label %ip_set_timeout_expired.exit.for.inc_crit_edge, label %ip_set_timeout_expired.exit.do.body69_crit_edge

ip_set_timeout_expired.exit.do.body69_crit_edge:  ; preds = %ip_set_timeout_expired.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body69

ip_set_timeout_expired.exit.for.inc_crit_edge:    ; preds = %ip_set_timeout_expired.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

do.body69:                                        ; preds = %ip_set_timeout_expired.exit.do.body69_crit_edge, %land.lhs.true62.do.body69_crit_edge, %if.end58.do.body69_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_netiface4_list.__UNIQUE_ID_ddebug692, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_netiface4_list, %if.then81)) #15
          to label %do.end85 [label %if.then81], !srcloc !224

if.then81:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #17
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_netiface4_list.__UNIQUE_ID_ddebug692, ptr noundef nonnull @.str.40, i32 noundef %40, ptr noundef nonnull %20, i32 noundef %i.0232, ptr noundef %add.ptr) #15
  br label %do.end85

do.end85:                                         ; preds = %if.then81, %do.body69
  %41 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i188 = call i32 @nla_put(ptr noundef %skb, i32 noundef 32775, i32 noundef 0, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i188)
  %cmp.i.i189 = icmp slt i32 %call1.i.i188, 0
  %tobool87.not228 = icmp eq ptr %42, null
  %tobool87.not = select i1 %cmp.i.i189, i1 true, i1 %tobool87.not228
  br i1 %tobool87.not, label %if.then88, label %if.end94

if.then88:                                        ; preds = %do.end85
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %1)
  %cmp90 = icmp eq i32 %44, %1
  br i1 %cmp90, label %if.then.i.i, label %if.then88.nla_put_failure_crit_edge

if.then88.nla_put_failure_crit_edge:              ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #17
  br label %nla_put_failure

if.then.i.i:                                      ; preds = %if.then88
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %45 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i191 = icmp ugt ptr %46, %3
  br i1 %cmp.i.i191, label %do.end.i.i, label %if.then.i.i.nla_nest_cancel.exit_crit_edge, !prof !225

if.then.i.i.nla_nest_cancel.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nla_nest_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 991, i32 noundef 9, ptr noundef null) #15
  br label %nla_nest_cancel.exit

nla_nest_cancel.exit:                             ; preds = %do.end.i.i, %if.then.i.i.nla_nest_cancel.exit_crit_edge
  %47 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %48 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #15
  br label %out

if.end94:                                         ; preds = %do.end85
  %physdev.i = getelementptr inbounds %struct.hash_netiface4_elem, ptr %add.ptr, i32 0, i32 1
  %49 = ptrtoint ptr %physdev.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %physdev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i192 = icmp eq i8 %50, 0
  %cond.i = select i1 %tobool.not.i192, i32 0, i32 2
  %wildcard.i = getelementptr inbounds %struct.hash_netiface4_elem, ptr %add.ptr, i32 0, i32 5
  %51 = ptrtoint ptr %wildcard.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %wildcard.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool2.not.i = icmp eq i8 %52, 0
  %cond3.i = select i1 %tobool2.not.i, i32 0, i32 128
  %or.i = or i32 %cond3.i, %cond.i
  %nomatch.i = getelementptr inbounds %struct.hash_netiface4_elem, ptr %add.ptr, i32 0, i32 3
  %53 = ptrtoint ptr %nomatch.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %nomatch.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool4.not.i = icmp eq i8 %54, 0
  %or5.i = or i32 %or.i, 4
  %spec.select.i = select i1 %tobool4.not.i, i32 %or.i, i32 %or5.i
  %55 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %add.ptr, align 4
  %57 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 32769, i32 noundef 0, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call1.i.i.i.i, 0
  %tobool.not1.i.i = icmp eq ptr %58, null
  %tobool.not.i.i193 = select i1 %cmp.i.i.i.i, i1 true, i1 %tobool.not1.i.i
  br i1 %tobool.not.i.i193, label %if.end94.nla_put_failure_crit_edge, label %if.end.i.i194

if.end94.nla_put_failure_crit_edge:               ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #17
  br label %nla_put_failure

if.end.i.i194:                                    ; preds = %if.end94
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i.i.i) #15
  %59 = ptrtoint ptr %tmp.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %56, ptr %tmp.i.i.i.i, align 4
  %call.i.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i.i.i.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool2.not.i.i, label %lor.lhs.false.i, label %if.end.i.i194.nla_put_failure_crit_edge

if.end.i.i194.nla_put_failure_crit_edge:          ; preds = %if.end.i.i194
  call void @__sanitizer_cov_trace_pc() #17
  br label %nla_put_failure

lor.lhs.false.i:                                  ; preds = %if.end.i.i194
  %60 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %61 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %58 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i.i.i to i16
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv.i.i.i, ptr %58, align 2
  %cidr.i = getelementptr inbounds %struct.hash_netiface4_elem, ptr %add.ptr, i32 0, i32 2
  %63 = ptrtoint ptr %cidr.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %cidr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i) #15
  %65 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %tmp.i.i, align 1
  %call.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %tmp.i.i) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool8.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool8.not.i, label %lor.lhs.false9.i, label %lor.lhs.false.i.nla_put_failure_crit_edge

lor.lhs.false.i.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nla_put_failure

lor.lhs.false9.i:                                 ; preds = %lor.lhs.false.i
  %iface.i = getelementptr inbounds %struct.hash_netiface4_elem, ptr %add.ptr, i32 0, i32 6
  %call.i28.i = call i32 @strlen(ptr noundef %iface.i) #20
  %add.i.i = add i32 %call.i28.i, 1
  %call1.i.i195 = call i32 @nla_put(ptr noundef %skb, i32 noundef 23, i32 noundef %add.i.i, ptr noundef %iface.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i195)
  %tobool11.not.i = icmp eq i32 %call1.i.i195, 0
  br i1 %tobool11.not.i, label %lor.lhs.false12.i, label %lor.lhs.false9.i.nla_put_failure_crit_edge

lor.lhs.false9.i.nla_put_failure_crit_edge:       ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nla_put_failure

lor.lhs.false12.i:                                ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %tobool13.not.i = icmp eq i32 %spec.select.i, 0
  br i1 %tobool13.not.i, label %lor.lhs.false12.i.if.end97_crit_edge, label %land.lhs.true.i196

lor.lhs.false12.i.if.end97_crit_edge:             ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end97

land.lhs.true.i196:                               ; preds = %lor.lhs.false12.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i.i) #15
  %66 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %spec.select.i, ptr %tmp.i.i.i, align 4
  %call.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 16392, i32 noundef 4, ptr noundef nonnull %tmp.i.i.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool15.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool15.not.i, label %land.lhs.true.i196.if.end97_crit_edge, label %land.lhs.true.i196.nla_put_failure_crit_edge

land.lhs.true.i196.nla_put_failure_crit_edge:     ; preds = %land.lhs.true.i196
  call void @__sanitizer_cov_trace_pc() #17
  br label %nla_put_failure

land.lhs.true.i196.if.end97_crit_edge:            ; preds = %land.lhs.true.i196
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end97

if.end97:                                         ; preds = %land.lhs.true.i196.if.end97_crit_edge, %lor.lhs.false12.i.if.end97_crit_edge
  %call98 = call i32 @ip_set_put_extensions(ptr noundef %skb, ptr noundef %set, ptr noundef %add.ptr, i1 noundef zeroext true) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.end101, label %if.end97.nla_put_failure_crit_edge

if.end97.nla_put_failure_crit_edge:               ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #17
  br label %nla_put_failure

if.end101:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #17
  %67 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %68 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %42 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %69 = ptrtoint ptr %42 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %conv.i, ptr %42, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.end101, %ip_set_timeout_expired.exit.for.inc_crit_edge, %for.body53.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0232, 1
  %70 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %pos, align 1
  %conv50 = zext i8 %71 to i32
  %cmp51 = icmp ult i32 %inc, %conv50
  br i1 %cmp51, label %for.inc.for.body53_crit_edge, label %for.inc.for.inc103_crit_edge

for.inc.for.inc103_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc103

for.inc.for.body53_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body53

for.inc103:                                       ; preds = %for.inc.for.inc103_crit_edge, %for.cond49.preheader.for.inc103_crit_edge, %do.end45.for.inc103_crit_edge
  %72 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx, align 4
  %inc105 = add i32 %73, 1
  store i32 %inc105, ptr %arrayidx, align 4
  %74 = ptrtoint ptr %htable_bits to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %htable_bits, align 4
  %conv = zext i8 %75 to i32
  %.highbits = lshr i32 %inc105, %conv
  %cmp = icmp eq i32 %.highbits, 0
  br i1 %cmp, label %for.inc103.for.body_crit_edge, label %for.inc103.for.end106_crit_edge

for.inc103.for.end106_crit_edge:                  ; preds = %for.inc103
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end106

for.inc103.for.body_crit_edge:                    ; preds = %for.inc103
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end106:                                       ; preds = %for.inc103.for.end106_crit_edge, %rcu_read_lock.exit.for.end106_crit_edge
  %76 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i199 = ptrtoint ptr %77 to i32
  %sub.ptr.rhs.cast.i200 = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i201 = sub i32 %sub.ptr.lhs.cast.i199, %sub.ptr.rhs.cast.i200
  %conv.i202 = trunc i32 %sub.ptr.sub.i201 to i16
  %78 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %conv.i202, ptr %3, align 2
  %79 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %arrayidx, align 4
  br label %out

nla_put_failure:                                  ; preds = %if.end97.nla_put_failure_crit_edge, %land.lhs.true.i196.nla_put_failure_crit_edge, %lor.lhs.false9.i.nla_put_failure_crit_edge, %lor.lhs.false.i.nla_put_failure_crit_edge, %if.end.i.i194.nla_put_failure_crit_edge, %if.end94.nla_put_failure_crit_edge, %if.then88.nla_put_failure_crit_edge
  %tobool.not.i203 = icmp eq ptr %16, null
  br i1 %tobool.not.i203, label %nla_put_failure.nlmsg_trim.exit_crit_edge, label %if.then.i204

nla_put_failure.nlmsg_trim.exit_crit_edge:        ; preds = %nla_put_failure
  call void @__sanitizer_cov_trace_pc() #17
  br label %nlmsg_trim.exit

if.then.i204:                                     ; preds = %nla_put_failure
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %80 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %data.i, align 4
  %cmp.i = icmp ugt ptr %81, %16
  br i1 %cmp.i, label %do.end.i, label %if.then.i204.if.end.i_crit_edge, !prof !225

if.then.i204.if.end.i_crit_edge:                  ; preds = %if.then.i204
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i204
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 991, i32 noundef 9, ptr noundef null) #15
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i204.if.end.i_crit_edge
  %82 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i205 = ptrtoint ptr %16 to i32
  %sub.ptr.rhs.cast.i206 = ptrtoint ptr %83 to i32
  %sub.ptr.sub.i207 = sub i32 %sub.ptr.lhs.cast.i205, %sub.ptr.rhs.cast.i206
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i207) #15
  br label %nlmsg_trim.exit

nlmsg_trim.exit:                                  ; preds = %if.end.i, %nla_put_failure.nlmsg_trim.exit_crit_edge
  %84 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %85)
  %cmp110 = icmp eq i32 %1, %85
  br i1 %cmp110, label %do.end121, label %if.else, !prof !225

do.end121:                                        ; preds = %nlmsg_trim.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call125 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %set) #21
  %86 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %arrayidx, align 4
  br label %out

if.else:                                          ; preds = %nlmsg_trim.exit
  call void @__sanitizer_cov_trace_pc() #17
  %87 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i209 = ptrtoint ptr %88 to i32
  %sub.ptr.rhs.cast.i210 = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i211 = sub i32 %sub.ptr.lhs.cast.i209, %sub.ptr.rhs.cast.i210
  %conv.i212 = trunc i32 %sub.ptr.sub.i211 to i16
  %89 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %conv.i212, ptr %3, align 2
  br label %out

out:                                              ; preds = %if.else, %do.end121, %for.end106, %nla_nest_cancel.exit
  %ret.0 = phi i32 [ -90, %do.end121 ], [ 0, %if.else ], [ -90, %nla_nest_cancel.exit ], [ 0, %for.end106 ]
  %call.i213 = call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i213, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i216

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i216:                               ; preds = %out
  %call1.i214 = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i214)
  %tobool.not.i215 = icmp eq i32 %call1.i214, 0
  br i1 %tobool.not.i215, label %land.lhs.true.i216.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i218

land.lhs.true.i216.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i216
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i218:                              ; preds = %land.lhs.true.i216
  %.b4.i217 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i217, label %land.lhs.true2.i218.rcu_read_unlock.exit_crit_edge, label %if.then.i219

land.lhs.true2.i218.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i218
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i219:                                     ; preds = %land.lhs.true2.i218
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.45) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i219, %land.lhs.true2.i218.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i216.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !241
  %90 = call i32 @llvm.read_register.i32(metadata !214) #15
  %and.i.i.i.i.i220 = and i32 %90, -16384
  %91 = inttoptr i32 %and.i.i.i.i.i220 to ptr
  %preempt_count.i.i.i.i221 = getelementptr inbounds %struct.thread_info, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %preempt_count.i.i.i.i221 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %preempt_count.i.i.i.i221, align 4
  %sub.i.i.i = add i32 %93, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i221, align 4
  call void @rcu_read_unlock_strict() #15
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %rcu_read_unlock.exit ], [ -90, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hash_netiface4_uref(ptr nocapture noundef readonly %set, ptr nocapture noundef %cb, i1 noundef zeroext %start) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %start, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %data = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 15
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  tail call fastcc void @local_bh_disable() #15
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %if.then.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true.i

if.then.rcu_read_lock_bh.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock_bh.exit

land.lhs.true.i:                                  ; preds = %if.then
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock_bh.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock_bh.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 750, ptr noundef nonnull @.str.15) #15
  br label %rcu_read_lock_bh.exit

rcu_read_lock_bh.exit:                            ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, %if.then.rcu_read_lock_bh.exit_crit_edge
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %1, align 4
  %call = tail call zeroext i1 @lockdep_nfnl_is_held(i8 noundef zeroext 6) #15
  br i1 %call, label %rcu_read_lock_bh.exit.do.end10_crit_edge, label %lor.lhs.false

rcu_read_lock_bh.exit.do.end10_crit_edge:         ; preds = %rcu_read_lock_bh.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end10

lor.lhs.false:                                    ; preds = %rcu_read_lock_bh.exit
  %call2 = tail call i32 @rcu_read_lock_bh_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true, label %lor.lhs.false.do.end10_crit_edge

lor.lhs.false.do.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end10

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end10_crit_edge, label %land.lhs.true6

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end10

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b46 = load i1, ptr @hash_netiface4_uref.__warned, align 1
  br i1 %.b46, label %land.lhs.true6.do.end10_crit_edge, label %if.then8

land.lhs.true6.do.end10_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end10

if.then8:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @hash_netiface4_uref.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1321, ptr noundef nonnull @.str.9) #15
  br label %do.end10

do.end10:                                         ; preds = %if.then8, %land.lhs.true6.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %lor.lhs.false.do.end10_crit_edge, %rcu_read_lock_bh.exit.do.end10_crit_edge
  %uref = getelementptr inbounds %struct.htable, ptr %3, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %uref, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %uref, i32 1, i32 3, i32 1) #15
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uref, ptr %uref, i32 1, ptr elementtype(i32) %uref) #15, !srcloc !228
  %5 = ptrtoint ptr %3 to i32
  %arrayidx = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 4
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %arrayidx, align 4
  %call.i49 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i49, label %do.end10.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true.i52

do.end10.rcu_read_unlock_bh.exit_crit_edge:       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock_bh.exit

land.lhs.true.i52:                                ; preds = %do.end10
  %call1.i50 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i50)
  %tobool.not.i51 = icmp eq i32 %call1.i50, 0
  br i1 %tobool.not.i51, label %land.lhs.true.i52.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true2.i54

land.lhs.true.i52.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true.i52
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock_bh.exit

land.lhs.true2.i54:                               ; preds = %land.lhs.true.i52
  %.b4.i53 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i53, label %land.lhs.true2.i54.rcu_read_unlock_bh.exit_crit_edge, label %if.then.i55

land.lhs.true2.i54.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i54
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock_bh.exit

if.then.i55:                                      ; preds = %land.lhs.true2.i54
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 761, ptr noundef nonnull @.str.16) #15
  br label %rcu_read_unlock_bh.exit

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i55, %land.lhs.true2.i54.rcu_read_unlock_bh.exit_crit_edge, %land.lhs.true.i52.rcu_read_unlock_bh.exit_crit_edge, %do.end10.rcu_read_unlock_bh.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #15
  tail call fastcc void @local_bh_enable() #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end36

if.then14:                                        ; preds = %if.else
  %9 = inttoptr i32 %8 to ptr
  %uref16 = getelementptr inbounds %struct.htable, ptr %9, i32 0, i32 1
  %call.i.i47 = tail call zeroext i1 @__kasan_check_write(ptr noundef %uref16, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !232
  tail call void @llvm.prefetch.p0(ptr %uref16, i32 1, i32 3, i32 1) #15
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uref16, ptr %uref16, i32 1, ptr elementtype(i32) %uref16) #15, !srcloc !233
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !234
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true18, label %if.then14.if.end33_crit_edge

if.then14.if.end33_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33

land.lhs.true18:                                  ; preds = %if.then14
  %call.i.i48 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %9, i32 noundef 4) #15
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool20.not = icmp eq i32 %12, 0
  br i1 %tobool20.not, label %land.lhs.true18.if.end33_crit_edge, label %do.body22

land.lhs.true18.if.end33_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33

do.body22:                                        ; preds = %land.lhs.true18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_netiface4_uref.__UNIQUE_ID_ddebug687, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_netiface4_uref, %if.then29)) #15
          to label %do.end32 [label %if.then29], !srcloc !224

if.then29:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_netiface4_uref.__UNIQUE_ID_ddebug687, ptr noundef nonnull @.str.47, ptr noundef nonnull %9) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.end.i:                                         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %14) #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %do.end.i.for.inc.i_crit_edge
  %inc.i = add i32 %i.017.i, 1
  %15 = ptrtoint ptr %htable_bits.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %htable_bits.i, align 4
  %conv.i = zext i8 %16 to i32
  %i.0.highbits.i = lshr i32 %inc.i, %conv.i
  %cmp.i = icmp eq i32 %i.0.highbits.i, 0
  br i1 %cmp.i, label %for.inc.i.do.end.i_crit_edge, label %hash_netiface4_ahash_destroy.exit

for.inc.i.do.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

hash_netiface4_ahash_destroy.exit:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  %hregion.i = getelementptr inbounds %struct.htable, ptr %9, i32 0, i32 4
  %17 = ptrtoint ptr %hregion.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hregion.i, align 4
  tail call void @ip_set_free(ptr noundef %18) #15
  tail call void @ip_set_free(ptr noundef nonnull %9) #15
  br label %if.end33

if.end33:                                         ; preds = %hash_netiface4_ahash_destroy.exit, %land.lhs.true18.if.end33_crit_edge, %if.then14.if.end33_crit_edge
  %19 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %arrayidx12, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.end33, %if.else.if.end36_crit_edge, %rcu_read_unlock_bh.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @hash_netiface4_same_set(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ip_set, ptr %a, i32 0, i32 15
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %data1 = getelementptr inbounds %struct.ip_set, ptr %b, i32 0, i32 15
  %2 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data1, align 4
  %maxelem = getelementptr inbounds %struct.hash_netiface4, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %maxelem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %maxelem, align 4
  %maxelem2 = getelementptr inbounds %struct.hash_netiface4, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %maxelem2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %maxelem2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp eq i32 %5, %7
  br i1 %cmp, label %land.lhs.true, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
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

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_set_get_extensions(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

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
define internal fastcc void @hash_netiface4_gc_do(ptr noundef %set, ptr nocapture noundef %h, ptr noundef %t, i32 noundef %r) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
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
  tail call void @_raw_spin_lock_bh(ptr noundef %arrayidx) #15
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %3)
  %cmp = icmp ult i8 %3, 10
  %mul = shl i32 %r, 10
  %spec.select = select i1 %cmp, i32 0, i32 %mul
  %shl = shl nuw i32 1, %conv
  %mul10 = add i32 %mul, 1024
  %cond12 = select i1 %cmp, i32 %shl, i32 %mul10
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %cond12)
  %cmp13341 = icmp ult i32 %spec.select, %cond12
  br i1 %cmp13341, label %do.end.lr.ph, label %entry.for.end234_crit_edge

entry.for.end234_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end234

do.end.lr.ph:                                     ; preds = %entry
  %arrayidx27 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 1
  %lock.i = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 1
  %extensions.i = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 8
  %arrayidx.i321 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 3
  %mul171.neg = mul i32 %1, -2
  %add172.neg = add i32 %mul171.neg, -24
  br label %do.end

do.end:                                           ; preds = %for.inc232.do.end_crit_edge, %do.end.lr.ph
  %i.0342 = phi i32 [ %spec.select, %do.end.lr.ph ], [ %inc233, %for.inc232.do.end_crit_edge ]
  %arrayidx16 = getelementptr %struct.htable, ptr %t, i32 0, i32 5, i32 %i.0342
  %6 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx16, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %do.end.for.inc232_crit_edge, label %for.cond17.preheader

do.end.for.inc232_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc232

for.cond17.preheader:                             ; preds = %do.end
  %pos = getelementptr inbounds %struct.hbucket, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pos, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp19330.not = icmp eq i8 %9, 0
  br i1 %cmp19330.not, label %for.cond17.preheader.for.inc232_crit_edge, label %for.body21.lr.ph

for.cond17.preheader.for.inc232_crit_edge:        ; preds = %for.cond17.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc232

for.body21.lr.ph:                                 ; preds = %for.cond17.preheader
  %used = getelementptr inbounds %struct.hbucket, ptr %7, i32 0, i32 1
  %value = getelementptr inbounds %struct.hbucket, ptr %7, i32 0, i32 5
  br label %for.body21

for.body21:                                       ; preds = %for.inc62.for.body21_crit_edge, %for.body21.lr.ph
  %d.0334 = phi i32 [ 0, %for.body21.lr.ph ], [ %d.1, %for.inc62.for.body21_crit_edge ]
  %j.0331 = phi i32 [ 0, %for.body21.lr.ph ], [ %inc63, %for.inc62.for.body21_crit_edge ]
  %div3.i = lshr i32 %j.0331, 5
  %arrayidx.i = getelementptr i32, ptr %used, i32 %div3.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %j.0331, 31
  %12 = shl nuw i32 1, %and.i
  %13 = and i32 %11, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool22.not = icmp eq i32 %13, 0
  br i1 %tobool22.not, label %if.then23, label %if.end24

if.then23:                                        ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #17
  %inc = add i32 %d.0334, 1
  br label %for.inc62

if.end24:                                         ; preds = %for.body21
  %mul26 = mul i32 %j.0331, %1
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
  br i1 %cmp.not.i, label %if.end24.for.inc62_crit_edge, label %ip_set_timeout_expired.exit

if.end24.for.inc62_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc62

ip_set_timeout_expired.exit:                      ; preds = %if.end24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %17, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp1.i = icmp slt i32 %sub.i, 0
  br i1 %cmp1.i, label %do.body32, label %ip_set_timeout_expired.exit.for.inc62_crit_edge

ip_set_timeout_expired.exit.for.inc62_crit_edge:  ; preds = %ip_set_timeout_expired.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc62

do.body32:                                        ; preds = %ip_set_timeout_expired.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_netiface4_gc_do.__UNIQUE_ID_ddebug619, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_netiface4_gc_do, %if.then38)) #15
          to label %do.end41 [label %if.then38], !srcloc !224

if.then38:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_netiface4_gc_do.__UNIQUE_ID_ddebug619, ptr noundef nonnull @.str.18, i32 noundef %i.0342, i32 noundef %j.0331) #15
  br label %do.end41

do.end41:                                         ; preds = %if.then38, %do.body32
  tail call void @_clear_bit(i32 noundef %j.0331, ptr noundef %used) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !242
  %cidr = getelementptr inbounds %struct.hash_netiface4_elem, ptr %add.ptr, i32 0, i32 2
  %19 = ptrtoint ptr %cidr to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %cidr, align 1
  %add56 = add i8 %20, 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #15
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc57.i.for.body.i_crit_edge, %do.end41
  %indvars.iv.i = phi i32 [ 0, %do.end41 ], [ %indvars.iv.next.i, %for.inc57.i.for.body.i_crit_edge ]
  %arrayidx4.i = getelementptr %struct.hash_netiface4, ptr %h, i32 0, i32 7, i32 %indvars.iv.i, i32 1, i32 0
  %21 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx4.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %add56)
  %cmp7.not.i = icmp eq i8 %22, %add56
  br i1 %cmp7.not.i, label %if.end.i, label %for.inc57.i

if.end.i:                                         ; preds = %for.body.i
  %conv6.i = zext i8 %add56 to i32
  %sub.i318 = add nsw i32 %conv6.i, -1
  %arrayidx11.i = getelementptr %struct.hash_netiface4, ptr %h, i32 0, i32 7, i32 %sub.i318
  %23 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx11.i, align 4
  %dec.i = add i32 %24, -1
  store i32 %dec.i, ptr %arrayidx11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp22.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp22.not.i, label %for.cond26.preheader.i, label %if.end.i.hash_netiface4_del_cidr.exit_crit_edge

if.end.i.hash_netiface4_del_cidr.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %hash_netiface4_del_cidr.exit

for.cond26.preheader.i:                           ; preds = %if.end.i
  %conv2786.i = and i32 %indvars.iv.i, 255
  %25 = and i32 %indvars.iv.i, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp2987.i = icmp eq i32 %25, 0
  br i1 %cmp2987.i, label %for.cond26.preheader.i.land.rhs.i319_crit_edge, label %for.cond26.preheader.i.for.end.i_crit_edge

for.cond26.preheader.i.for.end.i_crit_edge:       ; preds = %for.cond26.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.cond26.preheader.i.land.rhs.i319_crit_edge:   ; preds = %for.cond26.preheader.i
  br label %land.rhs.i319

land.rhs.i319:                                    ; preds = %for.body38.i.land.rhs.i319_crit_edge, %for.cond26.preheader.i.land.rhs.i319_crit_edge
  %indvars.iv92.i = phi i32 [ %add.i, %for.body38.i.land.rhs.i319_crit_edge ], [ %indvars.iv.i, %for.cond26.preheader.i.land.rhs.i319_crit_edge ]
  %arrayidx36.i = getelementptr %struct.hash_netiface4, ptr %h, i32 0, i32 7, i32 %indvars.iv92.i, i32 1, i32 0
  %26 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx36.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i = icmp eq i8 %27, 0
  br i1 %tobool.not.i, label %land.rhs.i319.for.end.i_crit_edge, label %for.body38.i

land.rhs.i319.for.end.i_crit_edge:                ; preds = %land.rhs.i319
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.body38.i:                                     ; preds = %land.rhs.i319
  %add.i = add nuw nsw i32 %indvars.iv92.i, 1
  %arrayidx44.i = getelementptr %struct.hash_netiface4, ptr %h, i32 0, i32 7, i32 %add.i, i32 1, i32 0
  %28 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx44.i, align 1
  %30 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %arrayidx36.i, align 1
  %exitcond94.not.i = icmp eq i32 %add.i, 32
  br i1 %exitcond94.not.i, label %for.body38.i.for.end.i_crit_edge, label %for.body38.i.land.rhs.i319_crit_edge

for.body38.i.land.rhs.i319_crit_edge:             ; preds = %for.body38.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs.i319

for.body38.i.for.end.i_crit_edge:                 ; preds = %for.body38.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.end.i:                                        ; preds = %for.body38.i.for.end.i_crit_edge, %land.rhs.i319.for.end.i_crit_edge, %for.cond26.preheader.i.for.end.i_crit_edge
  %conv27.lcssa.i = phi i32 [ %conv2786.i, %for.cond26.preheader.i.for.end.i_crit_edge ], [ %indvars.iv92.i, %land.rhs.i319.for.end.i_crit_edge ], [ 32, %for.body38.i.for.end.i_crit_edge ]
  %arrayidx56.i = getelementptr %struct.hash_netiface4, ptr %h, i32 0, i32 7, i32 %conv27.lcssa.i, i32 1, i32 0
  %31 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %arrayidx56.i, align 1
  br label %hash_netiface4_del_cidr.exit

for.inc57.i:                                      ; preds = %for.body.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 33
  br i1 %exitcond.not.i, label %for.inc57.i.hash_netiface4_del_cidr.exit_crit_edge, label %for.inc57.i.for.body.i_crit_edge

for.inc57.i.for.body.i_crit_edge:                 ; preds = %for.inc57.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc57.i.hash_netiface4_del_cidr.exit_crit_edge: ; preds = %for.inc57.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %hash_netiface4_del_cidr.exit

hash_netiface4_del_cidr.exit:                     ; preds = %for.inc57.i.hash_netiface4_del_cidr.exit_crit_edge, %for.end.i, %if.end.i.hash_netiface4_del_cidr.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #15
  %32 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hregion, align 4
  %elements = getelementptr %struct.ip_set_region, ptr %33, i32 %r, i32 2
  %34 = ptrtoint ptr %elements to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %elements, align 4
  %dec = add i32 %35, -1
  store i32 %dec, ptr %elements, align 4
  %36 = ptrtoint ptr %extensions.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %extensions.i, align 2
  %38 = and i8 %37, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i320 = icmp eq i8 %38, 0
  br i1 %tobool.not.i320, label %hash_netiface4_del_cidr.exit.ip_set_ext_destroy.exit_crit_edge, label %if.then.i

hash_netiface4_del_cidr.exit.ip_set_ext_destroy.exit_crit_edge: ; preds = %hash_netiface4_del_cidr.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %ip_set_ext_destroy.exit

if.then.i:                                        ; preds = %hash_netiface4_del_cidr.exit
  call void @__sanitizer_cov_trace_pc() #17
  %39 = ptrtoint ptr %arrayidx.i321 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i321, align 4
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 %40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.ip_set_ext_type], ptr @ip_set_extensions, i32 0, i32 3) to i32))
  %41 = load ptr, ptr getelementptr inbounds ([0 x %struct.ip_set_ext_type], ptr @ip_set_extensions, i32 0, i32 3), align 4
  tail call void %41(ptr noundef %set, ptr noundef %add.ptr.i) #15
  br label %ip_set_ext_destroy.exit

ip_set_ext_destroy.exit:                          ; preds = %if.then.i, %hash_netiface4_del_cidr.exit.ip_set_ext_destroy.exit_crit_edge
  %inc61 = add i32 %d.0334, 1
  br label %for.inc62

for.inc62:                                        ; preds = %ip_set_ext_destroy.exit, %ip_set_timeout_expired.exit.for.inc62_crit_edge, %if.end24.for.inc62_crit_edge, %if.then23
  %d.1 = phi i32 [ %inc61, %ip_set_ext_destroy.exit ], [ %d.0334, %ip_set_timeout_expired.exit.for.inc62_crit_edge ], [ %inc, %if.then23 ], [ %d.0334, %if.end24.for.inc62_crit_edge ]
  %inc63 = add nuw nsw i32 %j.0331, 1
  %42 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %pos, align 1
  %conv18 = zext i8 %43 to i32
  %cmp19 = icmp ult i32 %inc63, %conv18
  br i1 %cmp19, label %for.inc62.for.body21_crit_edge, label %for.end64

for.inc62.for.body21_crit_edge:                   ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body21

for.end64:                                        ; preds = %for.inc62
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %d.1)
  %cmp65 = icmp ugt i32 %d.1, 1
  br i1 %cmp65, label %if.then67, label %for.end64.for.inc232_crit_edge

for.end64.for.inc232_crit_edge:                   ; preds = %for.end64
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc232

if.then67:                                        ; preds = %for.end64
  %size = getelementptr inbounds %struct.hbucket, ptr %7, i32 0, i32 2
  %44 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %size, align 8
  %conv68 = zext i8 %45 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %d.1, i32 %conv68)
  %cmp69.not = icmp ult i32 %d.1, %conv68
  br i1 %cmp69.not, label %if.end8.i.i, label %if.then71

if.then71:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #17
  %mul74 = mul i32 %1, %conv68
  %46 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hregion, align 4
  %ext_size = getelementptr %struct.ip_set_region, ptr %47, i32 %r, i32 1
  %48 = ptrtoint ptr %ext_size to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ext_size, align 4
  %add75.neg = sub i32 -24, %mul74
  %sub = add i32 %add75.neg, %49
  store i32 %sub, ptr %ext_size, align 4
  br label %for.inc232.sink.split

if.end8.i.i:                                      ; preds = %if.then67
  %sub131 = add nsw i32 %conv68, -2
  %mul132 = mul i32 %sub131, %1
  %add133 = add i32 %mul132, 24
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add133, i32 noundef 2848) #19
  %tobool135.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool135.not, label %if.end8.i.i.for.inc232_crit_edge, label %if.end137

if.end8.i.i.for.inc232_crit_edge:                 ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc232

if.end137:                                        ; preds = %if.end8.i.i
  %50 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %size, align 8
  %sub140 = add i8 %51, -2
  %size142 = getelementptr inbounds %struct.hbucket, ptr %call9.i.i, i32 0, i32 2
  %52 = ptrtoint ptr %size142 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %sub140, ptr %size142, align 16
  %53 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %pos, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %cmp146336.not = icmp eq i8 %54, 0
  br i1 %cmp146336.not, label %if.end137.for.end168_crit_edge, label %for.body148.lr.ph

if.end137.for.end168_crit_edge:                   ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end168

for.body148.lr.ph:                                ; preds = %if.end137
  %used149 = getelementptr inbounds %struct.hbucket, ptr %7, i32 0, i32 1
  %value155 = getelementptr inbounds %struct.hbucket, ptr %7, i32 0, i32 5
  %value159 = getelementptr inbounds %struct.hbucket, ptr %call9.i.i, i32 0, i32 5
  %used163 = getelementptr inbounds %struct.hbucket, ptr %call9.i.i, i32 0, i32 1
  br label %for.body148

for.body148:                                      ; preds = %for.inc166.for.body148_crit_edge, %for.body148.lr.ph
  %d.2339 = phi i32 [ 0, %for.body148.lr.ph ], [ %d.3, %for.inc166.for.body148_crit_edge ]
  %j.1337 = phi i32 [ 0, %for.body148.lr.ph ], [ %inc167, %for.inc166.for.body148_crit_edge ]
  %div3.i313 = lshr i32 %j.1337, 5
  %arrayidx.i314 = getelementptr i32, ptr %used149, i32 %div3.i313
  %55 = ptrtoint ptr %arrayidx.i314 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %arrayidx.i314, align 4
  %and.i315 = and i32 %j.1337, 31
  %57 = shl nuw i32 1, %and.i315
  %58 = and i32 %56, %57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool152.not = icmp eq i32 %58, 0
  br i1 %tobool152.not, label %for.body148.for.inc166_crit_edge, label %if.end154

for.body148.for.inc166_crit_edge:                 ; preds = %for.body148
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc166

if.end154:                                        ; preds = %for.body148
  call void @__sanitizer_cov_trace_pc() #17
  %mul157 = mul i32 %j.1337, %1
  %add.ptr158 = getelementptr i8, ptr %value155, i32 %mul157
  %mul161 = mul i32 %d.2339, %1
  %add.ptr162 = getelementptr i8, ptr %value159, i32 %mul161
  %59 = call ptr @memcpy(ptr %add.ptr162, ptr %add.ptr158, i32 %1)
  tail call void @_set_bit(i32 noundef %d.2339, ptr noundef %used163) #15
  %inc165 = add i32 %d.2339, 1
  br label %for.inc166

for.inc166:                                       ; preds = %if.end154, %for.body148.for.inc166_crit_edge
  %d.3 = phi i32 [ %inc165, %if.end154 ], [ %d.2339, %for.body148.for.inc166_crit_edge ]
  %inc167 = add nuw nsw i32 %j.1337, 1
  %60 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %pos, align 1
  %conv145 = zext i8 %61 to i32
  %cmp146 = icmp ult i32 %inc167, %conv145
  br i1 %cmp146, label %for.inc166.for.body148_crit_edge, label %for.inc166.for.end168_crit_edge

for.inc166.for.end168_crit_edge:                  ; preds = %for.inc166
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end168

for.inc166.for.body148_crit_edge:                 ; preds = %for.inc166
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body148

for.end168:                                       ; preds = %for.inc166.for.end168_crit_edge, %if.end137.for.end168_crit_edge
  %d.2.lcssa = phi i32 [ 0, %if.end137.for.end168_crit_edge ], [ %d.3, %for.inc166.for.end168_crit_edge ]
  %conv169 = trunc i32 %d.2.lcssa to i8
  %pos170 = getelementptr inbounds %struct.hbucket, ptr %call9.i.i, i32 0, i32 3
  %62 = ptrtoint ptr %pos170 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv169, ptr %pos170, align 1
  %63 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %hregion, align 4
  %ext_size175 = getelementptr %struct.ip_set_region, ptr %64, i32 %r, i32 1
  %65 = ptrtoint ptr %ext_size175 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ext_size175, align 4
  %sub176 = add i32 %add172.neg, %66
  store i32 %sub176, ptr %ext_size175, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !243
  br label %for.inc232.sink.split

for.inc232.sink.split:                            ; preds = %for.end168, %if.then71
  %retval.1.i.i326.sink = phi ptr [ %call9.i.i, %for.end168 ], [ null, %if.then71 ]
  %67 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %retval.1.i.i326.sink, ptr %arrayidx16, align 4
  tail call void @kvfree_call_rcu(ptr noundef nonnull %7, ptr noundef null) #15
  br label %for.inc232

for.inc232:                                       ; preds = %for.inc232.sink.split, %if.end8.i.i.for.inc232_crit_edge, %for.end64.for.inc232_crit_edge, %for.cond17.preheader.for.inc232_crit_edge, %do.end.for.inc232_crit_edge
  %inc233 = add nuw i32 %i.0342, 1
  %exitcond.not = icmp eq i32 %inc233, %cond12
  br i1 %exitcond.not, label %for.inc232.for.end234_crit_edge, label %for.inc232.do.end_crit_edge

for.inc232.do.end_crit_edge:                      ; preds = %for.inc232
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

for.inc232.for.end234_crit_edge:                  ; preds = %for.inc232
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end234

for.end234:                                       ; preds = %for.inc232.for.end234_crit_edge, %entry.for.end234_crit_edge
  %68 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %hregion, align 4
  %arrayidx236 = getelementptr %struct.ip_set_region, ptr %69, i32 %r
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx236) #15
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
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hash_netiface4_ahash_destroy(ptr noundef %set, ptr noundef %t, i1 noundef zeroext %ext_destroy) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
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
  tail call void %18(ptr noundef %set, ptr noundef %add.ptr.i.i) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

if.end7:                                          ; preds = %for.inc.i.if.end7_crit_edge, %if.then6.if.end7_crit_edge, %if.end.if.end7_crit_edge
  tail call void @kfree(ptr noundef nonnull %1) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  %hregion = getelementptr inbounds %struct.htable, ptr %t, i32 0, i32 4
  %23 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hregion, align 4
  tail call void @ip_set_free(ptr noundef %24) #15
  tail call void @ip_set_free(ptr noundef %t) #15
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #15
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr noundef %map) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_acquire(ptr noundef %map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #15
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
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #12

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr noundef %map) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_release(ptr noundef %map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #15
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #15
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

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

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
define internal fastcc i32 @hash_netiface4_test_cidrs(ptr noundef %set, ptr nocapture noundef %d, ptr noundef %ext, ptr noundef %mext, i32 noundef %flags) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 15
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %1, align 4
  %call = tail call i32 @rcu_read_lock_bh_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b111 = load i1, ptr @hash_netiface4_test_cidrs.__warned, align 1
  br i1 %.b111, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @hash_netiface4_test_cidrs.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1161, ptr noundef nonnull @.str.9) #15
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_netiface4_test_cidrs.__UNIQUE_ID_ddebug674, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_netiface4_test_cidrs, %if.then16)) #15
          to label %do.end19 [label %if.then16], !srcloc !224

if.then16:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_netiface4_test_cidrs.__UNIQUE_ID_ddebug674, ptr noundef nonnull @.str.24) #15
  br label %do.end19

do.end19:                                         ; preds = %if.then16, %do.end7
  %cidr1.i = getelementptr inbounds %struct.hash_netiface4_elem, ptr %d, i32 0, i32 2
  %initval = getelementptr inbounds %struct.hash_netiface4, ptr %1, i32 0, i32 3
  %arrayidx32.i = getelementptr i32, ptr %d, i32 1
  %htable_bits = getelementptr inbounds %struct.htable, ptr %3, i32 0, i32 2
  %dsize = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %iface26.i = getelementptr inbounds %struct.hash_netiface4_elem, ptr %d, i32 0, i32 6
  br label %land.lhs.true20

land.lhs.true20:                                  ; preds = %for.inc78.land.lhs.true20_crit_edge, %do.end19
  %j.0127 = phi i32 [ 0, %do.end19 ], [ %inc79, %for.inc78.land.lhs.true20_crit_edge ]
  %multi.0126 = phi i32 [ 0, %do.end19 ], [ %multi.4, %for.inc78.land.lhs.true20_crit_edge ]
  %cidr = getelementptr %struct.hash_netiface4, ptr %1, i32 0, i32 7, i32 %j.0127, i32 1
  %4 = ptrtoint ptr %cidr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cidr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool22.not = icmp ne i8 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %multi.0126)
  %tobool23.not = icmp eq i32 %multi.0126, 0
  %or.cond = select i1 %tobool22.not, i1 %tobool23.not, i1 false
  br i1 %or.cond, label %for.body, label %land.lhs.true20.cleanup_crit_edge

land.lhs.true20.cleanup_crit_edge:                ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #17
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
  %10 = ptrtoint ptr %cidr1.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %sub, ptr %cidr1.i, align 1
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
  %or.i140.i = tail call i32 @llvm.fshl.i32(i32 %add33.i, i32 %add33.i, i32 14) #15
  %sub39.i = sub i32 %xor37.i, %or.i140.i
  %xor40.i = xor i32 %sub39.i, %add36.i
  %or.i141.i = tail call i32 @llvm.fshl.i32(i32 %sub39.i, i32 %sub39.i, i32 11) #15
  %sub42.i = sub i32 %xor40.i, %or.i141.i
  %xor43.i = xor i32 %sub42.i, %add33.i
  %or.i142.i = tail call i32 @llvm.fshl.i32(i32 %sub42.i, i32 %sub42.i, i32 25) #15
  %sub45.i = sub i32 %xor43.i, %or.i142.i
  %xor46.i = xor i32 %sub45.i, %sub39.i
  %or.i143.i = tail call i32 @llvm.fshl.i32(i32 %sub45.i, i32 %sub45.i, i32 16) #15
  %sub48.i = sub i32 %xor46.i, %or.i143.i
  %xor49.i = xor i32 %sub48.i, %sub42.i
  %or.i144.i = tail call i32 @llvm.fshl.i32(i32 %sub48.i, i32 %sub48.i, i32 4) #15
  %sub51.i = sub i32 %xor49.i, %or.i144.i
  %xor52.i = xor i32 %sub51.i, %sub45.i
  %or.i145.i = tail call i32 @llvm.fshl.i32(i32 %sub51.i, i32 %sub51.i, i32 14) #15
  %sub54.i = sub i32 %xor52.i, %or.i145.i
  %xor55.i = xor i32 %sub54.i, %sub48.i
  %or.i146.i = tail call i32 @llvm.fshl.i32(i32 %sub54.i, i32 %sub54.i, i32 24) #15
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
  %call45 = tail call i32 @rcu_read_lock_bh_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %land.lhs.true47, label %for.body.do.end55_crit_edge

for.body.do.end55_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end55

land.lhs.true47:                                  ; preds = %for.body
  %call48 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %land.lhs.true47.do.end55_crit_edge, label %land.lhs.true50

land.lhs.true47.do.end55_crit_edge:               ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end55

land.lhs.true50:                                  ; preds = %land.lhs.true47
  %.b109110 = load i1, ptr @hash_netiface4_test_cidrs.__warned.25, align 1
  br i1 %.b109110, label %land.lhs.true50.do.end55_crit_edge, label %if.then52

land.lhs.true50.do.end55_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end55

if.then52:                                        ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @hash_netiface4_test_cidrs.__warned.25, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1185, ptr noundef nonnull @.str.9) #15
  br label %do.end55

do.end55:                                         ; preds = %if.then52, %land.lhs.true50.do.end55_crit_edge, %land.lhs.true47.do.end55_crit_edge, %for.body.do.end55_crit_edge
  %tobool57.not = icmp eq ptr %18, null
  br i1 %tobool57.not, label %do.end55.for.inc78_crit_edge, label %for.cond60.preheader

do.end55.for.inc78_crit_edge:                     ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc78

for.cond60.preheader:                             ; preds = %do.end55
  %pos = getelementptr inbounds %struct.hbucket, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %pos, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp62122.not = icmp eq i8 %20, 0
  br i1 %cmp62122.not, label %for.cond60.preheader.for.inc78_crit_edge, label %for.body64.lr.ph

for.cond60.preheader.for.inc78_crit_edge:         ; preds = %for.cond60.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc78

for.body64.lr.ph:                                 ; preds = %for.cond60.preheader
  %used = getelementptr inbounds %struct.hbucket, ptr %18, i32 0, i32 1
  %value = getelementptr inbounds %struct.hbucket, ptr %18, i32 0, i32 5
  br label %for.body64

for.body64:                                       ; preds = %for.inc.for.body64_crit_edge, %for.body64.lr.ph
  %i.0124 = phi i32 [ 0, %for.body64.lr.ph ], [ %inc, %for.inc.for.body64_crit_edge ]
  %multi.1123 = phi i32 [ 0, %for.body64.lr.ph ], [ %multi.3, %for.inc.for.body64_crit_edge ]
  %div3.i = lshr i32 %i.0124, 5
  %arrayidx.i = getelementptr i32, ptr %used, i32 %div3.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.0124, 31
  %23 = shl nuw i32 1, %and.i
  %24 = and i32 %22, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool66.not = icmp eq i32 %24, 0
  br i1 %tobool66.not, label %for.body64.for.inc_crit_edge, label %if.end68

for.body64.for.inc_crit_edge:                     ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end68:                                         ; preds = %for.body64
  %25 = ptrtoint ptr %dsize to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dsize, align 4
  %mul = mul i32 %26, %i.0124
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true.i:                                  ; preds = %if.end68
  %cidr.i = getelementptr inbounds %struct.hash_netiface4_elem, ptr %add.ptr, i32 0, i32 2
  %31 = ptrtoint ptr %cidr.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %cidr.i, align 1
  %33 = ptrtoint ptr %cidr1.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %cidr1.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %32, i8 %34)
  %cmp6.i = icmp eq i8 %32, %34
  br i1 %cmp6.i, label %land.lhs.true8.i, label %land.lhs.true.i.for.inc_crit_edge

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i
  %inc.i = add i32 %multi.1123, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i)
  %tobool.not.i = icmp eq i32 %inc.i, 0
  br i1 %tobool.not.i, label %land.lhs.true8.i.for.inc_crit_edge, label %land.lhs.true9.i

land.lhs.true8.i.for.inc_crit_edge:               ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true9.i:                                 ; preds = %land.lhs.true8.i
  %physdev.i = getelementptr inbounds %struct.hash_netiface4_elem, ptr %add.ptr, i32 0, i32 1
  %35 = ptrtoint ptr %physdev.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %physdev.i, align 4
  %37 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx32.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %38)
  %cmp13.i = icmp eq i8 %36, %38
  br i1 %cmp13.i, label %land.rhs.i, label %land.lhs.true9.i.for.inc_crit_edge

land.lhs.true9.i.for.inc_crit_edge:               ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.rhs.i:                                       ; preds = %land.lhs.true9.i
  %wildcard.i = getelementptr inbounds %struct.hash_netiface4_elem, ptr %add.ptr, i32 0, i32 5
  %39 = ptrtoint ptr %wildcard.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %wildcard.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool16.not.i = icmp eq i8 %40, 0
  %iface24.i = getelementptr inbounds %struct.hash_netiface4_elem, ptr %add.ptr, i32 0, i32 6
  br i1 %tobool16.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = tail call i32 @strlen(ptr noundef %iface24.i) #20
  %call21.i = tail call i32 @strncmp(ptr noundef %iface24.i, ptr noundef %iface26.i, i32 noundef %call.i) #15
  br label %hash_netiface4_data_equal.exit

cond.false.i:                                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  %call28.i = tail call i32 @strcmp(ptr noundef %iface24.i, ptr noundef %iface26.i) #20
  br label %hash_netiface4_data_equal.exit

hash_netiface4_data_equal.exit:                   ; preds = %cond.false.i, %cond.true.i
  %cond.in.in.i = phi i32 [ %call21.i, %cond.true.i ], [ %call28.i, %cond.false.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.in.in.i)
  %cond.in.i = icmp eq i32 %cond.in.in.i, 0
  br i1 %cond.in.i, label %if.end72, label %hash_netiface4_data_equal.exit.for.inc_crit_edge

hash_netiface4_data_equal.exit.for.inc_crit_edge: ; preds = %hash_netiface4_data_equal.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end72:                                         ; preds = %hash_netiface4_data_equal.exit
  %call.i113 = tail call zeroext i1 @ip_set_match_extensions(ptr noundef %set, ptr noundef %ext, ptr noundef %mext, i32 noundef %flags, ptr noundef %add.ptr) #15
  br i1 %call.i113, label %hash_netiface4_data_match.exit, label %if.end72.for.inc_crit_edge

if.end72.for.inc_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

hash_netiface4_data_match.exit:                   ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #17
  %nomatch.i.i = getelementptr inbounds %struct.hash_netiface4_elem, ptr %add.ptr, i32 0, i32 3
  %41 = ptrtoint ptr %nomatch.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %nomatch.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i.i = icmp eq i8 %42, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 1, i32 -39
  br label %cleanup

for.inc:                                          ; preds = %if.end72.for.inc_crit_edge, %hash_netiface4_data_equal.exit.for.inc_crit_edge, %land.lhs.true9.i.for.inc_crit_edge, %land.lhs.true8.i.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge, %if.end68.for.inc_crit_edge, %for.body64.for.inc_crit_edge
  %multi.3 = phi i32 [ %multi.1123, %for.body64.for.inc_crit_edge ], [ %inc.i, %hash_netiface4_data_equal.exit.for.inc_crit_edge ], [ %multi.1123, %if.end68.for.inc_crit_edge ], [ %multi.1123, %land.lhs.true.i.for.inc_crit_edge ], [ %inc.i, %land.lhs.true9.i.for.inc_crit_edge ], [ 0, %land.lhs.true8.i.for.inc_crit_edge ], [ 0, %if.end72.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0124, 1
  %43 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %pos, align 1
  %conv61 = zext i8 %44 to i32
  %cmp62 = icmp ult i32 %inc, %conv61
  br i1 %cmp62, label %for.inc.for.body64_crit_edge, label %for.inc.for.inc78_crit_edge

for.inc.for.inc78_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc78

for.inc.for.body64_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body64

for.inc78:                                        ; preds = %for.inc.for.inc78_crit_edge, %for.cond60.preheader.for.inc78_crit_edge, %do.end55.for.inc78_crit_edge
  %multi.4 = phi i32 [ 0, %do.end55.for.inc78_crit_edge ], [ 0, %for.cond60.preheader.for.inc78_crit_edge ], [ %multi.3, %for.inc.for.inc78_crit_edge ]
  %inc79 = add nuw nsw i32 %j.0127, 1
  %exitcond.not = icmp eq i32 %inc79, 33
  br i1 %exitcond.not, label %for.inc78.cleanup_crit_edge, label %for.inc78.land.lhs.true20_crit_edge

for.inc78.land.lhs.true20_crit_edge:              ; preds = %for.inc78
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true20

for.inc78.cleanup_crit_edge:                      ; preds = %for.inc78
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %for.inc78.cleanup_crit_edge, %hash_netiface4_data_match.exit, %land.lhs.true20.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond.i.i, %hash_netiface4_data_match.exit ], [ 0, %for.inc78.cleanup_crit_edge ], [ 0, %land.lhs.true20.cleanup_crit_edge ]
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
define internal fastcc void @cond_resched_rcu() unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %call.i1 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i1, label %entry.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i4

entry.rcu_read_unlock.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i4:                                 ; preds = %entry
  %call1.i2 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i2)
  %tobool.not.i3 = icmp eq i32 %call1.i2, 0
  br i1 %tobool.not.i3, label %land.lhs.true.i4.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i6

land.lhs.true.i4.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i4
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i6:                                ; preds = %land.lhs.true.i4
  %.b4.i5 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i5, label %land.lhs.true2.i6.rcu_read_unlock.exit_crit_edge, label %if.then.i7

land.lhs.true2.i6.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i6
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i7:                                       ; preds = %land.lhs.true2.i6
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.45) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i7, %land.lhs.true2.i6.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i4.rcu_read_unlock.exit_crit_edge, %entry.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !241
  %0 = tail call i32 @llvm.read_register.i32(metadata !214) #15
  %and.i.i.i.i.i8 = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i8 to ptr
  %preempt_count.i.i.i.i9 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i9 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i9, align 4
  %sub.i.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i9, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  tail call void @__might_resched(ptr noundef nonnull @.str.43, i32 noundef 2089, i32 noundef 0) #15
  %call.i10 = tail call i32 @__cond_resched() #15
  %4 = tail call i32 @llvm.read_register.i32(metadata !214) #15
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !240
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %rcu_read_unlock.exit.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

rcu_read_unlock.exit.rcu_read_lock.exit_crit_edge: ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %rcu_read_unlock.exit
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 696, ptr noundef nonnull @.str.42) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %rcu_read_unlock.exit.rcu_read_lock.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_set_put_extensions(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #13

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
define internal i32 @hash_netiface6_kadt(ptr noundef %set, ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %par, i32 noundef %adt, ptr noundef %opt) #2 align 64 {
entry:
  %e = alloca %struct.hash_netiface6_elem, align 4
  %ext = alloca %struct.ip_set_ext, align 8
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %e) #15
  %6 = getelementptr inbounds i8, ptr %e, i32 16
  %7 = call ptr @memset(ptr %6, i32 0, i32 24)
  %cidr = getelementptr inbounds %struct.hash_netiface6_elem, ptr %e, i32 0, i32 2
  %cidr3 = getelementptr inbounds %struct.hash_netiface6, ptr %1, i32 0, i32 7, i32 0, i32 1
  %8 = ptrtoint ptr %cidr3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %cidr3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  %sub = add i8 %9, -1
  %spec.select = select i1 %tobool.not, i8 -128, i8 %sub
  %10 = ptrtoint ptr %cidr to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %spec.select, ptr %cidr, align 1
  %elem = getelementptr inbounds %struct.hash_netiface6_elem, ptr %e, i32 0, i32 4
  %11 = ptrtoint ptr %elem to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %elem, align 1
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %ext) #15
  %12 = getelementptr inbounds i8, ptr %ext, i32 40
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 -1, ptr %12, align 8, !annotation !227
  %14 = call ptr @memset(ptr %ext, i32 0, i32 16)
  %packets = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 1
  %15 = ptrtoint ptr %packets to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 1, ptr %packets, align 8
  %bytes = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 2
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len, align 4
  %conv11 = zext i32 %17 to i64
  %18 = ptrtoint ptr %bytes to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %conv11, ptr %bytes, align 8
  %comment = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 3
  %19 = ptrtoint ptr %comment to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %comment, align 8
  %timeout = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 4
  %ext12 = getelementptr inbounds %struct.ip_set_adt_opt, ptr %opt, i32 0, i32 4
  %timeout13 = getelementptr inbounds %struct.ip_set_adt_opt, ptr %opt, i32 0, i32 4, i32 4
  %20 = ptrtoint ptr %timeout13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %timeout13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp.not = icmp eq i32 %21, -1
  br i1 %cmp.not, label %cond.false18, label %entry.cond.end20_crit_edge

entry.cond.end20_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end20

cond.false18:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %timeout19 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 10
  %22 = ptrtoint ptr %timeout19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %timeout19, align 4
  br label %cond.end20

cond.end20:                                       ; preds = %cond.false18, %entry.cond.end20_crit_edge
  %cond21 = phi i32 [ %23, %cond.false18 ], [ %21, %entry.cond.end20_crit_edge ]
  %24 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %cond21, ptr %timeout, align 4
  %packets_op = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 5
  %25 = ptrtoint ptr %packets_op to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %packets_op, align 8
  %bytes_op = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 6
  %26 = ptrtoint ptr %bytes_op to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %bytes_op, align 1
  %target = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 7
  %27 = ptrtoint ptr %target to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %target, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %adt)
  %cmp22 = icmp eq i32 %adt, 2
  br i1 %cmp22, label %if.then, label %cond.end20.if.end_crit_edge

cond.end20.if.end_crit_edge:                      ; preds = %cond.end20
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %cond.end20
  call void @__sanitizer_cov_trace_pc() #17
  %28 = ptrtoint ptr %cidr to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -128, ptr %cidr, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end20.if.end_crit_edge
  %flags = getelementptr inbounds %struct.ip_set_adt_opt, ptr %opt, i32 0, i32 2
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %flags, align 2
  %31 = and i8 %30, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool26.not = icmp eq i8 %31, 0
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %32 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %34 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %35 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %33, i32 %conv.i.i.i
  %saddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 0, i32 5
  %daddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 0, i32 6
  %cond.i = select i1 %tobool26.not, ptr %daddr.i, ptr %saddr.i
  %36 = call ptr @memcpy(ptr %e, ptr %cond.i, i32 16)
  %37 = ptrtoint ptr %cidr to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %cidr, align 1
  %idxprom.i.i = zext i8 %38 to i32
  %arrayidx.i.i = getelementptr [0 x %union.nf_inet_addr], ptr @ip_set_netmask_map, i32 0, i32 %idxprom.i.i
  %39 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i.i, align 4
  %41 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %e, align 4
  %and.i = and i32 %42, %40
  store i32 %and.i, ptr %e, align 4
  %arrayidx3.i = getelementptr i32, ptr %arrayidx.i.i, i32 1
  %43 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx3.i, align 4
  %arrayidx4.i = getelementptr inbounds [4 x i32], ptr %e, i32 0, i32 1
  %45 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx4.i, align 4
  %and5.i = and i32 %46, %44
  store i32 %and5.i, ptr %arrayidx4.i, align 4
  %arrayidx7.i = getelementptr i32, ptr %arrayidx.i.i, i32 2
  %47 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx7.i, align 4
  %arrayidx8.i = getelementptr inbounds [4 x i32], ptr %e, i32 0, i32 2
  %49 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx8.i, align 4
  %and9.i = and i32 %50, %48
  store i32 %and9.i, ptr %arrayidx8.i, align 4
  %arrayidx11.i = getelementptr i32, ptr %arrayidx.i.i, i32 3
  %51 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx11.i, align 4
  %arrayidx12.i = getelementptr inbounds [4 x i32], ptr %e, i32 0, i32 3
  %53 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx12.i, align 4
  %and13.i = and i32 %54, %52
  store i32 %and13.i, ptr %arrayidx12.i, align 4
  %cmdflags = getelementptr inbounds %struct.ip_set_adt_opt, ptr %opt, i32 0, i32 3
  %55 = ptrtoint ptr %cmdflags to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cmdflags, align 4
  %and29 = and i32 %56, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.else, label %if.then31

if.then31:                                        ; preds = %if.end
  %57 = and i8 %30, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool35.not = icmp eq i8 %57, 0
  %active_extensions.i.i.i.i.i113 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %58 = ptrtoint ptr %active_extensions.i.i.i.i.i113 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %active_extensions.i.i.i.i.i113, align 1
  %60 = and i8 %59, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool.i.not.i.i.i.i114 = icmp eq i8 %60, 0
  br i1 %tobool35.not, label %cond.false37, label %cond.true36

cond.true36:                                      ; preds = %if.then31
  br i1 %tobool.i.not.i.i.i.i114, label %cond.true36.cleanup85_crit_edge, label %nf_bridge_info_get.exit.i.i

cond.true36.cleanup85_crit_edge:                  ; preds = %cond.true36
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup85

nf_bridge_info_get.exit.i.i:                      ; preds = %cond.true36
  %extensions.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %61 = ptrtoint ptr %extensions.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %extensions.i.i.i.i, align 8
  %offset.i.i.i.i = getelementptr inbounds %struct.skb_ext, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %offset.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %offset.i.i.i.i, align 1
  %conv.i.i.i.i = zext i8 %64 to i32
  %shl.i.i.i.i = shl nuw nsw i32 %conv.i.i.i.i, 3
  %add.ptr.i.i.i.i = getelementptr i8, ptr %62, i32 %shl.i.i.i.i
  %tobool.not.i.i = icmp eq ptr %add.ptr.i.i.i.i, null
  br i1 %tobool.not.i.i, label %nf_bridge_info_get.exit.i.i.cleanup85_crit_edge, label %cond.true.i.i

nf_bridge_info_get.exit.i.i.cleanup85_crit_edge:  ; preds = %nf_bridge_info_get.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup85

cond.true.i.i:                                    ; preds = %nf_bridge_info_get.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %physindev.i.i = getelementptr inbounds %struct.nf_bridge_info, ptr %add.ptr.i.i.i.i, i32 0, i32 2
  br label %cond.end39

cond.false37:                                     ; preds = %if.then31
  br i1 %tobool.i.not.i.i.i.i114, label %cond.false37.cleanup85_crit_edge, label %nf_bridge_info_get.exit.i.i121

cond.false37.cleanup85_crit_edge:                 ; preds = %cond.false37
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup85

nf_bridge_info_get.exit.i.i121:                   ; preds = %cond.false37
  %extensions.i.i.i.i115 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %65 = ptrtoint ptr %extensions.i.i.i.i115 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %extensions.i.i.i.i115, align 8
  %offset.i.i.i.i116 = getelementptr inbounds %struct.skb_ext, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %offset.i.i.i.i116 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %offset.i.i.i.i116, align 1
  %conv.i.i.i.i117 = zext i8 %68 to i32
  %shl.i.i.i.i118 = shl nuw nsw i32 %conv.i.i.i.i117, 3
  %add.ptr.i.i.i.i119 = getelementptr i8, ptr %66, i32 %shl.i.i.i.i118
  %tobool.not.i.i120 = icmp eq ptr %add.ptr.i.i.i.i119, null
  br i1 %tobool.not.i.i120, label %nf_bridge_info_get.exit.i.i121.cleanup85_crit_edge, label %cond.true.i.i122

nf_bridge_info_get.exit.i.i121.cleanup85_crit_edge: ; preds = %nf_bridge_info_get.exit.i.i121
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup85

cond.true.i.i122:                                 ; preds = %nf_bridge_info_get.exit.i.i121
  call void @__sanitizer_cov_trace_pc() #17
  %physoutdev.i.i = getelementptr inbounds %struct.nf_bridge_info, ptr %add.ptr.i.i.i.i119, i32 0, i32 3
  br label %cond.end39

cond.end39:                                       ; preds = %cond.true.i.i122, %cond.true.i.i
  %cond40.in = phi ptr [ %physindev.i.i, %cond.true.i.i ], [ %physoutdev.i.i, %cond.true.i.i122 ]
  %69 = ptrtoint ptr %cond40.in to i32
  call void @__asan_load4_noabort(i32 %69)
  %cond40 = load ptr, ptr %cond40.in, align 4
  %tobool41.not = icmp eq ptr %cond40, null
  br i1 %tobool41.not, label %cond.end39.cleanup85_crit_edge, label %if.end43

cond.end39.cleanup85_crit_edge:                   ; preds = %cond.end39
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup85

if.end43:                                         ; preds = %cond.end39
  call void @__sanitizer_cov_trace_pc() #17
  %iface = getelementptr inbounds %struct.hash_netiface6_elem, ptr %e, i32 0, i32 6
  %call44 = call i32 @strlcpy(ptr noundef %iface, ptr noundef nonnull %cond40, i32 noundef 16) #15
  %physdev = getelementptr inbounds %struct.hash_netiface6_elem, ptr %e, i32 0, i32 1
  %70 = ptrtoint ptr %physdev to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 1, ptr %physdev, align 4
  br label %if.end74

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %iface45 = getelementptr inbounds %struct.hash_netiface6_elem, ptr %e, i32 0, i32 6
  %71 = and i8 %30, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool50.not = icmp eq i8 %71, 0
  %state61 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 2
  %72 = ptrtoint ptr %state61 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %state61, align 4
  %out = getelementptr inbounds %struct.nf_hook_state, ptr %73, i32 0, i32 3
  %in = getelementptr inbounds %struct.nf_hook_state, ptr %73, i32 0, i32 2
  %out.sink = select i1 %tobool50.not, ptr %out, ptr %in
  %74 = ptrtoint ptr %out.sink to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %out.sink, align 4
  %tobool62.not = icmp eq ptr %75, null
  %spec.select112 = select i1 %tobool62.not, ptr @.str.8, ptr %75
  %call73 = call i32 @strlcpy(ptr noundef %iface45, ptr noundef nonnull %spec.select112, i32 noundef 16) #15
  br label %if.end74

if.end74:                                         ; preds = %if.else, %if.end43
  %iface75 = getelementptr inbounds %struct.hash_netiface6_elem, ptr %e, i32 0, i32 6
  %76 = ptrtoint ptr %iface75 to i32
  call void @__asan_load1_noabort(i32 %76)
  %char0 = load i8, ptr %iface75, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %cmp78 = icmp eq i8 %char0, 0
  br i1 %cmp78, label %if.end74.cleanup85_crit_edge, label %if.end81

if.end74.cleanup85_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup85

if.end81:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #17
  %77 = ptrtoint ptr %cmdflags to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %cmdflags, align 4
  %call84 = call i32 %5(ptr noundef %set, ptr noundef nonnull %e, ptr noundef nonnull %ext, ptr noundef %ext12, i32 noundef %78) #15
  br label %cleanup85

cleanup85:                                        ; preds = %if.end81, %if.end74.cleanup85_crit_edge, %cond.end39.cleanup85_crit_edge, %nf_bridge_info_get.exit.i.i121.cleanup85_crit_edge, %cond.false37.cleanup85_crit_edge, %nf_bridge_info_get.exit.i.i.cleanup85_crit_edge, %cond.true36.cleanup85_crit_edge
  %retval.1 = phi i32 [ %call84, %if.end81 ], [ -22, %if.end74.cleanup85_crit_edge ], [ -22, %cond.end39.cleanup85_crit_edge ], [ -22, %nf_bridge_info_get.exit.i.i.cleanup85_crit_edge ], [ -22, %cond.true36.cleanup85_crit_edge ], [ -22, %nf_bridge_info_get.exit.i.i121.cleanup85_crit_edge ], [ -22, %cond.false37.cleanup85_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %ext) #15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %e) #15
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hash_netiface6_uadt(ptr noundef %set, ptr noundef %tb, i32 noundef %adt, ptr nocapture noundef writeonly %lineno, i32 noundef %flags, i1 noundef zeroext %retried) #2 align 64 {
entry:
  %e = alloca %struct.hash_netiface6_elem, align 4
  %ext = alloca %struct.ip_set_ext, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %variant = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 5
  %0 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %variant, align 4
  %arrayidx = getelementptr %struct.ip_set_type_variant, ptr %1, i32 0, i32 2, i32 %adt
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %e) #15
  %4 = call ptr @memset(ptr %e, i32 0, i32 40)
  %5 = getelementptr inbounds { %union.nf_inet_addr, i8, i8, i8, i8, i8, [16 x i8], [3 x i8] }, ptr %e, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -128, ptr %5, align 1
  %7 = getelementptr inbounds { %union.nf_inet_addr, i8, i8, i8, i8, i8, [16 x i8], [3 x i8] }, ptr %e, i32 0, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %ext) #15
  %9 = getelementptr inbounds i8, ptr %ext, i32 40
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 -1, ptr %9, align 8, !annotation !227
  %11 = call ptr @memset(ptr %ext, i32 0, i32 16)
  %packets = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 1
  %comment = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 3
  %12 = call ptr @memset(ptr %packets, i32 255, i32 16)
  %13 = ptrtoint ptr %comment to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %comment, align 8
  %timeout = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 4
  %timeout2 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 10
  %14 = ptrtoint ptr %timeout2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %timeout2, align 4
  %16 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %timeout, align 4
  %packets_op = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 5
  %17 = ptrtoint ptr %packets_op to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %packets_op, align 8
  %bytes_op = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 6
  %18 = ptrtoint ptr %bytes_op to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %bytes_op, align 1
  %target = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 7
  %19 = ptrtoint ptr %target to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %target, align 2
  %arrayidx3 = getelementptr ptr, ptr %tb, i32 9
  %20 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx3, align 4
  %tobool.not = icmp eq ptr %21, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 4
  %22 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i.i, align 4
  %24 = ptrtoint ptr %lineno to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %lineno, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx5 = getelementptr ptr, ptr %tb, i32 1
  %25 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx5, align 4
  %tobool6.not = icmp eq ptr %26, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false, !prof !225

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %arrayidx7 = getelementptr ptr, ptr %tb, i32 23
  %27 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx7, align 4
  %tobool8.not = icmp eq ptr %28, null
  br i1 %tobool8.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.rhs, !prof !225

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.rhs:                                          ; preds = %lor.lhs.false
  %arrayidx.i = getelementptr ptr, ptr %tb, i32 8
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i, label %lor.rhs.if.end14_crit_edge, label %ip_set_optattr_netorder.exit

lor.rhs.if.end14_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

ip_set_optattr_netorder.exit:                     ; preds = %lor.rhs
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %nla_type.i, align 2
  %33 = and i16 %32, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool2.i.not = icmp eq i16 %33, 0
  br i1 %tobool2.i.not, label %ip_set_optattr_netorder.exit.cleanup_crit_edge, label %ip_set_optattr_netorder.exit.if.end14_crit_edge, !prof !225

ip_set_optattr_netorder.exit.if.end14_crit_edge:  ; preds = %ip_set_optattr_netorder.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

ip_set_optattr_netorder.exit.cleanup_crit_edge:   ; preds = %ip_set_optattr_netorder.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end14:                                         ; preds = %ip_set_optattr_netorder.exit.if.end14_crit_edge, %lor.rhs.if.end14_crit_edge
  %arrayidx15 = getelementptr ptr, ptr %tb, i32 2
  %34 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx15, align 4
  %tobool16.not = icmp eq ptr %35, null
  br i1 %tobool16.not, label %if.end24, label %if.end14.cleanup_crit_edge, !prof !239

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end24:                                         ; preds = %if.end14
  %call26 = call i32 @ip_set_get_ipaddr6(ptr noundef nonnull %26, ptr noundef nonnull %e) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end29:                                         ; preds = %if.end24
  %call30 = call i32 @ip_set_get_extensions(ptr noundef %set, ptr noundef %tb, ptr noundef nonnull %ext) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end33:                                         ; preds = %if.end29
  %arrayidx34 = getelementptr ptr, ptr %tb, i32 3
  %36 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx34, align 4
  %tobool35.not = icmp eq ptr %37, null
  br i1 %tobool35.not, label %if.end33.if.end43_crit_edge, label %if.then36

if.end33.if.end43_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end43

if.then36:                                        ; preds = %if.end33
  %add.ptr.i.i110 = getelementptr i8, ptr %37, i32 4
  %38 = ptrtoint ptr %add.ptr.i.i110 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %add.ptr.i.i110, align 1
  %40 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %39)
  %cmp = icmp ugt i8 %39, -128
  br i1 %cmp, label %if.then36.cleanup_crit_edge, label %if.then36.if.end43_crit_edge

if.then36.if.end43_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end43

if.then36.cleanup_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end43:                                         ; preds = %if.then36.if.end43_crit_edge, %if.end33.if.end43_crit_edge
  %41 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %5, align 1
  %idxprom.i.i = zext i8 %42 to i32
  %arrayidx.i.i = getelementptr [0 x %union.nf_inet_addr], ptr @ip_set_netmask_map, i32 0, i32 %idxprom.i.i
  %43 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i.i, align 4
  %45 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %e, align 4
  %and.i = and i32 %46, %44
  store i32 %and.i, ptr %e, align 4
  %arrayidx3.i = getelementptr i32, ptr %arrayidx.i.i, i32 1
  %47 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx3.i, align 4
  %arrayidx4.i = getelementptr inbounds [4 x i32], ptr %e, i32 0, i32 1
  %49 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx4.i, align 4
  %and5.i = and i32 %50, %48
  store i32 %and5.i, ptr %arrayidx4.i, align 4
  %arrayidx7.i = getelementptr i32, ptr %arrayidx.i.i, i32 2
  %51 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx7.i, align 4
  %arrayidx8.i = getelementptr inbounds [4 x i32], ptr %e, i32 0, i32 2
  %53 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx8.i, align 4
  %and9.i = and i32 %54, %52
  store i32 %and9.i, ptr %arrayidx8.i, align 4
  %arrayidx11.i = getelementptr i32, ptr %arrayidx.i.i, i32 3
  %55 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx11.i, align 4
  %arrayidx12.i = getelementptr inbounds [4 x i32], ptr %e, i32 0, i32 3
  %57 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx12.i, align 4
  %and13.i = and i32 %58, %56
  store i32 %and13.i, ptr %arrayidx12.i, align 4
  %iface = getelementptr inbounds %struct.hash_netiface6_elem, ptr %e, i32 0, i32 6
  %59 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx7, align 4
  %call47 = call i32 @nla_strscpy(ptr noundef %iface, ptr noundef %60, i32 noundef 16) #15
  %61 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx.i, align 4
  %tobool49.not = icmp eq ptr %62, null
  br i1 %tobool49.not, label %if.end43.if.end64_crit_edge, label %if.then50

if.end43.if.end64_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end64

if.then50:                                        ; preds = %if.end43
  %add.ptr.i.i.i = getelementptr i8, ptr %62, i32 4
  %63 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %add.ptr.i.i.i, align 4
  %and = and i32 %64, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool53.not = icmp eq i32 %and, 0
  br i1 %tobool53.not, label %if.then50.if.end55_crit_edge, label %if.then54

if.then50.if.end55_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end55

if.then54:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #17
  %physdev = getelementptr inbounds %struct.hash_netiface6_elem, ptr %e, i32 0, i32 1
  %65 = ptrtoint ptr %physdev to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %physdev, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %if.then50.if.end55_crit_edge
  %and56 = shl i32 %64, 16
  %66 = and i32 %and56, 262144
  %67 = or i32 %66, %flags
  %and60 = and i32 %64, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.end55.if.end64_crit_edge, label %if.then62

if.end55.if.end64_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end64

if.then62:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #17
  %wildcard = getelementptr inbounds %struct.hash_netiface6_elem, ptr %e, i32 0, i32 5
  %68 = ptrtoint ptr %wildcard to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %wildcard, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %if.end55.if.end64_crit_edge, %if.end43.if.end64_crit_edge
  %flags.addr.1 = phi i32 [ %flags, %if.end43.if.end64_crit_edge ], [ %67, %if.then62 ], [ %67, %if.end55.if.end64_crit_edge ]
  %call65 = call i32 %3(ptr noundef %set, ptr noundef nonnull %e, ptr noundef nonnull %ext, ptr noundef nonnull %ext, i32 noundef %flags.addr.1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %adt)
  %cmp.i = icmp eq i32 %adt, 2
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end64.cond.false_crit_edge

if.end64.cond.false_crit_edge:                    ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.false

land.lhs.true.i:                                  ; preds = %if.end64
  %type.i = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 4
  %69 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %type.i, align 4
  %features.i = getelementptr inbounds %struct.ip_set_type, ptr %70, i32 0, i32 8
  %71 = ptrtoint ptr %features.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %features.i, align 4
  %73 = and i16 %72, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %73)
  %tobool.not.i111 = icmp eq i16 %73, 0
  %74 = and i32 %flags.addr.1, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool3.not.i = icmp eq i32 %74, 0
  %or.cond.i = or i1 %tobool3.not.i, %tobool.not.i111
  br i1 %or.cond.i, label %land.lhs.true.i.cond.false_crit_edge, label %ip_set_enomatch.exit

land.lhs.true.i.cond.false_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.false

ip_set_enomatch.exit:                             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %cmp4.i = icmp sgt i32 %call65, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -39, i32 %call65)
  %cmp6.i = icmp eq i32 %call65, -39
  %spec.select.i = or i1 %cmp4.i, %cmp6.i
  br i1 %spec.select.i, label %cond.true, label %ip_set_enomatch.exit.cond.false_crit_edge

ip_set_enomatch.exit.cond.false_crit_edge:        ; preds = %ip_set_enomatch.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.false

cond.true:                                        ; preds = %ip_set_enomatch.exit
  call void @__sanitizer_cov_trace_pc() #17
  %sub = sub nsw i32 0, %call65
  br label %cleanup

cond.false:                                       ; preds = %ip_set_enomatch.exit.cond.false_crit_edge, %land.lhs.true.i.cond.false_crit_edge, %if.end64.cond.false_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4103, i32 %call65)
  %cmp.i112 = icmp eq i32 %call65, -4103
  %and.i113 = and i32 %flags.addr.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i113)
  %tobool.i = icmp ne i32 %and.i113, 0
  %75 = and i1 %cmp.i112, %tobool.i
  %spec.select109 = select i1 %75, i32 0, i32 %call65
  br label %cleanup

cleanup:                                          ; preds = %cond.false, %cond.true, %if.then36.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %ip_set_optattr_netorder.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -4097, %ip_set_optattr_netorder.exit.cleanup_crit_edge ], [ -4356, %if.end14.cleanup_crit_edge ], [ %call26, %if.end24.cleanup_crit_edge ], [ %call30, %if.end29.cleanup_crit_edge ], [ -4104, %if.then36.cleanup_crit_edge ], [ %sub, %cond.true ], [ %spec.select109, %cond.false ], [ -4097, %lor.lhs.false.cleanup_crit_edge ], [ -4097, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %ext) #15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %e) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hash_netiface6_add(ptr noundef %set, ptr nocapture noundef readonly %value, ptr noundef %ext, ptr nocapture noundef readonly %mext, i32 noundef %flags) #2 align 64 {
entry:
  %multi = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 15
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %multi) #15
  %2 = ptrtoint ptr %multi to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %multi, align 4
  tail call fastcc void @local_bh_disable() #15
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %entry.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock_bh.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock_bh.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock_bh.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock_bh.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 750, ptr noundef nonnull @.str.15) #15
  br label %rcu_read_lock_bh.exit

rcu_read_lock_bh.exit:                            ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, %entry.rcu_read_lock_bh.exit_crit_edge
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %1, align 4
  %call3 = tail call i32 @rcu_read_lock_bh_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true, label %rcu_read_lock_bh.exit.jhash2.exit_crit_edge

rcu_read_lock_bh.exit.jhash2.exit_crit_edge:      ; preds = %rcu_read_lock_bh.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %jhash2.exit

land.lhs.true:                                    ; preds = %rcu_read_lock_bh.exit
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.jhash2.exit_crit_edge, label %land.lhs.true7

land.lhs.true.jhash2.exit_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %jhash2.exit

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b603 = load i1, ptr @hash_netiface6_add.__warned, align 1
  br i1 %.b603, label %land.lhs.true7.jhash2.exit_crit_edge, label %if.then

land.lhs.true7.jhash2.exit_crit_edge:             ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  br label %jhash2.exit

if.then:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @hash_netiface6_add.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 855, ptr noundef nonnull @.str.9) #15
  br label %jhash2.exit

jhash2.exit:                                      ; preds = %if.then, %land.lhs.true7.jhash2.exit_crit_edge, %land.lhs.true.jhash2.exit_crit_edge, %rcu_read_lock_bh.exit.jhash2.exit_crit_edge
  %initval = getelementptr inbounds %struct.hash_netiface6, ptr %1, i32 0, i32 3
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
  %or.i.i = tail call i32 @llvm.fshl.i32(i32 %add6.i, i32 %add6.i, i32 4) #15
  %xor.i = xor i32 %sub.i, %or.i.i
  %add7.i = add i32 %add6.i, %add4.i
  %sub8.i = sub i32 %add4.i, %xor.i
  %or.i135.i = tail call i32 @llvm.fshl.i32(i32 %xor.i, i32 %xor.i, i32 6) #15
  %xor10.i = xor i32 %sub8.i, %or.i135.i
  %add11.i = add i32 %xor.i, %add7.i
  %sub12.i = sub i32 %add7.i, %xor10.i
  %or.i136.i = tail call i32 @llvm.fshl.i32(i32 %xor10.i, i32 %xor10.i, i32 8) #15
  %xor14.i = xor i32 %sub12.i, %or.i136.i
  %add15.i = add i32 %xor10.i, %add11.i
  %sub16.i = sub i32 %add11.i, %xor14.i
  %or.i137.i = tail call i32 @llvm.fshl.i32(i32 %xor14.i, i32 %xor14.i, i32 16) #15
  %xor18.i = xor i32 %sub16.i, %or.i137.i
  %add19.i = add i32 %xor14.i, %add15.i
  %sub20.i = sub i32 %add15.i, %xor18.i
  %or.i138.i = tail call i32 @llvm.fshl.i32(i32 %xor18.i, i32 %xor18.i, i32 19) #15
  %xor22.i = xor i32 %sub20.i, %or.i138.i
  %add23.i = add i32 %xor18.i, %add19.i
  %sub24.i = sub i32 %add19.i, %xor22.i
  %or.i139.i = tail call i32 @llvm.fshl.i32(i32 %xor22.i, i32 %xor22.i, i32 4) #15
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
  %or.i140.i = tail call i32 @llvm.fshl.i32(i32 %add33.i, i32 %add33.i, i32 14) #15
  %sub39.i = sub i32 %xor37.i, %or.i140.i
  %xor40.i = xor i32 %add36.i, %sub39.i
  %or.i141.i = tail call i32 @llvm.fshl.i32(i32 %sub39.i, i32 %sub39.i, i32 11) #15
  %sub42.i = sub i32 %xor40.i, %or.i141.i
  %xor43.i = xor i32 %sub42.i, %add33.i
  %or.i142.i = tail call i32 @llvm.fshl.i32(i32 %sub42.i, i32 %sub42.i, i32 25) #15
  %sub45.i = sub i32 %xor43.i, %or.i142.i
  %xor46.i = xor i32 %sub45.i, %sub39.i
  %or.i143.i = tail call i32 @llvm.fshl.i32(i32 %sub45.i, i32 %sub45.i, i32 16) #15
  %sub48.i = sub i32 %xor46.i, %or.i143.i
  %xor49.i = xor i32 %sub48.i, %sub42.i
  %or.i144.i = tail call i32 @llvm.fshl.i32(i32 %sub48.i, i32 %sub48.i, i32 4) #15
  %sub51.i = sub i32 %xor49.i, %or.i144.i
  %xor52.i = xor i32 %sub51.i, %sub45.i
  %or.i145.i = tail call i32 @llvm.fshl.i32(i32 %sub51.i, i32 %sub51.i, i32 14) #15
  %sub54.i = sub i32 %xor52.i, %or.i145.i
  %xor55.i = xor i32 %sub54.i, %sub48.i
  %or.i146.i = tail call i32 @llvm.fshl.i32(i32 %sub54.i, i32 %sub54.i, i32 24) #15
  %sub57.i = sub i32 %xor55.i, %or.i146.i
  %htable_bits = getelementptr inbounds %struct.htable, ptr %4, i32 0, i32 2
  %17 = ptrtoint ptr %htable_bits to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %htable_bits, align 4
  %conv = zext i8 %18 to i32
  %notmask = shl nsw i32 -1, %conv
  %sub = xor i32 %notmask, -1
  %and17 = and i32 %sub57.i, %sub
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %18)
  %cmp = icmp ult i8 %18, 10
  %sub23 = add nsw i32 %conv, -10
  %notmask730 = shl nsw i32 -1, %sub23
  %shl24.op = xor i32 %notmask730, -1
  %19 = select i1 %cmp, i32 0, i32 %shl24.op
  %rem = and i32 %19, %and17
  %uref = getelementptr inbounds %struct.htable, ptr %4, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %uref, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %uref, i32 1, i32 3, i32 1) #15
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uref, ptr %uref, i32 1, ptr elementtype(i32) %uref) #15, !srcloc !228
  %hregion = getelementptr inbounds %struct.htable, ptr %4, i32 0, i32 4
  %21 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hregion, align 4
  %elements25 = getelementptr %struct.ip_set_region, ptr %22, i32 %rem, i32 2
  %23 = ptrtoint ptr %elements25 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %elements25, align 4
  %maxelem26 = getelementptr inbounds %struct.htable, ptr %4, i32 0, i32 3
  %25 = ptrtoint ptr %maxelem26 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %maxelem26, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp27.not = icmp ult i32 %24, %26
  br i1 %cmp27.not, label %jhash2.exit.if.end62_crit_edge, label %if.then29

jhash2.exit.if.end62_crit_edge:                   ; preds = %jhash2.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end62

if.then29:                                        ; preds = %jhash2.exit
  %extensions = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 8
  %27 = ptrtoint ptr %extensions to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %extensions, align 2
  %29 = and i8 %28, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool32.not = icmp eq i8 %29, 0
  br i1 %tobool32.not, label %if.then29.if.end34_crit_edge, label %if.then33

if.then29.if.end34_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

if.then33:                                        ; preds = %if.then29
  %call.i610 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i610, label %if.then33.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true.i613

if.then33.rcu_read_unlock_bh.exit_crit_edge:      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock_bh.exit

land.lhs.true.i613:                               ; preds = %if.then33
  %call1.i611 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i611)
  %tobool.not.i612 = icmp eq i32 %call1.i611, 0
  br i1 %tobool.not.i612, label %land.lhs.true.i613.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true2.i615

land.lhs.true.i613.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true.i613
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock_bh.exit

land.lhs.true2.i615:                              ; preds = %land.lhs.true.i613
  %.b4.i614 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i614, label %land.lhs.true2.i615.rcu_read_unlock_bh.exit_crit_edge, label %if.then.i616

land.lhs.true2.i615.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i615
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock_bh.exit

if.then.i616:                                     ; preds = %land.lhs.true2.i615
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 761, ptr noundef nonnull @.str.16) #15
  br label %rcu_read_unlock_bh.exit

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i616, %land.lhs.true2.i615.rcu_read_unlock_bh.exit_crit_edge, %land.lhs.true.i613.rcu_read_unlock_bh.exit_crit_edge, %if.then33.rcu_read_unlock_bh.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #15
  tail call fastcc void @local_bh_enable() #15
  tail call fastcc void @hash_netiface6_gc_do(ptr noundef %set, ptr noundef %1, ptr noundef %4, i32 noundef %rem)
  tail call fastcc void @local_bh_disable() #15
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #15
  %call.i617 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i617, label %rcu_read_unlock_bh.exit.if.end34_crit_edge, label %land.lhs.true.i620

rcu_read_unlock_bh.exit.if.end34_crit_edge:       ; preds = %rcu_read_unlock_bh.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

land.lhs.true.i620:                               ; preds = %rcu_read_unlock_bh.exit
  %call1.i618 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i618)
  %tobool.not.i619 = icmp eq i32 %call1.i618, 0
  br i1 %tobool.not.i619, label %land.lhs.true.i620.if.end34_crit_edge, label %land.lhs.true2.i622

land.lhs.true.i620.if.end34_crit_edge:            ; preds = %land.lhs.true.i620
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

land.lhs.true2.i622:                              ; preds = %land.lhs.true.i620
  %.b4.i621 = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i621, label %land.lhs.true2.i622.if.end34_crit_edge, label %if.then.i623

land.lhs.true2.i622.if.end34_crit_edge:           ; preds = %land.lhs.true2.i622
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

if.then.i623:                                     ; preds = %land.lhs.true2.i622
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 750, ptr noundef nonnull @.str.15) #15
  br label %if.end34

if.end34:                                         ; preds = %if.then.i623, %land.lhs.true2.i622.if.end34_crit_edge, %land.lhs.true.i620.if.end34_crit_edge, %rcu_read_unlock_bh.exit.if.end34_crit_edge, %if.then29.if.end34_crit_edge
  %maxelem35 = getelementptr inbounds %struct.hash_netiface6, ptr %1, i32 0, i32 2
  %30 = ptrtoint ptr %maxelem35 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %maxelem35, align 4
  %32 = ptrtoint ptr %htable_bits to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %htable_bits, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %33)
  %cmp38 = icmp ult i8 %33, 10
  %conv37 = zext i8 %33 to i32
  %sub44 = add nsw i32 %conv37, -10
  %shl45 = shl nuw i32 1, %sub44
  %cond47 = select i1 %cmp38, i32 1, i32 %shl45
  %34 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hregion, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end34
  %e.0738 = phi i32 [ 0, %if.end34 ], [ %inc, %for.body.for.body_crit_edge ]
  %elements.0737 = phi i32 [ 0, %if.end34 ], [ %add, %for.body.for.body_crit_edge ]
  %elements52 = getelementptr %struct.ip_set_region, ptr %35, i32 %e.0738, i32 2
  %36 = ptrtoint ptr %elements52 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %elements52, align 4
  %add = add i32 %37, %elements.0737
  %inc = add nuw i32 %e.0738, 1
  %exitcond.not = icmp eq i32 %inc, %cond47
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %31)
  %cmp53.not = icmp ult i32 %add, %31
  br i1 %cmp53.not, label %for.end.if.end62_crit_edge, label %land.lhs.true55

for.end.if.end62_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end62

land.lhs.true55:                                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  %flags56 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 9
  %38 = ptrtoint ptr %flags56 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %flags56, align 1
  %40 = and i8 %39, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool59.not = icmp ne i8 %40, 0
  br label %if.end62

if.end62:                                         ; preds = %land.lhs.true55, %for.end.if.end62_crit_edge, %jhash2.exit.if.end62_crit_edge
  %forceadd.1.off0 = phi i1 [ false, %jhash2.exit.if.end62_crit_edge ], [ false, %for.end.if.end62_crit_edge ], [ %tobool59.not, %land.lhs.true55 ]
  %elements.1 = phi i32 [ %24, %jhash2.exit.if.end62_crit_edge ], [ %add, %for.end.if.end62_crit_edge ], [ %add, %land.lhs.true55 ]
  %maxelem.0 = phi i32 [ %26, %jhash2.exit.if.end62_crit_edge ], [ %31, %for.end.if.end62_crit_edge ], [ %31, %land.lhs.true55 ]
  %call.i625 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i625, label %if.end62.rcu_read_unlock_bh.exit632_crit_edge, label %land.lhs.true.i628

if.end62.rcu_read_unlock_bh.exit632_crit_edge:    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock_bh.exit632

land.lhs.true.i628:                               ; preds = %if.end62
  %call1.i626 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i626)
  %tobool.not.i627 = icmp eq i32 %call1.i626, 0
  br i1 %tobool.not.i627, label %land.lhs.true.i628.rcu_read_unlock_bh.exit632_crit_edge, label %land.lhs.true2.i630

land.lhs.true.i628.rcu_read_unlock_bh.exit632_crit_edge: ; preds = %land.lhs.true.i628
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock_bh.exit632

land.lhs.true2.i630:                              ; preds = %land.lhs.true.i628
  %.b4.i629 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i629, label %land.lhs.true2.i630.rcu_read_unlock_bh.exit632_crit_edge, label %if.then.i631

land.lhs.true2.i630.rcu_read_unlock_bh.exit632_crit_edge: ; preds = %land.lhs.true2.i630
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock_bh.exit632

if.then.i631:                                     ; preds = %land.lhs.true2.i630
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 761, ptr noundef nonnull @.str.16) #15
  br label %rcu_read_unlock_bh.exit632

rcu_read_unlock_bh.exit632:                       ; preds = %if.then.i631, %land.lhs.true2.i630.rcu_read_unlock_bh.exit632_crit_edge, %land.lhs.true.i628.rcu_read_unlock_bh.exit632_crit_edge, %if.end62.rcu_read_unlock_bh.exit632_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #15
  tail call fastcc void @local_bh_enable() #15
  %41 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hregion, align 4
  %arrayidx64 = getelementptr %struct.ip_set_region, ptr %42, i32 %rem
  tail call void @_raw_spin_lock_bh(ptr noundef %arrayidx64) #15
  %arrayidx69 = getelementptr %struct.htable, ptr %4, i32 0, i32 5, i32 %and17
  %43 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %arrayidx69, align 4
  %call71 = tail call i32 @rcu_read_lock_bh_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %land.lhs.true73, label %rcu_read_unlock_bh.exit632.do.end81_crit_edge

rcu_read_unlock_bh.exit632.do.end81_crit_edge:    ; preds = %rcu_read_unlock_bh.exit632
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end81

land.lhs.true73:                                  ; preds = %rcu_read_unlock_bh.exit632
  %call74 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %land.lhs.true73.do.end81_crit_edge, label %land.lhs.true76

land.lhs.true73.do.end81_crit_edge:               ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end81

land.lhs.true76:                                  ; preds = %land.lhs.true73
  %.b592602 = load i1, ptr @hash_netiface6_add.__warned.48, align 1
  br i1 %.b592602, label %land.lhs.true76.do.end81_crit_edge, label %if.then78

land.lhs.true76.do.end81_crit_edge:               ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end81

if.then78:                                        ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @hash_netiface6_add.__warned.48, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 878, ptr noundef nonnull @.str.9) #15
  br label %do.end81

do.end81:                                         ; preds = %if.then78, %land.lhs.true76.do.end81_crit_edge, %land.lhs.true73.do.end81_crit_edge, %rcu_read_unlock_bh.exit632.do.end81_crit_edge
  %tobool83.not = icmp eq ptr %44, null
  br i1 %tobool83.not, label %if.then84, label %for.cond103.preheader

for.cond103.preheader:                            ; preds = %do.end81
  %pos = getelementptr inbounds %struct.hbucket, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %pos, align 1
  %conv104 = zext i8 %46 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %cmp105739.not = icmp eq i8 %46, 0
  br i1 %cmp105739.not, label %for.end154.thread, label %for.body107.lr.ph

for.body107.lr.ph:                                ; preds = %for.cond103.preheader
  %used = getelementptr inbounds %struct.hbucket, ptr %44, i32 0, i32 1
  %value116 = getelementptr inbounds %struct.hbucket, ptr %44, i32 0, i32 5
  %dsize118 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %set_full

if.end90:                                         ; preds = %if.then84
  %dsize = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %47 = ptrtoint ptr %dsize to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dsize, align 4
  %mul = shl i32 %48, 1
  %add91 = add i32 %mul, 24
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add91, i32 noundef 2848) #19
  %tobool93.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool93.not, label %if.end90.unlock_crit_edge, label %if.end90.copy_elem.sink.split_crit_edge

if.end90.copy_elem.sink.split_crit_edge:          ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_elem.sink.split

if.end90.unlock_crit_edge:                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #17
  br label %unlock

for.body107:                                      ; preds = %for.inc152.for.body107_crit_edge, %for.body107.lr.ph
  %i.0743 = phi i32 [ 0, %for.body107.lr.ph ], [ %inc153, %for.inc152.for.body107_crit_edge ]
  %j.0742 = phi i32 [ -1, %for.body107.lr.ph ], [ %j.1, %for.inc152.for.body107_crit_edge ]
  %reuse.0.off0741 = phi i1 [ false, %for.body107.lr.ph ], [ %reuse.1.off0, %for.inc152.for.body107_crit_edge ]
  %deleted.0.off0740 = phi i1 [ false, %for.body107.lr.ph ], [ %deleted.1.off0, %for.inc152.for.body107_crit_edge ]
  %div3.i = lshr i32 %i.0743, 5
  %arrayidx.i = getelementptr i32, ptr %used, i32 %div3.i
  %49 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.0743, 31
  %51 = shl nuw i32 1, %and.i
  %52 = and i32 %50, %51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool109.not = icmp eq i32 %52, 0
  br i1 %tobool109.not, label %if.then110, label %if.end115

if.then110:                                       ; preds = %for.body107
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %j.0742)
  %cmp111 = icmp eq i32 %j.0742, -1
  br i1 %cmp111, label %if.then113, label %if.then110.for.inc152_crit_edge

if.then110.for.inc152_crit_edge:                  ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc152

if.then113:                                       ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc152

if.end115:                                        ; preds = %for.body107
  %53 = ptrtoint ptr %dsize118 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dsize118, align 4
  %mul119 = mul i32 %54, %i.0743
  %add.ptr = getelementptr i8, ptr %value116, i32 %mul119
  %call120 = call fastcc zeroext i1 @hash_netiface6_data_equal(ptr noundef %add.ptr, ptr noundef %value, ptr noundef nonnull %multi)
  br i1 %call120, label %if.then121, label %if.end136

if.then121:                                       ; preds = %if.end115
  br i1 %tobool.not, label %lor.lhs.false124, label %if.then121.overwrite_extensions_crit_edge

if.then121.overwrite_extensions_crit_edge:        ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #17
  br label %overwrite_extensions

lor.lhs.false124:                                 ; preds = %if.then121
  %55 = ptrtoint ptr %extensions137 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %extensions137, align 2
  %57 = and i8 %56, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool128.not = icmp eq i8 %57, 0
  br i1 %tobool128.not, label %lor.lhs.false124.unlock_crit_edge, label %land.lhs.true129

lor.lhs.false124.unlock_crit_edge:                ; preds = %lor.lhs.false124
  call void @__sanitizer_cov_trace_pc() #17
  br label %unlock

land.lhs.true129:                                 ; preds = %lor.lhs.false124
  %58 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx143, align 4
  %add.ptr131 = getelementptr i8, ptr %add.ptr, i32 %59
  %60 = ptrtoint ptr %add.ptr131 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %add.ptr131, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp.not.i = icmp eq i32 %61, 0
  br i1 %cmp.not.i, label %land.lhs.true129.unlock_crit_edge, label %ip_set_timeout_expired.exit

land.lhs.true129.unlock_crit_edge:                ; preds = %land.lhs.true129
  call void @__sanitizer_cov_trace_pc() #17
  br label %unlock

ip_set_timeout_expired.exit:                      ; preds = %land.lhs.true129
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %62 = load volatile i32, ptr @jiffies, align 128
  %sub.i634 = sub i32 %61, %62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i634)
  %cmp1.i = icmp slt i32 %sub.i634, 0
  br i1 %cmp1.i, label %ip_set_timeout_expired.exit.overwrite_extensions_crit_edge, label %ip_set_timeout_expired.exit.unlock_crit_edge

ip_set_timeout_expired.exit.unlock_crit_edge:     ; preds = %ip_set_timeout_expired.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %unlock

ip_set_timeout_expired.exit.overwrite_extensions_crit_edge: ; preds = %ip_set_timeout_expired.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %overwrite_extensions

if.end136:                                        ; preds = %if.end115
  %63 = ptrtoint ptr %extensions137 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %extensions137, align 2
  %65 = and i8 %64, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool140.not = icmp eq i8 %65, 0
  br i1 %tobool140.not, label %if.end136.for.inc152_crit_edge, label %land.lhs.true141

if.end136.for.inc152_crit_edge:                   ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc152

land.lhs.true141:                                 ; preds = %if.end136
  %66 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx143, align 4
  %add.ptr144 = getelementptr i8, ptr %add.ptr, i32 %67
  %68 = ptrtoint ptr %add.ptr144 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %add.ptr144, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp.not.i635 = icmp eq i32 %69, 0
  br i1 %cmp.not.i635, label %land.lhs.true141.ip_set_timeout_expired.exit639_crit_edge, label %land.rhs.i638

land.lhs.true141.ip_set_timeout_expired.exit639_crit_edge: ; preds = %land.lhs.true141
  call void @__sanitizer_cov_trace_pc() #17
  br label %ip_set_timeout_expired.exit639

land.rhs.i638:                                    ; preds = %land.lhs.true141
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %70 = load volatile i32, ptr @jiffies, align 128
  %sub.i636 = sub i32 %69, %70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i636)
  %cmp1.i637 = icmp slt i32 %sub.i636, 0
  br label %ip_set_timeout_expired.exit639

ip_set_timeout_expired.exit639:                   ; preds = %land.rhs.i638, %land.lhs.true141.ip_set_timeout_expired.exit639_crit_edge
  %71 = phi i1 [ false, %land.lhs.true141.ip_set_timeout_expired.exit639_crit_edge ], [ %cmp1.i637, %land.rhs.i638 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %j.0742)
  %cmp148 = icmp eq i32 %j.0742, -1
  %or.cond604 = select i1 %71, i1 %cmp148, i1 false
  %spec.select605 = select i1 %or.cond604, i1 true, i1 %reuse.0.off0741
  %spec.select606 = select i1 %or.cond604, i32 %i.0743, i32 %j.0742
  br label %for.inc152

for.inc152:                                       ; preds = %ip_set_timeout_expired.exit639, %if.end136.for.inc152_crit_edge, %if.then113, %if.then110.for.inc152_crit_edge
  %deleted.1.off0 = phi i1 [ %deleted.0.off0740, %if.end136.for.inc152_crit_edge ], [ true, %if.then113 ], [ %deleted.0.off0740, %if.then110.for.inc152_crit_edge ], [ %deleted.0.off0740, %ip_set_timeout_expired.exit639 ]
  %reuse.1.off0 = phi i1 [ %reuse.0.off0741, %if.end136.for.inc152_crit_edge ], [ true, %if.then113 ], [ %reuse.0.off0741, %if.then110.for.inc152_crit_edge ], [ %spec.select605, %ip_set_timeout_expired.exit639 ]
  %j.1 = phi i32 [ %j.0742, %if.end136.for.inc152_crit_edge ], [ %i.0743, %if.then113 ], [ %j.0742, %if.then110.for.inc152_crit_edge ], [ %spec.select606, %ip_set_timeout_expired.exit639 ]
  %inc153 = add nuw nsw i32 %i.0743, 1
  %exitcond750.not = icmp eq i32 %inc153, %conv104
  br i1 %exitcond750.not, label %for.end154, label %for.inc152.for.body107_crit_edge

for.inc152.for.body107_crit_edge:                 ; preds = %for.inc152
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body107

for.end154:                                       ; preds = %for.inc152
  %brmerge = select i1 %reuse.1.off0, i1 true, i1 %forceadd.1.off0
  br i1 %brmerge, label %if.then160, label %for.end154.if.end187_crit_edge

for.end154.if.end187_crit_edge:                   ; preds = %for.end154
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end187

for.end154.thread:                                ; preds = %for.cond103.preheader
  br i1 %forceadd.1.off0, label %if.then160.thread, label %for.end154.thread.if.end187_crit_edge

for.end154.thread.if.end187_crit_edge:            ; preds = %for.end154.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end187

if.then160.thread:                                ; preds = %for.end154.thread
  call void @__sanitizer_cov_trace_pc() #17
  %value165761 = getelementptr inbounds %struct.hbucket, ptr %44, i32 0, i32 5
  br label %for.body175

if.then160:                                       ; preds = %for.end154
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %j.1)
  %cmp161 = icmp eq i32 %j.1, -1
  %spec.store.select = select i1 %cmp161, i32 0, i32 %j.1
  %value165 = getelementptr inbounds %struct.hbucket, ptr %44, i32 0, i32 5
  %dsize167 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %72 = ptrtoint ptr %dsize167 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %dsize167, align 4
  %mul168 = mul i32 %73, %spec.store.select
  %add.ptr169 = getelementptr i8, ptr %value165, i32 %mul168
  br i1 %deleted.1.off0, label %if.then160.copy_data_crit_edge, label %if.then160.for.body175_crit_edge

if.then160.for.body175_crit_edge:                 ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body175

if.then160.copy_data_crit_edge:                   ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_data

for.body175:                                      ; preds = %if.then160.for.body175_crit_edge, %if.then160.thread
  %add.ptr169766 = phi ptr [ %value165761, %if.then160.thread ], [ %add.ptr169, %if.then160.for.body175_crit_edge ]
  %spec.store.select765 = phi i32 [ 0, %if.then160.thread ], [ %spec.store.select, %if.then160.for.body175_crit_edge ]
  %cidr = getelementptr inbounds %struct.hash_netiface6_elem, ptr %add.ptr169766, i32 0, i32 2
  %74 = ptrtoint ptr %cidr to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %cidr, align 1
  %add177 = add i8 %75, 1
  %lock.i = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #15
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc57.i.for.body.i_crit_edge, %for.body175
  %indvars.iv.i = phi i32 [ 0, %for.body175 ], [ %indvars.iv.next.i, %for.inc57.i.for.body.i_crit_edge ]
  %arrayidx4.i = getelementptr %struct.hash_netiface6, ptr %1, i32 0, i32 7, i32 %indvars.iv.i, i32 1, i32 0
  %76 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx4.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %77, i8 %add177)
  %cmp7.not.i = icmp eq i8 %77, %add177
  br i1 %cmp7.not.i, label %if.end.i, label %for.inc57.i

if.end.i:                                         ; preds = %for.body.i
  %conv6.i = zext i8 %add177 to i32
  %sub.i640 = add nsw i32 %conv6.i, -1
  %arrayidx11.i = getelementptr %struct.hash_netiface6, ptr %1, i32 0, i32 7, i32 %sub.i640
  %78 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx11.i, align 4
  %dec.i = add i32 %79, -1
  store i32 %dec.i, ptr %arrayidx11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp22.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp22.not.i, label %for.cond26.preheader.i, label %if.end.i.hash_netiface6_del_cidr.exit_crit_edge

if.end.i.hash_netiface6_del_cidr.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %hash_netiface6_del_cidr.exit

for.cond26.preheader.i:                           ; preds = %if.end.i
  %conv2786.i = and i32 %indvars.iv.i, 255
  %80 = and i32 %indvars.iv.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp2987.i = icmp eq i32 %80, 0
  br i1 %cmp2987.i, label %for.cond26.preheader.i.land.rhs.i642_crit_edge, label %for.cond26.preheader.i.for.end.i_crit_edge

for.cond26.preheader.i.for.end.i_crit_edge:       ; preds = %for.cond26.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.cond26.preheader.i.land.rhs.i642_crit_edge:   ; preds = %for.cond26.preheader.i
  br label %land.rhs.i642

land.rhs.i642:                                    ; preds = %for.body38.i.land.rhs.i642_crit_edge, %for.cond26.preheader.i.land.rhs.i642_crit_edge
  %indvars.iv92.i = phi i32 [ %add.i, %for.body38.i.land.rhs.i642_crit_edge ], [ %indvars.iv.i, %for.cond26.preheader.i.land.rhs.i642_crit_edge ]
  %arrayidx36.i = getelementptr %struct.hash_netiface6, ptr %1, i32 0, i32 7, i32 %indvars.iv92.i, i32 1, i32 0
  %81 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx36.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool.not.i641 = icmp eq i8 %82, 0
  br i1 %tobool.not.i641, label %land.rhs.i642.for.end.i_crit_edge, label %for.body38.i

land.rhs.i642.for.end.i_crit_edge:                ; preds = %land.rhs.i642
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.body38.i:                                     ; preds = %land.rhs.i642
  %add.i = add i32 %indvars.iv92.i, 1
  %arrayidx44.i = getelementptr %struct.hash_netiface6, ptr %1, i32 0, i32 7, i32 %add.i, i32 1, i32 0
  %83 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx44.i, align 1
  %85 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %84, ptr %arrayidx36.i, align 1
  %86 = and i32 %add.i, 128
  %cmp29.i = icmp eq i32 %86, 0
  br i1 %cmp29.i, label %for.body38.i.land.rhs.i642_crit_edge, label %for.body38.i.for.end.i_crit_edge

for.body38.i.for.end.i_crit_edge:                 ; preds = %for.body38.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.body38.i.land.rhs.i642_crit_edge:             ; preds = %for.body38.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs.i642

for.end.i:                                        ; preds = %for.body38.i.for.end.i_crit_edge, %land.rhs.i642.for.end.i_crit_edge, %for.cond26.preheader.i.for.end.i_crit_edge
  %conv27.lcssa.i = phi i32 [ %conv2786.i, %for.cond26.preheader.i.for.end.i_crit_edge ], [ %indvars.iv92.i, %land.rhs.i642.for.end.i_crit_edge ], [ %add.i, %for.body38.i.for.end.i_crit_edge ]
  %arrayidx56.i = getelementptr %struct.hash_netiface6, ptr %1, i32 0, i32 7, i32 %conv27.lcssa.i, i32 1, i32 0
  %87 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %arrayidx56.i, align 1
  br label %hash_netiface6_del_cidr.exit

for.inc57.i:                                      ; preds = %for.body.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 129
  br i1 %exitcond.not.i, label %for.inc57.i.hash_netiface6_del_cidr.exit_crit_edge, label %for.inc57.i.for.body.i_crit_edge

for.inc57.i.for.body.i_crit_edge:                 ; preds = %for.inc57.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc57.i.hash_netiface6_del_cidr.exit_crit_edge: ; preds = %for.inc57.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %hash_netiface6_del_cidr.exit

hash_netiface6_del_cidr.exit:                     ; preds = %for.inc57.i.hash_netiface6_del_cidr.exit_crit_edge, %for.end.i, %if.end.i.hash_netiface6_del_cidr.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #15
  %extensions.i = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 8
  %88 = ptrtoint ptr %extensions.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %extensions.i, align 2
  %90 = and i8 %89, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool.not.i643 = icmp eq i8 %90, 0
  br i1 %tobool.not.i643, label %hash_netiface6_del_cidr.exit.ip_set_ext_destroy.exit_crit_edge, label %if.then.i646

hash_netiface6_del_cidr.exit.ip_set_ext_destroy.exit_crit_edge: ; preds = %hash_netiface6_del_cidr.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %ip_set_ext_destroy.exit

if.then.i646:                                     ; preds = %hash_netiface6_del_cidr.exit
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx.i644 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 3
  %91 = ptrtoint ptr %arrayidx.i644 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx.i644, align 4
  %add.ptr.i645 = getelementptr i8, ptr %add.ptr169766, i32 %92
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.ip_set_ext_type], ptr @ip_set_extensions, i32 0, i32 3) to i32))
  %93 = load ptr, ptr getelementptr inbounds ([0 x %struct.ip_set_ext_type], ptr @ip_set_extensions, i32 0, i32 3), align 4
  tail call void %93(ptr noundef %set, ptr noundef %add.ptr.i645) #15
  br label %ip_set_ext_destroy.exit

ip_set_ext_destroy.exit:                          ; preds = %if.then.i646, %hash_netiface6_del_cidr.exit.ip_set_ext_destroy.exit_crit_edge
  %94 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %hregion, align 4
  %elements185 = getelementptr %struct.ip_set_region, ptr %95, i32 %rem, i32 2
  %96 = ptrtoint ptr %elements185 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %elements185, align 4
  %dec = add i32 %97, -1
  store i32 %dec, ptr %elements185, align 4
  br label %copy_data

if.end187:                                        ; preds = %for.end154.thread.if.end187_crit_edge, %for.end154.if.end187_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %elements.1, i32 %maxelem.0)
  %cmp188.not = icmp ult i32 %elements.1, %maxelem.0
  br i1 %cmp188.not, label %if.end191, label %if.end187.set_full_crit_edge

if.end187.set_full_crit_edge:                     ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #17
  br label %set_full

if.end191:                                        ; preds = %if.end187
  %size194 = getelementptr inbounds %struct.hbucket, ptr %44, i32 0, i32 2
  %98 = ptrtoint ptr %size194 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %size194, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %46, i8 %99)
  %cmp196.not = icmp ult i8 %46, %99
  br i1 %cmp196.not, label %if.end191.copy_elem_crit_edge, label %if.then198

if.end191.copy_elem_crit_edge:                    ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_elem

if.then198:                                       ; preds = %if.end191
  %bucketsize = getelementptr inbounds %struct.hash_netiface6, ptr %1, i32 0, i32 4
  %100 = ptrtoint ptr %bucketsize to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %bucketsize, align 4
  %102 = ptrtoint ptr %multi to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %multi, align 4
  %conv.i = zext i8 %101 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %103, i32 %conv.i)
  %cmp.i648 = icmp ult i32 %103, %conv.i
  %add.i649 = add i8 %101, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %101)
  %cmp6.i = icmp ult i8 %101, 63
  %cond.i = select i1 %cmp6.i, i8 %add.i649, i8 %101
  %retval.0.i650 = select i1 %cmp.i648, i8 %101, i8 %cond.i
  %104 = ptrtoint ptr %bucketsize to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %retval.0.i650, ptr %bucketsize, align 4
  %105 = ptrtoint ptr %size194 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %size194, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %106, i8 %retval.0.i650)
  %cmp205.not = icmp ult i8 %106, %retval.0.i650
  br i1 %cmp205.not, label %if.end208, label %if.then198.resize_crit_edge

if.then198.resize_crit_edge:                      ; preds = %if.then198
  call void @__sanitizer_cov_trace_pc() #17
  br label %resize

if.end208:                                        ; preds = %if.then198
  %dsize212 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %107 = ptrtoint ptr %dsize212 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %dsize212, align 4
  %conv202 = zext i8 %106 to i32
  %add211 = add nuw nsw i32 %conv202, 2
  %mul213 = mul i32 %108, %add211
  %add214 = add i32 %mul213, 24
  %call9.i.i679 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add214, i32 noundef 2848) #19
  %tobool216.not = icmp eq ptr %call9.i.i679, null
  br i1 %tobool216.not, label %if.end208.unlock_crit_edge, label %if.end218

if.end208.unlock_crit_edge:                       ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #17
  br label %unlock

if.end218:                                        ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #17
  %109 = ptrtoint ptr %size194 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %size194, align 8
  %conv220 = zext i8 %110 to i32
  %111 = ptrtoint ptr %dsize212 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %dsize212, align 4
  %mul222 = mul i32 %112, %conv220
  %add223 = add i32 %mul222, 24
  %113 = call ptr @memcpy(ptr %call9.i.i679, ptr %44, i32 %add223)
  %114 = load i8, ptr %size194, align 8
  %add226 = add i8 %114, 2
  br label %copy_elem.sink.split

copy_elem.sink.split:                             ; preds = %if.end218, %if.end90.copy_elem.sink.split_crit_edge
  %retval.1.i.i725.sink = phi ptr [ %call9.i.i679, %if.end218 ], [ %call9.i.i, %if.end90.copy_elem.sink.split_crit_edge ]
  %.sink = phi i8 [ %add226, %if.end218 ], [ 2, %if.end90.copy_elem.sink.split_crit_edge ]
  %dsize.sink = phi ptr [ %dsize212, %if.end218 ], [ %dsize, %if.end90.copy_elem.sink.split_crit_edge ]
  %old.0.ph = phi ptr [ %44, %if.end218 ], [ null, %if.end90.copy_elem.sink.split_crit_edge ]
  %size = getelementptr inbounds %struct.hbucket, ptr %retval.1.i.i725.sink, i32 0, i32 2
  %115 = ptrtoint ptr %size to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %.sink, ptr %size, align 16
  %116 = ptrtoint ptr %dsize.sink to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %dsize.sink, align 4
  %mul97 = shl i32 %117, 1
  %add98 = add i32 %mul97, 24
  %118 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %hregion, align 4
  %ext_size = getelementptr %struct.ip_set_region, ptr %119, i32 %rem, i32 1
  %120 = ptrtoint ptr %ext_size to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %ext_size, align 4
  %add235 = add i32 %add98, %121
  store i32 %add235, ptr %ext_size, align 4
  br label %copy_elem

copy_elem:                                        ; preds = %copy_elem.sink.split, %if.end191.copy_elem_crit_edge
  %old.0 = phi ptr [ inttoptr (i32 -2 to ptr), %if.end191.copy_elem_crit_edge ], [ %old.0.ph, %copy_elem.sink.split ]
  %n.0 = phi ptr [ %44, %if.end191.copy_elem_crit_edge ], [ %retval.1.i.i725.sink, %copy_elem.sink.split ]
  %pos237 = getelementptr inbounds %struct.hbucket, ptr %n.0, i32 0, i32 3
  %122 = ptrtoint ptr %pos237 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %pos237, align 1
  %inc238 = add i8 %123, 1
  store i8 %inc238, ptr %pos237, align 1
  %conv239 = zext i8 %123 to i32
  %value240 = getelementptr inbounds %struct.hbucket, ptr %n.0, i32 0, i32 5
  %dsize242 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %124 = ptrtoint ptr %dsize242 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %dsize242, align 4
  %mul243 = mul i32 %125, %conv239
  %add.ptr244 = getelementptr i8, ptr %value240, i32 %mul243
  br label %copy_data

copy_data:                                        ; preds = %copy_elem, %ip_set_ext_destroy.exit, %if.then160.copy_data_crit_edge
  %j.2 = phi i32 [ %spec.store.select, %if.then160.copy_data_crit_edge ], [ %spec.store.select765, %ip_set_ext_destroy.exit ], [ %conv239, %copy_elem ]
  %old.1 = phi ptr [ inttoptr (i32 -2 to ptr), %if.then160.copy_data_crit_edge ], [ inttoptr (i32 -2 to ptr), %ip_set_ext_destroy.exit ], [ %old.0, %copy_elem ]
  %n.1 = phi ptr [ %44, %if.then160.copy_data_crit_edge ], [ %44, %ip_set_ext_destroy.exit ], [ %n.0, %copy_elem ]
  %data1.0 = phi ptr [ %add.ptr169, %if.then160.copy_data_crit_edge ], [ %add.ptr169766, %ip_set_ext_destroy.exit ], [ %add.ptr244, %copy_elem ]
  %126 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %hregion, align 4
  %elements247 = getelementptr %struct.ip_set_region, ptr %127, i32 %rem, i32 2
  %128 = ptrtoint ptr %elements247 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %elements247, align 4
  %inc248 = add i32 %129, 1
  store i32 %inc248, ptr %elements247, align 4
  %cidr253 = getelementptr inbounds %struct.hash_netiface6_elem, ptr %value, i32 0, i32 2
  %130 = ptrtoint ptr %cidr253 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %cidr253, align 1
  %add255 = add i8 %131, 1
  %lock.i683 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i683) #15
  br label %land.rhs.i685

land.rhs.i685:                                    ; preds = %for.inc.i.land.rhs.i685_crit_edge, %copy_data
  %j.05.i = phi i32 [ -1, %copy_data ], [ %j.1.i, %for.inc.i.land.rhs.i685_crit_edge ]
  %i.03.i = phi i32 [ 0, %copy_data ], [ %inc34.i, %for.inc.i.land.rhs.i685_crit_edge ]
  %cidr1.i = getelementptr %struct.hash_netiface6, ptr %1, i32 0, i32 7, i32 %i.03.i, i32 1
  %132 = ptrtoint ptr %cidr1.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %cidr1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool.not.i684 = icmp eq i8 %133, 0
  br i1 %tobool.not.i684, label %land.rhs.i685.for.end.i689_crit_edge, label %for.body.i686

land.rhs.i685.for.end.i689_crit_edge:             ; preds = %land.rhs.i685
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i689

for.body.i686:                                    ; preds = %land.rhs.i685
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %j.05.i)
  %cmp3.not.i = icmp eq i32 %j.05.i, -1
  br i1 %cmp3.not.i, label %if.else.i, label %for.body.i686.for.inc.i_crit_edge

for.body.i686.for.inc.i_crit_edge:                ; preds = %for.body.i686
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i686
  call void @__sanitizer_cov_trace_cmp1(i8 %133, i8 %add255)
  %cmp12.i = icmp ult i8 %133, %add255
  br i1 %cmp12.i, label %if.else.i.for.inc.i_crit_edge, label %if.else15.i

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.else15.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_cmp1(i8 %133, i8 %add255)
  %cmp23.i = icmp eq i8 %133, %add255
  br i1 %cmp23.i, label %if.then25.i, label %if.else15.i.for.inc.i_crit_edge

if.else15.i.for.inc.i_crit_edge:                  ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.then25.i:                                      ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv11.le.i = zext i8 %add255 to i32
  %sub.i687 = add nsw i32 %conv11.le.i, -1
  %arrayidx28.i = getelementptr %struct.hash_netiface6, ptr %1, i32 0, i32 7, i32 %sub.i687
  %134 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx28.i, align 4
  %inc.i = add i32 %135, 1
  store i32 %inc.i, ptr %arrayidx28.i, align 4
  br label %hash_netiface6_add_cidr.exit

for.inc.i:                                        ; preds = %if.else15.i.for.inc.i_crit_edge, %if.else.i.for.inc.i_crit_edge, %for.body.i686.for.inc.i_crit_edge
  %j.1.i = phi i32 [ %j.05.i, %for.body.i686.for.inc.i_crit_edge ], [ -1, %if.else15.i.for.inc.i_crit_edge ], [ %i.03.i, %if.else.i.for.inc.i_crit_edge ]
  %inc34.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i688 = icmp eq i32 %inc34.i, 129
  br i1 %exitcond.not.i688, label %for.inc.i.for.end.i689_crit_edge, label %for.inc.i.land.rhs.i685_crit_edge

for.inc.i.land.rhs.i685_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs.i685

for.inc.i.for.end.i689_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i689

for.end.i689:                                     ; preds = %for.inc.i.for.end.i689_crit_edge, %land.rhs.i685.for.end.i689_crit_edge
  %i.0.lcssa.i = phi i32 [ 129, %for.inc.i.for.end.i689_crit_edge ], [ %i.03.i, %land.rhs.i685.for.end.i689_crit_edge ]
  %j.0.lcssa.i = phi i32 [ %j.1.i, %for.inc.i.for.end.i689_crit_edge ], [ %j.05.i, %land.rhs.i685.for.end.i689_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %j.0.lcssa.i)
  %cmp35.not.i = icmp ne i32 %j.0.lcssa.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i, i32 %j.0.lcssa.i)
  %cmp396.i = icmp sgt i32 %i.0.lcssa.i, %j.0.lcssa.i
  %or.cond.i = select i1 %cmp35.not.i, i1 %cmp396.i, i1 false
  br i1 %or.cond.i, label %for.end.i689.for.body41.i_crit_edge, label %for.end.i689.if.end55.i_crit_edge

for.end.i689.if.end55.i_crit_edge:                ; preds = %for.end.i689
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end55.i

for.end.i689.for.body41.i_crit_edge:              ; preds = %for.end.i689
  br label %for.body41.i

for.body41.i:                                     ; preds = %for.body41.i.for.body41.i_crit_edge, %for.end.i689.for.body41.i_crit_edge
  %i.17.i = phi i32 [ %sub43.i, %for.body41.i.for.body41.i_crit_edge ], [ %i.0.lcssa.i, %for.end.i689.for.body41.i_crit_edge ]
  %sub43.i = add nsw i32 %i.17.i, -1
  %cidr45.i = getelementptr %struct.hash_netiface6, ptr %1, i32 0, i32 7, i32 %sub43.i, i32 1
  %136 = ptrtoint ptr %cidr45.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %cidr45.i, align 1
  %cidr50.i = getelementptr %struct.hash_netiface6, ptr %1, i32 0, i32 7, i32 %i.17.i, i32 1
  %138 = ptrtoint ptr %cidr50.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %137, ptr %cidr50.i, align 1
  %cmp39.i = icmp sgt i32 %sub43.i, %j.0.lcssa.i
  br i1 %cmp39.i, label %for.body41.i.for.body41.i_crit_edge, label %for.body41.i.if.end55.i_crit_edge

for.body41.i.if.end55.i_crit_edge:                ; preds = %for.body41.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end55.i

for.body41.i.for.body41.i_crit_edge:              ; preds = %for.body41.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body41.i

if.end55.i:                                       ; preds = %for.body41.i.if.end55.i_crit_edge, %for.end.i689.if.end55.i_crit_edge
  %i.2.i = phi i32 [ %i.0.lcssa.i, %for.end.i689.if.end55.i_crit_edge ], [ %j.0.lcssa.i, %for.body41.i.if.end55.i_crit_edge ]
  %cidr58.i = getelementptr %struct.hash_netiface6, ptr %1, i32 0, i32 7, i32 %i.2.i, i32 1
  %139 = ptrtoint ptr %cidr58.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %add255, ptr %cidr58.i, align 1
  %conv62.i = zext i8 %add255 to i32
  %sub63.i = add nsw i32 %conv62.i, -1
  %arrayidx64.i = getelementptr %struct.hash_netiface6, ptr %1, i32 0, i32 7, i32 %sub63.i
  %140 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 1, ptr %arrayidx64.i, align 4
  br label %hash_netiface6_add_cidr.exit

hash_netiface6_add_cidr.exit:                     ; preds = %if.end55.i, %if.then25.i
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i683) #15
  %141 = call ptr @memcpy(ptr %data1.0, ptr %value, i32 40)
  br label %overwrite_extensions

overwrite_extensions:                             ; preds = %hash_netiface6_add_cidr.exit, %ip_set_timeout_expired.exit.overwrite_extensions_crit_edge, %if.then121.overwrite_extensions_crit_edge
  %j.3 = phi i32 [ %j.2, %hash_netiface6_add_cidr.exit ], [ %i.0743, %ip_set_timeout_expired.exit.overwrite_extensions_crit_edge ], [ %i.0743, %if.then121.overwrite_extensions_crit_edge ]
  %old.2 = phi ptr [ %old.1, %hash_netiface6_add_cidr.exit ], [ inttoptr (i32 -2 to ptr), %ip_set_timeout_expired.exit.overwrite_extensions_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.then121.overwrite_extensions_crit_edge ]
  %n.2 = phi ptr [ %n.1, %hash_netiface6_add_cidr.exit ], [ %44, %ip_set_timeout_expired.exit.overwrite_extensions_crit_edge ], [ %44, %if.then121.overwrite_extensions_crit_edge ]
  %data1.1 = phi ptr [ %data1.0, %hash_netiface6_add_cidr.exit ], [ %add.ptr, %ip_set_timeout_expired.exit.overwrite_extensions_crit_edge ], [ %add.ptr, %if.then121.overwrite_extensions_crit_edge ]
  %shr.i690 = lshr i32 %flags, 16
  %142 = trunc i32 %shr.i690 to i8
  %conv.i691 = and i8 %142, 4
  %nomatch.i = getelementptr inbounds %struct.hash_netiface6_elem, ptr %data1.1, i32 0, i32 3
  %143 = ptrtoint ptr %nomatch.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %conv.i691, ptr %nomatch.i, align 2
  %extensions261 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 8
  %144 = ptrtoint ptr %extensions261 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %extensions261, align 2
  %146 = and i8 %145, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %tobool264.not = icmp eq i8 %146, 0
  br i1 %tobool264.not, label %overwrite_extensions.if.end269_crit_edge, label %if.then265

overwrite_extensions.if.end269_crit_edge:         ; preds = %overwrite_extensions
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end269

if.then265:                                       ; preds = %overwrite_extensions
  %offset266 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 14
  %147 = ptrtoint ptr %offset266 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %offset266, align 4
  %add.ptr268 = getelementptr i8, ptr %data1.1, i32 %148
  %bytes.i = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 2
  %149 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load8_noabort(i32 %149)
  %150 = load i64, ptr %bytes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %150)
  %cmp.not.i692 = icmp eq i64 %150, -1
  br i1 %cmp.not.i692, label %if.then265.if.end.i695_crit_edge, label %if.then.i693

if.then265.if.end.i695_crit_edge:                 ; preds = %if.then265
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i695

if.then.i693:                                     ; preds = %if.then265
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr268, i32 noundef 8) #15
  tail call void @generic_atomic64_set(ptr noundef %add.ptr268, i64 noundef %150) #15
  br label %if.end.i695

if.end.i695:                                      ; preds = %if.then.i693, %if.then265.if.end.i695_crit_edge
  %packets.i = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 1
  %151 = ptrtoint ptr %packets.i to i32
  call void @__asan_load8_noabort(i32 %151)
  %152 = load i64, ptr %packets.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %152)
  %cmp3.not.i694 = icmp eq i64 %152, -1
  br i1 %cmp3.not.i694, label %if.end.i695.if.end269_crit_edge, label %if.then4.i

if.end.i695.if.end269_crit_edge:                  ; preds = %if.end.i695
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end269

if.then4.i:                                       ; preds = %if.end.i695
  call void @__sanitizer_cov_trace_pc() #17
  %packets5.i = getelementptr inbounds %struct.ip_set_counter, ptr %add.ptr268, i32 0, i32 1
  %call.i.i13.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %packets5.i, i32 noundef 8) #15
  tail call void @generic_atomic64_set(ptr noundef %packets5.i, i64 noundef %152) #15
  br label %if.end269

if.end269:                                        ; preds = %if.then4.i, %if.end.i695.if.end269_crit_edge, %overwrite_extensions.if.end269_crit_edge
  %153 = ptrtoint ptr %extensions261 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %extensions261, align 2
  %155 = and i8 %154, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %tobool273.not = icmp eq i8 %155, 0
  br i1 %tobool273.not, label %if.end269.if.end278_crit_edge, label %if.then274

if.end269.if.end278_crit_edge:                    ; preds = %if.end269
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end278

if.then274:                                       ; preds = %if.end269
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx276 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 3
  %156 = ptrtoint ptr %arrayidx276 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx276, align 4
  %add.ptr277 = getelementptr i8, ptr %data1.1, i32 %157
  tail call void @ip_set_init_comment(ptr noundef %set, ptr noundef %add.ptr277, ptr noundef %ext) #15
  br label %if.end278

if.end278:                                        ; preds = %if.then274, %if.end269.if.end278_crit_edge
  %158 = ptrtoint ptr %extensions261 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %extensions261, align 2
  %160 = and i8 %159, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %tobool282.not = icmp eq i8 %160, 0
  br i1 %tobool282.not, label %if.end278.if.end287_crit_edge, label %if.then283

if.end278.if.end287_crit_edge:                    ; preds = %if.end278
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end287

if.then283:                                       ; preds = %if.end278
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx285 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 2
  %161 = ptrtoint ptr %arrayidx285 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %arrayidx285, align 4
  %add.ptr286 = getelementptr i8, ptr %data1.1, i32 %162
  %163 = call ptr @memcpy(ptr %add.ptr286, ptr %ext, i32 16)
  br label %if.end287

if.end287:                                        ; preds = %if.then283, %if.end278.if.end287_crit_edge
  %164 = ptrtoint ptr %extensions261 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %extensions261, align 2
  %166 = and i8 %165, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %166)
  %tobool291.not = icmp eq i8 %166, 0
  br i1 %tobool291.not, label %if.end287.do.end300_crit_edge, label %if.then292

if.end287.do.end300_crit_edge:                    ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end300

if.then292:                                       ; preds = %if.end287
  %arrayidx294 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 1
  %167 = ptrtoint ptr %arrayidx294 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %arrayidx294, align 4
  %add.ptr295 = getelementptr i8, ptr %data1.1, i32 %168
  %timeout = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 4
  %169 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %tobool.not.i696 = icmp eq i32 %170, 0
  br i1 %tobool.not.i696, label %if.then292.ip_set_timeout_set.exit_crit_edge, label %if.else.i.i

if.then292.ip_set_timeout_set.exit_crit_edge:     ; preds = %if.then292
  call void @__sanitizer_cov_trace_pc() #17
  br label %ip_set_timeout_set.exit

if.else.i.i:                                      ; preds = %if.then292
  call void @__sanitizer_cov_trace_pc() #17
  %mul.i = mul i32 %170, 1000
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %mul.i) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %171 = load volatile i32, ptr @jiffies, align 128
  %add.i701 = add i32 %171, %call2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i701)
  %cmp.i702 = icmp eq i32 %add.i701, 0
  %spec.select.i = select i1 %cmp.i702, i32 -1, i32 %add.i701
  br label %ip_set_timeout_set.exit

ip_set_timeout_set.exit:                          ; preds = %if.else.i.i, %if.then292.ip_set_timeout_set.exit_crit_edge
  %storemerge.i = phi i32 [ %spec.select.i, %if.else.i.i ], [ 0, %if.then292.ip_set_timeout_set.exit_crit_edge ]
  %172 = ptrtoint ptr %add.ptr295 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %storemerge.i, ptr %add.ptr295, align 4
  br label %do.end300

do.end300:                                        ; preds = %ip_set_timeout_set.exit, %if.end287.do.end300_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !244
  %used303 = getelementptr inbounds %struct.hbucket, ptr %n.2, i32 0, i32 1
  tail call void @_set_bit(i32 noundef %j.3, ptr noundef %used303) #15
  %cmp306.not = icmp eq ptr %old.2, inttoptr (i32 -2 to ptr)
  br i1 %cmp306.not, label %do.end300.resize_crit_edge, label %do.body309

do.end300.resize_crit_edge:                       ; preds = %do.end300
  call void @__sanitizer_cov_trace_pc() #17
  br label %resize

do.body309:                                       ; preds = %do.end300
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !245
  %173 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store4_noabort(i32 %173)
  store volatile ptr %n.2, ptr %arrayidx69, align 4
  %tobool351.not = icmp eq ptr %old.2, null
  br i1 %tobool351.not, label %do.body309.resize_crit_edge, label %do.end358

do.body309.resize_crit_edge:                      ; preds = %do.body309
  call void @__sanitizer_cov_trace_pc() #17
  br label %resize

do.end358:                                        ; preds = %do.body309
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kvfree_call_rcu(ptr noundef nonnull %old.2, ptr noundef null) #15
  br label %resize

resize:                                           ; preds = %do.end358, %do.body309.resize_crit_edge, %do.end300.resize_crit_edge, %if.then198.resize_crit_edge
  %ret.0 = phi i32 [ 0, %do.body309.resize_crit_edge ], [ 0, %do.end358 ], [ 0, %do.end300.resize_crit_edge ], [ -11, %if.then198.resize_crit_edge ]
  %174 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %hregion, align 4
  %arrayidx365 = getelementptr %struct.ip_set_region, ptr %175, i32 %rem
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx365) #15
  %call.i.i607 = tail call zeroext i1 @__kasan_check_read(ptr noundef %4, i32 noundef 4) #15
  %176 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load volatile i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %177)
  %tobool368.not = icmp eq i32 %177, 0
  br i1 %tobool368.not, label %resize.out_crit_edge, label %land.lhs.true369

resize.out_crit_edge:                             ; preds = %resize
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

land.lhs.true369:                                 ; preds = %resize
  %target = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 7
  %178 = ptrtoint ptr %target to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %target, align 2, !range !231
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %179)
  %tobool370.not = icmp eq i8 %179, 0
  br i1 %tobool370.not, label %land.lhs.true369.out_crit_edge, label %if.then372

land.lhs.true369.out_crit_edge:                   ; preds = %land.lhs.true369
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then372:                                       ; preds = %land.lhs.true369
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %180 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i710 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %180, i32 noundef 2848, i32 noundef 160) #18
  %tobool374.not = icmp eq ptr %call7.i.i710, null
  br i1 %tobool374.not, label %if.then372.out_crit_edge, label %if.end376

if.then372.out_crit_edge:                         ; preds = %if.then372
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end376:                                        ; preds = %if.then372
  %ad = getelementptr inbounds %struct.hash_netiface6_resize_ad, ptr %call7.i.i710, i32 0, i32 1
  %181 = ptrtoint ptr %ad to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 0, ptr %ad, align 8
  %d377 = getelementptr inbounds %struct.hash_netiface6_resize_ad, ptr %call7.i.i710, i32 0, i32 2
  %182 = call ptr @memcpy(ptr %d377, ptr %value, i32 40)
  %ext378 = getelementptr inbounds %struct.hash_netiface6_resize_ad, ptr %call7.i.i710, i32 0, i32 3
  %183 = call ptr @memcpy(ptr %ext378, ptr %ext, i32 48)
  %mext379 = getelementptr inbounds %struct.hash_netiface6_resize_ad, ptr %call7.i.i710, i32 0, i32 4
  %184 = call ptr @memcpy(ptr %mext379, ptr %mext, i32 48)
  %flags380 = getelementptr inbounds %struct.hash_netiface6_resize_ad, ptr %call7.i.i710, i32 0, i32 5
  %185 = ptrtoint ptr %flags380 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %flags, ptr %flags380, align 8
  %lock381 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock381) #15
  %ad382 = getelementptr inbounds %struct.hash_netiface6, ptr %1, i32 0, i32 5
  %prev.i = getelementptr inbounds %struct.hash_netiface6, ptr %1, i32 0, i32 5, i32 1
  %186 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %prev.i, align 4
  %call.i.i712 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i710, ptr noundef %187, ptr noundef %ad382) #15
  br i1 %call.i.i712, label %if.end.i.i713, label %if.end376.out.sink.split_crit_edge

if.end376.out.sink.split_crit_edge:               ; preds = %if.end376
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.sink.split

if.end.i.i713:                                    ; preds = %if.end376
  call void @__sanitizer_cov_trace_pc() #17
  %188 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %call7.i.i710, ptr %prev.i, align 4
  %189 = ptrtoint ptr %call7.i.i710 to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %ad382, ptr %call7.i.i710, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i710, i32 0, i32 1
  %190 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %187, ptr %prev3.i.i, align 4
  %191 = ptrtoint ptr %187 to i32
  call void @__asan_store4_noabort(i32 %191)
  store volatile ptr %call7.i.i710, ptr %187, align 4
  br label %out.sink.split

set_full:                                         ; preds = %if.end187.set_full_crit_edge, %if.then84.set_full_crit_edge
  %call385 = tail call i32 @net_ratelimit() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call385)
  %tobool386.not = icmp eq i32 %call385, 0
  br i1 %tobool386.not, label %set_full.unlock_crit_edge, label %do.end390

set_full.unlock_crit_edge:                        ; preds = %set_full
  call void @__sanitizer_cov_trace_pc() #17
  br label %unlock

do.end390:                                        ; preds = %set_full
  call void @__sanitizer_cov_trace_pc() #17
  %call393 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %set, i32 noundef %maxelem.0) #21
  br label %unlock

unlock:                                           ; preds = %do.end390, %set_full.unlock_crit_edge, %if.end208.unlock_crit_edge, %ip_set_timeout_expired.exit.unlock_crit_edge, %land.lhs.true129.unlock_crit_edge, %lor.lhs.false124.unlock_crit_edge, %if.end90.unlock_crit_edge
  %ret.1 = phi i32 [ -12, %if.end90.unlock_crit_edge ], [ -4103, %ip_set_timeout_expired.exit.unlock_crit_edge ], [ -4103, %lor.lhs.false124.unlock_crit_edge ], [ -12, %if.end208.unlock_crit_edge ], [ -4352, %do.end390 ], [ -4352, %set_full.unlock_crit_edge ], [ -4103, %land.lhs.true129.unlock_crit_edge ]
  %192 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %hregion, align 4
  %arrayidx396 = getelementptr %struct.ip_set_region, ptr %193, i32 %rem
  br label %out.sink.split

out.sink.split:                                   ; preds = %unlock, %if.end.i.i713, %if.end376.out.sink.split_crit_edge
  %lock381.sink = phi ptr [ %arrayidx396, %unlock ], [ %lock381, %if.end376.out.sink.split_crit_edge ], [ %lock381, %if.end.i.i713 ]
  %ret.2.ph = phi i32 [ %ret.1, %unlock ], [ %ret.0, %if.end376.out.sink.split_crit_edge ], [ %ret.0, %if.end.i.i713 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock381.sink) #15
  br label %out

out:                                              ; preds = %out.sink.split, %if.then372.out_crit_edge, %land.lhs.true369.out_crit_edge, %resize.out_crit_edge
  %ret.2 = phi i32 [ %ret.0, %land.lhs.true369.out_crit_edge ], [ %ret.0, %resize.out_crit_edge ], [ %ret.0, %if.then372.out_crit_edge ], [ %ret.2.ph, %out.sink.split ]
  %call.i.i608 = tail call zeroext i1 @__kasan_check_write(ptr noundef %uref, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !232
  tail call void @llvm.prefetch.p0(ptr %uref, i32 1, i32 3, i32 1) #15
  %194 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uref, ptr %uref, i32 1, ptr elementtype(i32) %uref) #15, !srcloc !233
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %194, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !234
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true401, label %out.cleanup418_crit_edge

out.cleanup418_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup418

land.lhs.true401:                                 ; preds = %out
  %call.i.i609 = tail call zeroext i1 @__kasan_check_read(ptr noundef %4, i32 noundef 4) #15
  %195 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load volatile i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %196)
  %tobool404.not = icmp eq i32 %196, 0
  br i1 %tobool404.not, label %land.lhs.true401.cleanup418_crit_edge, label %do.body406

land.lhs.true401.cleanup418_crit_edge:            ; preds = %land.lhs.true401
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup418

do.body406:                                       ; preds = %land.lhs.true401
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_netiface6_add.__UNIQUE_ID_ddebug735, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_netiface6_add, %if.then413)) #15
          to label %do.end.i [label %if.then413], !srcloc !224

if.then413:                                       ; preds = %do.body406
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_netiface6_add.__UNIQUE_ID_ddebug735, ptr noundef nonnull @.str.13, ptr noundef %4) #15
  br label %do.end.i

do.end.i:                                         ; preds = %for.inc.i721.do.end.i_crit_edge, %if.then413, %do.body406
  %i.017.i = phi i32 [ %inc.i718, %for.inc.i721.do.end.i_crit_edge ], [ 0, %do.body406 ], [ 0, %if.then413 ]
  %arrayidx.i715 = getelementptr %struct.htable, ptr %4, i32 0, i32 5, i32 %i.017.i
  %197 = ptrtoint ptr %arrayidx.i715 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %arrayidx.i715, align 4
  %tobool.not.i716 = icmp eq ptr %198, null
  br i1 %tobool.not.i716, label %do.end.i.for.inc.i721_crit_edge, label %if.end.i717

do.end.i.for.inc.i721_crit_edge:                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i721

if.end.i717:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %198) #15
  br label %for.inc.i721

for.inc.i721:                                     ; preds = %if.end.i717, %do.end.i.for.inc.i721_crit_edge
  %inc.i718 = add i32 %i.017.i, 1
  %199 = ptrtoint ptr %htable_bits to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %htable_bits, align 4
  %conv.i719 = zext i8 %200 to i32
  %i.0.highbits.i = lshr i32 %inc.i718, %conv.i719
  %cmp.i720 = icmp eq i32 %i.0.highbits.i, 0
  br i1 %cmp.i720, label %for.inc.i721.do.end.i_crit_edge, label %hash_netiface6_ahash_destroy.exit

for.inc.i721.do.end.i_crit_edge:                  ; preds = %for.inc.i721
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

hash_netiface6_ahash_destroy.exit:                ; preds = %for.inc.i721
  call void @__sanitizer_cov_trace_pc() #17
  %201 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %hregion, align 4
  tail call void @ip_set_free(ptr noundef %202) #15
  tail call void @ip_set_free(ptr noundef %4) #15
  br label %cleanup418

cleanup418:                                       ; preds = %hash_netiface6_ahash_destroy.exit, %land.lhs.true401.cleanup418_crit_edge, %out.cleanup418_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %multi) #15
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hash_netiface6_del(ptr noundef %set, ptr nocapture noundef readonly %value, ptr nocapture noundef readonly %ext, ptr nocapture noundef readnone %mext, i32 noundef %flags) #2 align 64 {
entry:
  %multi = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 15
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %multi) #15
  %2 = ptrtoint ptr %multi to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %multi, align 4
  %dsize2 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %3 = ptrtoint ptr %dsize2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dsize2, align 4
  tail call fastcc void @local_bh_disable() #15
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %entry.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock_bh.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock_bh.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock_bh.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock_bh.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 750, ptr noundef nonnull @.str.15) #15
  br label %rcu_read_lock_bh.exit

rcu_read_lock_bh.exit:                            ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, %entry.rcu_read_lock_bh.exit_crit_edge
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %1, align 4
  %call = tail call i32 @rcu_read_lock_bh_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock_bh.exit.jhash2.exit_crit_edge

rcu_read_lock_bh.exit.jhash2.exit_crit_edge:      ; preds = %rcu_read_lock_bh.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %jhash2.exit

land.lhs.true:                                    ; preds = %rcu_read_lock_bh.exit
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.jhash2.exit_crit_edge, label %land.lhs.true6

land.lhs.true.jhash2.exit_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %jhash2.exit

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b443 = load i1, ptr @hash_netiface6_del.__warned, align 1
  br i1 %.b443, label %land.lhs.true6.jhash2.exit_crit_edge, label %if.then

land.lhs.true6.jhash2.exit_crit_edge:             ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #17
  br label %jhash2.exit

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @hash_netiface6_del.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1048, ptr noundef nonnull @.str.9) #15
  br label %jhash2.exit

jhash2.exit:                                      ; preds = %if.then, %land.lhs.true6.jhash2.exit_crit_edge, %land.lhs.true.jhash2.exit_crit_edge, %rcu_read_lock_bh.exit.jhash2.exit_crit_edge
  %initval = getelementptr inbounds %struct.hash_netiface6, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %initval to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %initval, align 4
  %add1.i = add i32 %8, -559038717
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 4
  %add2.i = add i32 %10, %add1.i
  %arrayidx3.i = getelementptr i32, ptr %value, i32 1
  %11 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx3.i, align 4
  %add4.i = add i32 %12, %add1.i
  %arrayidx5.i = getelementptr i32, ptr %value, i32 2
  %13 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx5.i, align 4
  %add6.i = add i32 %14, %add1.i
  %sub.i = sub i32 %add2.i, %add6.i
  %or.i.i = tail call i32 @llvm.fshl.i32(i32 %add6.i, i32 %add6.i, i32 4) #15
  %xor.i = xor i32 %sub.i, %or.i.i
  %add7.i = add i32 %add6.i, %add4.i
  %sub8.i = sub i32 %add4.i, %xor.i
  %or.i135.i = tail call i32 @llvm.fshl.i32(i32 %xor.i, i32 %xor.i, i32 6) #15
  %xor10.i = xor i32 %sub8.i, %or.i135.i
  %add11.i = add i32 %xor.i, %add7.i
  %sub12.i = sub i32 %add7.i, %xor10.i
  %or.i136.i = tail call i32 @llvm.fshl.i32(i32 %xor10.i, i32 %xor10.i, i32 8) #15
  %xor14.i = xor i32 %sub12.i, %or.i136.i
  %add15.i = add i32 %xor10.i, %add11.i
  %sub16.i = sub i32 %add11.i, %xor14.i
  %or.i137.i = tail call i32 @llvm.fshl.i32(i32 %xor14.i, i32 %xor14.i, i32 16) #15
  %xor18.i = xor i32 %sub16.i, %or.i137.i
  %add19.i = add i32 %xor14.i, %add15.i
  %sub20.i = sub i32 %add15.i, %xor18.i
  %or.i138.i = tail call i32 @llvm.fshl.i32(i32 %xor18.i, i32 %xor18.i, i32 19) #15
  %xor22.i = xor i32 %sub20.i, %or.i138.i
  %add23.i = add i32 %xor18.i, %add19.i
  %sub24.i = sub i32 %add19.i, %xor22.i
  %or.i139.i = tail call i32 @llvm.fshl.i32(i32 %xor22.i, i32 %xor22.i, i32 4) #15
  %xor26.i = xor i32 %sub24.i, %or.i139.i
  %add27.i = add i32 %xor22.i, %add23.i
  %add.ptr.i = getelementptr i32, ptr %value, i32 3
  %arrayidx32.i = getelementptr i32, ptr %value, i32 4
  %15 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx32.i, align 4
  %add33.i = add i32 %16, %add27.i
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr.i, align 4
  %add36.i = add i32 %18, %add23.i
  %xor37.i = xor i32 %xor26.i, %add33.i
  %or.i140.i = tail call i32 @llvm.fshl.i32(i32 %add33.i, i32 %add33.i, i32 14) #15
  %sub39.i = sub i32 %xor37.i, %or.i140.i
  %xor40.i = xor i32 %add36.i, %sub39.i
  %or.i141.i = tail call i32 @llvm.fshl.i32(i32 %sub39.i, i32 %sub39.i, i32 11) #15
  %sub42.i = sub i32 %xor40.i, %or.i141.i
  %xor43.i = xor i32 %sub42.i, %add33.i
  %or.i142.i = tail call i32 @llvm.fshl.i32(i32 %sub42.i, i32 %sub42.i, i32 25) #15
  %sub45.i = sub i32 %xor43.i, %or.i142.i
  %xor46.i = xor i32 %sub45.i, %sub39.i
  %or.i143.i = tail call i32 @llvm.fshl.i32(i32 %sub45.i, i32 %sub45.i, i32 16) #15
  %sub48.i = sub i32 %xor46.i, %or.i143.i
  %xor49.i = xor i32 %sub48.i, %sub42.i
  %or.i144.i = tail call i32 @llvm.fshl.i32(i32 %sub48.i, i32 %sub48.i, i32 4) #15
  %sub51.i = sub i32 %xor49.i, %or.i144.i
  %xor52.i = xor i32 %sub51.i, %sub45.i
  %or.i145.i = tail call i32 @llvm.fshl.i32(i32 %sub51.i, i32 %sub51.i, i32 14) #15
  %sub54.i = sub i32 %xor52.i, %or.i145.i
  %xor55.i = xor i32 %sub54.i, %sub48.i
  %or.i146.i = tail call i32 @llvm.fshl.i32(i32 %sub54.i, i32 %sub54.i, i32 24) #15
  %sub57.i = sub i32 %xor55.i, %or.i146.i
  %htable_bits = getelementptr inbounds %struct.htable, ptr %6, i32 0, i32 2
  %19 = ptrtoint ptr %htable_bits to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %htable_bits, align 4
  %conv = zext i8 %20 to i32
  %notmask = shl nsw i32 -1, %conv
  %sub = xor i32 %notmask, -1
  %and = and i32 %sub57.i, %sub
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %20)
  %cmp = icmp ult i8 %20, 10
  %sub21 = add nsw i32 %conv, -10
  %notmask487 = shl nsw i32 -1, %sub21
  %shl22.op = xor i32 %notmask487, -1
  %21 = select i1 %cmp, i32 0, i32 %shl22.op
  %rem = and i32 %21, %and
  %uref = getelementptr inbounds %struct.htable, ptr %6, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %uref, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %uref, i32 1, i32 3, i32 1) #15
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uref, ptr %uref, i32 1, ptr elementtype(i32) %uref) #15, !srcloc !228
  %call.i457 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i457, label %jhash2.exit.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true.i460

jhash2.exit.rcu_read_unlock_bh.exit_crit_edge:    ; preds = %jhash2.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock_bh.exit

land.lhs.true.i460:                               ; preds = %jhash2.exit
  %call1.i458 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i458)
  %tobool.not.i459 = icmp eq i32 %call1.i458, 0
  br i1 %tobool.not.i459, label %land.lhs.true.i460.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true2.i462

land.lhs.true.i460.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true.i460
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock_bh.exit

land.lhs.true2.i462:                              ; preds = %land.lhs.true.i460
  %.b4.i461 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i461, label %land.lhs.true2.i462.rcu_read_unlock_bh.exit_crit_edge, label %if.then.i463

land.lhs.true2.i462.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i462
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock_bh.exit

if.then.i463:                                     ; preds = %land.lhs.true2.i462
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 761, ptr noundef nonnull @.str.16) #15
  br label %rcu_read_unlock_bh.exit

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i463, %land.lhs.true2.i462.rcu_read_unlock_bh.exit_crit_edge, %land.lhs.true.i460.rcu_read_unlock_bh.exit_crit_edge, %jhash2.exit.rcu_read_unlock_bh.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #15
  tail call fastcc void @local_bh_enable() #15
  %hregion = getelementptr inbounds %struct.htable, ptr %6, i32 0, i32 4
  %23 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hregion, align 4
  %arrayidx = getelementptr %struct.ip_set_region, ptr %24, i32 %rem
  tail call void @_raw_spin_lock_bh(ptr noundef %arrayidx) #15
  %arrayidx27 = getelementptr %struct.htable, ptr %6, i32 0, i32 5, i32 %and
  %25 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %arrayidx27, align 4
  %call29 = tail call i32 @rcu_read_lock_bh_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %land.lhs.true31, label %rcu_read_unlock_bh.exit.do.end39_crit_edge

rcu_read_unlock_bh.exit.do.end39_crit_edge:       ; preds = %rcu_read_unlock_bh.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end39

land.lhs.true31:                                  ; preds = %rcu_read_unlock_bh.exit
  %call32 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %land.lhs.true31.do.end39_crit_edge, label %land.lhs.true34

land.lhs.true31.do.end39_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end39

land.lhs.true34:                                  ; preds = %land.lhs.true31
  %.b441442 = load i1, ptr @hash_netiface6_del.__warned.51, align 1
  br i1 %.b441442, label %land.lhs.true34.do.end39_crit_edge, label %if.then36

land.lhs.true34.do.end39_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end39

if.then36:                                        ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @hash_netiface6_del.__warned.51, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1055, ptr noundef nonnull @.str.9) #15
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %land.lhs.true34.do.end39_crit_edge, %land.lhs.true31.do.end39_crit_edge, %rcu_read_unlock_bh.exit.do.end39_crit_edge
  %tobool41.not = icmp eq ptr %26, null
  br i1 %tobool41.not, label %do.end39.out_crit_edge, label %for.cond.preheader

do.end39.out_crit_edge:                           ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

for.cond.preheader:                               ; preds = %do.end39
  %pos = getelementptr inbounds %struct.hbucket, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %pos, align 1
  %conv44 = zext i8 %28 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp45492.not = icmp eq i8 %28, 0
  br i1 %cmp45492.not, label %for.cond.preheader.out_crit_edge, label %for.body.lr.ph

for.cond.preheader.out_crit_edge:                 ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %used = getelementptr inbounds %struct.hbucket, ptr %26, i32 0, i32 1
  %value51 = getelementptr inbounds %struct.hbucket, ptr %26, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc296.for.body_crit_edge, %for.body.lr.ph
  %i.0494 = phi i32 [ 0, %for.body.lr.ph ], [ %inc297, %for.inc296.for.body_crit_edge ]
  %k.0493 = phi i32 [ 0, %for.body.lr.ph ], [ %k.5, %for.inc296.for.body_crit_edge ]
  %div3.i = lshr i32 %i.0494, 5
  %arrayidx.i = getelementptr i32, ptr %used, i32 %div3.i
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.0494, 31
  %31 = shl nuw i32 1, %and.i
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool48.not = icmp eq i32 %32, 0
  br i1 %tobool48.not, label %if.then49, label %if.end50

if.then49:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %inc = add i32 %k.0493, 1
  br label %for.inc296

if.end50:                                         ; preds = %for.body
  %mul = mul i32 %i.0494, %4
  %add.ptr = getelementptr i8, ptr %value51, i32 %mul
  %call53 = call fastcc zeroext i1 @hash_netiface6_data_equal(ptr noundef %add.ptr, ptr noundef %value, ptr noundef nonnull %multi)
  br i1 %call53, label %if.end55, label %if.end50.for.inc296_crit_edge

if.end50.for.inc296_crit_edge:                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc296

if.end55:                                         ; preds = %if.end50
  %extensions = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 8
  %33 = ptrtoint ptr %extensions to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %extensions, align 2
  %35 = and i8 %34, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool58.not = icmp eq i8 %35, 0
  br i1 %tobool58.not, label %if.end55.if.end65_crit_edge, label %land.lhs.true59

if.end55.if.end65_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end65

land.lhs.true59:                                  ; preds = %if.end55
  %arrayidx60 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 1
  %36 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx60, align 4
  %add.ptr61 = getelementptr i8, ptr %add.ptr, i32 %37
  %38 = ptrtoint ptr %add.ptr61 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.not.i = icmp eq i32 %39, 0
  br i1 %cmp.not.i, label %land.lhs.true59.if.end65_crit_edge, label %ip_set_timeout_expired.exit

land.lhs.true59.if.end65_crit_edge:               ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end65

ip_set_timeout_expired.exit:                      ; preds = %land.lhs.true59
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %40 = load volatile i32, ptr @jiffies, align 128
  %sub.i464 = sub i32 %39, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i464)
  %cmp1.i = icmp slt i32 %sub.i464, 0
  br i1 %cmp1.i, label %ip_set_timeout_expired.exit.out_crit_edge, label %ip_set_timeout_expired.exit.if.end65_crit_edge

ip_set_timeout_expired.exit.if.end65_crit_edge:   ; preds = %ip_set_timeout_expired.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end65

ip_set_timeout_expired.exit.out_crit_edge:        ; preds = %ip_set_timeout_expired.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end65:                                         ; preds = %ip_set_timeout_expired.exit.if.end65_crit_edge, %land.lhs.true59.if.end65_crit_edge, %if.end55.if.end65_crit_edge
  tail call void @_clear_bit(i32 noundef %i.0494, ptr noundef %used) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !246
  %add = add nuw nsw i32 %i.0494, 1
  %41 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %pos, align 1
  %conv75 = zext i8 %42 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv75)
  %cmp76 = icmp eq i32 %add, %conv75
  br i1 %cmp76, label %if.then78, label %if.end65.if.end80_crit_edge

if.end65.if.end80_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end80

if.then78:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #17
  %dec = add i8 %42, -1
  %43 = ptrtoint ptr %pos to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %dec, ptr %pos, align 1
  br label %if.end80

if.end80:                                         ; preds = %if.then78, %if.end65.if.end80_crit_edge
  %44 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hregion, align 4
  %elements = getelementptr %struct.ip_set_region, ptr %45, i32 %rem, i32 2
  %46 = ptrtoint ptr %elements to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %elements, align 4
  %dec83 = add i32 %47, -1
  store i32 %dec83, ptr %elements, align 4
  %cidr = getelementptr inbounds %struct.hash_netiface6_elem, ptr %value, i32 0, i32 2
  %48 = ptrtoint ptr %cidr to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %cidr, align 1
  %add89 = add i8 %49, 1
  %lock.i = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #15
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc57.i.for.body.i_crit_edge, %if.end80
  %indvars.iv.i = phi i32 [ 0, %if.end80 ], [ %indvars.iv.next.i, %for.inc57.i.for.body.i_crit_edge ]
  %arrayidx4.i = getelementptr %struct.hash_netiface6, ptr %1, i32 0, i32 7, i32 %indvars.iv.i, i32 1, i32 0
  %50 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx4.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %51, i8 %add89)
  %cmp7.not.i = icmp eq i8 %51, %add89
  br i1 %cmp7.not.i, label %if.end.i, label %for.inc57.i

if.end.i:                                         ; preds = %for.body.i
  %conv6.i = zext i8 %add89 to i32
  %sub.i465 = add nsw i32 %conv6.i, -1
  %arrayidx11.i = getelementptr %struct.hash_netiface6, ptr %1, i32 0, i32 7, i32 %sub.i465
  %52 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx11.i, align 4
  %dec.i = add i32 %53, -1
  store i32 %dec.i, ptr %arrayidx11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp22.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp22.not.i, label %for.cond26.preheader.i, label %if.end.i.hash_netiface6_del_cidr.exit_crit_edge

if.end.i.hash_netiface6_del_cidr.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %hash_netiface6_del_cidr.exit

for.cond26.preheader.i:                           ; preds = %if.end.i
  %conv2786.i = and i32 %indvars.iv.i, 255
  %54 = and i32 %indvars.iv.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp2987.i = icmp eq i32 %54, 0
  br i1 %cmp2987.i, label %for.cond26.preheader.i.land.rhs.i467_crit_edge, label %for.cond26.preheader.i.for.end.i_crit_edge

for.cond26.preheader.i.for.end.i_crit_edge:       ; preds = %for.cond26.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.cond26.preheader.i.land.rhs.i467_crit_edge:   ; preds = %for.cond26.preheader.i
  br label %land.rhs.i467

land.rhs.i467:                                    ; preds = %for.body38.i.land.rhs.i467_crit_edge, %for.cond26.preheader.i.land.rhs.i467_crit_edge
  %indvars.iv92.i = phi i32 [ %add.i, %for.body38.i.land.rhs.i467_crit_edge ], [ %indvars.iv.i, %for.cond26.preheader.i.land.rhs.i467_crit_edge ]
  %arrayidx36.i = getelementptr %struct.hash_netiface6, ptr %1, i32 0, i32 7, i32 %indvars.iv92.i, i32 1, i32 0
  %55 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx36.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.i466 = icmp eq i8 %56, 0
  br i1 %tobool.not.i466, label %land.rhs.i467.for.end.i_crit_edge, label %for.body38.i

land.rhs.i467.for.end.i_crit_edge:                ; preds = %land.rhs.i467
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.body38.i:                                     ; preds = %land.rhs.i467
  %add.i = add i32 %indvars.iv92.i, 1
  %arrayidx44.i = getelementptr %struct.hash_netiface6, ptr %1, i32 0, i32 7, i32 %add.i, i32 1, i32 0
  %57 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx44.i, align 1
  %59 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %arrayidx36.i, align 1
  %60 = and i32 %add.i, 128
  %cmp29.i = icmp eq i32 %60, 0
  br i1 %cmp29.i, label %for.body38.i.land.rhs.i467_crit_edge, label %for.body38.i.for.end.i_crit_edge

for.body38.i.for.end.i_crit_edge:                 ; preds = %for.body38.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.body38.i.land.rhs.i467_crit_edge:             ; preds = %for.body38.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs.i467

for.end.i:                                        ; preds = %for.body38.i.for.end.i_crit_edge, %land.rhs.i467.for.end.i_crit_edge, %for.cond26.preheader.i.for.end.i_crit_edge
  %conv27.lcssa.i = phi i32 [ %conv2786.i, %for.cond26.preheader.i.for.end.i_crit_edge ], [ %indvars.iv92.i, %land.rhs.i467.for.end.i_crit_edge ], [ %add.i, %for.body38.i.for.end.i_crit_edge ]
  %arrayidx56.i = getelementptr %struct.hash_netiface6, ptr %1, i32 0, i32 7, i32 %conv27.lcssa.i, i32 1, i32 0
  %61 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %arrayidx56.i, align 1
  br label %hash_netiface6_del_cidr.exit

for.inc57.i:                                      ; preds = %for.body.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 129
  br i1 %exitcond.not.i, label %for.inc57.i.hash_netiface6_del_cidr.exit_crit_edge, label %for.inc57.i.for.body.i_crit_edge

for.inc57.i.for.body.i_crit_edge:                 ; preds = %for.inc57.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc57.i.hash_netiface6_del_cidr.exit_crit_edge: ; preds = %for.inc57.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %hash_netiface6_del_cidr.exit

hash_netiface6_del_cidr.exit:                     ; preds = %for.inc57.i.hash_netiface6_del_cidr.exit_crit_edge, %for.end.i, %if.end.i.hash_netiface6_del_cidr.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #15
  %62 = ptrtoint ptr %extensions to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %extensions, align 2
  %64 = and i8 %63, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool.not.i468 = icmp eq i8 %64, 0
  br i1 %tobool.not.i468, label %hash_netiface6_del_cidr.exit.ip_set_ext_destroy.exit_crit_edge, label %if.then.i471

hash_netiface6_del_cidr.exit.ip_set_ext_destroy.exit_crit_edge: ; preds = %hash_netiface6_del_cidr.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %ip_set_ext_destroy.exit

if.then.i471:                                     ; preds = %hash_netiface6_del_cidr.exit
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx.i469 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 3
  %65 = ptrtoint ptr %arrayidx.i469 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx.i469, align 4
  %add.ptr.i470 = getelementptr i8, ptr %add.ptr, i32 %66
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.ip_set_ext_type], ptr @ip_set_extensions, i32 0, i32 3) to i32))
  %67 = load ptr, ptr getelementptr inbounds ([0 x %struct.ip_set_ext_type], ptr @ip_set_extensions, i32 0, i32 3), align 4
  tail call void %67(ptr noundef %set, ptr noundef %add.ptr.i470) #15
  br label %ip_set_ext_destroy.exit

ip_set_ext_destroy.exit:                          ; preds = %if.then.i471, %hash_netiface6_del_cidr.exit.ip_set_ext_destroy.exit_crit_edge
  %call.i.i444 = tail call zeroext i1 @__kasan_check_read(ptr noundef %6, i32 noundef 4) #15
  %68 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool94.not = icmp eq i32 %69, 0
  br i1 %tobool94.not, label %ip_set_ext_destroy.exit.if.end105_crit_edge, label %land.lhs.true95

ip_set_ext_destroy.exit.if.end105_crit_edge:      ; preds = %ip_set_ext_destroy.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end105

land.lhs.true95:                                  ; preds = %ip_set_ext_destroy.exit
  %target = getelementptr inbounds %struct.ip_set_ext, ptr %ext, i32 0, i32 7
  %70 = ptrtoint ptr %target to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %target, align 2, !range !231
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool96.not = icmp eq i8 %71, 0
  br i1 %tobool96.not, label %land.lhs.true95.if.end105_crit_edge, label %if.then98

land.lhs.true95.if.end105_crit_edge:              ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end105

if.then98:                                        ; preds = %land.lhs.true95
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %72 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %72, i32 noundef 2848, i32 noundef 160) #18
  %tobool100.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool100.not, label %if.then98.if.end105_crit_edge, label %if.then101

if.then98.if.end105_crit_edge:                    ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end105

if.then101:                                       ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #17
  %ad = getelementptr inbounds %struct.hash_netiface6_resize_ad, ptr %call7.i.i, i32 0, i32 1
  %73 = ptrtoint ptr %ad to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 1, ptr %ad, align 8
  %d102 = getelementptr inbounds %struct.hash_netiface6_resize_ad, ptr %call7.i.i, i32 0, i32 2
  %74 = call ptr @memcpy(ptr %d102, ptr %value, i32 40)
  %flags103 = getelementptr inbounds %struct.hash_netiface6_resize_ad, ptr %call7.i.i, i32 0, i32 5
  %75 = ptrtoint ptr %flags103 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %flags, ptr %flags103, align 8
  br label %if.end105

if.end105:                                        ; preds = %if.then101, %if.then98.if.end105_crit_edge, %land.lhs.true95.if.end105_crit_edge, %ip_set_ext_destroy.exit.if.end105_crit_edge
  %x.0 = phi ptr [ %call7.i.i, %if.then101 ], [ null, %if.then98.if.end105_crit_edge ], [ null, %land.lhs.true95.if.end105_crit_edge ], [ null, %ip_set_ext_destroy.exit.if.end105_crit_edge ]
  %76 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %pos, align 1
  %conv108 = zext i8 %77 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0494, i32 %conv108)
  %cmp109496 = icmp ult i32 %i.0494, %conv108
  br i1 %cmp109496, label %if.end105.for.body111_crit_edge, label %if.end105.for.end121_crit_edge

if.end105.for.end121_crit_edge:                   ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end121

if.end105.for.body111_crit_edge:                  ; preds = %if.end105
  br label %for.body111

for.body111:                                      ; preds = %for.body111.for.body111_crit_edge, %if.end105.for.body111_crit_edge
  %i.1498 = phi i32 [ %inc120, %for.body111.for.body111_crit_edge ], [ %i.0494, %if.end105.for.body111_crit_edge ]
  %k.1497 = phi i32 [ %spec.select, %for.body111.for.body111_crit_edge ], [ %k.0493, %if.end105.for.body111_crit_edge ]
  %div3.i445 = lshr i32 %i.1498, 5
  %arrayidx.i446 = getelementptr i32, ptr %used, i32 %div3.i445
  %78 = ptrtoint ptr %arrayidx.i446 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %arrayidx.i446, align 4
  %and.i447 = and i32 %i.1498, 31
  %80 = xor i32 %79, -1
  %81 = lshr i32 %80, %and.i447
  %82 = and i32 %81, 1
  %spec.select = add i32 %82, %k.1497
  %inc120 = add nuw nsw i32 %i.1498, 1
  %exitcond509.not = icmp eq i32 %inc120, %conv108
  br i1 %exitcond509.not, label %for.body111.for.end121_crit_edge, label %for.body111.for.body111_crit_edge

for.body111.for.body111_crit_edge:                ; preds = %for.body111
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body111

for.body111.for.end121_crit_edge:                 ; preds = %for.body111
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end121

for.end121:                                       ; preds = %for.body111.for.end121_crit_edge, %if.end105.for.end121_crit_edge
  %k.1.lcssa = phi i32 [ %k.0493, %if.end105.for.end121_crit_edge ], [ %spec.select, %for.body111.for.end121_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %cmp124 = icmp eq i8 %77, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %k.1.lcssa)
  %cmp127 = icmp eq i32 %k.1.lcssa, 0
  %or.cond = select i1 %cmp124, i1 %cmp127, i1 false
  br i1 %or.cond, label %if.then129, label %if.else186

if.then129:                                       ; preds = %for.end121
  call void @__sanitizer_cov_trace_pc() #17
  %size = getelementptr inbounds %struct.hbucket, ptr %26, i32 0, i32 2
  %83 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %size, align 8
  %conv130 = zext i8 %84 to i32
  %mul131 = mul i32 %4, %conv130
  %85 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %hregion, align 4
  %ext_size = getelementptr %struct.ip_set_region, ptr %86, i32 %rem, i32 1
  %87 = ptrtoint ptr %ext_size to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %ext_size, align 4
  %add132.neg = add i32 %88, -24
  %sub135 = sub i32 %add132.neg, %mul131
  store i32 %sub135, ptr %ext_size, align 4
  br label %out.sink.split

if.else186:                                       ; preds = %for.end121
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %k.1.lcssa)
  %cmp187 = icmp sgt i32 %k.1.lcssa, 1
  br i1 %cmp187, label %if.then189, label %if.else186.out_crit_edge

if.else186.out_crit_edge:                         ; preds = %if.else186
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then189:                                       ; preds = %if.else186
  %size191 = getelementptr inbounds %struct.hbucket, ptr %26, i32 0, i32 2
  %89 = ptrtoint ptr %size191 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %size191, align 8
  %conv192 = zext i8 %90 to i32
  %sub193 = add nsw i32 %conv192, -2
  %mul194 = mul i32 %sub193, %4
  %add195 = add i32 %mul194, 24
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add195, i32 noundef 2848) #19
  %tobool197.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool197.not, label %if.then189.out_crit_edge, label %if.end199

if.then189.out_crit_edge:                         ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end199:                                        ; preds = %if.then189
  %91 = ptrtoint ptr %size191 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %size191, align 8
  %sub202 = add i8 %92, -2
  %size204 = getelementptr inbounds %struct.hbucket, ptr %call9.i.i, i32 0, i32 2
  %93 = ptrtoint ptr %size204 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %sub202, ptr %size204, align 16
  %94 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %pos, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %cmp208501.not = icmp eq i8 %95, 0
  br i1 %cmp208501.not, label %if.end199.for.end230_crit_edge, label %for.body210.lr.ph

if.end199.for.end230_crit_edge:                   ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end230

for.body210.lr.ph:                                ; preds = %if.end199
  %value221 = getelementptr inbounds %struct.hbucket, ptr %call9.i.i, i32 0, i32 5
  %used225 = getelementptr inbounds %struct.hbucket, ptr %call9.i.i, i32 0, i32 1
  br label %for.body210

for.body210:                                      ; preds = %for.inc228.for.body210_crit_edge, %for.body210.lr.ph
  %j.1503 = phi i32 [ 0, %for.body210.lr.ph ], [ %inc229, %for.inc228.for.body210_crit_edge ]
  %k.3502 = phi i32 [ 0, %for.body210.lr.ph ], [ %k.4, %for.inc228.for.body210_crit_edge ]
  %div3.i450 = lshr i32 %j.1503, 5
  %arrayidx.i451 = getelementptr i32, ptr %used, i32 %div3.i450
  %96 = ptrtoint ptr %arrayidx.i451 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %arrayidx.i451, align 4
  %and.i452 = and i32 %j.1503, 31
  %98 = shl nuw i32 1, %and.i452
  %99 = and i32 %97, %98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool214.not = icmp eq i32 %99, 0
  br i1 %tobool214.not, label %for.body210.for.inc228_crit_edge, label %if.end216

for.body210.for.inc228_crit_edge:                 ; preds = %for.body210
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc228

if.end216:                                        ; preds = %for.body210
  call void @__sanitizer_cov_trace_pc() #17
  %mul219 = mul i32 %j.1503, %4
  %add.ptr220 = getelementptr i8, ptr %value51, i32 %mul219
  %mul223 = mul i32 %k.3502, %4
  %add.ptr224 = getelementptr i8, ptr %value221, i32 %mul223
  %100 = call ptr @memcpy(ptr %add.ptr224, ptr %add.ptr220, i32 %4)
  tail call void @_set_bit(i32 noundef %k.3502, ptr noundef %used225) #15
  %inc227 = add i32 %k.3502, 1
  br label %for.inc228

for.inc228:                                       ; preds = %if.end216, %for.body210.for.inc228_crit_edge
  %k.4 = phi i32 [ %inc227, %if.end216 ], [ %k.3502, %for.body210.for.inc228_crit_edge ]
  %inc229 = add nuw nsw i32 %j.1503, 1
  %101 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %pos, align 1
  %conv207 = zext i8 %102 to i32
  %cmp208 = icmp ult i32 %inc229, %conv207
  br i1 %cmp208, label %for.inc228.for.body210_crit_edge, label %for.inc228.for.end230_crit_edge

for.inc228.for.end230_crit_edge:                  ; preds = %for.inc228
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end230

for.inc228.for.body210_crit_edge:                 ; preds = %for.inc228
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body210

for.end230:                                       ; preds = %for.inc228.for.end230_crit_edge, %if.end199.for.end230_crit_edge
  %k.3.lcssa = phi i32 [ 0, %if.end199.for.end230_crit_edge ], [ %k.4, %for.inc228.for.end230_crit_edge ]
  %conv231 = trunc i32 %k.3.lcssa to i8
  %pos232 = getelementptr inbounds %struct.hbucket, ptr %call9.i.i, i32 0, i32 3
  %103 = ptrtoint ptr %pos232 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %conv231, ptr %pos232, align 1
  %mul233.neg = mul i32 %4, -2
  %add234.neg = add i32 %mul233.neg, -24
  %104 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %hregion, align 4
  %ext_size237 = getelementptr %struct.ip_set_region, ptr %105, i32 %rem, i32 1
  %106 = ptrtoint ptr %ext_size237 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %ext_size237, align 4
  %sub238 = add i32 %add234.neg, %107
  store i32 %sub238, ptr %ext_size237, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !247
  br label %out.sink.split

for.inc296:                                       ; preds = %if.end50.for.inc296_crit_edge, %if.then49
  %k.5 = phi i32 [ %k.0493, %if.end50.for.inc296_crit_edge ], [ %inc, %if.then49 ]
  %inc297 = add nuw nsw i32 %i.0494, 1
  %exitcond.not = icmp eq i32 %inc297, %conv44
  br i1 %exitcond.not, label %for.inc296.out_crit_edge, label %for.inc296.for.body_crit_edge

for.inc296.for.body_crit_edge:                    ; preds = %for.inc296
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc296.out_crit_edge:                         ; preds = %for.inc296
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

out.sink.split:                                   ; preds = %for.end230, %if.then129
  %retval.1.i.i485.sink = phi ptr [ %call9.i.i, %for.end230 ], [ null, %if.then129 ]
  %108 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %108)
  store volatile ptr %retval.1.i.i485.sink, ptr %arrayidx27, align 4
  tail call void @kvfree_call_rcu(ptr noundef nonnull %26, ptr noundef null) #15
  br label %out

out:                                              ; preds = %out.sink.split, %for.inc296.out_crit_edge, %if.then189.out_crit_edge, %if.else186.out_crit_edge, %ip_set_timeout_expired.exit.out_crit_edge, %for.cond.preheader.out_crit_edge, %do.end39.out_crit_edge
  %ret.0 = phi i32 [ -4103, %ip_set_timeout_expired.exit.out_crit_edge ], [ 0, %if.else186.out_crit_edge ], [ -4103, %do.end39.out_crit_edge ], [ 0, %if.then189.out_crit_edge ], [ -4103, %for.cond.preheader.out_crit_edge ], [ 0, %out.sink.split ], [ -4103, %for.inc296.out_crit_edge ]
  %x.1 = phi ptr [ null, %ip_set_timeout_expired.exit.out_crit_edge ], [ %x.0, %if.else186.out_crit_edge ], [ null, %do.end39.out_crit_edge ], [ %x.0, %if.then189.out_crit_edge ], [ null, %for.cond.preheader.out_crit_edge ], [ %x.0, %out.sink.split ], [ null, %for.inc296.out_crit_edge ]
  %109 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %hregion, align 4
  %arrayidx300 = getelementptr %struct.ip_set_region, ptr %110, i32 %rem
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx300) #15
  %tobool302.not = icmp eq ptr %x.1, null
  br i1 %tobool302.not, label %out.if.end307_crit_edge, label %if.then303

out.if.end307_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end307

if.then303:                                       ; preds = %out
  %lock304 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock304) #15
  %ad305 = getelementptr inbounds %struct.hash_netiface6, ptr %1, i32 0, i32 5
  %111 = ptrtoint ptr %ad305 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ad305, align 4
  %call.i.i475 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %x.1, ptr noundef %ad305, ptr noundef %112) #15
  br i1 %call.i.i475, label %if.end.i.i476, label %if.then303.list_add.exit_crit_edge

if.then303.list_add.exit_crit_edge:               ; preds = %if.then303
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add.exit

if.end.i.i476:                                    ; preds = %if.then303
  call void @__sanitizer_cov_trace_pc() #17
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %x.1, ptr %prev1.i.i, align 4
  %114 = ptrtoint ptr %x.1 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %112, ptr %x.1, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %x.1, i32 0, i32 1
  %115 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %ad305, ptr %prev3.i.i, align 4
  %116 = ptrtoint ptr %ad305 to i32
  call void @__asan_store4_noabort(i32 %116)
  store volatile ptr %x.1, ptr %ad305, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i476, %if.then303.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock304) #15
  br label %if.end307

if.end307:                                        ; preds = %list_add.exit, %out.if.end307_crit_edge
  %call.i.i455 = tail call zeroext i1 @__kasan_check_write(ptr noundef %uref, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !232
  tail call void @llvm.prefetch.p0(ptr %uref, i32 1, i32 3, i32 1) #15
  %117 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uref, ptr %uref, i32 1, ptr elementtype(i32) %uref) #15, !srcloc !233
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %117, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !234
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true311, label %if.end307.cleanup327_crit_edge

if.end307.cleanup327_crit_edge:                   ; preds = %if.end307
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup327

land.lhs.true311:                                 ; preds = %if.end307
  %call.i.i456 = tail call zeroext i1 @__kasan_check_read(ptr noundef %6, i32 noundef 4) #15
  %118 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load volatile i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool314.not = icmp eq i32 %119, 0
  br i1 %tobool314.not, label %land.lhs.true311.cleanup327_crit_edge, label %do.body316

land.lhs.true311.cleanup327_crit_edge:            ; preds = %land.lhs.true311
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup327

do.body316:                                       ; preds = %land.lhs.true311
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_netiface6_del.__UNIQUE_ID_ddebug749, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_netiface6_del, %if.then322)) #15
          to label %do.end.i [label %if.then322], !srcloc !224

if.then322:                                       ; preds = %do.body316
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_netiface6_del.__UNIQUE_ID_ddebug749, ptr noundef nonnull @.str.21, ptr noundef %6) #15
  br label %do.end.i

do.end.i:                                         ; preds = %for.inc.i.do.end.i_crit_edge, %if.then322, %do.body316
  %i.017.i = phi i32 [ %inc.i, %for.inc.i.do.end.i_crit_edge ], [ 0, %do.body316 ], [ 0, %if.then322 ]
  %arrayidx.i478 = getelementptr %struct.htable, ptr %6, i32 0, i32 5, i32 %i.017.i
  %120 = ptrtoint ptr %arrayidx.i478 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %arrayidx.i478, align 4
  %tobool.not.i479 = icmp eq ptr %121, null
  br i1 %tobool.not.i479, label %do.end.i.for.inc.i_crit_edge, label %if.end.i480

do.end.i.for.inc.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.end.i480:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %121) #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i480, %do.end.i.for.inc.i_crit_edge
  %inc.i = add i32 %i.017.i, 1
  %122 = ptrtoint ptr %htable_bits to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %htable_bits, align 4
  %conv.i = zext i8 %123 to i32
  %i.0.highbits.i = lshr i32 %inc.i, %conv.i
  %cmp.i481 = icmp eq i32 %i.0.highbits.i, 0
  br i1 %cmp.i481, label %for.inc.i.do.end.i_crit_edge, label %hash_netiface6_ahash_destroy.exit

for.inc.i.do.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

hash_netiface6_ahash_destroy.exit:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  %124 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %hregion, align 4
  tail call void @ip_set_free(ptr noundef %125) #15
  tail call void @ip_set_free(ptr noundef %6) #15
  br label %cleanup327

cleanup327:                                       ; preds = %hash_netiface6_ahash_destroy.exit, %land.lhs.true311.cleanup327_crit_edge, %if.end307.cleanup327_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %multi) #15
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hash_netiface6_test(ptr noundef %set, ptr nocapture noundef %value, ptr noundef %ext, ptr noundef %mext, i32 noundef %flags) #2 align 64 {
entry:
  %multi = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 15
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %multi) #15
  %2 = ptrtoint ptr %multi to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %multi, align 4
  tail call fastcc void @local_bh_disable() #15
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %entry.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock_bh.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock_bh.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock_bh.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock_bh.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 750, ptr noundef nonnull @.str.15) #15
  br label %rcu_read_lock_bh.exit

rcu_read_lock_bh.exit:                            ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, %entry.rcu_read_lock_bh.exit_crit_edge
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %1, align 4
  %call = tail call i32 @rcu_read_lock_bh_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock_bh.exit.do.end8_crit_edge

rcu_read_lock_bh.exit.do.end8_crit_edge:          ; preds = %rcu_read_lock_bh.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock_bh.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b91 = load i1, ptr @hash_netiface6_test.__warned, align 1
  br i1 %.b91, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @hash_netiface6_test.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1224, ptr noundef nonnull @.str.9) #15
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock_bh.exit.do.end8_crit_edge
  %cidr = getelementptr inbounds %struct.hash_netiface6_elem, ptr %value, i32 0, i32 2
  %5 = ptrtoint ptr %cidr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %cidr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %6)
  %cmp10.not = icmp eq i8 %6, -128
  br i1 %cmp10.not, label %if.then16, label %jhash2.exit

if.then16:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #17
  %call17 = tail call fastcc i32 @hash_netiface6_test_cidrs(ptr noundef %set, ptr noundef %value, ptr noundef %ext, ptr noundef %mext, i32 noundef %flags)
  br label %out

jhash2.exit:                                      ; preds = %do.end8
  %initval = getelementptr inbounds %struct.hash_netiface6, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %initval to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %initval, align 4
  %add1.i = add i32 %8, -559038717
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 4
  %add2.i = add i32 %10, %add1.i
  %arrayidx3.i = getelementptr i32, ptr %value, i32 1
  %11 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx3.i, align 4
  %add4.i = add i32 %12, %add1.i
  %arrayidx5.i = getelementptr i32, ptr %value, i32 2
  %13 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx5.i, align 4
  %add6.i = add i32 %14, %add1.i
  %sub.i = sub i32 %add2.i, %add6.i
  %or.i.i = tail call i32 @llvm.fshl.i32(i32 %add6.i, i32 %add6.i, i32 4) #15
  %xor.i = xor i32 %sub.i, %or.i.i
  %add7.i = add i32 %add6.i, %add4.i
  %sub8.i = sub i32 %add4.i, %xor.i
  %or.i135.i = tail call i32 @llvm.fshl.i32(i32 %xor.i, i32 %xor.i, i32 6) #15
  %xor10.i = xor i32 %sub8.i, %or.i135.i
  %add11.i = add i32 %xor.i, %add7.i
  %sub12.i = sub i32 %add7.i, %xor10.i
  %or.i136.i = tail call i32 @llvm.fshl.i32(i32 %xor10.i, i32 %xor10.i, i32 8) #15
  %xor14.i = xor i32 %sub12.i, %or.i136.i
  %add15.i = add i32 %xor10.i, %add11.i
  %sub16.i = sub i32 %add11.i, %xor14.i
  %or.i137.i = tail call i32 @llvm.fshl.i32(i32 %xor14.i, i32 %xor14.i, i32 16) #15
  %xor18.i = xor i32 %sub16.i, %or.i137.i
  %add19.i = add i32 %xor14.i, %add15.i
  %sub20.i = sub i32 %add15.i, %xor18.i
  %or.i138.i = tail call i32 @llvm.fshl.i32(i32 %xor18.i, i32 %xor18.i, i32 19) #15
  %xor22.i = xor i32 %sub20.i, %or.i138.i
  %add23.i = add i32 %xor18.i, %add19.i
  %sub24.i = sub i32 %add19.i, %xor22.i
  %or.i139.i = tail call i32 @llvm.fshl.i32(i32 %xor22.i, i32 %xor22.i, i32 4) #15
  %xor26.i = xor i32 %sub24.i, %or.i139.i
  %add27.i = add i32 %xor22.i, %add23.i
  %add.ptr.i = getelementptr i32, ptr %value, i32 3
  %arrayidx32.i = getelementptr i32, ptr %value, i32 4
  %15 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx32.i, align 4
  %add33.i = add i32 %16, %add27.i
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr.i, align 4
  %add36.i = add i32 %18, %add23.i
  %xor37.i = xor i32 %xor26.i, %add33.i
  %or.i140.i = tail call i32 @llvm.fshl.i32(i32 %add33.i, i32 %add33.i, i32 14) #15
  %sub39.i = sub i32 %xor37.i, %or.i140.i
  %xor40.i = xor i32 %add36.i, %sub39.i
  %or.i141.i = tail call i32 @llvm.fshl.i32(i32 %sub39.i, i32 %sub39.i, i32 11) #15
  %sub42.i = sub i32 %xor40.i, %or.i141.i
  %xor43.i = xor i32 %sub42.i, %add33.i
  %or.i142.i = tail call i32 @llvm.fshl.i32(i32 %sub42.i, i32 %sub42.i, i32 25) #15
  %sub45.i = sub i32 %xor43.i, %or.i142.i
  %xor46.i = xor i32 %sub45.i, %sub39.i
  %or.i143.i = tail call i32 @llvm.fshl.i32(i32 %sub45.i, i32 %sub45.i, i32 16) #15
  %sub48.i = sub i32 %xor46.i, %or.i143.i
  %xor49.i = xor i32 %sub48.i, %sub42.i
  %or.i144.i = tail call i32 @llvm.fshl.i32(i32 %sub48.i, i32 %sub48.i, i32 4) #15
  %sub51.i = sub i32 %xor49.i, %or.i144.i
  %xor52.i = xor i32 %sub51.i, %sub45.i
  %or.i145.i = tail call i32 @llvm.fshl.i32(i32 %sub51.i, i32 %sub51.i, i32 14) #15
  %sub54.i = sub i32 %xor52.i, %or.i145.i
  %xor55.i = xor i32 %sub54.i, %sub48.i
  %or.i146.i = tail call i32 @llvm.fshl.i32(i32 %sub54.i, i32 %sub54.i, i32 24) #15
  %sub57.i = sub i32 %xor55.i, %or.i146.i
  %htable_bits = getelementptr inbounds %struct.htable, ptr %4, i32 0, i32 2
  %19 = ptrtoint ptr %htable_bits to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %htable_bits, align 4
  %conv24 = zext i8 %20 to i32
  %notmask = shl nsw i32 -1, %conv24
  %sub = xor i32 %notmask, -1
  %and = and i32 %sub57.i, %sub
  %arrayidx = getelementptr %struct.htable, ptr %4, i32 0, i32 5, i32 %and
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %arrayidx, align 4
  %call30 = tail call i32 @rcu_read_lock_bh_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %land.lhs.true32, label %jhash2.exit.do.end40_crit_edge

jhash2.exit.do.end40_crit_edge:                   ; preds = %jhash2.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end40

land.lhs.true32:                                  ; preds = %jhash2.exit
  %call33 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %land.lhs.true32.do.end40_crit_edge, label %land.lhs.true35

land.lhs.true32.do.end40_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end40

land.lhs.true35:                                  ; preds = %land.lhs.true32
  %.b8990 = load i1, ptr @hash_netiface6_test.__warned.53, align 1
  br i1 %.b8990, label %land.lhs.true35.do.end40_crit_edge, label %if.then37

land.lhs.true35.do.end40_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end40

if.then37:                                        ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @hash_netiface6_test.__warned.53, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1239, ptr noundef nonnull @.str.9) #15
  br label %do.end40

do.end40:                                         ; preds = %if.then37, %land.lhs.true35.do.end40_crit_edge, %land.lhs.true32.do.end40_crit_edge, %jhash2.exit.do.end40_crit_edge
  %tobool42.not = icmp eq ptr %22, null
  br i1 %tobool42.not, label %do.end40.out_crit_edge, label %for.cond45.preheader

do.end40.out_crit_edge:                           ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

for.cond45.preheader:                             ; preds = %do.end40
  %pos = getelementptr inbounds %struct.hbucket, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %pos, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp47104.not = icmp eq i8 %24, 0
  br i1 %cmp47104.not, label %for.cond45.preheader.out_crit_edge, label %for.body49.lr.ph

for.cond45.preheader.out_crit_edge:               ; preds = %for.cond45.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

for.body49.lr.ph:                                 ; preds = %for.cond45.preheader
  %used = getelementptr inbounds %struct.hbucket, ptr %22, i32 0, i32 1
  %value54 = getelementptr inbounds %struct.hbucket, ptr %22, i32 0, i32 5
  %dsize = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  br label %for.body49

for.body49:                                       ; preds = %for.inc64.for.body49_crit_edge, %for.body49.lr.ph
  %i.1105 = phi i32 [ 0, %for.body49.lr.ph ], [ %inc65, %for.inc64.for.body49_crit_edge ]
  %div3.i = lshr i32 %i.1105, 5
  %arrayidx.i = getelementptr i32, ptr %used, i32 %div3.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.1105, 31
  %27 = shl nuw i32 1, %and.i
  %28 = and i32 %26, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool51.not = icmp eq i32 %28, 0
  br i1 %tobool51.not, label %for.body49.for.inc64_crit_edge, label %if.end53

for.body49.for.inc64_crit_edge:                   ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc64

if.end53:                                         ; preds = %for.body49
  %29 = ptrtoint ptr %dsize to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dsize, align 4
  %mul = mul i32 %30, %i.1105
  %add.ptr = getelementptr i8, ptr %value54, i32 %mul
  %call56 = call fastcc zeroext i1 @hash_netiface6_data_equal(ptr noundef %add.ptr, ptr noundef %value, ptr noundef nonnull %multi)
  br i1 %call56, label %if.end58, label %if.end53.for.inc64_crit_edge

if.end53.for.inc64_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc64

if.end58:                                         ; preds = %if.end53
  %call.i92 = tail call zeroext i1 @ip_set_match_extensions(ptr noundef %set, ptr noundef %ext, ptr noundef %mext, i32 noundef %flags, ptr noundef %add.ptr) #15
  br i1 %call.i92, label %hash_netiface6_data_match.exit, label %if.end58.for.inc64_crit_edge

if.end58.for.inc64_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc64

hash_netiface6_data_match.exit:                   ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #17
  %nomatch.i.i = getelementptr inbounds %struct.hash_netiface6_elem, ptr %add.ptr, i32 0, i32 3
  %31 = ptrtoint ptr %nomatch.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %nomatch.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i.i = icmp eq i8 %32, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 1, i32 -39
  br label %out

for.inc64:                                        ; preds = %if.end58.for.inc64_crit_edge, %if.end53.for.inc64_crit_edge, %for.body49.for.inc64_crit_edge
  %inc65 = add nuw nsw i32 %i.1105, 1
  %33 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %pos, align 1
  %conv46 = zext i8 %34 to i32
  %cmp47 = icmp ult i32 %inc65, %conv46
  br i1 %cmp47, label %for.inc64.for.body49_crit_edge, label %for.inc64.out_crit_edge

for.inc64.out_crit_edge:                          ; preds = %for.inc64
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

for.inc64.for.body49_crit_edge:                   ; preds = %for.inc64
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body49

out:                                              ; preds = %for.inc64.out_crit_edge, %hash_netiface6_data_match.exit, %for.cond45.preheader.out_crit_edge, %do.end40.out_crit_edge, %if.then16
  %ret.2 = phi i32 [ %call17, %if.then16 ], [ %cond.i.i, %hash_netiface6_data_match.exit ], [ 0, %do.end40.out_crit_edge ], [ 0, %for.cond45.preheader.out_crit_edge ], [ 0, %for.inc64.out_crit_edge ]
  %call.i93 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i93, label %out.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true.i96

out.rcu_read_unlock_bh.exit_crit_edge:            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock_bh.exit

land.lhs.true.i96:                                ; preds = %out
  %call1.i94 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i94)
  %tobool.not.i95 = icmp eq i32 %call1.i94, 0
  br i1 %tobool.not.i95, label %land.lhs.true.i96.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true2.i98

land.lhs.true.i96.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true.i96
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock_bh.exit

land.lhs.true2.i98:                               ; preds = %land.lhs.true.i96
  %.b4.i97 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i97, label %land.lhs.true2.i98.rcu_read_unlock_bh.exit_crit_edge, label %if.then.i99

land.lhs.true2.i98.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i98
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock_bh.exit

if.then.i99:                                      ; preds = %land.lhs.true2.i98
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 761, ptr noundef nonnull @.str.16) #15
  br label %rcu_read_unlock_bh.exit

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i99, %land.lhs.true2.i98.rcu_read_unlock_bh.exit_crit_edge, %land.lhs.true.i96.rcu_read_unlock_bh.exit_crit_edge, %out.rcu_read_unlock_bh.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #15
  tail call fastcc void @local_bh_enable() #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %multi) #15
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hash_netiface6_resize(ptr noundef %set, i1 noundef zeroext %retried) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 15
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %dsize1 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %2 = ptrtoint ptr %dsize1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dsize1, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 3264) #19
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup426_crit_edge, label %if.end

entry.cleanup426_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup426

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %1, align 4
  %call5 = tail call zeroext i1 @lockdep_nfnl_is_held(i8 noundef zeroext 6) #15
  br i1 %call5, label %if.end.do.end15_crit_edge, label %lor.lhs.false

if.end.do.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end15

lor.lhs.false:                                    ; preds = %if.end
  %call6 = tail call i32 @rcu_read_lock_bh_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true, label %lor.lhs.false.do.end15_crit_edge

lor.lhs.false.do.end15_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end15

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call8 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true.do.end15_crit_edge, label %land.lhs.true10

land.lhs.true.do.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end15

land.lhs.true10:                                  ; preds = %land.lhs.true
  %.b581 = load i1, ptr @hash_netiface6_resize.__warned, align 1
  br i1 %.b581, label %land.lhs.true10.do.end15_crit_edge, label %if.then12

land.lhs.true10.do.end15_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end15

if.then12:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @hash_netiface6_resize.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 647, ptr noundef nonnull @.str.9) #15
  br label %do.end15

do.end15:                                         ; preds = %if.then12, %land.lhs.true10.do.end15_crit_edge, %land.lhs.true.do.end15_crit_edge, %lor.lhs.false.do.end15_crit_edge, %if.end.do.end15_crit_edge
  %htable_bits17 = getelementptr inbounds %struct.htable, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %htable_bits17 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %htable_bits17, align 4
  %maxelem = getelementptr inbounds %struct.hash_netiface6, ptr %1, i32 0, i32 2
  %extensions = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 8
  %arrayidx165 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 1
  %nomatch.i = getelementptr inbounds %struct.hash_netiface6_elem, ptr %call9.i, i32 0, i32 3
  %initval = getelementptr inbounds %struct.hash_netiface6, ptr %1, i32 0, i32 3
  %bucketsize = getelementptr inbounds %struct.hash_netiface6, ptr %1, i32 0, i32 4
  %mul260 = shl i32 %3, 1
  %add261 = add i32 %mul260, 24
  %uglygep = getelementptr i8, ptr %call9.i, i32 12
  %arrayidx3.i = getelementptr i32, ptr %call9.i, i32 1
  %arrayidx5.i = getelementptr i32, ptr %call9.i, i32 2
  %arrayidx32.i = getelementptr i32, ptr %call9.i, i32 4
  br label %retry

retry:                                            ; preds = %hash_netiface6_ahash_destroy.exit675.retry_crit_edge, %do.end15
  %htable_bits.0 = phi i8 [ %7, %do.end15 ], [ %inc, %hash_netiface6_ahash_destroy.exit675.retry_crit_edge ]
  %inc = add i8 %htable_bits.0, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %inc)
  %tobool18.not = icmp eq i8 %inc, 0
  br i1 %tobool18.not, label %retry.do.end421_crit_edge, label %if.end20

retry.do.end421_crit_edge:                        ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end421

if.end20:                                         ; preds = %retry
  call void @__sanitizer_cov_trace_const_cmp1(i8 28, i8 %inc)
  %cmp3.i = icmp ugt i8 %inc, 28
  %conv.i = zext i8 %inc to i32
  %mul.i = shl i32 4, %conv.i
  %add.i = add i32 %mul.i, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %tobool22.not697 = icmp eq i32 %add.i, 0
  %tobool22.not = select i1 %cmp3.i, i1 true, i1 %tobool22.not697
  br i1 %tobool22.not, label %if.end20.do.end421_crit_edge, label %if.end24

if.end20.do.end421_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end421

if.end24:                                         ; preds = %if.end20
  %call25 = tail call ptr @ip_set_alloc(i32 noundef %add.i) #15
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %if.end24.out_crit_edge, label %if.end28

if.end24.out_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end28:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %inc)
  %cmp = icmp ult i8 %inc, 10
  %sub = add nsw i32 %conv.i, -10
  %shl = shl nuw i32 1, %sub
  %cond = select i1 %cmp, i32 1, i32 %shl
  %mul = mul i32 %cond, 52
  %call31 = tail call ptr @ip_set_alloc(i32 noundef %mul) #15
  %hregion = getelementptr inbounds %struct.htable, ptr %call25, i32 0, i32 4
  %8 = ptrtoint ptr %hregion to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call31, ptr %hregion, align 4
  %tobool33.not = icmp eq ptr %call31, null
  br i1 %tobool33.not, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @ip_set_free(ptr noundef nonnull %call25) #15
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
  %div698 = lshr i32 %11, %12
  %maxelem47 = getelementptr inbounds %struct.htable, ptr %call25, i32 0, i32 3
  %13 = ptrtoint ptr %maxelem47 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %div698, ptr %maxelem47, align 4
  br label %do.body60

do.body60:                                        ; preds = %do.body60.do.body60_crit_edge, %if.end35
  %i.0702 = phi i32 [ 0, %if.end35 ], [ %inc65, %do.body60.do.body60_crit_edge ]
  %14 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hregion, align 4
  %arrayidx = getelementptr %struct.ip_set_region, ptr %15, i32 %i.0702
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx, ptr noundef nonnull @.str.6, ptr noundef nonnull @hash_netiface6_resize.__key, i16 noundef signext 3) #15
  %inc65 = add nuw i32 %i.0702, 1
  %exitcond.not = icmp eq i32 %inc65, %cond
  br i1 %exitcond.not, label %for.end, label %do.body60.do.body60_crit_edge

do.body60.do.body60_crit_edge:                    ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body60

for.end:                                          ; preds = %do.body60
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %1, align 4
  %call72 = tail call zeroext i1 @lockdep_nfnl_is_held(i8 noundef zeroext 6) #15
  br i1 %call72, label %for.end.do.end85_crit_edge, label %lor.lhs.false74

for.end.do.end85_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end85

lor.lhs.false74:                                  ; preds = %for.end
  %call75 = tail call i32 @rcu_read_lock_bh_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %land.lhs.true77, label %lor.lhs.false74.do.end85_crit_edge

lor.lhs.false74.do.end85_crit_edge:               ; preds = %lor.lhs.false74
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end85

land.lhs.true77:                                  ; preds = %lor.lhs.false74
  %call78 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %land.lhs.true77.do.end85_crit_edge, label %land.lhs.true80

land.lhs.true77.do.end85_crit_edge:               ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end85

land.lhs.true80:                                  ; preds = %land.lhs.true77
  %.b579580 = load i1, ptr @hash_netiface6_resize.__warned.56, align 1
  br i1 %.b579580, label %land.lhs.true80.do.end85_crit_edge, label %if.then82

land.lhs.true80.do.end85_crit_edge:               ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end85

if.then82:                                        ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @hash_netiface6_resize.__warned.56, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 677, ptr noundef nonnull @.str.9) #15
  br label %do.end85

do.end85:                                         ; preds = %if.then82, %land.lhs.true80.do.end85_crit_edge, %land.lhs.true77.do.end85_crit_edge, %lor.lhs.false74.do.end85_crit_edge, %for.end.do.end85_crit_edge
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %17, i32 noundef 4) #15
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 1, ptr %17, align 4
  %uref = getelementptr inbounds %struct.htable, ptr %17, i32 0, i32 1
  %call.i.i584 = tail call zeroext i1 @__kasan_check_write(ptr noundef %uref, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %uref, i32 1, i32 3, i32 1) #15
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uref, ptr %uref, i32 1, ptr elementtype(i32) %uref) #15, !srcloc !228
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_netiface6_resize.__UNIQUE_ID_ddebug713, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_netiface6_resize, %if.then94)) #15
          to label %do.end100 [label %if.then94], !srcloc !224

if.then94:                                        ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #17
  %htable_bits95 = getelementptr inbounds %struct.htable, ptr %17, i32 0, i32 2
  %20 = ptrtoint ptr %htable_bits95 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %htable_bits95, align 4
  %conv96 = zext i8 %21 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_netiface6_resize.__UNIQUE_ID_ddebug713, ptr noundef nonnull @.str.28, ptr noundef %set, i32 noundef %conv96, i32 noundef %conv.i, ptr noundef %17) #15
  br label %do.end100

do.end100:                                        ; preds = %if.then94, %do.end85
  %htable_bits102 = getelementptr inbounds %struct.htable, ptr %17, i32 0, i32 2
  %notmask = shl nsw i32 -1, %conv.i
  %sub178 = xor i32 %notmask, -1
  %22 = add i32 %cond, -1
  br label %for.body116

for.body116:                                      ; preds = %rcu_read_unlock_bh.exit.for.body116_crit_edge, %do.end100
  %r.0718 = phi i32 [ 0, %do.end100 ], [ %inc303, %rcu_read_unlock_bh.exit.for.body116_crit_edge ]
  tail call fastcc void @local_bh_disable() #15
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %for.body116.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true.i

for.body116.rcu_read_lock_bh.exit_crit_edge:      ; preds = %for.body116
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock_bh.exit

land.lhs.true.i:                                  ; preds = %for.body116
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock_bh.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, label %if.then.i596

land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock_bh.exit

if.then.i596:                                     ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 750, ptr noundef nonnull @.str.15) #15
  br label %rcu_read_lock_bh.exit

rcu_read_lock_bh.exit:                            ; preds = %if.then.i596, %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, %for.body116.rcu_read_lock_bh.exit_crit_edge
  %23 = ptrtoint ptr %htable_bits102 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %htable_bits102, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %24)
  %cmp119 = icmp ult i8 %24, 10
  %mul123 = shl i32 %r.0718, 10
  %spec.select = select i1 %cmp119, i32 0, i32 %mul123
  %mul136 = add i32 %mul123, 1024
  %conv128708 = zext i8 %24 to i32
  %shl134709 = shl nuw i32 1, %conv128708
  %cond138710 = select i1 %cmp119, i32 %shl134709, i32 %mul136
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %cond138710)
  %cmp139711 = icmp ult i32 %spec.select, %cond138710
  br i1 %cmp139711, label %rcu_read_lock_bh.exit.do.end144_crit_edge, label %rcu_read_lock_bh.exit.for.end301_crit_edge

rcu_read_lock_bh.exit.for.end301_crit_edge:       ; preds = %rcu_read_lock_bh.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end301

rcu_read_lock_bh.exit.do.end144_crit_edge:        ; preds = %rcu_read_lock_bh.exit
  br label %do.end144

do.end144:                                        ; preds = %for.inc299.do.end144_crit_edge, %rcu_read_lock_bh.exit.do.end144_crit_edge
  %i.1712 = phi i32 [ %inc300, %for.inc299.do.end144_crit_edge ], [ %spec.select, %rcu_read_lock_bh.exit.do.end144_crit_edge ]
  %arrayidx146 = getelementptr %struct.htable, ptr %17, i32 0, i32 5, i32 %i.1712
  %25 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx146, align 4
  %tobool147.not = icmp eq ptr %26, null
  br i1 %tobool147.not, label %do.end144.for.inc299_crit_edge, label %for.cond150.preheader

do.end144.for.inc299_crit_edge:                   ; preds = %do.end144
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc299

for.cond150.preheader:                            ; preds = %do.end144
  %pos = getelementptr inbounds %struct.hbucket, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %pos, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp152704.not = icmp eq i8 %28, 0
  br i1 %cmp152704.not, label %for.cond150.preheader.for.inc299_crit_edge, label %for.body154.lr.ph

for.cond150.preheader.for.inc299_crit_edge:       ; preds = %for.cond150.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc299

for.body154.lr.ph:                                ; preds = %for.cond150.preheader
  %used = getelementptr inbounds %struct.hbucket, ptr %26, i32 0, i32 1
  %value = getelementptr inbounds %struct.hbucket, ptr %26, i32 0, i32 5
  br label %for.body154

for.body154:                                      ; preds = %for.inc296.for.body154_crit_edge, %for.body154.lr.ph
  %j.0705 = phi i32 [ 0, %for.body154.lr.ph ], [ %inc297, %for.inc296.for.body154_crit_edge ]
  %div3.i = lshr i32 %j.0705, 5
  %arrayidx.i = getelementptr i32, ptr %used, i32 %div3.i
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %j.0705, 31
  %31 = shl nuw i32 1, %and.i
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool157.not = icmp eq i32 %32, 0
  br i1 %tobool157.not, label %for.body154.for.inc296_crit_edge, label %if.end159

for.body154.for.inc296_crit_edge:                 ; preds = %for.body154
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc296

if.end159:                                        ; preds = %for.body154
  %mul161 = mul i32 %j.0705, %3
  %add.ptr = getelementptr i8, ptr %value, i32 %mul161
  %33 = ptrtoint ptr %extensions to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %extensions, align 2
  %35 = and i8 %34, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool163.not = icmp eq i8 %35, 0
  br i1 %tobool163.not, label %if.end159.jhash2.exit_crit_edge, label %land.lhs.true164

if.end159.jhash2.exit_crit_edge:                  ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %jhash2.exit

ip_set_timeout_expired.exit:                      ; preds = %land.lhs.true164
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %40 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %39, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp1.i = icmp slt i32 %sub.i, 0
  br i1 %cmp1.i, label %ip_set_timeout_expired.exit.for.inc296_crit_edge, label %ip_set_timeout_expired.exit.jhash2.exit_crit_edge

ip_set_timeout_expired.exit.jhash2.exit_crit_edge: ; preds = %ip_set_timeout_expired.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %jhash2.exit

ip_set_timeout_expired.exit.for.inc296_crit_edge: ; preds = %ip_set_timeout_expired.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc296

jhash2.exit:                                      ; preds = %ip_set_timeout_expired.exit.jhash2.exit_crit_edge, %land.lhs.true164.jhash2.exit_crit_edge, %if.end159.jhash2.exit_crit_edge
  %41 = call ptr @memcpy(ptr %call9.i, ptr %add.ptr, i32 %3)
  %42 = ptrtoint ptr %nomatch.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %nomatch.i, align 2
  store i8 0, ptr %nomatch.i, align 2
  %44 = ptrtoint ptr %initval to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %initval, align 4
  %add1.i = add i32 %45, -559038717
  %46 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %call9.i, align 128
  %add2.i = add i32 %47, %add1.i
  %48 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx3.i, align 4
  %add4.i = add i32 %49, %add1.i
  %50 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx5.i, align 8
  %add6.i = add i32 %51, %add1.i
  %sub.i597 = sub i32 %add2.i, %add6.i
  %or.i.i = tail call i32 @llvm.fshl.i32(i32 %add6.i, i32 %add6.i, i32 4) #15
  %xor.i = xor i32 %sub.i597, %or.i.i
  %add7.i = add i32 %add6.i, %add4.i
  %sub8.i = sub i32 %add4.i, %xor.i
  %or.i135.i = tail call i32 @llvm.fshl.i32(i32 %xor.i, i32 %xor.i, i32 6) #15
  %xor10.i = xor i32 %sub8.i, %or.i135.i
  %add11.i = add i32 %xor.i, %add7.i
  %sub12.i = sub i32 %add7.i, %xor10.i
  %or.i136.i = tail call i32 @llvm.fshl.i32(i32 %xor10.i, i32 %xor10.i, i32 8) #15
  %xor14.i = xor i32 %sub12.i, %or.i136.i
  %add15.i = add i32 %xor10.i, %add11.i
  %sub16.i = sub i32 %add11.i, %xor14.i
  %or.i137.i = tail call i32 @llvm.fshl.i32(i32 %xor14.i, i32 %xor14.i, i32 16) #15
  %xor18.i = xor i32 %sub16.i, %or.i137.i
  %add19.i = add i32 %xor14.i, %add15.i
  %sub20.i = sub i32 %add15.i, %xor18.i
  %or.i138.i = tail call i32 @llvm.fshl.i32(i32 %xor18.i, i32 %xor18.i, i32 19) #15
  %xor22.i = xor i32 %sub20.i, %or.i138.i
  %add23.i = add i32 %xor18.i, %add19.i
  %sub24.i = sub i32 %add19.i, %xor22.i
  %or.i139.i = tail call i32 @llvm.fshl.i32(i32 %xor22.i, i32 %xor22.i, i32 4) #15
  %xor26.i = xor i32 %sub24.i, %or.i139.i
  %add27.i = add i32 %xor22.i, %add23.i
  %52 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx32.i, align 16
  %add33.i = add i32 %53, %add27.i
  %54 = ptrtoint ptr %uglygep to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %uglygep, align 4
  %add36.i = add i32 %55, %add23.i
  %xor37.i = xor i32 %xor26.i, %add33.i
  %or.i140.i = tail call i32 @llvm.fshl.i32(i32 %add33.i, i32 %add33.i, i32 14) #15
  %sub39.i = sub i32 %xor37.i, %or.i140.i
  %xor40.i = xor i32 %add36.i, %sub39.i
  %or.i141.i = tail call i32 @llvm.fshl.i32(i32 %sub39.i, i32 %sub39.i, i32 11) #15
  %sub42.i = sub i32 %xor40.i, %or.i141.i
  %xor43.i = xor i32 %sub42.i, %add33.i
  %or.i142.i = tail call i32 @llvm.fshl.i32(i32 %sub42.i, i32 %sub42.i, i32 25) #15
  %sub45.i = sub i32 %xor43.i, %or.i142.i
  %xor46.i = xor i32 %sub45.i, %sub39.i
  %or.i143.i = tail call i32 @llvm.fshl.i32(i32 %sub45.i, i32 %sub45.i, i32 16) #15
  %sub48.i = sub i32 %xor46.i, %or.i143.i
  %xor49.i = xor i32 %sub48.i, %sub42.i
  %or.i144.i = tail call i32 @llvm.fshl.i32(i32 %sub48.i, i32 %sub48.i, i32 4) #15
  %sub51.i = sub i32 %xor49.i, %or.i144.i
  %xor52.i = xor i32 %sub51.i, %sub45.i
  %or.i145.i = tail call i32 @llvm.fshl.i32(i32 %sub51.i, i32 %sub51.i, i32 14) #15
  %sub54.i = sub i32 %xor52.i, %or.i145.i
  %xor55.i = xor i32 %sub54.i, %sub48.i
  %or.i146.i = tail call i32 @llvm.fshl.i32(i32 %sub54.i, i32 %sub54.i, i32 24) #15
  %sub57.i = sub i32 %xor55.i, %or.i146.i
  %and179 = and i32 %sub57.i, %sub178
  %arrayidx185 = getelementptr %struct.htable, ptr %call25, i32 0, i32 5, i32 %and179
  %56 = ptrtoint ptr %arrayidx185 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx185, align 4
  %rem = and i32 %and179, %22
  %tobool196.not = icmp eq ptr %57, null
  br i1 %tobool196.not, label %if.end8.i.i, label %if.else

if.end8.i.i:                                      ; preds = %jhash2.exit
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add261, i32 noundef 2848) #19
  %tobool201.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool201.not, label %if.end8.i.i.cleanup412_crit_edge, label %if.end203

if.end8.i.i.cleanup412_crit_edge:                 ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup412

if.end203:                                        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %size = getelementptr inbounds %struct.hbucket, ptr %call9.i.i, i32 0, i32 2
  %58 = ptrtoint ptr %size to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 2, ptr %size, align 16
  %59 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hregion, align 4
  %ext_size = getelementptr %struct.ip_set_region, ptr %60, i32 %rem, i32 1
  %61 = ptrtoint ptr %ext_size to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %ext_size, align 4
  %add208 = add i32 %62, %add261
  store i32 %add208, ptr %ext_size, align 4
  br label %if.end281.sink.split

if.else:                                          ; preds = %jhash2.exit
  %pos223 = getelementptr inbounds %struct.hbucket, ptr %57, i32 0, i32 3
  %63 = ptrtoint ptr %pos223 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %pos223, align 1
  %size225 = getelementptr inbounds %struct.hbucket, ptr %57, i32 0, i32 2
  %65 = ptrtoint ptr %size225 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %size225, align 8
  %conv226 = zext i8 %66 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %64, i8 %66)
  %cmp227.not = icmp ult i8 %64, %66
  br i1 %cmp227.not, label %if.else.if.end281_crit_edge, label %if.then229

if.else.if.end281_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end281

if.then229:                                       ; preds = %if.else
  %67 = ptrtoint ptr %bucketsize to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %bucketsize, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %66, i8 %68)
  %cmp233.not = icmp ult i8 %66, %68
  br i1 %cmp233.not, label %if.end8.i.i630, label %if.then229.cleanup412_crit_edge

if.then229.cleanup412_crit_edge:                  ; preds = %if.then229
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup412

if.end8.i.i630:                                   ; preds = %if.then229
  %add239 = add nuw nsw i32 %conv226, 2
  %mul240 = mul i32 %add239, %3
  %add241 = add i32 %mul240, 24
  %call9.i.i629 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add241, i32 noundef 2848) #19
  %tobool243.not = icmp eq ptr %call9.i.i629, null
  br i1 %tobool243.not, label %if.end8.i.i630.cleanup412_crit_edge, label %cleanup

if.end8.i.i630.cleanup412_crit_edge:              ; preds = %if.end8.i.i630
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup412

cleanup:                                          ; preds = %if.end8.i.i630
  call void @__sanitizer_cov_trace_pc() #17
  %69 = ptrtoint ptr %size225 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %size225, align 8
  %conv252 = zext i8 %70 to i32
  %mul253 = mul i32 %3, %conv252
  %add254 = add i32 %mul253, 24
  %71 = call ptr @memcpy(ptr %call9.i.i629, ptr %57, i32 %add254)
  %72 = load i8, ptr %size225, align 8
  %add257 = add i8 %72, 2
  %size259 = getelementptr inbounds %struct.hbucket, ptr %call9.i.i629, i32 0, i32 2
  %73 = ptrtoint ptr %size259 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %add257, ptr %size259, align 16
  %74 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %hregion, align 4
  %ext_size264 = getelementptr %struct.ip_set_region, ptr %75, i32 %rem, i32 1
  %76 = ptrtoint ptr %ext_size264 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %ext_size264, align 4
  %add265 = add i32 %add261, %77
  store i32 %add265, ptr %ext_size264, align 4
  tail call void @kfree(ptr noundef nonnull %57) #15
  br label %if.end281.sink.split

if.end281.sink.split:                             ; preds = %cleanup, %if.end203
  %ht.0.sink = phi ptr [ %call9.i.i629, %cleanup ], [ %call9.i.i, %if.end203 ]
  %78 = ptrtoint ptr %arrayidx185 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %ht.0.sink, ptr %arrayidx185, align 4
  br label %if.end281

if.end281:                                        ; preds = %if.end281.sink.split, %if.else.if.end281_crit_edge
  %m.1 = phi ptr [ %57, %if.else.if.end281_crit_edge ], [ %ht.0.sink, %if.end281.sink.split ]
  %value282 = getelementptr inbounds %struct.hbucket, ptr %m.1, i32 0, i32 5
  %pos284 = getelementptr inbounds %struct.hbucket, ptr %m.1, i32 0, i32 3
  %79 = ptrtoint ptr %pos284 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %pos284, align 1
  %conv285 = zext i8 %80 to i32
  %mul286 = mul i32 %3, %conv285
  %add.ptr287 = getelementptr i8, ptr %value282, i32 %mul286
  %81 = call ptr @memcpy(ptr %add.ptr287, ptr %call9.i, i32 %3)
  %82 = load i8, ptr %pos284, align 1
  %inc289 = add i8 %82, 1
  store i8 %inc289, ptr %pos284, align 1
  %conv290 = zext i8 %82 to i32
  %used291 = getelementptr inbounds %struct.hbucket, ptr %m.1, i32 0, i32 1
  tail call void @_set_bit(i32 noundef %conv290, ptr noundef %used291) #15
  %83 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %hregion, align 4
  %elements = getelementptr %struct.ip_set_region, ptr %84, i32 %rem, i32 2
  %85 = ptrtoint ptr %elements to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %elements, align 4
  %inc295 = add i32 %86, 1
  store i32 %inc295, ptr %elements, align 4
  %nomatch.i633 = getelementptr inbounds %struct.hash_netiface6_elem, ptr %add.ptr287, i32 0, i32 3
  %87 = ptrtoint ptr %nomatch.i633 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %43, ptr %nomatch.i633, align 2
  br label %for.inc296

for.inc296:                                       ; preds = %if.end281, %ip_set_timeout_expired.exit.for.inc296_crit_edge, %for.body154.for.inc296_crit_edge
  %inc297 = add nuw nsw i32 %j.0705, 1
  %88 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %pos, align 1
  %conv151 = zext i8 %89 to i32
  %cmp152 = icmp ult i32 %inc297, %conv151
  br i1 %cmp152, label %for.inc296.for.body154_crit_edge, label %for.inc296.for.inc299_crit_edge

for.inc296.for.inc299_crit_edge:                  ; preds = %for.inc296
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc299

for.inc296.for.body154_crit_edge:                 ; preds = %for.inc296
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body154

for.inc299:                                       ; preds = %for.inc296.for.inc299_crit_edge, %for.cond150.preheader.for.inc299_crit_edge, %do.end144.for.inc299_crit_edge
  %inc300 = add nuw i32 %i.1712, 1
  %90 = ptrtoint ptr %htable_bits102 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %htable_bits102, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %91)
  %cmp129 = icmp ult i8 %91, 10
  %conv128 = zext i8 %91 to i32
  %shl134 = shl nuw i32 1, %conv128
  %cond138 = select i1 %cmp129, i32 %shl134, i32 %mul136
  %cmp139 = icmp ult i32 %inc300, %cond138
  br i1 %cmp139, label %for.inc299.do.end144_crit_edge, label %for.inc299.for.end301_crit_edge

for.inc299.for.end301_crit_edge:                  ; preds = %for.inc299
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end301

for.inc299.do.end144_crit_edge:                   ; preds = %for.inc299
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end144

for.end301:                                       ; preds = %for.inc299.for.end301_crit_edge, %rcu_read_lock_bh.exit.for.end301_crit_edge
  %call.i634 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i634, label %for.end301.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true.i637

for.end301.rcu_read_unlock_bh.exit_crit_edge:     ; preds = %for.end301
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock_bh.exit

land.lhs.true.i637:                               ; preds = %for.end301
  %call1.i635 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i635)
  %tobool.not.i636 = icmp eq i32 %call1.i635, 0
  br i1 %tobool.not.i636, label %land.lhs.true.i637.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true2.i639

land.lhs.true.i637.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true.i637
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock_bh.exit

land.lhs.true2.i639:                              ; preds = %land.lhs.true.i637
  %.b4.i638 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i638, label %land.lhs.true2.i639.rcu_read_unlock_bh.exit_crit_edge, label %if.then.i640

land.lhs.true2.i639.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i639
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock_bh.exit

if.then.i640:                                     ; preds = %land.lhs.true2.i639
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 761, ptr noundef nonnull @.str.16) #15
  br label %rcu_read_unlock_bh.exit

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i640, %land.lhs.true2.i639.rcu_read_unlock_bh.exit_crit_edge, %land.lhs.true.i637.rcu_read_unlock_bh.exit_crit_edge, %for.end301.rcu_read_unlock_bh.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #15
  tail call fastcc void @local_bh_enable() #15
  %inc303 = add nuw i32 %r.0718, 1
  %92 = ptrtoint ptr %htable_bits102 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %htable_bits102, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %93)
  %cmp104 = icmp ult i8 %93, 10
  %conv103 = zext i8 %93 to i32
  %sub110 = add nsw i32 %conv103, -10
  %shl111 = shl nuw i32 1, %sub110
  %cond113 = select i1 %cmp104, i32 1, i32 %shl111
  %cmp114 = icmp ult i32 %inc303, %cond113
  br i1 %cmp114, label %rcu_read_unlock_bh.exit.for.body116_crit_edge, label %do.body305

rcu_read_unlock_bh.exit.for.body116_crit_edge:    ; preds = %rcu_read_unlock_bh.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body116

do.body305:                                       ; preds = %rcu_read_unlock_bh.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !248
  %94 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile ptr %call25, ptr %1, align 4
  tail call void @synchronize_rcu() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_netiface6_resize.__UNIQUE_ID_ddebug720, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_netiface6_resize, %if.then358)) #15
          to label %do.end367 [label %if.then358], !srcloc !224

if.then358:                                       ; preds = %do.body305
  call void @__sanitizer_cov_trace_pc() #17
  %95 = ptrtoint ptr %htable_bits102 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %htable_bits102, align 4
  %conv362 = zext i8 %96 to i32
  %97 = ptrtoint ptr %htable_bits36 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %htable_bits36, align 4
  %conv364 = zext i8 %98 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_netiface6_resize.__UNIQUE_ID_ddebug720, ptr noundef nonnull @.str.31, ptr noundef %set, i32 noundef %conv362, ptr noundef %17, i32 noundef %conv364, ptr noundef nonnull %call25) #15
  br label %do.end367

do.end367:                                        ; preds = %if.then358, %do.body305
  %ad = getelementptr inbounds %struct.hash_netiface6, ptr %1, i32 0, i32 5
  %99 = ptrtoint ptr %ad to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ad, align 4
  %cmp.i641.not720 = icmp eq ptr %100, %ad
  br i1 %cmp.i641.not720, label %do.end367.for.end391_crit_edge, label %do.end367.for.body375_crit_edge

do.end367.for.body375_crit_edge:                  ; preds = %do.end367
  br label %for.body375

do.end367.for.end391_crit_edge:                   ; preds = %do.end367
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end391

for.body375:                                      ; preds = %list_del.exit.for.body375_crit_edge, %do.end367.for.body375_crit_edge
  %l.0721 = phi ptr [ %lt.0723, %list_del.exit.for.body375_crit_edge ], [ %100, %do.end367.for.body375_crit_edge ]
  %101 = ptrtoint ptr %l.0721 to i32
  call void @__asan_load4_noabort(i32 %101)
  %lt.0723 = load ptr, ptr %l.0721, align 4
  %ad378 = getelementptr inbounds %struct.hash_netiface6_resize_ad, ptr %l.0721, i32 0, i32 1
  %102 = ptrtoint ptr %ad378 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %ad378, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %cmp379 = icmp eq i32 %103, 0
  %d382 = getelementptr inbounds %struct.hash_netiface6_resize_ad, ptr %l.0721, i32 0, i32 2
  br i1 %cmp379, label %if.then381, label %if.else385

if.then381:                                       ; preds = %for.body375
  call void @__sanitizer_cov_trace_pc() #17
  %ext = getelementptr inbounds %struct.hash_netiface6_resize_ad, ptr %l.0721, i32 0, i32 3
  %mext = getelementptr inbounds %struct.hash_netiface6_resize_ad, ptr %l.0721, i32 0, i32 4
  %flags383 = getelementptr inbounds %struct.hash_netiface6_resize_ad, ptr %l.0721, i32 0, i32 5
  %104 = ptrtoint ptr %flags383 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %flags383, align 8
  %call384 = tail call i32 @hash_netiface6_add(ptr noundef %set, ptr noundef %d382, ptr noundef %ext, ptr noundef %mext, i32 noundef %105)
  br label %if.end388

if.else385:                                       ; preds = %for.body375
  call void @__sanitizer_cov_trace_pc() #17
  %call387 = tail call i32 @hash_netiface6_del(ptr noundef %set, ptr noundef %d382, ptr noundef null, ptr noundef null, i32 noundef 0)
  br label %if.end388

if.end388:                                        ; preds = %if.else385, %if.then381
  %call.i.i643 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %l.0721) #15
  br i1 %call.i.i643, label %if.end.i.i644, label %if.end388.list_del.exit_crit_edge

if.end388.list_del.exit_crit_edge:                ; preds = %if.end388
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit

if.end.i.i644:                                    ; preds = %if.end388
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %l.0721, i32 0, i32 1
  %106 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %prev.i.i, align 4
  %108 = ptrtoint ptr %l.0721 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %l.0721, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %107, ptr %prev1.i.i.i, align 4
  %111 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %111)
  store volatile ptr %109, ptr %107, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i644, %if.end388.list_del.exit_crit_edge
  %112 = ptrtoint ptr %l.0721 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr inttoptr (i32 256 to ptr), ptr %l.0721, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %l.0721, i32 0, i32 1
  %113 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %l.0721) #15
  %cmp.i641.not = icmp eq ptr %lt.0723, %ad
  br i1 %cmp.i641.not, label %list_del.exit.for.end391_crit_edge, label %list_del.exit.for.body375_crit_edge

list_del.exit.for.body375_crit_edge:              ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body375

list_del.exit.for.end391_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end391

for.end391:                                       ; preds = %list_del.exit.for.end391_crit_edge, %do.end367.for.end391_crit_edge
  %call.i.i588 = tail call zeroext i1 @__kasan_check_write(ptr noundef %uref, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !232
  tail call void @llvm.prefetch.p0(ptr %uref, i32 1, i32 3, i32 1) #15
  %114 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uref, ptr %uref, i32 1, ptr elementtype(i32) %uref) #15, !srcloc !233
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %114, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !234
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i589 = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i589, label %do.body395, label %for.end391.out_crit_edge

for.end391.out_crit_edge:                         ; preds = %for.end391
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

do.body395:                                       ; preds = %for.end391
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_netiface6_resize.__UNIQUE_ID_ddebug721, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_netiface6_resize, %if.then407)) #15
          to label %do.end.i [label %if.then407], !srcloc !224

if.then407:                                       ; preds = %do.body395
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_netiface6_resize.__UNIQUE_ID_ddebug721, ptr noundef nonnull @.str.32, ptr noundef %17) #15
  br label %do.end.i

do.end.i:                                         ; preds = %for.inc.i.do.end.i_crit_edge, %if.then407, %do.body395
  %i.017.i = phi i32 [ %inc.i, %for.inc.i.do.end.i_crit_edge ], [ 0, %do.body395 ], [ 0, %if.then407 ]
  %arrayidx.i645 = getelementptr %struct.htable, ptr %17, i32 0, i32 5, i32 %i.017.i
  %115 = ptrtoint ptr %arrayidx.i645 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %arrayidx.i645, align 4
  %tobool.not.i646 = icmp eq ptr %116, null
  br i1 %tobool.not.i646, label %do.end.i.for.inc.i_crit_edge, label %if.end.i647

do.end.i.for.inc.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.end.i647:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %116) #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i647, %do.end.i.for.inc.i_crit_edge
  %inc.i = add i32 %i.017.i, 1
  %117 = ptrtoint ptr %htable_bits102 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %htable_bits102, align 4
  %conv.i648 = zext i8 %118 to i32
  %i.0.highbits.i = lshr i32 %inc.i, %conv.i648
  %cmp.i649 = icmp eq i32 %i.0.highbits.i, 0
  br i1 %cmp.i649, label %for.inc.i.do.end.i_crit_edge, label %hash_netiface6_ahash_destroy.exit

for.inc.i.do.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

hash_netiface6_ahash_destroy.exit:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  %hregion.i = getelementptr inbounds %struct.htable, ptr %17, i32 0, i32 4
  %119 = ptrtoint ptr %hregion.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %hregion.i, align 4
  tail call void @ip_set_free(ptr noundef %120) #15
  tail call void @ip_set_free(ptr noundef %17) #15
  br label %out

out:                                              ; preds = %do.end421, %hash_netiface6_ahash_destroy.exit675.out_crit_edge, %hash_netiface6_ahash_destroy.exit, %for.end391.out_crit_edge, %if.then34, %if.end24.out_crit_edge
  %ret.7 = phi i32 [ 0, %hash_netiface6_ahash_destroy.exit ], [ 0, %for.end391.out_crit_edge ], [ -12, %if.then34 ], [ -4352, %do.end421 ], [ -12, %if.end24.out_crit_edge ], [ %ret.8, %hash_netiface6_ahash_destroy.exit675.out_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #15
  br label %cleanup426

cleanup412:                                       ; preds = %if.end8.i.i630.cleanup412_crit_edge, %if.then229.cleanup412_crit_edge, %if.end8.i.i.cleanup412_crit_edge
  %cmp415 = phi i1 [ false, %if.end8.i.i630.cleanup412_crit_edge ], [ true, %if.then229.cleanup412_crit_edge ], [ false, %if.end8.i.i.cleanup412_crit_edge ]
  %ret.8 = phi i32 [ -12, %if.end8.i.i630.cleanup412_crit_edge ], [ -11, %if.then229.cleanup412_crit_edge ], [ -12, %if.end8.i.i.cleanup412_crit_edge ]
  %call.i650 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i650, label %cleanup412.rcu_read_unlock_bh.exit658_crit_edge, label %land.lhs.true.i653

cleanup412.rcu_read_unlock_bh.exit658_crit_edge:  ; preds = %cleanup412
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock_bh.exit658

land.lhs.true.i653:                               ; preds = %cleanup412
  %call1.i651 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i651)
  %tobool.not.i652 = icmp eq i32 %call1.i651, 0
  br i1 %tobool.not.i652, label %land.lhs.true.i653.rcu_read_unlock_bh.exit658_crit_edge, label %land.lhs.true2.i655

land.lhs.true.i653.rcu_read_unlock_bh.exit658_crit_edge: ; preds = %land.lhs.true.i653
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock_bh.exit658

land.lhs.true2.i655:                              ; preds = %land.lhs.true.i653
  %.b4.i654 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i654, label %land.lhs.true2.i655.rcu_read_unlock_bh.exit658_crit_edge, label %if.then.i656

land.lhs.true2.i655.rcu_read_unlock_bh.exit658_crit_edge: ; preds = %land.lhs.true2.i655
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock_bh.exit658

if.then.i656:                                     ; preds = %land.lhs.true2.i655
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 761, ptr noundef nonnull @.str.16) #15
  br label %rcu_read_unlock_bh.exit658

rcu_read_unlock_bh.exit658:                       ; preds = %if.then.i656, %land.lhs.true2.i655.rcu_read_unlock_bh.exit658_crit_edge, %land.lhs.true.i653.rcu_read_unlock_bh.exit658_crit_edge, %cleanup412.rcu_read_unlock_bh.exit658_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #15
  tail call fastcc void @local_bh_enable() #15
  %call.i.i593 = tail call zeroext i1 @__kasan_check_write(ptr noundef %17, i32 noundef 4) #15
  %121 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %121)
  store volatile i32 0, ptr %17, align 4
  %call.i.i594 = tail call zeroext i1 @__kasan_check_write(ptr noundef %uref, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %uref, i32 1, i32 3, i32 1) #15
  %122 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uref, ptr %uref, i32 1, ptr elementtype(i32) %uref) #15, !srcloc !238
  br label %do.end.i666

do.end.i666:                                      ; preds = %for.inc.i673.do.end.i666_crit_edge, %rcu_read_unlock_bh.exit658
  %i.017.i663 = phi i32 [ 0, %rcu_read_unlock_bh.exit658 ], [ %inc.i669, %for.inc.i673.do.end.i666_crit_edge ]
  %arrayidx.i664 = getelementptr %struct.htable, ptr %call25, i32 0, i32 5, i32 %i.017.i663
  %123 = ptrtoint ptr %arrayidx.i664 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %arrayidx.i664, align 4
  %tobool.not.i665 = icmp eq ptr %124, null
  br i1 %tobool.not.i665, label %do.end.i666.for.inc.i673_crit_edge, label %if.end.i668

do.end.i666.for.inc.i673_crit_edge:               ; preds = %do.end.i666
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i673

if.end.i668:                                      ; preds = %do.end.i666
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %124) #15
  br label %for.inc.i673

for.inc.i673:                                     ; preds = %if.end.i668, %do.end.i666.for.inc.i673_crit_edge
  %inc.i669 = add i32 %i.017.i663, 1
  %125 = ptrtoint ptr %htable_bits36 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %htable_bits36, align 4
  %conv.i670 = zext i8 %126 to i32
  %i.0.highbits.i671 = lshr i32 %inc.i669, %conv.i670
  %cmp.i672 = icmp eq i32 %i.0.highbits.i671, 0
  br i1 %cmp.i672, label %for.inc.i673.do.end.i666_crit_edge, label %hash_netiface6_ahash_destroy.exit675

for.inc.i673.do.end.i666_crit_edge:               ; preds = %for.inc.i673
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i666

hash_netiface6_ahash_destroy.exit675:             ; preds = %for.inc.i673
  %127 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %hregion, align 4
  tail call void @ip_set_free(ptr noundef %128) #15
  tail call void @ip_set_free(ptr noundef nonnull %call25) #15
  br i1 %cmp415, label %hash_netiface6_ahash_destroy.exit675.retry_crit_edge, label %hash_netiface6_ahash_destroy.exit675.out_crit_edge

hash_netiface6_ahash_destroy.exit675.out_crit_edge: ; preds = %hash_netiface6_ahash_destroy.exit675
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

hash_netiface6_ahash_destroy.exit675.retry_crit_edge: ; preds = %hash_netiface6_ahash_destroy.exit675
  call void @__sanitizer_cov_trace_pc() #17
  br label %retry

do.end421:                                        ; preds = %if.end20.do.end421_crit_edge, %retry.do.end421_crit_edge
  %call425 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %set) #21
  br label %out

cleanup426:                                       ; preds = %out, %entry.cleanup426_crit_edge
  %retval.0 = phi i32 [ %ret.7, %out ], [ -12, %entry.cleanup426_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hash_netiface6_destroy(ptr noundef %set) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %gc = getelementptr inbounds %struct.hash_netiface6, ptr %1, i32 0, i32 1
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %gc) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call1 = tail call zeroext i1 @lockdep_nfnl_is_held(i8 noundef zeroext 6) #15
  br i1 %call1, label %if.end.do.end_crit_edge, label %land.lhs.true

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true:                                    ; preds = %if.end
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b25 = load i1, ptr @hash_netiface6_destroy.__warned, align 1
  br i1 %.b25, label %land.lhs.true4.do.end_crit_edge, label %if.then6

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.then6:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @hash_netiface6_destroy.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 466, ptr noundef nonnull @.str.34) #15
  br label %do.end

do.end:                                           ; preds = %if.then6, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %if.end.do.end_crit_edge
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  tail call fastcc void @hash_netiface6_ahash_destroy(ptr noundef %set, ptr noundef %6, i1 noundef zeroext true)
  %ad = getelementptr inbounds %struct.hash_netiface6, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %ad to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ad, align 4
  %cmp.i.not27 = icmp eq ptr %8, %ad
  br i1 %cmp.i.not27, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %do.end.for.body_crit_edge
  %l.028 = phi ptr [ %lt.030, %list_del.exit.for.body_crit_edge ], [ %8, %do.end.for.body_crit_edge ]
  %9 = ptrtoint ptr %l.028 to i32
  call void @__asan_load4_noabort(i32 %9)
  %lt.030 = load ptr, ptr %l.028, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %l.028) #15
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
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
  tail call void @kfree(ptr noundef %l.028) #15
  %cmp.i.not = icmp eq ptr %lt.030, %ad
  br i1 %cmp.i.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %do.end.for.end_crit_edge
  tail call void @kfree(ptr noundef %1) #15
  %18 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %data, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hash_netiface6_flush(ptr noundef %set) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 15
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %call = tail call zeroext i1 @lockdep_nfnl_is_held(i8 noundef zeroext 6) #15
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b135 = load i1, ptr @hash_netiface6_flush.__warned, align 1
  br i1 %.b135, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @hash_netiface6_flush.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 412, ptr noundef nonnull @.str.34) #15
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
  tail call void @_raw_spin_lock_bh(ptr noundef %arrayidx) #15
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
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end40:                                         ; preds = %do.end35
  %10 = ptrtoint ptr %extensions to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %extensions, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %11)
  %tobool42.not = icmp sgt i8 %11, -1
  br i1 %tobool42.not, label %if.end40.do.body53_crit_edge, label %if.then43

if.end40.do.body53_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
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
  tail call void %25(ptr noundef %set, ptr noundef %add.ptr.i.i) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body53

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

do.body53:                                        ; preds = %for.inc.i.do.body53_crit_edge, %if.then43.do.body53_crit_edge, %if.end40.do.body53_crit_edge
  %28 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr null, ptr %arrayidx37, align 4
  tail call void @kvfree_call_rcu(ptr noundef nonnull %9, ptr noundef null) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc.do.end35_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
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
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx100) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end104:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  %nets = getelementptr inbounds %struct.hash_netiface6, ptr %1, i32 0, i32 7
  %39 = call ptr @memset(ptr %nets, i32 0, i32 1032)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hash_netiface6_head(ptr noundef %set, ptr noundef %skb) #2 align 64 {
entry:
  %tmp.i.i103 = alloca i32, align 4
  %tmp.i.i101 = alloca i32, align 4
  %tmp.i.i99 = alloca i32, align 4
  %tmp.i.i97 = alloca i32, align 4
  %tmp.i = alloca i8, align 1
  %tmp.i.i94 = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 15
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  tail call fastcc void @local_bh_disable() #15
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %entry.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock_bh.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock_bh.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock_bh.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock_bh.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 750, ptr noundef nonnull @.str.15) #15
  br label %rcu_read_lock_bh.exit

rcu_read_lock_bh.exit:                            ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, %entry.rcu_read_lock_bh.exit_crit_edge
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %1, align 4
  %call = tail call i32 @rcu_read_lock_bh_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock_bh.exit.do.end7_crit_edge

rcu_read_lock_bh.exit.do.end7_crit_edge:          ; preds = %rcu_read_lock_bh.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock_bh.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b77 = load i1, ptr @hash_netiface6_head.__warned, align 1
  br i1 %.b77, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @hash_netiface6_head.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1272, ptr noundef nonnull @.str.9) #15
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock_bh.exit.do.end7_crit_edge
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %5, align 4
  %call.i78 = tail call i32 @rcu_read_lock_bh_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78)
  %tobool.not.i79 = icmp eq i32 %call.i78, 0
  br i1 %tobool.not.i79, label %land.lhs.true.i80, label %do.end7.do.end8.i_crit_edge

do.end7.do.end8.i_crit_edge:                      ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end8.i

land.lhs.true.i80:                                ; preds = %do.end7
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i80.do.end8.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i80.do.end8.i_crit_edge:            ; preds = %land.lhs.true.i80
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end8.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i80
  %.b112.i = load i1, ptr @hash_netiface6_ext_size.__warned, align 1
  br i1 %.b112.i, label %land.lhs.true5.i.do.end8.i_crit_edge, label %if.then.i81

land.lhs.true5.i.do.end8.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end8.i

if.then.i81:                                      ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @hash_netiface6_ext_size.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 818, ptr noundef nonnull @.str.9) #15
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
  call void @__sanitizer_cov_trace_pc() #17
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
  %call44.i = tail call i32 @rcu_read_lock_bh_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %tobool45.not.i = icmp eq i32 %call44.i, 0
  br i1 %tobool45.not.i, label %land.lhs.true46.i, label %for.body38.i.do.end54.i_crit_edge

for.body38.i.do.end54.i_crit_edge:                ; preds = %for.body38.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end54.i

land.lhs.true46.i:                                ; preds = %for.body38.i
  %call47.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.not.i = icmp eq i32 %call47.i, 0
  br i1 %tobool48.not.i, label %land.lhs.true46.i.do.end54.i_crit_edge, label %land.lhs.true49.i

land.lhs.true46.i.do.end54.i_crit_edge:           ; preds = %land.lhs.true46.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end54.i

land.lhs.true49.i:                                ; preds = %land.lhs.true46.i
  %.b110111.i = load i1, ptr @hash_netiface6_ext_size.__warned.61, align 1
  br i1 %.b110111.i, label %land.lhs.true49.i.do.end54.i_crit_edge, label %if.then51.i

land.lhs.true49.i.do.end54.i_crit_edge:           ; preds = %land.lhs.true49.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end54.i

if.then51.i:                                      ; preds = %land.lhs.true49.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @hash_netiface6_ext_size.__warned.61, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 822, ptr noundef nonnull @.str.9) #15
  br label %do.end54.i

do.end54.i:                                       ; preds = %if.then51.i, %land.lhs.true49.i.do.end54.i_crit_edge, %land.lhs.true46.i.do.end54.i_crit_edge, %for.body38.i.do.end54.i_crit_edge
  %tobool56.not.i = icmp eq ptr %13, null
  br i1 %tobool56.not.i, label %do.end54.i.for.inc80.i_crit_edge, label %for.cond59.preheader.i

do.end54.i.for.inc80.i_crit_edge:                 ; preds = %do.end54.i
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then77.i

ip_set_timeout_expired.exit.i:                    ; preds = %land.lhs.true72.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %29 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %28, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp1.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp1.i.i, label %ip_set_timeout_expired.exit.i.for.inc.i_crit_edge, label %ip_set_timeout_expired.exit.i.if.then77.i_crit_edge

ip_set_timeout_expired.exit.i.if.then77.i_crit_edge: ; preds = %ip_set_timeout_expired.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then77.i

ip_set_timeout_expired.exit.i.for.inc.i_crit_edge: ; preds = %ip_set_timeout_expired.exit.i
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body63.i

for.inc.i.for.inc80.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end82.i

for.inc80.i.for.body38.i_crit_edge:               ; preds = %for.inc80.i
  call void @__sanitizer_cov_trace_pc() #17
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
  br i1 %cmp13.i, label %for.end82.i.for.body.i_crit_edge, label %hash_netiface6_ext_size.exit

for.end82.i.for.body.i_crit_edge:                 ; preds = %for.end82.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

hash_netiface6_ext_size.exit:                     ; preds = %for.end82.i
  %htable_bits.i82 = getelementptr inbounds %struct.htable, ptr %3, i32 0, i32 2
  %38 = ptrtoint ptr %htable_bits.i82 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %htable_bits.i82, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %39)
  %cmp.i83 = icmp ult i8 %39, 10
  %conv.i84 = zext i8 %39 to i32
  %sub.i85 = add nsw i32 %conv.i84, -10
  %phi.bo.i = shl i32 52, %sub.i85
  %phi.bo1.i = add i32 %phi.bo.i, 1224
  %cond.i86 = select i1 %cmp.i83, i32 1276, i32 %phi.bo1.i
  %ext_size10 = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 12
  %40 = ptrtoint ptr %ext_size10 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ext_size10, align 4
  %add = add i32 %41, %add85.i
  %add11 = add i32 %add, %cond.i86
  %call.i87 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i87, label %hash_netiface6_ext_size.exit.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true.i90

hash_netiface6_ext_size.exit.rcu_read_unlock_bh.exit_crit_edge: ; preds = %hash_netiface6_ext_size.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock_bh.exit

land.lhs.true.i90:                                ; preds = %hash_netiface6_ext_size.exit
  %call1.i88 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i88)
  %tobool.not.i89 = icmp eq i32 %call1.i88, 0
  br i1 %tobool.not.i89, label %land.lhs.true.i90.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true2.i92

land.lhs.true.i90.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true.i90
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock_bh.exit

land.lhs.true2.i92:                               ; preds = %land.lhs.true.i90
  %.b4.i91 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i91, label %land.lhs.true2.i92.rcu_read_unlock_bh.exit_crit_edge, label %if.then.i93

land.lhs.true2.i92.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i92
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock_bh.exit

if.then.i93:                                      ; preds = %land.lhs.true2.i92
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 761, ptr noundef nonnull @.str.16) #15
  br label %rcu_read_unlock_bh.exit

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i93, %land.lhs.true2.i92.rcu_read_unlock_bh.exit_crit_edge, %land.lhs.true.i90.rcu_read_unlock_bh.exit_crit_edge, %hash_netiface6_ext_size.exit.rcu_read_unlock_bh.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #15
  tail call fastcc void @local_bh_enable() #15
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %42 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 32775, i32 noundef 0, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool14.not108 = icmp eq ptr %43, null
  %tobool14.not = select i1 %cmp.i.i, i1 true, i1 %tobool14.not108
  br i1 %tobool14.not, label %rcu_read_unlock_bh.exit.cleanup_crit_edge, label %if.end16

rcu_read_unlock_bh.exit.cleanup_crit_edge:        ; preds = %rcu_read_unlock_bh.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end16:                                         ; preds = %rcu_read_unlock_bh.exit
  %shl = shl nuw i32 1, %conv.i84
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #15
  %44 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %shl, ptr %tmp.i.i, align 4
  %call.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 16402, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool18.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool18.not, label %lor.lhs.false, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end16
  %maxelem = getelementptr inbounds %struct.hash_netiface6, ptr %1, i32 0, i32 2
  %45 = ptrtoint ptr %maxelem to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %maxelem, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i94) #15
  %47 = ptrtoint ptr %tmp.i.i94 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %tmp.i.i94, align 4
  %call.i.i95 = call i32 @nla_put(ptr noundef %skb, i32 noundef 16403, i32 noundef 4, ptr noundef nonnull %tmp.i.i94) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i94) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i95)
  %tobool20.not = icmp eq i32 %call.i.i95, 0
  br i1 %tobool20.not, label %if.end22, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33

if.then25:                                        ; preds = %if.end22
  %bucketsize = getelementptr inbounds %struct.hash_netiface6, ptr %1, i32 0, i32 4
  %51 = ptrtoint ptr %bucketsize to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %bucketsize, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #15
  %53 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %tmp.i, align 1
  %call.i96 = call i32 @nla_put(ptr noundef %skb, i32 noundef 21, i32 noundef 1, ptr noundef nonnull %tmp.i) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96)
  %tobool27.not = icmp eq i32 %call.i96, 0
  br i1 %tobool27.not, label %lor.lhs.false28, label %if.then25.cleanup_crit_edge

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false28:                                  ; preds = %if.then25
  %initval = getelementptr inbounds %struct.hash_netiface6, ptr %1, i32 0, i32 3
  %54 = ptrtoint ptr %initval to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %initval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i97) #15
  %56 = ptrtoint ptr %tmp.i.i97 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %tmp.i.i97, align 4
  %call.i.i98 = call i32 @nla_put(ptr noundef %skb, i32 noundef 16401, i32 noundef 4, ptr noundef nonnull %tmp.i.i97) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i97) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i98)
  %tobool30.not = icmp eq i32 %call.i.i98, 0
  br i1 %tobool30.not, label %lor.lhs.false28.if.end33_crit_edge, label %lor.lhs.false28.cleanup_crit_edge

lor.lhs.false28.cleanup_crit_edge:                ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false28.if.end33_crit_edge:               ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33

if.end33:                                         ; preds = %lor.lhs.false28.if.end33_crit_edge, %if.end22.if.end33_crit_edge
  %ref = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 2
  %57 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ref, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i99) #15
  %59 = ptrtoint ptr %tmp.i.i99 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %tmp.i.i99, align 4
  %call.i.i100 = call i32 @nla_put(ptr noundef %skb, i32 noundef 16409, i32 noundef 4, ptr noundef nonnull %tmp.i.i99) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i99) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i100)
  %tobool35.not = icmp eq i32 %call.i.i100, 0
  br i1 %tobool35.not, label %lor.lhs.false36, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false36:                                  ; preds = %if.end33
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i101) #15
  %60 = ptrtoint ptr %tmp.i.i101 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %add11, ptr %tmp.i.i101, align 4
  %call.i.i102 = call i32 @nla_put(ptr noundef %skb, i32 noundef 16410, i32 noundef 4, ptr noundef nonnull %tmp.i.i101) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i101) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i102)
  %tobool38.not = icmp eq i32 %call.i.i102, 0
  br i1 %tobool38.not, label %lor.lhs.false39, label %lor.lhs.false36.cleanup_crit_edge

lor.lhs.false36.cleanup_crit_edge:                ; preds = %lor.lhs.false36
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false39:                                  ; preds = %lor.lhs.false36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i103) #15
  %61 = ptrtoint ptr %tmp.i.i103 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %elements.5, ptr %tmp.i.i103, align 4
  %call.i.i104 = call i32 @nla_put(ptr noundef %skb, i32 noundef 16408, i32 noundef 4, ptr noundef nonnull %tmp.i.i103) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i103) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i104)
  %tobool41.not = icmp eq i32 %call.i.i104, 0
  br i1 %tobool41.not, label %if.end43, label %lor.lhs.false39.cleanup_crit_edge

lor.lhs.false39.cleanup_crit_edge:                ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end43:                                         ; preds = %lor.lhs.false39
  %call44 = call i32 @ip_set_put_flags(ptr noundef %skb, ptr noundef %set) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end49, label %if.end43.cleanup_crit_edge, !prof !239

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end49:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #17
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
define internal i32 @hash_netiface6_list(ptr noundef %set, ptr noundef %skb, ptr nocapture noundef %cb) #2 align 64 {
entry:
  %tmp.i.i.i = alloca i32, align 4
  %tmp.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 5
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 32776, i32 noundef 0, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool.not227 = icmp eq ptr %3, null
  %tobool.not = select i1 %cmp.i.i, i1 true, i1 %tobool.not227
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_netiface6_list.__UNIQUE_ID_ddebug766, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_netiface6_list, %if.then5)) #15
          to label %do.end [label %if.then5], !srcloc !224

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_netiface6_list.__UNIQUE_ID_ddebug766, ptr noundef nonnull @.str.38, ptr noundef %set) #15
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %arrayidx7 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 4
  %4 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx7, align 4
  %6 = inttoptr i32 %5 to ptr
  %7 = tail call i32 @llvm.read_register.i32(metadata !214) #15
  %and.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !240
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %do.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

do.end.rcu_read_lock.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %do.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 696, ptr noundef nonnull @.str.42) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %do.end.rcu_read_lock.exit_crit_edge
  %htable_bits = getelementptr inbounds %struct.htable, ptr %6, i32 0, i32 2
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %13 = ptrtoint ptr %htable_bits to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %htable_bits, align 4
  %conv235 = zext i8 %14 to i32
  %.highbits236 = lshr i32 %12, %conv235
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.highbits236)
  %cmp237 = icmp eq i32 %.highbits236, 0
  br i1 %cmp237, label %for.body.lr.ph, label %rcu_read_lock.exit.for.end106_crit_edge

rcu_read_lock.exit.for.end106_crit_edge:          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
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
  %call18 = call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.lhs.true, label %for.body.do.end27_crit_edge

for.body.do.end27_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end27

land.lhs.true:                                    ; preds = %for.body
  %call20 = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %land.lhs.true.do.end27_crit_edge, label %land.lhs.true22

land.lhs.true.do.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end27

land.lhs.true22:                                  ; preds = %land.lhs.true
  %.b180 = load i1, ptr @hash_netiface6_list.__warned, align 1
  br i1 %.b180, label %land.lhs.true22.do.end27_crit_edge, label %if.then24

land.lhs.true22.do.end27_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end27

if.then24:                                        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @hash_netiface6_list.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1362, ptr noundef nonnull @.str.9) #15
  br label %do.end27

do.end27:                                         ; preds = %if.then24, %land.lhs.true22.do.end27_crit_edge, %land.lhs.true.do.end27_crit_edge, %for.body.do.end27_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_netiface6_list.__UNIQUE_ID_ddebug769, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_netiface6_list, %if.then41)) #15
          to label %do.end45 [label %if.then41], !srcloc !224

if.then41:                                        ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #17
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_netiface6_list.__UNIQUE_ID_ddebug769, ptr noundef nonnull @.str.39, i32 noundef %22, ptr noundef %6, ptr noundef %20) #15
  br label %do.end45

do.end45:                                         ; preds = %if.then41, %do.end27
  %tobool46.not = icmp eq ptr %20, null
  br i1 %tobool46.not, label %do.end45.for.inc103_crit_edge, label %for.cond49.preheader

do.end45.for.inc103_crit_edge:                    ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc103

for.cond49.preheader:                             ; preds = %do.end45
  %pos = getelementptr inbounds %struct.hbucket, ptr %20, i32 0, i32 3
  %23 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %pos, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp51231.not = icmp eq i8 %24, 0
  br i1 %cmp51231.not, label %for.cond49.preheader.for.inc103_crit_edge, label %for.body53.lr.ph

for.cond49.preheader.for.inc103_crit_edge:        ; preds = %for.cond49.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc103

for.body53.lr.ph:                                 ; preds = %for.cond49.preheader
  %used = getelementptr inbounds %struct.hbucket, ptr %20, i32 0, i32 1
  %value = getelementptr inbounds %struct.hbucket, ptr %20, i32 0, i32 5
  br label %for.body53

for.body53:                                       ; preds = %for.inc.for.body53_crit_edge, %for.body53.lr.ph
  %i.0232 = phi i32 [ 0, %for.body53.lr.ph ], [ %inc, %for.inc.for.body53_crit_edge ]
  %div3.i = lshr i32 %i.0232, 5
  %arrayidx.i = getelementptr i32, ptr %used, i32 %div3.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.0232, 31
  %27 = shl nuw i32 1, %and.i
  %28 = and i32 %26, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool56.not = icmp eq i32 %28, 0
  br i1 %tobool56.not, label %for.body53.for.inc_crit_edge, label %if.end58

for.body53.for.inc_crit_edge:                     ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end58:                                         ; preds = %for.body53
  %29 = ptrtoint ptr %dsize to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dsize, align 4
  %mul = mul i32 %30, %i.0232
  %add.ptr = getelementptr i8, ptr %value, i32 %mul
  %31 = ptrtoint ptr %extensions to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %extensions, align 2
  %33 = and i8 %32, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool61.not = icmp eq i8 %33, 0
  br i1 %tobool61.not, label %if.end58.do.body69_crit_edge, label %land.lhs.true62

if.end58.do.body69_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body69

ip_set_timeout_expired.exit:                      ; preds = %land.lhs.true62
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %38 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %37, %38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp1.i = icmp slt i32 %sub.i, 0
  br i1 %cmp1.i, label %ip_set_timeout_expired.exit.for.inc_crit_edge, label %ip_set_timeout_expired.exit.do.body69_crit_edge

ip_set_timeout_expired.exit.do.body69_crit_edge:  ; preds = %ip_set_timeout_expired.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body69

ip_set_timeout_expired.exit.for.inc_crit_edge:    ; preds = %ip_set_timeout_expired.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

do.body69:                                        ; preds = %ip_set_timeout_expired.exit.do.body69_crit_edge, %land.lhs.true62.do.body69_crit_edge, %if.end58.do.body69_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_netiface6_list.__UNIQUE_ID_ddebug770, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_netiface6_list, %if.then81)) #15
          to label %do.end85 [label %if.then81], !srcloc !224

if.then81:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #17
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_netiface6_list.__UNIQUE_ID_ddebug770, ptr noundef nonnull @.str.40, i32 noundef %40, ptr noundef nonnull %20, i32 noundef %i.0232, ptr noundef %add.ptr) #15
  br label %do.end85

do.end85:                                         ; preds = %if.then81, %do.body69
  %41 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i188 = call i32 @nla_put(ptr noundef %skb, i32 noundef 32775, i32 noundef 0, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i188)
  %cmp.i.i189 = icmp slt i32 %call1.i.i188, 0
  %tobool87.not228 = icmp eq ptr %42, null
  %tobool87.not = select i1 %cmp.i.i189, i1 true, i1 %tobool87.not228
  br i1 %tobool87.not, label %if.then88, label %if.end94

if.then88:                                        ; preds = %do.end85
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %1)
  %cmp90 = icmp eq i32 %44, %1
  br i1 %cmp90, label %if.then.i.i, label %if.then88.nla_put_failure_crit_edge

if.then88.nla_put_failure_crit_edge:              ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #17
  br label %nla_put_failure

if.then.i.i:                                      ; preds = %if.then88
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %45 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i191 = icmp ugt ptr %46, %3
  br i1 %cmp.i.i191, label %do.end.i.i, label %if.then.i.i.nla_nest_cancel.exit_crit_edge, !prof !225

if.then.i.i.nla_nest_cancel.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nla_nest_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 991, i32 noundef 9, ptr noundef null) #15
  br label %nla_nest_cancel.exit

nla_nest_cancel.exit:                             ; preds = %do.end.i.i, %if.then.i.i.nla_nest_cancel.exit_crit_edge
  %47 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %48 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #15
  br label %out

if.end94:                                         ; preds = %do.end85
  %physdev.i = getelementptr inbounds %struct.hash_netiface6_elem, ptr %add.ptr, i32 0, i32 1
  %49 = ptrtoint ptr %physdev.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %physdev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i192 = icmp eq i8 %50, 0
  %cond.i = select i1 %tobool.not.i192, i32 0, i32 2
  %wildcard.i = getelementptr inbounds %struct.hash_netiface6_elem, ptr %add.ptr, i32 0, i32 5
  %51 = ptrtoint ptr %wildcard.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %wildcard.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool2.not.i = icmp eq i8 %52, 0
  %cond3.i = select i1 %tobool2.not.i, i32 0, i32 128
  %or.i = or i32 %cond3.i, %cond.i
  %nomatch.i = getelementptr inbounds %struct.hash_netiface6_elem, ptr %add.ptr, i32 0, i32 3
  %53 = ptrtoint ptr %nomatch.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %nomatch.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool4.not.i = icmp eq i8 %54, 0
  %or5.i = or i32 %or.i, 4
  %spec.select.i = select i1 %tobool4.not.i, i32 %or.i, i32 %or5.i
  %55 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 32769, i32 noundef 0, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call1.i.i.i.i, 0
  %tobool.not1.i.i = icmp eq ptr %56, null
  %tobool.not.i.i193 = select i1 %cmp.i.i.i.i, i1 true, i1 %tobool.not1.i.i
  br i1 %tobool.not.i.i193, label %if.end94.nla_put_failure_crit_edge, label %if.end.i.i194

if.end94.nla_put_failure_crit_edge:               ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #17
  br label %nla_put_failure

if.end.i.i194:                                    ; preds = %if.end94
  %call.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 16, ptr noundef %add.ptr) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool2.not.i.i, label %lor.lhs.false.i, label %if.end.i.i194.nla_put_failure_crit_edge

if.end.i.i194.nla_put_failure_crit_edge:          ; preds = %if.end.i.i194
  call void @__sanitizer_cov_trace_pc() #17
  br label %nla_put_failure

lor.lhs.false.i:                                  ; preds = %if.end.i.i194
  %57 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %58 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %56 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i.i.i to i16
  %59 = ptrtoint ptr %56 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %conv.i.i.i, ptr %56, align 2
  %cidr.i = getelementptr inbounds %struct.hash_netiface6_elem, ptr %add.ptr, i32 0, i32 2
  %60 = ptrtoint ptr %cidr.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %cidr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i) #15
  %62 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %tmp.i.i, align 1
  %call.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %tmp.i.i) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool8.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool8.not.i, label %lor.lhs.false9.i, label %lor.lhs.false.i.nla_put_failure_crit_edge

lor.lhs.false.i.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nla_put_failure

lor.lhs.false9.i:                                 ; preds = %lor.lhs.false.i
  %iface.i = getelementptr inbounds %struct.hash_netiface6_elem, ptr %add.ptr, i32 0, i32 6
  %call.i28.i = call i32 @strlen(ptr noundef %iface.i) #20
  %add.i.i = add i32 %call.i28.i, 1
  %call1.i.i195 = call i32 @nla_put(ptr noundef %skb, i32 noundef 23, i32 noundef %add.i.i, ptr noundef %iface.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i195)
  %tobool11.not.i = icmp eq i32 %call1.i.i195, 0
  br i1 %tobool11.not.i, label %lor.lhs.false12.i, label %lor.lhs.false9.i.nla_put_failure_crit_edge

lor.lhs.false9.i.nla_put_failure_crit_edge:       ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nla_put_failure

lor.lhs.false12.i:                                ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %tobool13.not.i = icmp eq i32 %spec.select.i, 0
  br i1 %tobool13.not.i, label %lor.lhs.false12.i.if.end97_crit_edge, label %land.lhs.true.i196

lor.lhs.false12.i.if.end97_crit_edge:             ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end97

land.lhs.true.i196:                               ; preds = %lor.lhs.false12.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i.i) #15
  %63 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %spec.select.i, ptr %tmp.i.i.i, align 4
  %call.i.i29.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 16392, i32 noundef 4, ptr noundef nonnull %tmp.i.i.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i29.i)
  %tobool15.not.i = icmp eq i32 %call.i.i29.i, 0
  br i1 %tobool15.not.i, label %land.lhs.true.i196.if.end97_crit_edge, label %land.lhs.true.i196.nla_put_failure_crit_edge

land.lhs.true.i196.nla_put_failure_crit_edge:     ; preds = %land.lhs.true.i196
  call void @__sanitizer_cov_trace_pc() #17
  br label %nla_put_failure

land.lhs.true.i196.if.end97_crit_edge:            ; preds = %land.lhs.true.i196
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end97

if.end97:                                         ; preds = %land.lhs.true.i196.if.end97_crit_edge, %lor.lhs.false12.i.if.end97_crit_edge
  %call98 = call i32 @ip_set_put_extensions(ptr noundef %skb, ptr noundef %set, ptr noundef %add.ptr, i1 noundef zeroext true) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.end101, label %if.end97.nla_put_failure_crit_edge

if.end97.nla_put_failure_crit_edge:               ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #17
  br label %nla_put_failure

if.end101:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #17
  %64 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %65 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %42 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %66 = ptrtoint ptr %42 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %conv.i, ptr %42, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.end101, %ip_set_timeout_expired.exit.for.inc_crit_edge, %for.body53.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0232, 1
  %67 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %pos, align 1
  %conv50 = zext i8 %68 to i32
  %cmp51 = icmp ult i32 %inc, %conv50
  br i1 %cmp51, label %for.inc.for.body53_crit_edge, label %for.inc.for.inc103_crit_edge

for.inc.for.inc103_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc103

for.inc.for.body53_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body53

for.inc103:                                       ; preds = %for.inc.for.inc103_crit_edge, %for.cond49.preheader.for.inc103_crit_edge, %do.end45.for.inc103_crit_edge
  %69 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx, align 4
  %inc105 = add i32 %70, 1
  store i32 %inc105, ptr %arrayidx, align 4
  %71 = ptrtoint ptr %htable_bits to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %htable_bits, align 4
  %conv = zext i8 %72 to i32
  %.highbits = lshr i32 %inc105, %conv
  %cmp = icmp eq i32 %.highbits, 0
  br i1 %cmp, label %for.inc103.for.body_crit_edge, label %for.inc103.for.end106_crit_edge

for.inc103.for.end106_crit_edge:                  ; preds = %for.inc103
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end106

for.inc103.for.body_crit_edge:                    ; preds = %for.inc103
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end106:                                       ; preds = %for.inc103.for.end106_crit_edge, %rcu_read_lock.exit.for.end106_crit_edge
  %73 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i199 = ptrtoint ptr %74 to i32
  %sub.ptr.rhs.cast.i200 = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i201 = sub i32 %sub.ptr.lhs.cast.i199, %sub.ptr.rhs.cast.i200
  %conv.i202 = trunc i32 %sub.ptr.sub.i201 to i16
  %75 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %conv.i202, ptr %3, align 2
  %76 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %arrayidx, align 4
  br label %out

nla_put_failure:                                  ; preds = %if.end97.nla_put_failure_crit_edge, %land.lhs.true.i196.nla_put_failure_crit_edge, %lor.lhs.false9.i.nla_put_failure_crit_edge, %lor.lhs.false.i.nla_put_failure_crit_edge, %if.end.i.i194.nla_put_failure_crit_edge, %if.end94.nla_put_failure_crit_edge, %if.then88.nla_put_failure_crit_edge
  %tobool.not.i203 = icmp eq ptr %16, null
  br i1 %tobool.not.i203, label %nla_put_failure.nlmsg_trim.exit_crit_edge, label %if.then.i204

nla_put_failure.nlmsg_trim.exit_crit_edge:        ; preds = %nla_put_failure
  call void @__sanitizer_cov_trace_pc() #17
  br label %nlmsg_trim.exit

if.then.i204:                                     ; preds = %nla_put_failure
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %77 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %data.i, align 4
  %cmp.i = icmp ugt ptr %78, %16
  br i1 %cmp.i, label %do.end.i, label %if.then.i204.if.end.i_crit_edge, !prof !225

if.then.i204.if.end.i_crit_edge:                  ; preds = %if.then.i204
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i204
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 991, i32 noundef 9, ptr noundef null) #15
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i204.if.end.i_crit_edge
  %79 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i205 = ptrtoint ptr %16 to i32
  %sub.ptr.rhs.cast.i206 = ptrtoint ptr %80 to i32
  %sub.ptr.sub.i207 = sub i32 %sub.ptr.lhs.cast.i205, %sub.ptr.rhs.cast.i206
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i207) #15
  br label %nlmsg_trim.exit

nlmsg_trim.exit:                                  ; preds = %if.end.i, %nla_put_failure.nlmsg_trim.exit_crit_edge
  %81 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %82)
  %cmp110 = icmp eq i32 %1, %82
  br i1 %cmp110, label %do.end121, label %if.else, !prof !225

do.end121:                                        ; preds = %nlmsg_trim.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call125 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %set) #21
  %83 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %arrayidx, align 4
  br label %out

if.else:                                          ; preds = %nlmsg_trim.exit
  call void @__sanitizer_cov_trace_pc() #17
  %84 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i209 = ptrtoint ptr %85 to i32
  %sub.ptr.rhs.cast.i210 = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i211 = sub i32 %sub.ptr.lhs.cast.i209, %sub.ptr.rhs.cast.i210
  %conv.i212 = trunc i32 %sub.ptr.sub.i211 to i16
  %86 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %conv.i212, ptr %3, align 2
  br label %out

out:                                              ; preds = %if.else, %do.end121, %for.end106, %nla_nest_cancel.exit
  %ret.0 = phi i32 [ -90, %do.end121 ], [ 0, %if.else ], [ -90, %nla_nest_cancel.exit ], [ 0, %for.end106 ]
  %call.i213 = call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i213, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i216

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i216:                               ; preds = %out
  %call1.i214 = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i214)
  %tobool.not.i215 = icmp eq i32 %call1.i214, 0
  br i1 %tobool.not.i215, label %land.lhs.true.i216.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i218

land.lhs.true.i216.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i216
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i218:                              ; preds = %land.lhs.true.i216
  %.b4.i217 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i217, label %land.lhs.true2.i218.rcu_read_unlock.exit_crit_edge, label %if.then.i219

land.lhs.true2.i218.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i218
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i219:                                     ; preds = %land.lhs.true2.i218
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.45) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i219, %land.lhs.true2.i218.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i216.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !241
  %87 = call i32 @llvm.read_register.i32(metadata !214) #15
  %and.i.i.i.i.i220 = and i32 %87, -16384
  %88 = inttoptr i32 %and.i.i.i.i.i220 to ptr
  %preempt_count.i.i.i.i221 = getelementptr inbounds %struct.thread_info, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %preempt_count.i.i.i.i221 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %preempt_count.i.i.i.i221, align 4
  %sub.i.i.i = add i32 %90, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i221, align 4
  call void @rcu_read_unlock_strict() #15
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %rcu_read_unlock.exit ], [ -90, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hash_netiface6_uref(ptr nocapture noundef readonly %set, ptr nocapture noundef %cb, i1 noundef zeroext %start) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %start, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %data = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 15
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  tail call fastcc void @local_bh_disable() #15
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %if.then.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true.i

if.then.rcu_read_lock_bh.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock_bh.exit

land.lhs.true.i:                                  ; preds = %if.then
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock_bh.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock_bh.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 750, ptr noundef nonnull @.str.15) #15
  br label %rcu_read_lock_bh.exit

rcu_read_lock_bh.exit:                            ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, %if.then.rcu_read_lock_bh.exit_crit_edge
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %1, align 4
  %call = tail call zeroext i1 @lockdep_nfnl_is_held(i8 noundef zeroext 6) #15
  br i1 %call, label %rcu_read_lock_bh.exit.do.end10_crit_edge, label %lor.lhs.false

rcu_read_lock_bh.exit.do.end10_crit_edge:         ; preds = %rcu_read_lock_bh.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end10

lor.lhs.false:                                    ; preds = %rcu_read_lock_bh.exit
  %call2 = tail call i32 @rcu_read_lock_bh_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true, label %lor.lhs.false.do.end10_crit_edge

lor.lhs.false.do.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end10

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end10_crit_edge, label %land.lhs.true6

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end10

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b46 = load i1, ptr @hash_netiface6_uref.__warned, align 1
  br i1 %.b46, label %land.lhs.true6.do.end10_crit_edge, label %if.then8

land.lhs.true6.do.end10_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end10

if.then8:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @hash_netiface6_uref.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1321, ptr noundef nonnull @.str.9) #15
  br label %do.end10

do.end10:                                         ; preds = %if.then8, %land.lhs.true6.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %lor.lhs.false.do.end10_crit_edge, %rcu_read_lock_bh.exit.do.end10_crit_edge
  %uref = getelementptr inbounds %struct.htable, ptr %3, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %uref, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %uref, i32 1, i32 3, i32 1) #15
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uref, ptr %uref, i32 1, ptr elementtype(i32) %uref) #15, !srcloc !228
  %5 = ptrtoint ptr %3 to i32
  %arrayidx = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 4
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %arrayidx, align 4
  %call.i49 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i49, label %do.end10.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true.i52

do.end10.rcu_read_unlock_bh.exit_crit_edge:       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock_bh.exit

land.lhs.true.i52:                                ; preds = %do.end10
  %call1.i50 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i50)
  %tobool.not.i51 = icmp eq i32 %call1.i50, 0
  br i1 %tobool.not.i51, label %land.lhs.true.i52.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true2.i54

land.lhs.true.i52.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true.i52
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock_bh.exit

land.lhs.true2.i54:                               ; preds = %land.lhs.true.i52
  %.b4.i53 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i53, label %land.lhs.true2.i54.rcu_read_unlock_bh.exit_crit_edge, label %if.then.i55

land.lhs.true2.i54.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i54
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock_bh.exit

if.then.i55:                                      ; preds = %land.lhs.true2.i54
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 761, ptr noundef nonnull @.str.16) #15
  br label %rcu_read_unlock_bh.exit

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i55, %land.lhs.true2.i54.rcu_read_unlock_bh.exit_crit_edge, %land.lhs.true.i52.rcu_read_unlock_bh.exit_crit_edge, %do.end10.rcu_read_unlock_bh.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #15
  tail call fastcc void @local_bh_enable() #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end36

if.then14:                                        ; preds = %if.else
  %9 = inttoptr i32 %8 to ptr
  %uref16 = getelementptr inbounds %struct.htable, ptr %9, i32 0, i32 1
  %call.i.i47 = tail call zeroext i1 @__kasan_check_write(ptr noundef %uref16, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !232
  tail call void @llvm.prefetch.p0(ptr %uref16, i32 1, i32 3, i32 1) #15
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uref16, ptr %uref16, i32 1, ptr elementtype(i32) %uref16) #15, !srcloc !233
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !234
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true18, label %if.then14.if.end33_crit_edge

if.then14.if.end33_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33

land.lhs.true18:                                  ; preds = %if.then14
  %call.i.i48 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %9, i32 noundef 4) #15
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool20.not = icmp eq i32 %12, 0
  br i1 %tobool20.not, label %land.lhs.true18.if.end33_crit_edge, label %do.body22

land.lhs.true18.if.end33_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33

do.body22:                                        ; preds = %land.lhs.true18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_netiface6_uref.__UNIQUE_ID_ddebug765, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_netiface6_uref, %if.then29)) #15
          to label %do.end32 [label %if.then29], !srcloc !224

if.then29:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_netiface6_uref.__UNIQUE_ID_ddebug765, ptr noundef nonnull @.str.47, ptr noundef nonnull %9) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.end.i:                                         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %14) #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %do.end.i.for.inc.i_crit_edge
  %inc.i = add i32 %i.017.i, 1
  %15 = ptrtoint ptr %htable_bits.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %htable_bits.i, align 4
  %conv.i = zext i8 %16 to i32
  %i.0.highbits.i = lshr i32 %inc.i, %conv.i
  %cmp.i = icmp eq i32 %i.0.highbits.i, 0
  br i1 %cmp.i, label %for.inc.i.do.end.i_crit_edge, label %hash_netiface6_ahash_destroy.exit

for.inc.i.do.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

hash_netiface6_ahash_destroy.exit:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  %hregion.i = getelementptr inbounds %struct.htable, ptr %9, i32 0, i32 4
  %17 = ptrtoint ptr %hregion.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hregion.i, align 4
  tail call void @ip_set_free(ptr noundef %18) #15
  tail call void @ip_set_free(ptr noundef nonnull %9) #15
  br label %if.end33

if.end33:                                         ; preds = %hash_netiface6_ahash_destroy.exit, %land.lhs.true18.if.end33_crit_edge, %if.then14.if.end33_crit_edge
  %19 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %arrayidx12, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.end33, %if.else.if.end36_crit_edge, %rcu_read_unlock_bh.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @hash_netiface6_same_set(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ip_set, ptr %a, i32 0, i32 15
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %data1 = getelementptr inbounds %struct.ip_set, ptr %b, i32 0, i32 15
  %2 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data1, align 4
  %maxelem = getelementptr inbounds %struct.hash_netiface6, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %maxelem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %maxelem, align 4
  %maxelem2 = getelementptr inbounds %struct.hash_netiface6, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %maxelem2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %maxelem2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp eq i32 %5, %7
  br i1 %cmp, label %land.lhs.true, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
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
declare dso_local i32 @ip_set_get_ipaddr6(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hash_netiface6_gc_do(ptr noundef %set, ptr nocapture noundef %h, ptr noundef %t, i32 noundef %r) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
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
  tail call void @_raw_spin_lock_bh(ptr noundef %arrayidx) #15
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %3)
  %cmp = icmp ult i8 %3, 10
  %mul = shl i32 %r, 10
  %spec.select = select i1 %cmp, i32 0, i32 %mul
  %shl = shl nuw i32 1, %conv
  %mul10 = add i32 %mul, 1024
  %cond12 = select i1 %cmp, i32 %shl, i32 %mul10
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %cond12)
  %cmp13341 = icmp ult i32 %spec.select, %cond12
  br i1 %cmp13341, label %do.end.lr.ph, label %entry.for.end234_crit_edge

entry.for.end234_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end234

do.end.lr.ph:                                     ; preds = %entry
  %arrayidx27 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 1
  %lock.i = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 1
  %extensions.i = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 8
  %arrayidx.i321 = getelementptr %struct.ip_set, ptr %set, i32 0, i32 14, i32 3
  %mul171.neg = mul i32 %1, -2
  %add172.neg = add i32 %mul171.neg, -24
  br label %do.end

do.end:                                           ; preds = %for.inc232.do.end_crit_edge, %do.end.lr.ph
  %i.0342 = phi i32 [ %spec.select, %do.end.lr.ph ], [ %inc233, %for.inc232.do.end_crit_edge ]
  %arrayidx16 = getelementptr %struct.htable, ptr %t, i32 0, i32 5, i32 %i.0342
  %6 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx16, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %do.end.for.inc232_crit_edge, label %for.cond17.preheader

do.end.for.inc232_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc232

for.cond17.preheader:                             ; preds = %do.end
  %pos = getelementptr inbounds %struct.hbucket, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pos, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp19330.not = icmp eq i8 %9, 0
  br i1 %cmp19330.not, label %for.cond17.preheader.for.inc232_crit_edge, label %for.body21.lr.ph

for.cond17.preheader.for.inc232_crit_edge:        ; preds = %for.cond17.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc232

for.body21.lr.ph:                                 ; preds = %for.cond17.preheader
  %used = getelementptr inbounds %struct.hbucket, ptr %7, i32 0, i32 1
  %value = getelementptr inbounds %struct.hbucket, ptr %7, i32 0, i32 5
  br label %for.body21

for.body21:                                       ; preds = %for.inc62.for.body21_crit_edge, %for.body21.lr.ph
  %d.0334 = phi i32 [ 0, %for.body21.lr.ph ], [ %d.1, %for.inc62.for.body21_crit_edge ]
  %j.0331 = phi i32 [ 0, %for.body21.lr.ph ], [ %inc63, %for.inc62.for.body21_crit_edge ]
  %div3.i = lshr i32 %j.0331, 5
  %arrayidx.i = getelementptr i32, ptr %used, i32 %div3.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %j.0331, 31
  %12 = shl nuw i32 1, %and.i
  %13 = and i32 %11, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool22.not = icmp eq i32 %13, 0
  br i1 %tobool22.not, label %if.then23, label %if.end24

if.then23:                                        ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #17
  %inc = add i32 %d.0334, 1
  br label %for.inc62

if.end24:                                         ; preds = %for.body21
  %mul26 = mul i32 %j.0331, %1
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
  br i1 %cmp.not.i, label %if.end24.for.inc62_crit_edge, label %ip_set_timeout_expired.exit

if.end24.for.inc62_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc62

ip_set_timeout_expired.exit:                      ; preds = %if.end24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %17, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp1.i = icmp slt i32 %sub.i, 0
  br i1 %cmp1.i, label %do.body32, label %ip_set_timeout_expired.exit.for.inc62_crit_edge

ip_set_timeout_expired.exit.for.inc62_crit_edge:  ; preds = %ip_set_timeout_expired.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc62

do.body32:                                        ; preds = %ip_set_timeout_expired.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_netiface6_gc_do.__UNIQUE_ID_ddebug697, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_netiface6_gc_do, %if.then38)) #15
          to label %do.end41 [label %if.then38], !srcloc !224

if.then38:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_netiface6_gc_do.__UNIQUE_ID_ddebug697, ptr noundef nonnull @.str.18, i32 noundef %i.0342, i32 noundef %j.0331) #15
  br label %do.end41

do.end41:                                         ; preds = %if.then38, %do.body32
  tail call void @_clear_bit(i32 noundef %j.0331, ptr noundef %used) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !249
  %cidr = getelementptr inbounds %struct.hash_netiface6_elem, ptr %add.ptr, i32 0, i32 2
  %19 = ptrtoint ptr %cidr to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %cidr, align 1
  %add56 = add i8 %20, 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #15
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc57.i.for.body.i_crit_edge, %do.end41
  %indvars.iv.i = phi i32 [ 0, %do.end41 ], [ %indvars.iv.next.i, %for.inc57.i.for.body.i_crit_edge ]
  %arrayidx4.i = getelementptr %struct.hash_netiface6, ptr %h, i32 0, i32 7, i32 %indvars.iv.i, i32 1, i32 0
  %21 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx4.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %add56)
  %cmp7.not.i = icmp eq i8 %22, %add56
  br i1 %cmp7.not.i, label %if.end.i, label %for.inc57.i

if.end.i:                                         ; preds = %for.body.i
  %conv6.i = zext i8 %add56 to i32
  %sub.i318 = add nsw i32 %conv6.i, -1
  %arrayidx11.i = getelementptr %struct.hash_netiface6, ptr %h, i32 0, i32 7, i32 %sub.i318
  %23 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx11.i, align 4
  %dec.i = add i32 %24, -1
  store i32 %dec.i, ptr %arrayidx11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp22.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp22.not.i, label %for.cond26.preheader.i, label %if.end.i.hash_netiface6_del_cidr.exit_crit_edge

if.end.i.hash_netiface6_del_cidr.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %hash_netiface6_del_cidr.exit

for.cond26.preheader.i:                           ; preds = %if.end.i
  %conv2786.i = and i32 %indvars.iv.i, 255
  %25 = and i32 %indvars.iv.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp2987.i = icmp eq i32 %25, 0
  br i1 %cmp2987.i, label %for.cond26.preheader.i.land.rhs.i319_crit_edge, label %for.cond26.preheader.i.for.end.i_crit_edge

for.cond26.preheader.i.for.end.i_crit_edge:       ; preds = %for.cond26.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.cond26.preheader.i.land.rhs.i319_crit_edge:   ; preds = %for.cond26.preheader.i
  br label %land.rhs.i319

land.rhs.i319:                                    ; preds = %for.body38.i.land.rhs.i319_crit_edge, %for.cond26.preheader.i.land.rhs.i319_crit_edge
  %indvars.iv92.i = phi i32 [ %add.i, %for.body38.i.land.rhs.i319_crit_edge ], [ %indvars.iv.i, %for.cond26.preheader.i.land.rhs.i319_crit_edge ]
  %arrayidx36.i = getelementptr %struct.hash_netiface6, ptr %h, i32 0, i32 7, i32 %indvars.iv92.i, i32 1, i32 0
  %26 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx36.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i = icmp eq i8 %27, 0
  br i1 %tobool.not.i, label %land.rhs.i319.for.end.i_crit_edge, label %for.body38.i

land.rhs.i319.for.end.i_crit_edge:                ; preds = %land.rhs.i319
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.body38.i:                                     ; preds = %land.rhs.i319
  %add.i = add i32 %indvars.iv92.i, 1
  %arrayidx44.i = getelementptr %struct.hash_netiface6, ptr %h, i32 0, i32 7, i32 %add.i, i32 1, i32 0
  %28 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx44.i, align 1
  %30 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %arrayidx36.i, align 1
  %31 = and i32 %add.i, 128
  %cmp29.i = icmp eq i32 %31, 0
  br i1 %cmp29.i, label %for.body38.i.land.rhs.i319_crit_edge, label %for.body38.i.for.end.i_crit_edge

for.body38.i.for.end.i_crit_edge:                 ; preds = %for.body38.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.body38.i.land.rhs.i319_crit_edge:             ; preds = %for.body38.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs.i319

for.end.i:                                        ; preds = %for.body38.i.for.end.i_crit_edge, %land.rhs.i319.for.end.i_crit_edge, %for.cond26.preheader.i.for.end.i_crit_edge
  %conv27.lcssa.i = phi i32 [ %conv2786.i, %for.cond26.preheader.i.for.end.i_crit_edge ], [ %indvars.iv92.i, %land.rhs.i319.for.end.i_crit_edge ], [ %add.i, %for.body38.i.for.end.i_crit_edge ]
  %arrayidx56.i = getelementptr %struct.hash_netiface6, ptr %h, i32 0, i32 7, i32 %conv27.lcssa.i, i32 1, i32 0
  %32 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %arrayidx56.i, align 1
  br label %hash_netiface6_del_cidr.exit

for.inc57.i:                                      ; preds = %for.body.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 129
  br i1 %exitcond.not.i, label %for.inc57.i.hash_netiface6_del_cidr.exit_crit_edge, label %for.inc57.i.for.body.i_crit_edge

for.inc57.i.for.body.i_crit_edge:                 ; preds = %for.inc57.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc57.i.hash_netiface6_del_cidr.exit_crit_edge: ; preds = %for.inc57.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %hash_netiface6_del_cidr.exit

hash_netiface6_del_cidr.exit:                     ; preds = %for.inc57.i.hash_netiface6_del_cidr.exit_crit_edge, %for.end.i, %if.end.i.hash_netiface6_del_cidr.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #15
  %33 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hregion, align 4
  %elements = getelementptr %struct.ip_set_region, ptr %34, i32 %r, i32 2
  %35 = ptrtoint ptr %elements to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %elements, align 4
  %dec = add i32 %36, -1
  store i32 %dec, ptr %elements, align 4
  %37 = ptrtoint ptr %extensions.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %extensions.i, align 2
  %39 = and i8 %38, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i320 = icmp eq i8 %39, 0
  br i1 %tobool.not.i320, label %hash_netiface6_del_cidr.exit.ip_set_ext_destroy.exit_crit_edge, label %if.then.i

hash_netiface6_del_cidr.exit.ip_set_ext_destroy.exit_crit_edge: ; preds = %hash_netiface6_del_cidr.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %ip_set_ext_destroy.exit

if.then.i:                                        ; preds = %hash_netiface6_del_cidr.exit
  call void @__sanitizer_cov_trace_pc() #17
  %40 = ptrtoint ptr %arrayidx.i321 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.i321, align 4
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 %41
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.ip_set_ext_type], ptr @ip_set_extensions, i32 0, i32 3) to i32))
  %42 = load ptr, ptr getelementptr inbounds ([0 x %struct.ip_set_ext_type], ptr @ip_set_extensions, i32 0, i32 3), align 4
  tail call void %42(ptr noundef %set, ptr noundef %add.ptr.i) #15
  br label %ip_set_ext_destroy.exit

ip_set_ext_destroy.exit:                          ; preds = %if.then.i, %hash_netiface6_del_cidr.exit.ip_set_ext_destroy.exit_crit_edge
  %inc61 = add i32 %d.0334, 1
  br label %for.inc62

for.inc62:                                        ; preds = %ip_set_ext_destroy.exit, %ip_set_timeout_expired.exit.for.inc62_crit_edge, %if.end24.for.inc62_crit_edge, %if.then23
  %d.1 = phi i32 [ %inc61, %ip_set_ext_destroy.exit ], [ %d.0334, %ip_set_timeout_expired.exit.for.inc62_crit_edge ], [ %inc, %if.then23 ], [ %d.0334, %if.end24.for.inc62_crit_edge ]
  %inc63 = add nuw nsw i32 %j.0331, 1
  %43 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %pos, align 1
  %conv18 = zext i8 %44 to i32
  %cmp19 = icmp ult i32 %inc63, %conv18
  br i1 %cmp19, label %for.inc62.for.body21_crit_edge, label %for.end64

for.inc62.for.body21_crit_edge:                   ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body21

for.end64:                                        ; preds = %for.inc62
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %d.1)
  %cmp65 = icmp ugt i32 %d.1, 1
  br i1 %cmp65, label %if.then67, label %for.end64.for.inc232_crit_edge

for.end64.for.inc232_crit_edge:                   ; preds = %for.end64
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc232

if.then67:                                        ; preds = %for.end64
  %size = getelementptr inbounds %struct.hbucket, ptr %7, i32 0, i32 2
  %45 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %size, align 8
  %conv68 = zext i8 %46 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %d.1, i32 %conv68)
  %cmp69.not = icmp ult i32 %d.1, %conv68
  br i1 %cmp69.not, label %if.end8.i.i, label %if.then71

if.then71:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #17
  %mul74 = mul i32 %1, %conv68
  %47 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hregion, align 4
  %ext_size = getelementptr %struct.ip_set_region, ptr %48, i32 %r, i32 1
  %49 = ptrtoint ptr %ext_size to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ext_size, align 4
  %add75.neg = sub i32 -24, %mul74
  %sub = add i32 %add75.neg, %50
  store i32 %sub, ptr %ext_size, align 4
  br label %for.inc232.sink.split

if.end8.i.i:                                      ; preds = %if.then67
  %sub131 = add nsw i32 %conv68, -2
  %mul132 = mul i32 %sub131, %1
  %add133 = add i32 %mul132, 24
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add133, i32 noundef 2848) #19
  %tobool135.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool135.not, label %if.end8.i.i.for.inc232_crit_edge, label %if.end137

if.end8.i.i.for.inc232_crit_edge:                 ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc232

if.end137:                                        ; preds = %if.end8.i.i
  %51 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %size, align 8
  %sub140 = add i8 %52, -2
  %size142 = getelementptr inbounds %struct.hbucket, ptr %call9.i.i, i32 0, i32 2
  %53 = ptrtoint ptr %size142 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %sub140, ptr %size142, align 16
  %54 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %pos, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %cmp146336.not = icmp eq i8 %55, 0
  br i1 %cmp146336.not, label %if.end137.for.end168_crit_edge, label %for.body148.lr.ph

if.end137.for.end168_crit_edge:                   ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end168

for.body148.lr.ph:                                ; preds = %if.end137
  %used149 = getelementptr inbounds %struct.hbucket, ptr %7, i32 0, i32 1
  %value155 = getelementptr inbounds %struct.hbucket, ptr %7, i32 0, i32 5
  %value159 = getelementptr inbounds %struct.hbucket, ptr %call9.i.i, i32 0, i32 5
  %used163 = getelementptr inbounds %struct.hbucket, ptr %call9.i.i, i32 0, i32 1
  br label %for.body148

for.body148:                                      ; preds = %for.inc166.for.body148_crit_edge, %for.body148.lr.ph
  %d.2339 = phi i32 [ 0, %for.body148.lr.ph ], [ %d.3, %for.inc166.for.body148_crit_edge ]
  %j.1337 = phi i32 [ 0, %for.body148.lr.ph ], [ %inc167, %for.inc166.for.body148_crit_edge ]
  %div3.i313 = lshr i32 %j.1337, 5
  %arrayidx.i314 = getelementptr i32, ptr %used149, i32 %div3.i313
  %56 = ptrtoint ptr %arrayidx.i314 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %arrayidx.i314, align 4
  %and.i315 = and i32 %j.1337, 31
  %58 = shl nuw i32 1, %and.i315
  %59 = and i32 %57, %58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool152.not = icmp eq i32 %59, 0
  br i1 %tobool152.not, label %for.body148.for.inc166_crit_edge, label %if.end154

for.body148.for.inc166_crit_edge:                 ; preds = %for.body148
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc166

if.end154:                                        ; preds = %for.body148
  call void @__sanitizer_cov_trace_pc() #17
  %mul157 = mul i32 %j.1337, %1
  %add.ptr158 = getelementptr i8, ptr %value155, i32 %mul157
  %mul161 = mul i32 %d.2339, %1
  %add.ptr162 = getelementptr i8, ptr %value159, i32 %mul161
  %60 = call ptr @memcpy(ptr %add.ptr162, ptr %add.ptr158, i32 %1)
  tail call void @_set_bit(i32 noundef %d.2339, ptr noundef %used163) #15
  %inc165 = add i32 %d.2339, 1
  br label %for.inc166

for.inc166:                                       ; preds = %if.end154, %for.body148.for.inc166_crit_edge
  %d.3 = phi i32 [ %inc165, %if.end154 ], [ %d.2339, %for.body148.for.inc166_crit_edge ]
  %inc167 = add nuw nsw i32 %j.1337, 1
  %61 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %pos, align 1
  %conv145 = zext i8 %62 to i32
  %cmp146 = icmp ult i32 %inc167, %conv145
  br i1 %cmp146, label %for.inc166.for.body148_crit_edge, label %for.inc166.for.end168_crit_edge

for.inc166.for.end168_crit_edge:                  ; preds = %for.inc166
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end168

for.inc166.for.body148_crit_edge:                 ; preds = %for.inc166
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body148

for.end168:                                       ; preds = %for.inc166.for.end168_crit_edge, %if.end137.for.end168_crit_edge
  %d.2.lcssa = phi i32 [ 0, %if.end137.for.end168_crit_edge ], [ %d.3, %for.inc166.for.end168_crit_edge ]
  %conv169 = trunc i32 %d.2.lcssa to i8
  %pos170 = getelementptr inbounds %struct.hbucket, ptr %call9.i.i, i32 0, i32 3
  %63 = ptrtoint ptr %pos170 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv169, ptr %pos170, align 1
  %64 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hregion, align 4
  %ext_size175 = getelementptr %struct.ip_set_region, ptr %65, i32 %r, i32 1
  %66 = ptrtoint ptr %ext_size175 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ext_size175, align 4
  %sub176 = add i32 %add172.neg, %67
  store i32 %sub176, ptr %ext_size175, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !250
  br label %for.inc232.sink.split

for.inc232.sink.split:                            ; preds = %for.end168, %if.then71
  %retval.1.i.i326.sink = phi ptr [ %call9.i.i, %for.end168 ], [ null, %if.then71 ]
  %68 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %retval.1.i.i326.sink, ptr %arrayidx16, align 4
  tail call void @kvfree_call_rcu(ptr noundef nonnull %7, ptr noundef null) #15
  br label %for.inc232

for.inc232:                                       ; preds = %for.inc232.sink.split, %if.end8.i.i.for.inc232_crit_edge, %for.end64.for.inc232_crit_edge, %for.cond17.preheader.for.inc232_crit_edge, %do.end.for.inc232_crit_edge
  %inc233 = add nuw i32 %i.0342, 1
  %exitcond.not = icmp eq i32 %inc233, %cond12
  br i1 %exitcond.not, label %for.inc232.for.end234_crit_edge, label %for.inc232.do.end_crit_edge

for.inc232.do.end_crit_edge:                      ; preds = %for.inc232
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

for.inc232.for.end234_crit_edge:                  ; preds = %for.inc232
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end234

for.end234:                                       ; preds = %for.inc232.for.end234_crit_edge, %entry.for.end234_crit_edge
  %69 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %hregion, align 4
  %arrayidx236 = getelementptr %struct.ip_set_region, ptr %70, i32 %r
  tail call void @_raw_spin_unlock_bh(ptr noundef %arrayidx236) #15
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @hash_netiface6_data_equal(ptr nocapture noundef readonly %ip1, ptr nocapture noundef readonly %ip2, ptr nocapture noundef %multi) unnamed_addr #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ip1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ip1, align 4
  %2 = ptrtoint ptr %ip2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ip2, align 4
  %xor.i = xor i32 %3, %1
  %arrayidx4.i = getelementptr [4 x i32], ptr %ip1, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [4 x i32], ptr %ip2, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx6.i, align 4
  %xor7.i = xor i32 %7, %5
  %or.i = or i32 %xor7.i, %xor.i
  %arrayidx9.i = getelementptr [4 x i32], ptr %ip1, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx9.i, align 4
  %arrayidx11.i = getelementptr [4 x i32], ptr %ip2, i32 0, i32 2
  %10 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx11.i, align 4
  %xor12.i = xor i32 %11, %9
  %or13.i = or i32 %or.i, %xor12.i
  %arrayidx15.i = getelementptr [4 x i32], ptr %ip1, i32 0, i32 3
  %12 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx15.i, align 4
  %arrayidx17.i = getelementptr [4 x i32], ptr %ip2, i32 0, i32 3
  %14 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx17.i, align 4
  %xor18.i = xor i32 %15, %13
  %or19.i = or i32 %or13.i, %xor18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i)
  %cmp.i = icmp eq i32 %or19.i, 0
  br i1 %cmp.i, label %land.lhs.true, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %cidr = getelementptr inbounds %struct.hash_netiface6_elem, ptr %ip1, i32 0, i32 2
  %16 = ptrtoint ptr %cidr to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %cidr, align 1
  %cidr4 = getelementptr inbounds %struct.hash_netiface6_elem, ptr %ip2, i32 0, i32 2
  %18 = ptrtoint ptr %cidr4 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %cidr4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %19)
  %cmp = icmp eq i8 %17, %19
  br i1 %cmp, label %land.lhs.true7, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.end

land.lhs.true7:                                   ; preds = %land.lhs.true
  %20 = ptrtoint ptr %multi to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %multi, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr %multi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc)
  %tobool.not = icmp eq i32 %inc, 0
  br i1 %tobool.not, label %land.lhs.true7.land.end_crit_edge, label %land.lhs.true8

land.lhs.true7.land.end_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.end

land.lhs.true8:                                   ; preds = %land.lhs.true7
  %physdev = getelementptr inbounds %struct.hash_netiface6_elem, ptr %ip1, i32 0, i32 1
  %22 = ptrtoint ptr %physdev to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %physdev, align 4
  %physdev10 = getelementptr inbounds %struct.hash_netiface6_elem, ptr %ip2, i32 0, i32 1
  %24 = ptrtoint ptr %physdev10 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %physdev10, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %25)
  %cmp12 = icmp eq i8 %23, %25
  br i1 %cmp12, label %land.rhs, label %land.lhs.true8.land.end_crit_edge

land.lhs.true8.land.end_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true8
  %wildcard = getelementptr inbounds %struct.hash_netiface6_elem, ptr %ip1, i32 0, i32 5
  %26 = ptrtoint ptr %wildcard to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %wildcard, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool15.not = icmp eq i8 %27, 0
  %iface24 = getelementptr inbounds %struct.hash_netiface6_elem, ptr %ip1, i32 0, i32 6
  %iface26 = getelementptr inbounds %struct.hash_netiface6_elem, ptr %ip2, i32 0, i32 6
  br i1 %tobool15.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  %call20 = tail call i32 @strlen(ptr noundef %iface24) #22
  %call21 = tail call i32 @strncmp(ptr noundef %iface24, ptr noundef %iface26, i32 noundef %call20)
  br label %cond.end

cond.false:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  %call28 = tail call i32 @strcmp(ptr noundef %iface24, ptr noundef %iface26) #22
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in.in = phi i32 [ %call21, %cond.true ], [ %call28, %cond.false ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.in.in)
  %cond.in = icmp eq i32 %cond.in.in, 0
  br label %land.end

land.end:                                         ; preds = %cond.end, %land.lhs.true8.land.end_crit_edge, %land.lhs.true7.land.end_crit_edge, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %28 = phi i1 [ false, %land.lhs.true8.land.end_crit_edge ], [ false, %land.lhs.true7.land.end_crit_edge ], [ false, %land.lhs.true.land.end_crit_edge ], [ false, %entry.land.end_crit_edge ], [ %cond.in, %cond.end ]
  ret i1 %28
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hash_netiface6_ahash_destroy(ptr noundef %set, ptr noundef %t, i1 noundef zeroext %ext_destroy) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_pc() #17
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
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
  tail call void %18(ptr noundef %set, ptr noundef %add.ptr.i.i) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

if.end7:                                          ; preds = %for.inc.i.if.end7_crit_edge, %if.then6.if.end7_crit_edge, %if.end.if.end7_crit_edge
  tail call void @kfree(ptr noundef nonnull %1) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  %hregion = getelementptr inbounds %struct.htable, ptr %t, i32 0, i32 4
  %23 = ptrtoint ptr %hregion to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hregion, align 4
  tail call void @ip_set_free(ptr noundef %24) #15
  tail call void @ip_set_free(ptr noundef %t) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hash_netiface6_test_cidrs(ptr noundef %set, ptr nocapture noundef %d, ptr noundef %ext, ptr noundef %mext, i32 noundef %flags) unnamed_addr #2 align 64 {
entry:
  %multi = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 15
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %1, align 4
  %call = tail call i32 @rcu_read_lock_bh_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b111 = load i1, ptr @hash_netiface6_test_cidrs.__warned, align 1
  br i1 %.b111, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @hash_netiface6_test_cidrs.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1161, ptr noundef nonnull @.str.9) #15
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %multi) #15
  %4 = ptrtoint ptr %multi to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %multi, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_netiface6_test_cidrs.__UNIQUE_ID_ddebug752, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_netiface6_test_cidrs, %if.then16)) #15
          to label %do.end19 [label %if.then16], !srcloc !224

if.then16:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_netiface6_test_cidrs.__UNIQUE_ID_ddebug752, ptr noundef nonnull @.str.24) #15
  br label %do.end19

do.end19:                                         ; preds = %if.then16, %do.end7
  %arrayidx4.i.i = getelementptr [4 x i32], ptr %d, i32 0, i32 1
  %arrayidx8.i.i = getelementptr [4 x i32], ptr %d, i32 0, i32 2
  %arrayidx12.i.i = getelementptr [4 x i32], ptr %d, i32 0, i32 3
  %cidr1.i = getelementptr inbounds %struct.hash_netiface6_elem, ptr %d, i32 0, i32 2
  %initval = getelementptr inbounds %struct.hash_netiface6, ptr %1, i32 0, i32 3
  %htable_bits = getelementptr inbounds %struct.htable, ptr %3, i32 0, i32 2
  %dsize = getelementptr inbounds %struct.ip_set, ptr %set, i32 0, i32 13
  %arrayidx32.i = getelementptr i32, ptr %d, i32 4
  br label %land.lhs.true20

land.lhs.true20:                                  ; preds = %for.inc78.land.lhs.true20_crit_edge, %do.end19
  %j.0120 = phi i32 [ 0, %do.end19 ], [ %inc79, %for.inc78.land.lhs.true20_crit_edge ]
  %cidr = getelementptr %struct.hash_netiface6, ptr %1, i32 0, i32 7, i32 %j.0120, i32 1
  %5 = ptrtoint ptr %cidr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %cidr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool22.not = icmp eq i8 %6, 0
  br i1 %tobool22.not, label %land.lhs.true20.cleanup_crit_edge, label %land.rhs

land.lhs.true20.cleanup_crit_edge:                ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.rhs:                                         ; preds = %land.lhs.true20
  %7 = ptrtoint ptr %multi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %multi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool23.not = icmp eq i32 %8, 0
  br i1 %tobool23.not, label %jhash2.exit, label %land.rhs.cleanup_crit_edge

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

jhash2.exit:                                      ; preds = %land.rhs
  %sub = add i8 %6, -1
  %idxprom.i.i.i = zext i8 %sub to i32
  %arrayidx.i.i.i = getelementptr [0 x %union.nf_inet_addr], ptr @ip_set_netmask_map, i32 0, i32 %idxprom.i.i.i
  %9 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i.i, align 4
  %11 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %d, align 4
  %and.i.i = and i32 %12, %10
  store i32 %and.i.i, ptr %d, align 4
  %arrayidx3.i.i = getelementptr i32, ptr %arrayidx.i.i.i, i32 1
  %13 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx3.i.i, align 4
  %15 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx4.i.i, align 4
  %and5.i.i = and i32 %16, %14
  store i32 %and5.i.i, ptr %arrayidx4.i.i, align 4
  %arrayidx7.i.i = getelementptr i32, ptr %arrayidx.i.i.i, i32 2
  %17 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx7.i.i, align 4
  %19 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx8.i.i, align 4
  %and9.i.i = and i32 %20, %18
  store i32 %and9.i.i, ptr %arrayidx8.i.i, align 4
  %arrayidx11.i.i = getelementptr i32, ptr %arrayidx.i.i.i, i32 3
  %21 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx11.i.i, align 4
  %23 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx12.i.i, align 4
  %and13.i.i = and i32 %24, %22
  store i32 %and13.i.i, ptr %arrayidx12.i.i, align 4
  %25 = ptrtoint ptr %cidr1.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %sub, ptr %cidr1.i, align 1
  %26 = ptrtoint ptr %initval to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %initval, align 4
  %add1.i = add i32 %27, -559038717
  %add2.i = add i32 %and.i.i, %add1.i
  %add4.i = add i32 %and5.i.i, %add1.i
  %add6.i = add i32 %and9.i.i, %add1.i
  %sub.i = sub i32 %add2.i, %add6.i
  %or.i.i = tail call i32 @llvm.fshl.i32(i32 %add6.i, i32 %add6.i, i32 4) #15
  %xor.i = xor i32 %sub.i, %or.i.i
  %add7.i = add i32 %add6.i, %add4.i
  %sub8.i = sub i32 %add4.i, %xor.i
  %or.i135.i = tail call i32 @llvm.fshl.i32(i32 %xor.i, i32 %xor.i, i32 6) #15
  %xor10.i = xor i32 %sub8.i, %or.i135.i
  %add11.i = add i32 %xor.i, %add7.i
  %sub12.i = sub i32 %add7.i, %xor10.i
  %or.i136.i = tail call i32 @llvm.fshl.i32(i32 %xor10.i, i32 %xor10.i, i32 8) #15
  %xor14.i = xor i32 %sub12.i, %or.i136.i
  %add15.i = add i32 %xor10.i, %add11.i
  %sub16.i = sub i32 %add11.i, %xor14.i
  %or.i137.i = tail call i32 @llvm.fshl.i32(i32 %xor14.i, i32 %xor14.i, i32 16) #15
  %xor18.i = xor i32 %sub16.i, %or.i137.i
  %add19.i = add i32 %xor14.i, %add15.i
  %sub20.i = sub i32 %add15.i, %xor18.i
  %or.i138.i = tail call i32 @llvm.fshl.i32(i32 %xor18.i, i32 %xor18.i, i32 19) #15
  %xor22.i = xor i32 %sub20.i, %or.i138.i
  %add23.i = add i32 %xor18.i, %add19.i
  %sub24.i = sub i32 %add19.i, %xor22.i
  %or.i139.i = tail call i32 @llvm.fshl.i32(i32 %xor22.i, i32 %xor22.i, i32 4) #15
  %xor26.i = xor i32 %sub24.i, %or.i139.i
  %add27.i = add i32 %xor22.i, %add23.i
  %28 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx32.i, align 4
  %add33.i = add i32 %29, %add27.i
  %30 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx12.i.i, align 4
  %add36.i = add i32 %31, %add23.i
  %xor37.i = xor i32 %xor26.i, %add33.i
  %or.i140.i = tail call i32 @llvm.fshl.i32(i32 %add33.i, i32 %add33.i, i32 14) #15
  %sub39.i = sub i32 %xor37.i, %or.i140.i
  %xor40.i = xor i32 %add36.i, %sub39.i
  %or.i141.i = tail call i32 @llvm.fshl.i32(i32 %sub39.i, i32 %sub39.i, i32 11) #15
  %sub42.i = sub i32 %xor40.i, %or.i141.i
  %xor43.i = xor i32 %sub42.i, %add33.i
  %or.i142.i = tail call i32 @llvm.fshl.i32(i32 %sub42.i, i32 %sub42.i, i32 25) #15
  %sub45.i = sub i32 %xor43.i, %or.i142.i
  %xor46.i = xor i32 %sub45.i, %sub39.i
  %or.i143.i = tail call i32 @llvm.fshl.i32(i32 %sub45.i, i32 %sub45.i, i32 16) #15
  %sub48.i = sub i32 %xor46.i, %or.i143.i
  %xor49.i = xor i32 %sub48.i, %sub42.i
  %or.i144.i = tail call i32 @llvm.fshl.i32(i32 %sub48.i, i32 %sub48.i, i32 4) #15
  %sub51.i = sub i32 %xor49.i, %or.i144.i
  %xor52.i = xor i32 %sub51.i, %sub45.i
  %or.i145.i = tail call i32 @llvm.fshl.i32(i32 %sub51.i, i32 %sub51.i, i32 14) #15
  %sub54.i = sub i32 %xor52.i, %or.i145.i
  %xor55.i = xor i32 %sub54.i, %sub48.i
  %or.i146.i = tail call i32 @llvm.fshl.i32(i32 %sub54.i, i32 %sub54.i, i32 24) #15
  %sub57.i = sub i32 %xor55.i, %or.i146.i
  %32 = ptrtoint ptr %htable_bits to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %htable_bits, align 4
  %conv37 = zext i8 %33 to i32
  %notmask = shl nsw i32 -1, %conv37
  %sub38 = xor i32 %notmask, -1
  %and = and i32 %sub57.i, %sub38
  %arrayidx43 = getelementptr %struct.htable, ptr %3, i32 0, i32 5, i32 %and
  %34 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %arrayidx43, align 4
  %call45 = tail call i32 @rcu_read_lock_bh_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %land.lhs.true47, label %jhash2.exit.do.end55_crit_edge

jhash2.exit.do.end55_crit_edge:                   ; preds = %jhash2.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end55

land.lhs.true47:                                  ; preds = %jhash2.exit
  %call48 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %land.lhs.true47.do.end55_crit_edge, label %land.lhs.true50

land.lhs.true47.do.end55_crit_edge:               ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end55

land.lhs.true50:                                  ; preds = %land.lhs.true47
  %.b109110 = load i1, ptr @hash_netiface6_test_cidrs.__warned.55, align 1
  br i1 %.b109110, label %land.lhs.true50.do.end55_crit_edge, label %if.then52

land.lhs.true50.do.end55_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end55

if.then52:                                        ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @hash_netiface6_test_cidrs.__warned.55, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1185, ptr noundef nonnull @.str.9) #15
  br label %do.end55

do.end55:                                         ; preds = %if.then52, %land.lhs.true50.do.end55_crit_edge, %land.lhs.true47.do.end55_crit_edge, %jhash2.exit.do.end55_crit_edge
  %tobool57.not = icmp eq ptr %35, null
  br i1 %tobool57.not, label %do.end55.for.inc78_crit_edge, label %for.cond60.preheader

do.end55.for.inc78_crit_edge:                     ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc78

for.cond60.preheader:                             ; preds = %do.end55
  %pos = getelementptr inbounds %struct.hbucket, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %pos, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp62117.not = icmp eq i8 %37, 0
  br i1 %cmp62117.not, label %for.cond60.preheader.for.inc78_crit_edge, label %for.body64.lr.ph

for.cond60.preheader.for.inc78_crit_edge:         ; preds = %for.cond60.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc78

for.body64.lr.ph:                                 ; preds = %for.cond60.preheader
  %used = getelementptr inbounds %struct.hbucket, ptr %35, i32 0, i32 1
  %value = getelementptr inbounds %struct.hbucket, ptr %35, i32 0, i32 5
  br label %for.body64

for.body64:                                       ; preds = %for.inc.for.body64_crit_edge, %for.body64.lr.ph
  %i.0118 = phi i32 [ 0, %for.body64.lr.ph ], [ %inc, %for.inc.for.body64_crit_edge ]
  %div3.i = lshr i32 %i.0118, 5
  %arrayidx.i = getelementptr i32, ptr %used, i32 %div3.i
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.0118, 31
  %40 = shl nuw i32 1, %and.i
  %41 = and i32 %39, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool66.not = icmp eq i32 %41, 0
  br i1 %tobool66.not, label %for.body64.for.inc_crit_edge, label %if.end68

for.body64.for.inc_crit_edge:                     ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end68:                                         ; preds = %for.body64
  %42 = ptrtoint ptr %dsize to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dsize, align 4
  %mul = mul i32 %43, %i.0118
  %add.ptr = getelementptr i8, ptr %value, i32 %mul
  %call70 = call fastcc zeroext i1 @hash_netiface6_data_equal(ptr noundef %add.ptr, ptr noundef %d, ptr noundef nonnull %multi)
  br i1 %call70, label %if.end72, label %if.end68.for.inc_crit_edge

if.end68.for.inc_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end72:                                         ; preds = %if.end68
  %call.i = tail call zeroext i1 @ip_set_match_extensions(ptr noundef %set, ptr noundef %ext, ptr noundef %mext, i32 noundef %flags, ptr noundef %add.ptr) #15
  br i1 %call.i, label %hash_netiface6_data_match.exit, label %if.end77

hash_netiface6_data_match.exit:                   ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #17
  %nomatch.i.i = getelementptr inbounds %struct.hash_netiface6_elem, ptr %add.ptr, i32 0, i32 3
  %44 = ptrtoint ptr %nomatch.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %nomatch.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i.i = icmp eq i8 %45, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 1, i32 -39
  br label %cleanup

if.end77:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #17
  %46 = ptrtoint ptr %multi to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %multi, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end77, %if.end68.for.inc_crit_edge, %for.body64.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0118, 1
  %47 = ptrtoint ptr %pos to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %pos, align 1
  %conv61 = zext i8 %48 to i32
  %cmp62 = icmp ult i32 %inc, %conv61
  br i1 %cmp62, label %for.inc.for.body64_crit_edge, label %for.inc.for.inc78_crit_edge

for.inc.for.inc78_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc78

for.inc.for.body64_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body64

for.inc78:                                        ; preds = %for.inc.for.inc78_crit_edge, %for.cond60.preheader.for.inc78_crit_edge, %do.end55.for.inc78_crit_edge
  %inc79 = add nuw nsw i32 %j.0120, 1
  %exitcond.not = icmp eq i32 %inc79, 129
  br i1 %exitcond.not, label %for.inc78.cleanup_crit_edge, label %for.inc78.land.lhs.true20_crit_edge

for.inc78.land.lhs.true20_crit_edge:              ; preds = %for.inc78
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true20

for.inc78.cleanup_crit_edge:                      ; preds = %for.inc78
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %for.inc78.cleanup_crit_edge, %hash_netiface6_data_match.exit, %land.rhs.cleanup_crit_edge, %land.lhs.true20.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond.i.i, %hash_netiface6_data_match.exit ], [ 0, %for.inc78.cleanup_crit_edge ], [ 0, %land.lhs.true20.cleanup_crit_edge ], [ 0, %land.rhs.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %multi) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hash_netiface4_gc(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
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
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #15
  %call = tail call zeroext i1 @lockdep_nfnl_is_held(i8 noundef zeroext 6) #15
  br i1 %call, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ip_set, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true6

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b79 = load i1, ptr @hash_netiface4_gc.__warned, align 1
  br i1 %.b79, label %land.lhs.true6.do.end_crit_edge, label %if.then

land.lhs.true6.do.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @hash_netiface4_gc.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 582, ptr noundef nonnull @.str.34) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true6.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %uref = getelementptr inbounds %struct.htable, ptr %5, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %uref, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %uref, i32 1, i32 3, i32 1) #15
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uref, ptr %uref, i32 1, ptr elementtype(i32) %uref) #15, !srcloc !228
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
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #15
  tail call fastcc void @hash_netiface4_gc_do(ptr noundef %1, ptr noundef %3, ptr noundef %5, i32 noundef %r.0)
  %call.i.i80 = tail call zeroext i1 @__kasan_check_write(ptr noundef %uref, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !232
  tail call void @llvm.prefetch.p0(ptr %uref, i32 1, i32 3, i32 1) #15
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uref, ptr %uref, i32 1, ptr elementtype(i32) %uref) #15, !srcloc !233
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !234
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true40, label %do.end.if.end54_crit_edge

do.end.if.end54_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end54

land.lhs.true40:                                  ; preds = %do.end
  %call.i.i81 = tail call zeroext i1 @__kasan_check_read(ptr noundef %5, i32 noundef 4) #15
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool42.not = icmp eq i32 %16, 0
  br i1 %tobool42.not, label %land.lhs.true40.if.end54_crit_edge, label %do.body44

land.lhs.true40.if.end54_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end54

do.body44:                                        ; preds = %land.lhs.true40
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_netiface4_gc.__UNIQUE_ID_ddebug630, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_netiface4_gc, %if.then50)) #15
          to label %do.end.i [label %if.then50], !srcloc !224

if.then50:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_netiface4_gc.__UNIQUE_ID_ddebug630, ptr noundef nonnull @.str.68, ptr noundef %5) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.end.i:                                         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %18) #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %do.end.i.for.inc.i_crit_edge
  %inc.i = add i32 %i.017.i, 1
  %19 = ptrtoint ptr %htable_bits to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %htable_bits, align 4
  %conv.i = zext i8 %20 to i32
  %i.0.highbits.i = lshr i32 %inc.i, %conv.i
  %cmp.i = icmp eq i32 %i.0.highbits.i, 0
  br i1 %cmp.i, label %for.inc.i.do.end.i_crit_edge, label %hash_netiface4_ahash_destroy.exit

for.inc.i.do.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

hash_netiface4_ahash_destroy.exit:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  %hregion.i = getelementptr inbounds %struct.htable, ptr %5, i32 0, i32 4
  %21 = ptrtoint ptr %hregion.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hregion.i, align 4
  tail call void @ip_set_free(ptr noundef %22) #15
  tail call void @ip_set_free(ptr noundef %5) #15
  br label %if.end54

if.end54:                                         ; preds = %hash_netiface4_ahash_destroy.exit, %land.lhs.true40.if.end54_crit_edge, %do.end.if.end54_crit_edge
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
  %call.i82 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %26, ptr noundef %work, i32 noundef %25) #15
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
define internal void @hash_netiface6_gc(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
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
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #15
  %call = tail call zeroext i1 @lockdep_nfnl_is_held(i8 noundef zeroext 6) #15
  br i1 %call, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ip_set, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true6

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b79 = load i1, ptr @hash_netiface6_gc.__warned, align 1
  br i1 %.b79, label %land.lhs.true6.do.end_crit_edge, label %if.then

land.lhs.true6.do.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @hash_netiface6_gc.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 582, ptr noundef nonnull @.str.34) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true6.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %uref = getelementptr inbounds %struct.htable, ptr %5, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %uref, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %uref, i32 1, i32 3, i32 1) #15
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uref, ptr %uref, i32 1, ptr elementtype(i32) %uref) #15, !srcloc !228
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
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #15
  tail call fastcc void @hash_netiface6_gc_do(ptr noundef %1, ptr noundef %3, ptr noundef %5, i32 noundef %r.0)
  %call.i.i80 = tail call zeroext i1 @__kasan_check_write(ptr noundef %uref, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !232
  tail call void @llvm.prefetch.p0(ptr %uref, i32 1, i32 3, i32 1) #15
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uref, ptr %uref, i32 1, ptr elementtype(i32) %uref) #15, !srcloc !233
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !234
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true40, label %do.end.if.end54_crit_edge

do.end.if.end54_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end54

land.lhs.true40:                                  ; preds = %do.end
  %call.i.i81 = tail call zeroext i1 @__kasan_check_read(ptr noundef %5, i32 noundef 4) #15
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool42.not = icmp eq i32 %16, 0
  br i1 %tobool42.not, label %land.lhs.true40.if.end54_crit_edge, label %do.body44

land.lhs.true40.if.end54_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end54

do.body44:                                        ; preds = %land.lhs.true40
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hash_netiface6_gc.__UNIQUE_ID_ddebug708, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hash_netiface6_gc, %if.then50)) #15
          to label %do.end.i [label %if.then50], !srcloc !224

if.then50:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hash_netiface6_gc.__UNIQUE_ID_ddebug708, ptr noundef nonnull @.str.68, ptr noundef %5) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.end.i:                                         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %18) #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %do.end.i.for.inc.i_crit_edge
  %inc.i = add i32 %i.017.i, 1
  %19 = ptrtoint ptr %htable_bits to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %htable_bits, align 4
  %conv.i = zext i8 %20 to i32
  %i.0.highbits.i = lshr i32 %inc.i, %conv.i
  %cmp.i = icmp eq i32 %i.0.highbits.i, 0
  br i1 %cmp.i, label %for.inc.i.do.end.i_crit_edge, label %hash_netiface6_ahash_destroy.exit

for.inc.i.do.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

hash_netiface6_ahash_destroy.exit:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  %hregion.i = getelementptr inbounds %struct.htable, ptr %5, i32 0, i32 4
  %21 = ptrtoint ptr %hregion.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hregion.i, align 4
  tail call void @ip_set_free(ptr noundef %22) #15
  tail call void @ip_set_free(ptr noundef %5) #15
  br label %if.end54

if.end54:                                         ; preds = %hash_netiface6_ahash_destroy.exit, %land.lhs.true40.if.end54_crit_edge, %do.end.if.end54_crit_edge
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
  %call.i82 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %26, ptr noundef %work, i32 noundef %25) #15
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

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
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
attributes #8 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #13 = { nounwind readonly }
attributes #14 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nobuiltin nounwind }
attributes #21 = { cold nounwind }
attributes #22 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !28, !29, !31, !33, !35, !36, !38, !40, !41, !42, !43, !45, !46, !48, !49, !50, !52, !53, !55, !57, !58, !59, !61, !63, !65, !67, !68, !69, !71, !73, !75, !77, !78, !79, !81, !83, !85, !87, !89, !90, !91, !93, !95, !97, !98, !100, !101, !103, !104, !105, !107, !108, !110, !112, !114, !116, !118, !120, !121, !122, !124, !126, !127, !129, !130, !132, !133, !134, !136, !137, !139, !141, !143, !144, !146, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !200, !201, !202, !203, !205, !207, !208, !209, !210, !211, !212, !213}
!llvm.named.register.sp = !{!214}
!llvm.module.flags = !{!215, !216, !217, !218, !219, !220, !221, !222}
!llvm.ident = !{!223}

!0 = !{ptr @__UNIQUE_ID_file610, !1, !"__UNIQUE_ID_file610", i1 false, i1 false}
!1 = !{!"../net/netfilter/ipset/ip_set_hash_netiface.c", i32 32, i32 1}
!2 = !{ptr @__UNIQUE_ID_license611, !1, !"__UNIQUE_ID_license611", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author612, !4, !"__UNIQUE_ID_author612", i1 false, i1 false}
!4 = !{!"../net/netfilter/ipset/ip_set_hash_netiface.c", i32 33, i32 1}
!5 = !{ptr @__UNIQUE_ID_description613, !6, !"__UNIQUE_ID_description613", i1 false, i1 false}
!6 = !{!"../net/netfilter/ipset/ip_set_hash_netiface.c", i32 34, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias614, !8, !"__UNIQUE_ID_alias614", i1 false, i1 false}
!8 = !{!"../net/netfilter/ipset/ip_set_hash_netiface.c", i32 35, i32 1}
!9 = !{ptr @__initcall__kmod_ip_set_hash_netiface__774_527_hash_netiface_init6, !10, !"__initcall__kmod_ip_set_hash_netiface__774_527_hash_netiface_init6", i1 false, i1 false}
!10 = !{!"../net/netfilter/ipset/ip_set_hash_netiface.c", i32 527, i32 1}
!11 = !{ptr @__exitcall_hash_netiface_fini, !12, !"__exitcall_hash_netiface_fini", i1 false, i1 false}
!12 = !{!"../net/netfilter/ipset/ip_set_hash_netiface.c", i32 528, i32 1}
!13 = !{ptr @hash_netiface_type, !14, !"hash_netiface_type", i1 false, i1 false}
!14 = !{!"../net/netfilter/ipset/ip_set_hash_netiface.c", i32 473, i32 27}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 1458, i32 2}
!17 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @hash_netiface_create.__UNIQUE_ID_ddebug771, !16, !"__UNIQUE_ID_ddebug771", i1 false, i1 false}
!21 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @hash_netiface_create.__key, !24, !"__key", i1 false, i1 false}
!24 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 1537, i32 3}
!25 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 1592, i32 2}
!28 = !{ptr @hash_netiface_create.__UNIQUE_ID_ddebug773, !27, !"__UNIQUE_ID_ddebug773", i1 false, i1 false}
!29 = !{ptr @hash_netiface4_variant, !30, !"hash_netiface4_variant", i1 false, i1 false}
!30 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 1422, i32 41}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/netfilter/ipset/ip_set_hash_netiface.c", i32 189, i32 3}
!33 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!34 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 855, i32 6}
!35 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!36 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!37 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 878, i32 6}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 1015, i32 3}
!40 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @hash_netiface4_add._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @hash_netiface4_add._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 1022, i32 3}
!45 = !{ptr @hash_netiface4_add.__UNIQUE_ID_ddebug657, !44, !"__UNIQUE_ID_ddebug657", i1 false, i1 false}
!46 = distinct !{null, !47, !"__warned", i1 false, i1 false}
!47 = !{!"../include/linux/rcupdate.h", i32 749, i32 2}
!48 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!50 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!51 = !{!"../include/linux/rcupdate.h", i32 760, i32 2}
!52 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!53 = distinct !{null, !54, !"__warned", i1 false, i1 false}
!54 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 509, i32 7}
!55 = !{ptr @.str.17, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 520, i32 4}
!57 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @hash_netiface4_gc_do.__UNIQUE_ID_ddebug619, !56, !"__UNIQUE_ID_ddebug619", i1 false, i1 false}
!59 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!60 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 443, i32 7}
!61 = distinct !{null, !62, !"__warned", i1 false, i1 false}
!62 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 1048, i32 6}
!63 = distinct !{null, !64, !"__warned", i1 false, i1 false}
!64 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 1055, i32 6}
!65 = !{ptr @.str.20, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 1135, i32 3}
!67 = !{ptr @.str.21, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @hash_netiface4_del.__UNIQUE_ID_ddebug671, !66, !"__UNIQUE_ID_ddebug671", i1 false, i1 false}
!69 = distinct !{null, !70, !"__warned", i1 false, i1 false}
!70 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 1224, i32 6}
!71 = distinct !{null, !72, !"__warned", i1 false, i1 false}
!72 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 1239, i32 6}
!73 = distinct !{null, !74, !"__warned", i1 false, i1 false}
!74 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 1161, i32 21}
!75 = !{ptr @.str.23, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 1172, i32 2}
!77 = !{ptr @.str.24, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @hash_netiface4_test_cidrs.__UNIQUE_ID_ddebug674, !76, !"__UNIQUE_ID_ddebug674", i1 false, i1 false}
!79 = distinct !{null, !80, !"__warned", i1 false, i1 false}
!80 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 1185, i32 7}
!81 = distinct !{null, !82, !"__warned", i1 false, i1 false}
!82 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 647, i32 9}
!83 = !{ptr @hash_netiface4_resize.__key, !84, !"__key", i1 false, i1 false}
!84 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 672, i32 3}
!85 = distinct !{null, !86, !"__warned", i1 false, i1 false}
!86 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 677, i32 9}
!87 = !{ptr @.str.27, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 680, i32 2}
!89 = !{ptr @.str.28, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @hash_netiface4_resize.__UNIQUE_ID_ddebug635, !88, !"__UNIQUE_ID_ddebug635", i1 false, i1 false}
!91 = distinct !{null, !92, !"__warned", i1 false, i1 false}
!92 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 687, i32 8}
!93 = distinct !{null, !94, !"__warned", i1 false, i1 false}
!94 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 706, i32 9}
!95 = !{ptr @.str.31, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 764, i32 2}
!97 = !{ptr @hash_netiface4_resize.__UNIQUE_ID_ddebug642, !96, !"__UNIQUE_ID_ddebug642", i1 false, i1 false}
!98 = !{ptr @.str.32, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 782, i32 3}
!100 = !{ptr @hash_netiface4_resize.__UNIQUE_ID_ddebug643, !99, !"__UNIQUE_ID_ddebug643", i1 false, i1 false}
!101 = !{ptr @.str.33, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 803, i32 2}
!103 = !{ptr @hash_netiface4_resize._entry, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @hash_netiface4_resize._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!105 = distinct !{null, !106, !"__warned", i1 false, i1 false}
!106 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 466, i32 27}
!107 = !{ptr @.str.34, !106, !"<string literal>", i1 false, i1 false}
!108 = distinct !{null, !109, !"__warned", i1 false, i1 false}
!109 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 412, i32 6}
!110 = distinct !{null, !111, !"__warned", i1 false, i1 false}
!111 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 417, i32 8}
!112 = distinct !{null, !113, !"__warned", i1 false, i1 false}
!113 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 1272, i32 6}
!114 = distinct !{null, !115, !"__warned", i1 false, i1 false}
!115 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 818, i32 6}
!116 = distinct !{null, !117, !"__warned", i1 false, i1 false}
!117 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 822, i32 8}
!118 = !{ptr @.str.37, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 1354, i32 2}
!120 = !{ptr @.str.38, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @hash_netiface4_list.__UNIQUE_ID_ddebug688, !119, !"__UNIQUE_ID_ddebug688", i1 false, i1 false}
!122 = distinct !{null, !123, !"__warned", i1 false, i1 false}
!123 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 1362, i32 7}
!124 = !{ptr @.str.39, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 1363, i32 3}
!126 = !{ptr @hash_netiface4_list.__UNIQUE_ID_ddebug691, !125, !"__UNIQUE_ID_ddebug691", i1 false, i1 false}
!127 = !{ptr @.str.40, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 1373, i32 4}
!129 = !{ptr @hash_netiface4_list.__UNIQUE_ID_ddebug692, !128, !"__UNIQUE_ID_ddebug692", i1 false, i1 false}
!130 = !{ptr @.str.41, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 1400, i32 3}
!132 = !{ptr @hash_netiface4_list._entry, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @hash_netiface4_list._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!134 = distinct !{null, !135, !"__warned", i1 false, i1 false}
!135 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!136 = !{ptr @.str.42, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.43, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../include/linux/sched.h", i32 2089, i32 2}
!139 = !{ptr @.str.44, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../include/net/netlink.h", i32 991, i32 3}
!141 = distinct !{null, !142, !"__warned", i1 false, i1 false}
!142 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!143 = !{ptr @.str.45, !142, !"<string literal>", i1 false, i1 false}
!144 = distinct !{null, !145, !"__warned", i1 false, i1 false}
!145 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 1321, i32 7}
!146 = !{ptr @.str.46, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 1328, i32 4}
!148 = !{ptr @.str.47, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @hash_netiface4_uref.__UNIQUE_ID_ddebug687, !147, !"__UNIQUE_ID_ddebug687", i1 false, i1 false}
!150 = !{ptr @hash_netiface6_variant, !30, !"hash_netiface6_variant", i1 false, i1 false}
!151 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!152 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!153 = !{ptr @.str.49, !39, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @hash_netiface6_add._entry, !39, !"_entry", i1 false, i1 false}
!155 = !{ptr @hash_netiface6_add._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @hash_netiface6_add.__UNIQUE_ID_ddebug735, !44, !"__UNIQUE_ID_ddebug735", i1 false, i1 false}
!157 = distinct !{null, !54, !"__warned", i1 false, i1 false}
!158 = !{ptr @.str.50, !56, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @hash_netiface6_gc_do.__UNIQUE_ID_ddebug697, !56, !"__UNIQUE_ID_ddebug697", i1 false, i1 false}
!160 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!161 = distinct !{null, !62, !"__warned", i1 false, i1 false}
!162 = distinct !{null, !64, !"__warned", i1 false, i1 false}
!163 = !{ptr @.str.52, !66, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @hash_netiface6_del.__UNIQUE_ID_ddebug749, !66, !"__UNIQUE_ID_ddebug749", i1 false, i1 false}
!165 = distinct !{null, !70, !"__warned", i1 false, i1 false}
!166 = distinct !{null, !72, !"__warned", i1 false, i1 false}
!167 = distinct !{null, !74, !"__warned", i1 false, i1 false}
!168 = !{ptr @.str.54, !76, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @hash_netiface6_test_cidrs.__UNIQUE_ID_ddebug752, !76, !"__UNIQUE_ID_ddebug752", i1 false, i1 false}
!170 = distinct !{null, !80, !"__warned", i1 false, i1 false}
!171 = distinct !{null, !82, !"__warned", i1 false, i1 false}
!172 = !{ptr @hash_netiface6_resize.__key, !84, !"__key", i1 false, i1 false}
!173 = distinct !{null, !86, !"__warned", i1 false, i1 false}
!174 = !{ptr @.str.57, !88, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @hash_netiface6_resize.__UNIQUE_ID_ddebug713, !88, !"__UNIQUE_ID_ddebug713", i1 false, i1 false}
!176 = distinct !{null, !92, !"__warned", i1 false, i1 false}
!177 = distinct !{null, !94, !"__warned", i1 false, i1 false}
!178 = !{ptr @hash_netiface6_resize.__UNIQUE_ID_ddebug720, !96, !"__UNIQUE_ID_ddebug720", i1 false, i1 false}
!179 = !{ptr @hash_netiface6_resize.__UNIQUE_ID_ddebug721, !99, !"__UNIQUE_ID_ddebug721", i1 false, i1 false}
!180 = !{ptr @hash_netiface6_resize._entry, !102, !"_entry", i1 false, i1 false}
!181 = !{ptr @hash_netiface6_resize._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!182 = distinct !{null, !106, !"__warned", i1 false, i1 false}
!183 = distinct !{null, !109, !"__warned", i1 false, i1 false}
!184 = distinct !{null, !111, !"__warned", i1 false, i1 false}
!185 = distinct !{null, !113, !"__warned", i1 false, i1 false}
!186 = distinct !{null, !115, !"__warned", i1 false, i1 false}
!187 = distinct !{null, !117, !"__warned", i1 false, i1 false}
!188 = !{ptr @.str.62, !119, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @hash_netiface6_list.__UNIQUE_ID_ddebug766, !119, !"__UNIQUE_ID_ddebug766", i1 false, i1 false}
!190 = distinct !{null, !123, !"__warned", i1 false, i1 false}
!191 = !{ptr @hash_netiface6_list.__UNIQUE_ID_ddebug769, !125, !"__UNIQUE_ID_ddebug769", i1 false, i1 false}
!192 = !{ptr @hash_netiface6_list.__UNIQUE_ID_ddebug770, !128, !"__UNIQUE_ID_ddebug770", i1 false, i1 false}
!193 = !{ptr @hash_netiface6_list._entry, !131, !"_entry", i1 false, i1 false}
!194 = !{ptr @hash_netiface6_list._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!195 = distinct !{null, !145, !"__warned", i1 false, i1 false}
!196 = !{ptr @.str.63, !147, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @hash_netiface6_uref.__UNIQUE_ID_ddebug765, !147, !"__UNIQUE_ID_ddebug765", i1 false, i1 false}
!198 = !{ptr @hash_netiface4_gc_init.__key, !199, !"__key", i1 false, i1 false}
!199 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 608, i32 2}
!200 = !{ptr @.str.64, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @hash_netiface4_gc_init.__key.65, !199, !"__key", i1 false, i1 false}
!202 = !{ptr @.str.66, !199, !"<string literal>", i1 false, i1 false}
!203 = distinct !{null, !204, !"__warned", i1 false, i1 false}
!204 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 582, i32 6}
!205 = !{ptr @.str.67, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../net/netfilter/ipset/ip_set_hash_gen.h", i32 597, i32 3}
!207 = !{ptr @.str.68, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @hash_netiface4_gc.__UNIQUE_ID_ddebug630, !206, !"__UNIQUE_ID_ddebug630", i1 false, i1 false}
!209 = !{ptr @hash_netiface6_gc_init.__key, !199, !"__key", i1 false, i1 false}
!210 = !{ptr @hash_netiface6_gc_init.__key.69, !199, !"__key", i1 false, i1 false}
!211 = distinct !{null, !204, !"__warned", i1 false, i1 false}
!212 = !{ptr @.str.70, !206, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @hash_netiface6_gc.__UNIQUE_ID_ddebug708, !206, !"__UNIQUE_ID_ddebug708", i1 false, i1 false}
!214 = !{!"sp"}
!215 = !{i32 1, !"wchar_size", i32 2}
!216 = !{i32 1, !"min_enum_size", i32 4}
!217 = !{i32 8, !"branch-target-enforcement", i32 0}
!218 = !{i32 8, !"sign-return-address", i32 0}
!219 = !{i32 8, !"sign-return-address-all", i32 0}
!220 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!221 = !{i32 7, !"uwtable", i32 1}
!222 = !{i32 7, !"frame-pointer", i32 2}
!223 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!224 = !{i64 2148974894, i64 2148974899, i64 2148974912, i64 2148974956, i64 2148974990, i64 2148975011}
!225 = !{!"branch_weights", i32 1, i32 2000}
!226 = !{i32 0, i32 33}
!227 = !{!"auto-init"}
!228 = !{i64 2148178895, i64 2148178921, i64 2148178950, i64 2148178984, i64 2148179015, i64 2148179038}
!229 = !{i64 2158924623}
!230 = !{i64 2158930392}
!231 = !{i8 0, i8 2}
!232 = !{i64 2148267347}
!233 = !{i64 2148182080, i64 2148182112, i64 2148182141, i64 2148182175, i64 2148182206, i64 2148182229}
!234 = !{i64 2148267576}
!235 = !{i64 2158956129}
!236 = !{i64 2158973703}
!237 = !{i64 2158889316}
!238 = !{i64 2148181360, i64 2148181386, i64 2148181415, i64 2148181449, i64 2148181480, i64 2148181503}
!239 = !{!"branch_weights", i32 2000, i32 1}
!240 = !{i64 2149377676}
!241 = !{i64 2149377942}
!242 = !{i64 2158826352}
!243 = !{i64 2158847248}
!244 = !{i64 2159205119}
!245 = !{i64 2159210888}
!246 = !{i64 2159232564}
!247 = !{i64 2159250138}
!248 = !{i64 2159165751}
!249 = !{i64 2159106848}
!250 = !{i64 2159123683}
