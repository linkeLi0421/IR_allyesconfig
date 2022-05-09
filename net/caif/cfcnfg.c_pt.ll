; ModuleID = '/llk/IR_all_yes/net/caif/cfcnfg.c_pt.bc'
source_filename = "../net/caif/cfcnfg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+caif_disconnect_client\22, \22a\22\09"
module asm "\09.weak\09__crc_caif_disconnect_client\09\09\09\09"
module asm "\09.long\09__crc_caif_disconnect_client\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_caif_disconnect_client:\09\09\09\09\09"
module asm "\09.asciz \09\22caif_disconnect_client\22\09\09\09\09\09"
module asm "__kstrtabns_caif_disconnect_client:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+caif_connect_client\22, \22a\22\09"
module asm "\09.weak\09__crc_caif_connect_client\09\09\09\09"
module asm "\09.long\09__crc_caif_connect_client\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_caif_connect_client:\09\09\09\09\09"
module asm "\09.asciz \09\22caif_connect_client\22\09\09\09\09\09"
module asm "__kstrtabns_caif_connect_client:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cfcnfg_add_phy_layer\22, \22a\22\09"
module asm "\09.weak\09__crc_cfcnfg_add_phy_layer\09\09\09\09"
module asm "\09.long\09__crc_cfcnfg_add_phy_layer\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfcnfg_add_phy_layer:\09\09\09\09\09"
module asm "\09.asciz \09\22cfcnfg_add_phy_layer\22\09\09\09\09\09"
module asm "__kstrtabns_cfcnfg_add_phy_layer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cfcnfg_set_phy_state\22, \22a\22\09"
module asm "\09.weak\09__crc_cfcnfg_set_phy_state\09\09\09\09"
module asm "\09.long\09__crc_cfcnfg_set_phy_state\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfcnfg_set_phy_state:\09\09\09\09\09"
module asm "\09.asciz \09\22cfcnfg_set_phy_state\22\09\09\09\09\09"
module asm "__kstrtabns_cfcnfg_set_phy_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cfcnfg_del_phy_layer\22, \22a\22\09"
module asm "\09.weak\09__crc_cfcnfg_del_phy_layer\09\09\09\09"
module asm "\09.long\09__crc_cfcnfg_del_phy_layer\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cfcnfg_del_phy_layer:\09\09\09\09\09"
module asm "\09.asciz \09\22cfcnfg_del_phy_layer\22\09\09\09\09\09"
module asm "__kstrtabns_cfcnfg_del_phy_layer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cfcnfg = type { %struct.cflayer, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.cflayer = type { ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, [16 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.cfctrl_rsp = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.cfcnfg_phyinfo = type { %struct.list_head, i8, ptr, ptr, i32, i32, %struct.dev_info, i32, i32, i8 }
%struct.dev_info = type { ptr, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.14, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.108, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.14 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.108 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.cfctrl_link_param = type { i32, i8, i8, i8, i8, %union.anon.125 }
%union.anon.125 = type { %struct.anon.128, [256 x i8] }
%struct.anon.128 = type { i32, [20 x i8] }
%struct.caif_connect_request = type { i32, %struct.sockaddr_caif, i32, i32, i32, %struct.caif_param }
%struct.sockaddr_caif = type { i16, %union.anon.119 }
%union.anon.119 = type { %struct.anon.123 }
%struct.anon.123 = type { i32, [16 x i8] }
%struct.caif_param = type { i16, [256 x i8] }
%struct.anon.124 = type { i8, i8 }

@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"net/caif/cfcnfg.c\00", [46 x i8] zeroinitializer }, align 32
@cfcnfg_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&this->lock\00", [20 x i8] zeroinitializer }, align 32
@caif_disconnect_client._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 184, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013caif:%s(): caif:Assert detected:'%s'\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"caif_disconnect_client\00", [41 x i8] zeroinitializer }, align 32
@caif_disconnect_client._entry_ptr = internal global ptr @caif_disconnect_client._entry, section ".printk_index", align 4
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"adap_layer != NULL\00", [45 x i8] zeroinitializer }, align 32
@caif_disconnect_client.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.3, ptr @.str, ptr @.str.6, i8 0, i8 48, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"caif\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nothing to disconnect\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"caif:%s(): nothing to disconnect\0A\00", [62 x i8] zeroinitializer }, align 32
@__kstrtab_caif_disconnect_client = external dso_local constant [0 x i8], align 1
@__kstrtabns_caif_disconnect_client = external dso_local constant [0 x i8], align 1
@__ksymtab_caif_disconnect_client = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @caif_disconnect_client to i32), ptr @__kstrtab_caif_disconnect_client, ptr @__kstrtabns_caif_disconnect_client }, section "___ksymtab+caif_disconnect_client", align 4
@caif_connect_client._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str, i32 323, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013caif:%s(): adap_layer is zero\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"caif_connect_client\00", [44 x i8] zeroinitializer }, align 32
@caif_connect_client._entry_ptr = internal global ptr @caif_connect_client._entry, section ".printk_index", align 4
@caif_connect_client._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str, i32 327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013caif:%s(): adap_layer->receive is NULL\0A\00", [54 x i8] zeroinitializer }, align 32
@caif_connect_client._entry_ptr.12 = internal global ptr @caif_connect_client._entry.10, section ".printk_index", align 4
@caif_connect_client._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str, i32 331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013caif:%s(): adap_layer->ctrlcmd == NULL\0A\00", [54 x i8] zeroinitializer }, align 32
@caif_connect_client._entry_ptr.15 = internal global ptr @caif_connect_client._entry.13, section ".printk_index", align 4
@caif_connect_client._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.9, ptr @.str, i32 338, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013caif:%s(): Specified PHY type does not exist!\0A\00", [47 x i8] zeroinitializer }, align 32
@caif_connect_client._entry_ptr.18 = internal global ptr @caif_connect_client._entry.16, section ".printk_index", align 4
@caif_connect_client._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.9, ptr @.str, i32 341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@caif_connect_client._entry_ptr.20 = internal global ptr @caif_connect_client._entry.19, section ".printk_index", align 4
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"param.phyid == phy->id\00", [41 x i8] zeroinitializer }, align 32
@caif_connect_client._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.9, ptr @.str, i32 343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@caif_connect_client._entry_ptr.23 = internal global ptr @caif_connect_client._entry.22, section ".printk_index", align 4
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"phy->frm_layer->id == param.phyid\00", [62 x i8] zeroinitializer }, align 32
@caif_connect_client._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.9, ptr @.str, i32 345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@caif_connect_client._entry_ptr.26 = internal global ptr @caif_connect_client._entry.25, section ".printk_index", align 4
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"phy->phy_layer->id == param.phyid\00", [62 x i8] zeroinitializer }, align 32
@__kstrtab_caif_connect_client = external dso_local constant [0 x i8], align 1
@__kstrtabns_caif_connect_client = external dso_local constant [0 x i8], align 1
@__ksymtab_caif_connect_client = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @caif_connect_client to i32), ptr @__kstrtab_caif_connect_client, ptr @__kstrtabns_caif_connect_client }, section "___ksymtab+caif_connect_client", align 4
@cfcnfg_add_phy_layer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str, i32 475, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014caif:%s(): Too many CAIF Link Layers (max 6)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cfcnfg_add_phy_layer\00", [43 x i8] zeroinitializer }, align 32
@cfcnfg_add_phy_layer._entry_ptr = internal global ptr @cfcnfg_add_phy_layer._entry, section ".printk_index", align 4
@__kstrtab_cfcnfg_add_phy_layer = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfcnfg_add_phy_layer = external dso_local constant [0 x i8], align 1
@__ksymtab_cfcnfg_add_phy_layer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfcnfg_add_phy_layer to i32), ptr @__kstrtab_cfcnfg_add_phy_layer, ptr @__kstrtabns_cfcnfg_add_phy_layer }, section "___ksymtab+cfcnfg_add_phy_layer", align 4
@__kstrtab_cfcnfg_set_phy_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfcnfg_set_phy_state = external dso_local constant [0 x i8], align 1
@__ksymtab_cfcnfg_set_phy_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfcnfg_set_phy_state to i32), ptr @__kstrtab_cfcnfg_set_phy_state, ptr @__kstrtabns_cfcnfg_set_phy_state }, section "___ksymtab+cfcnfg_set_phy_state", align 4
@cfcnfg_del_phy_layer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.30, ptr @.str, i32 577, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cfcnfg_del_phy_layer\00", [43 x i8] zeroinitializer }, align 32
@cfcnfg_del_phy_layer._entry_ptr = internal global ptr @cfcnfg_del_phy_layer._entry, section ".printk_index", align 4
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"phyid == phyinfo->id\00", [43 x i8] zeroinitializer }, align 32
@cfcnfg_del_phy_layer._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.30, ptr @.str, i32 578, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cfcnfg_del_phy_layer._entry_ptr.33 = internal global ptr @cfcnfg_del_phy_layer._entry.32, section ".printk_index", align 4
@.str.34 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"phy_layer == phyinfo->phy_layer\00", [32 x i8] zeroinitializer }, align 32
@cfcnfg_del_phy_layer._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.30, ptr @.str, i32 579, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cfcnfg_del_phy_layer._entry_ptr.36 = internal global ptr @cfcnfg_del_phy_layer._entry.35, section ".printk_index", align 4
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"phy_layer->id == phyid\00", [41 x i8] zeroinitializer }, align 32
@cfcnfg_del_phy_layer._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.30, ptr @.str, i32 580, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cfcnfg_del_phy_layer._entry_ptr.39 = internal global ptr @cfcnfg_del_phy_layer._entry.38, section ".printk_index", align 4
@.str.40 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"phyinfo->frm_layer->id == phyid\00", [32 x i8] zeroinitializer }, align 32
@cfcnfg_del_phy_layer._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.30, ptr @.str, i32 587, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016caif:%s(): Wait for device inuse\0A\00", [60 x i8] zeroinitializer }, align 32
@cfcnfg_del_phy_layer._entry_ptr.43 = internal global ptr @cfcnfg_del_phy_layer._entry.41, section ".printk_index", align 4
@__kstrtab_cfcnfg_del_phy_layer = external dso_local constant [0 x i8], align 1
@__kstrtabns_cfcnfg_del_phy_layer = external dso_local constant [0 x i8], align 1
@__ksymtab_cfcnfg_del_phy_layer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cfcnfg_del_phy_layer to i32), ptr @__kstrtab_cfcnfg_del_phy_layer, ptr @__kstrtabns_cfcnfg_del_phy_layer }, section "___ksymtab+cfcnfg_del_phy_layer", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.44 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@cfcnfg_get_id_from_ifi.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.46 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@cfcnfg_get_phyid.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@cfcnfg_get_phyid.__warned.47 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@cfcnfg_get_phyinfo_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@protohead = internal constant { <{ i32, i32, i32, i32, i32, i32, i32, [8 x i32] }>, [36 x i8] } { <{ i32, i32, i32, i32, i32, i32, i32, [8 x i32] }> <{ i32 0, i32 4, i32 0, i32 3, i32 7, i32 3, i32 4, [8 x i32] zeroinitializer }>, [36 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.49 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@cfcnfg_linkup_rsp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str, i32 381, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014caif:%s(): received channel_id zero\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cfcnfg_linkup_rsp\00", [46 x i8] zeroinitializer }, align 32
@cfcnfg_linkup_rsp._entry_ptr = internal global ptr @cfcnfg_linkup_rsp._entry, section ".printk_index", align 4
@cfcnfg_linkup_rsp.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.51, ptr @.str, ptr @.str.52, i8 0, i8 97, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"link setup response but no client exist, send linkdown back\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"caif:%s(): link setup response but no client exist, send linkdown back\0A\00", [56 x i8] zeroinitializer }, align 32
@cfcnfg_linkup_rsp._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.51, ptr @.str, i32 396, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cfcnfg_linkup_rsp._entry_ptr.55 = internal global ptr @cfcnfg_linkup_rsp._entry.54, section ".printk_index", align 4
@.str.56 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cnfg != NULL\00", [19 x i8] zeroinitializer }, align 32
@cfcnfg_linkup_rsp._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.51, ptr @.str, i32 397, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cfcnfg_linkup_rsp._entry_ptr.58 = internal global ptr @cfcnfg_linkup_rsp._entry.57, section ".printk_index", align 4
@.str.59 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"phyid != 0\00", [21 x i8] zeroinitializer }, align 32
@cfcnfg_linkup_rsp._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.51, ptr @.str, i32 401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013caif:%s(): ERROR: Link Layer Device disappeared while connecting\0A\00", [60 x i8] zeroinitializer }, align 32
@cfcnfg_linkup_rsp._entry_ptr.62 = internal global ptr @cfcnfg_linkup_rsp._entry.60, section ".printk_index", align 4
@cfcnfg_linkup_rsp._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.51, ptr @.str, i32 405, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cfcnfg_linkup_rsp._entry_ptr.64 = internal global ptr @cfcnfg_linkup_rsp._entry.63, section ".printk_index", align 4
@cfcnfg_linkup_rsp._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.51, ptr @.str, i32 406, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cfcnfg_linkup_rsp._entry_ptr.67 = internal global ptr @cfcnfg_linkup_rsp._entry.66, section ".printk_index", align 4
@.str.68 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"phyinfo->id == phyid\00", [43 x i8] zeroinitializer }, align 32
@cfcnfg_linkup_rsp._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.51, ptr @.str, i32 407, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cfcnfg_linkup_rsp._entry_ptr.70 = internal global ptr @cfcnfg_linkup_rsp._entry.69, section ".printk_index", align 4
@.str.71 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"phyinfo->phy_layer != NULL\00", [37 x i8] zeroinitializer }, align 32
@cfcnfg_linkup_rsp._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.51, ptr @.str, i32 408, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cfcnfg_linkup_rsp._entry_ptr.73 = internal global ptr @cfcnfg_linkup_rsp._entry.72, section ".printk_index", align 4
@.str.74 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"phyinfo->phy_layer->id == phyid\00", [32 x i8] zeroinitializer }, align 32
@cfcnfg_linkup_rsp._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.51, ptr @.str, i32 435, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\013caif:%s(): Protocol error. Link setup response - unknown channel type\0A\00", [55 x i8] zeroinitializer }, align 32
@cfcnfg_linkup_rsp._entry_ptr.77 = internal global ptr @cfcnfg_linkup_rsp._entry.75, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.79 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 77, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 105, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 184, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 194, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 323, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 327, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 331, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 338, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 341, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 342, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 344, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 475, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 577, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 578, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 579, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 580, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 587, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 695, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 173, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant [10 x i8] c"protohead\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 209, i32 18 }
@___asan_gen_.210 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 723, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 381, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 391, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 396, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 397, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 401, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 405, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 406, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 407, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 408, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.269 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.270 = private constant [21 x i8] c"../net/caif/cfcnfg.c\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 435, i32 3 }
@llvm.compiler.used = appending global [92 x ptr] [ptr @__ksymtab_caif_connect_client, ptr @__ksymtab_caif_disconnect_client, ptr @__ksymtab_cfcnfg_add_phy_layer, ptr @__ksymtab_cfcnfg_del_phy_layer, ptr @__ksymtab_cfcnfg_set_phy_state, ptr @caif_connect_client._entry, ptr @caif_connect_client._entry.10, ptr @caif_connect_client._entry.13, ptr @caif_connect_client._entry.16, ptr @caif_connect_client._entry.19, ptr @caif_connect_client._entry.22, ptr @caif_connect_client._entry.25, ptr @caif_connect_client._entry_ptr, ptr @caif_connect_client._entry_ptr.12, ptr @caif_connect_client._entry_ptr.15, ptr @caif_connect_client._entry_ptr.18, ptr @caif_connect_client._entry_ptr.20, ptr @caif_connect_client._entry_ptr.23, ptr @caif_connect_client._entry_ptr.26, ptr @caif_disconnect_client._entry, ptr @caif_disconnect_client._entry_ptr, ptr @cfcnfg_add_phy_layer._entry, ptr @cfcnfg_add_phy_layer._entry_ptr, ptr @cfcnfg_del_phy_layer._entry, ptr @cfcnfg_del_phy_layer._entry.32, ptr @cfcnfg_del_phy_layer._entry.35, ptr @cfcnfg_del_phy_layer._entry.38, ptr @cfcnfg_del_phy_layer._entry.41, ptr @cfcnfg_del_phy_layer._entry_ptr, ptr @cfcnfg_del_phy_layer._entry_ptr.33, ptr @cfcnfg_del_phy_layer._entry_ptr.36, ptr @cfcnfg_del_phy_layer._entry_ptr.39, ptr @cfcnfg_del_phy_layer._entry_ptr.43, ptr @cfcnfg_linkup_rsp._entry, ptr @cfcnfg_linkup_rsp._entry.54, ptr @cfcnfg_linkup_rsp._entry.57, ptr @cfcnfg_linkup_rsp._entry.60, ptr @cfcnfg_linkup_rsp._entry.63, ptr @cfcnfg_linkup_rsp._entry.66, ptr @cfcnfg_linkup_rsp._entry.69, ptr @cfcnfg_linkup_rsp._entry.72, ptr @cfcnfg_linkup_rsp._entry.75, ptr @cfcnfg_linkup_rsp._entry_ptr, ptr @cfcnfg_linkup_rsp._entry_ptr.55, ptr @cfcnfg_linkup_rsp._entry_ptr.58, ptr @cfcnfg_linkup_rsp._entry_ptr.62, ptr @cfcnfg_linkup_rsp._entry_ptr.64, ptr @cfcnfg_linkup_rsp._entry_ptr.67, ptr @cfcnfg_linkup_rsp._entry_ptr.70, ptr @cfcnfg_linkup_rsp._entry_ptr.73, ptr @cfcnfg_linkup_rsp._entry_ptr.77, ptr @.str, ptr @cfcnfg_create.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @protohead, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.61, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @.str.76], section "llvm.metadata"
@0 = internal global [64 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfcnfg_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caif_disconnect_client._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caif_connect_client._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caif_connect_client._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caif_connect_client._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caif_connect_client._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caif_connect_client._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caif_connect_client._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caif_connect_client._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfcnfg_add_phy_layer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfcnfg_del_phy_layer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfcnfg_del_phy_layer._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfcnfg_del_phy_layer._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfcnfg_del_phy_layer._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfcnfg_del_phy_layer._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @protohead to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfcnfg_linkup_rsp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfcnfg_linkup_rsp._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfcnfg_linkup_rsp._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfcnfg_linkup_rsp._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfcnfg_linkup_rsp._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfcnfg_linkup_rsp._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfcnfg_linkup_rsp._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfcnfg_linkup_rsp._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfcnfg_linkup_rsp._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cfcnfg_create() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 77) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 160) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @cfmuxl_create() #10
  %mux = getelementptr inbounds %struct.cfcnfg, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %mux to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call4, ptr %mux, align 8
  %tobool6.not = icmp eq ptr %call4, null
  br i1 %tobool6.not, label %if.end.out_of_mem_crit_edge, label %if.end8

if.end.out_of_mem_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_of_mem

if.end8:                                          ; preds = %if.end
  %call9 = tail call ptr @cfctrl_create() #10
  %ctrl = getelementptr inbounds %struct.cfcnfg, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9, ptr %ctrl, align 4
  %tobool11.not = icmp eq ptr %call9, null
  br i1 %tobool11.not, label %if.end8.out_of_mem_crit_edge, label %if.end13

if.end8.out_of_mem_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_of_mem

if.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %call15 = tail call ptr @cfctrl_get_respfuncs(ptr noundef nonnull %call9) #10
  %enum_rsp = getelementptr inbounds %struct.cfctrl_rsp, ptr %call15, i32 0, i32 3
  %3 = ptrtoint ptr %enum_rsp to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @cfctrl_enum_resp, ptr %enum_rsp, align 4
  %linkerror_ind = getelementptr inbounds %struct.cfctrl_rsp, ptr %call15, i32 0, i32 2
  %4 = ptrtoint ptr %linkerror_ind to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @cfctrl_resp_func, ptr %linkerror_ind, align 4
  %linkdestroy_rsp = getelementptr inbounds %struct.cfctrl_rsp, ptr %call15, i32 0, i32 1
  %5 = ptrtoint ptr %linkdestroy_rsp to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @cfcnfg_linkdestroy_rsp, ptr %linkdestroy_rsp, align 4
  %sleep_rsp = getelementptr inbounds %struct.cfctrl_rsp, ptr %call15, i32 0, i32 4
  %6 = ptrtoint ptr %sleep_rsp to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @cfctrl_resp_func, ptr %sleep_rsp, align 4
  %wake_rsp = getelementptr inbounds %struct.cfctrl_rsp, ptr %call15, i32 0, i32 5
  %7 = ptrtoint ptr %wake_rsp to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @cfctrl_resp_func, ptr %wake_rsp, align 4
  %restart_rsp = getelementptr inbounds %struct.cfctrl_rsp, ptr %call15, i32 0, i32 6
  %8 = ptrtoint ptr %restart_rsp to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @cfctrl_resp_func, ptr %restart_rsp, align 4
  %radioset_rsp = getelementptr inbounds %struct.cfctrl_rsp, ptr %call15, i32 0, i32 7
  %9 = ptrtoint ptr %radioset_rsp to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @cfctrl_resp_func, ptr %radioset_rsp, align 4
  %10 = ptrtoint ptr %call15 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @cfcnfg_linkup_rsp, ptr %call15, align 4
  %reject_rsp = getelementptr inbounds %struct.cfctrl_rsp, ptr %call15, i32 0, i32 8
  %11 = ptrtoint ptr %reject_rsp to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @cfcnfg_reject_rsp, ptr %reject_rsp, align 4
  %phys = getelementptr inbounds %struct.cfcnfg, ptr %call7.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %phys, ptr %phys, align 4
  %prev.i = getelementptr inbounds %struct.cfcnfg, ptr %call7.i.i, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %phys, ptr %prev.i, align 8
  %14 = ptrtoint ptr %mux to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mux, align 8
  %16 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctrl, align 4
  %call18 = tail call i32 @cfmuxl_set_uplayer(ptr noundef %15, ptr noundef %17, i8 noundef zeroext 0) #10
  %18 = ptrtoint ptr %mux to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mux, align 8
  %20 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctrl, align 4
  %dn = getelementptr inbounds %struct.cflayer, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %dn to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %dn, align 4
  %23 = load ptr, ptr %ctrl, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i.i, ptr %23, align 4
  %lock = getelementptr inbounds %struct.cfcnfg, ptr %call7.i.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @cfcnfg_create.__key) #10
  br label %cleanup

out_of_mem:                                       ; preds = %if.end8.out_of_mem_crit_edge, %if.end.out_of_mem_crit_edge
  tail call void @synchronize_rcu() #10
  %25 = ptrtoint ptr %mux to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mux, align 8
  tail call void @kfree(ptr noundef %26) #10
  %ctrl26 = getelementptr inbounds %struct.cfcnfg, ptr %call7.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %ctrl26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ctrl26, align 4
  tail call void @kfree(ptr noundef %28) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %out_of_mem, %if.end13, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end13 ], [ null, %out_of_mem ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfmuxl_create() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfctrl_create() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfctrl_get_respfuncs(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @cfctrl_enum_resp() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @cfctrl_resp_func() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @cfcnfg_linkdestroy_rsp(ptr nocapture noundef %layer, i8 noundef zeroext %channel_id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cfcnfg_linkup_rsp(ptr noundef %layer, i8 noundef zeroext %channel_id, i32 noundef %serv, i8 noundef zeroext %phyid, ptr noundef %adapt_layer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %channel_id to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %channel_id)
  %cmp = icmp eq i8 %channel_id, 0
  br i1 %cmp, label %do.end, label %if.end9

do.end:                                           ; preds = %entry
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51) #14
  %cmp3.not = icmp eq ptr %adapt_layer, null
  br i1 %cmp3.not, label %do.end.cleanup_crit_edge, label %land.lhs.true

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %do.end
  %ctrlcmd = getelementptr inbounds %struct.cflayer, ptr %adapt_layer, i32 0, i32 5
  %0 = ptrtoint ptr %ctrlcmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrlcmd, align 4
  %cmp5.not = icmp eq ptr %1, null
  br i1 %cmp5.not, label %land.lhs.true.cleanup_crit_edge, label %if.then7

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %1(ptr noundef nonnull %adapt_layer, i32 noundef 5, i32 noundef 0) #10
  br label %cleanup

if.end9:                                          ; preds = %entry
  %2 = tail call i32 @llvm.read_register.i32(metadata !140) #10
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !150
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.end9.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end9.rcu_read_lock.exit_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end9
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.44, i32 noundef 696, ptr noundef nonnull @.str.45) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end9.rcu_read_lock.exit_crit_edge
  %cmp10 = icmp eq ptr %adapt_layer, null
  br i1 %cmp10, label %do.body13, label %do.body25

do.body13:                                        ; preds = %rcu_read_lock.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cfcnfg_linkup_rsp.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cfcnfg_linkup_rsp, %do.end22)) #10
          to label %if.then19 [label %do.end22], !srcloc !151

if.then19:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cfcnfg_linkup_rsp.__UNIQUE_ID_ddebug346, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.51) #10
  br label %do.end22

do.end22:                                         ; preds = %if.then19, %do.body13
  %ctrl = getelementptr inbounds %struct.cfcnfg, ptr %layer, i32 0, i32 1
  %6 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctrl, align 4
  %call23 = tail call i32 @cfctrl_linkdown_req(ptr noundef %7, i8 noundef zeroext %channel_id, ptr noundef null) #10
  br label %unlock

do.body25:                                        ; preds = %rcu_read_lock.exit
  %cmp26.not = icmp eq ptr %layer, null
  br i1 %cmp26.not, label %do.end31, label %do.body25.do.body70_crit_edge

do.body25.do.body70_crit_edge:                    ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body70

do.end31:                                         ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #12
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.56) #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 396, i32 noundef 9, ptr noundef null) #10
  br label %do.body70

do.body70:                                        ; preds = %do.end31, %do.body25.do.body70_crit_edge
  %conv71 = zext i8 %phyid to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %phyid)
  %cmp72.not = icmp eq i8 %phyid, 0
  br i1 %cmp72.not, label %do.end77, label %do.body70.do.end117_crit_edge

do.body70.do.end117_crit_edge:                    ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end117

do.end77:                                         ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #12
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.59) #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 397, i32 noundef 9, ptr noundef null) #10
  br label %do.end117

do.end117:                                        ; preds = %do.end77, %do.body70.do.end117_crit_edge
  %call.i410 = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i410)
  %tobool.not.i411 = icmp eq i32 %call.i410, 0
  br i1 %tobool.not.i411, label %land.lhs.true.i413, label %do.end117.do.end.i_crit_edge

do.end117.do.end.i_crit_edge:                     ; preds = %do.end117
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true.i413:                               ; preds = %do.end117
  %call1.i412 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i412)
  %tobool2.not.i = icmp eq i32 %call1.i412, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i413.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i413.do.end.i_crit_edge:            ; preds = %land.lhs.true.i413
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i413
  %.b27.i = load i1, ptr @cfcnfg_get_phyinfo_rcu.__warned, align 1
  br i1 %.b27.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i414

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then.i414:                                     ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cfcnfg_get_phyinfo_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 138, ptr noundef nonnull @.str.46) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i414, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i413.do.end.i_crit_edge, %do.end117.do.end.i_crit_edge
  %phys.i = getelementptr inbounds %struct.cfcnfg, ptr %layer, i32 0, i32 3
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %phy.0.in.i = phi ptr [ %phys.i, %do.end.i ], [ %phy.0.i, %for.body.i.for.cond.i_crit_edge ]
  %8 = ptrtoint ptr %phy.0.in.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %phy.0.i = load volatile ptr, ptr %phy.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %phy.0.i, %phys.i
  br i1 %cmp.not.i, label %for.cond.i.do.end124_crit_edge, label %for.body.i

for.cond.i.do.end124_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end124

for.body.i:                                       ; preds = %for.cond.i
  %id.i = getelementptr inbounds %struct.cfcnfg_phyinfo, ptr %phy.0.i, i32 0, i32 4
  %9 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id.i, align 4
  %cmp10.i = icmp eq i32 %10, %conv71
  br i1 %cmp10.i, label %cfcnfg_get_phyinfo_rcu.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

cfcnfg_get_phyinfo_rcu.exit:                      ; preds = %for.body.i
  %id.i.le = getelementptr inbounds %struct.cfcnfg_phyinfo, ptr %phy.0.i, i32 0, i32 4
  %cmp119 = icmp eq ptr %phy.0.i, null
  br i1 %cmp119, label %cfcnfg_get_phyinfo_rcu.exit.do.end124_crit_edge, label %do.body174

cfcnfg_get_phyinfo_rcu.exit.do.end124_crit_edge:  ; preds = %cfcnfg_get_phyinfo_rcu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end124

do.end124:                                        ; preds = %cfcnfg_get_phyinfo_rcu.exit.do.end124_crit_edge, %for.cond.i.do.end124_crit_edge
  %call126 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.51) #14
  br label %unlock

do.body174:                                       ; preds = %cfcnfg_get_phyinfo_rcu.exit
  %11 = ptrtoint ptr %id.i.le to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id.i.le, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv71)
  %cmp176 = icmp eq i32 %12, %conv71
  br i1 %cmp176, label %do.body174.do.body223_crit_edge, label %do.end181

do.body174.do.body223_crit_edge:                  ; preds = %do.body174
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body223

do.end181:                                        ; preds = %do.body174
  %call183 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.68) #14
  %13 = ptrtoint ptr %id.i.le to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id.i.le, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %conv71)
  %cmp187.not = icmp eq i32 %14, %conv71
  br i1 %cmp187.not, label %do.end181.do.body223_crit_edge, label %do.end206, !prof !152

do.end181.do.body223_crit_edge:                   ; preds = %do.end181
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body223

do.end206:                                        ; preds = %do.end181
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 406, i32 noundef 9, ptr noundef null) #10
  br label %do.body223

do.body223:                                       ; preds = %do.end206, %do.end181.do.body223_crit_edge, %do.body174.do.body223_crit_edge
  %phy_layer = getelementptr inbounds %struct.cfcnfg_phyinfo, ptr %phy.0.i, i32 0, i32 3
  %15 = ptrtoint ptr %phy_layer to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %phy_layer, align 4
  %cmp224.not = icmp eq ptr %16, null
  br i1 %cmp224.not, label %do.end229, label %do.body223.do.body270_crit_edge

do.body223.do.body270_crit_edge:                  ; preds = %do.body223
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body270

do.end229:                                        ; preds = %do.body223
  %call231 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.71) #14
  %17 = ptrtoint ptr %phy_layer to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %phy_layer, align 4
  %cmp234.not = icmp eq ptr %18, null
  br i1 %cmp234.not, label %do.end253, label %do.end229.do.body270_crit_edge, !prof !153

do.end229.do.body270_crit_edge:                   ; preds = %do.end229
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body270

do.end253:                                        ; preds = %do.end229
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 407, i32 noundef 9, ptr noundef null) #10
  br label %do.body270

do.body270:                                       ; preds = %do.end253, %do.end229.do.body270_crit_edge, %do.body223.do.body270_crit_edge
  %19 = ptrtoint ptr %phy_layer to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %phy_layer, align 4
  %id272 = getelementptr inbounds %struct.cflayer, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %id272 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id272, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %conv71)
  %cmp274 = icmp eq i32 %22, %conv71
  br i1 %cmp274, label %do.body270.do.end321_crit_edge, label %do.end279

do.body270.do.end321_crit_edge:                   ; preds = %do.body270
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end321

do.end279:                                        ; preds = %do.body270
  %call281 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.74) #14
  %23 = ptrtoint ptr %phy_layer to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %phy_layer, align 4
  %id284 = getelementptr inbounds %struct.cflayer, ptr %24, i32 0, i32 7
  %25 = ptrtoint ptr %id284 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %id284, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %conv71)
  %cmp286.not = icmp eq i32 %26, %conv71
  br i1 %cmp286.not, label %do.end279.do.end321_crit_edge, label %do.end305, !prof !152

do.end279.do.end321_crit_edge:                    ; preds = %do.end279
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end321

do.end305:                                        ; preds = %do.end279
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 408, i32 noundef 9, ptr noundef null) #10
  br label %do.end321

do.end321:                                        ; preds = %do.end305, %do.end279.do.end321_crit_edge, %do.body270.do.end321_crit_edge
  %id323 = getelementptr inbounds %struct.cflayer, ptr %adapt_layer, i32 0, i32 7
  %27 = ptrtoint ptr %id323 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv, ptr %id323, align 4
  %28 = zext i32 %serv to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i32 %serv, label %do.end343 [
    i32 1, label %sw.bb
    i32 4, label %sw.bb325
    i32 5, label %sw.bb328
    i32 6, label %sw.bb332
    i32 2, label %sw.bb335
    i32 3, label %sw.bb338
  ]

sw.bb:                                            ; preds = %do.end321
  call void @__sanitizer_cov_trace_pc() #12
  %dev_info = getelementptr inbounds %struct.cfcnfg_phyinfo, ptr %phy.0.i, i32 0, i32 6
  %call324 = tail call ptr @cfvei_create(i8 noundef zeroext %channel_id, ptr noundef %dev_info) #10
  br label %sw.epilog

sw.bb325:                                         ; preds = %do.end321
  call void @__sanitizer_cov_trace_pc() #12
  %dev_info326 = getelementptr inbounds %struct.cfcnfg_phyinfo, ptr %phy.0.i, i32 0, i32 6
  %call327 = tail call ptr @cfdgml_create(i8 noundef zeroext %channel_id, ptr noundef %dev_info326) #10
  br label %sw.epilog

sw.bb328:                                         ; preds = %do.end321
  call void @__sanitizer_cov_trace_pc() #12
  %dev_info329 = getelementptr inbounds %struct.cfcnfg_phyinfo, ptr %phy.0.i, i32 0, i32 6
  %29 = ptrtoint ptr %dev_info329 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev_info329, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 20
  %31 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mtu, align 4
  %call331 = tail call ptr @cfrfml_create(i8 noundef zeroext %channel_id, ptr noundef %dev_info329, i32 noundef %32) #10
  br label %sw.epilog

sw.bb332:                                         ; preds = %do.end321
  call void @__sanitizer_cov_trace_pc() #12
  %dev_info333 = getelementptr inbounds %struct.cfcnfg_phyinfo, ptr %phy.0.i, i32 0, i32 6
  %call334 = tail call ptr @cfutill_create(i8 noundef zeroext %channel_id, ptr noundef %dev_info333) #10
  br label %sw.epilog

sw.bb335:                                         ; preds = %do.end321
  call void @__sanitizer_cov_trace_pc() #12
  %dev_info336 = getelementptr inbounds %struct.cfcnfg_phyinfo, ptr %phy.0.i, i32 0, i32 6
  %call337 = tail call ptr @cfvidl_create(i8 noundef zeroext %channel_id, ptr noundef %dev_info336) #10
  br label %sw.epilog

sw.bb338:                                         ; preds = %do.end321
  call void @__sanitizer_cov_trace_pc() #12
  %dev_info339 = getelementptr inbounds %struct.cfcnfg_phyinfo, ptr %phy.0.i, i32 0, i32 6
  %call340 = tail call ptr @cfdbgl_create(i8 noundef zeroext %channel_id, ptr noundef %dev_info339) #10
  br label %sw.epilog

do.end343:                                        ; preds = %do.end321
  call void @__sanitizer_cov_trace_pc() #12
  %call345 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.51) #14
  br label %unlock

sw.epilog:                                        ; preds = %sw.bb338, %sw.bb335, %sw.bb332, %sw.bb328, %sw.bb325, %sw.bb
  %servicel.0 = phi ptr [ %call340, %sw.bb338 ], [ %call337, %sw.bb335 ], [ %call334, %sw.bb332 ], [ %call331, %sw.bb328 ], [ %call327, %sw.bb325 ], [ %call324, %sw.bb ]
  %tobool346.not = icmp eq ptr %servicel.0, null
  br i1 %tobool346.not, label %sw.epilog.unlock_crit_edge, label %if.end348

sw.epilog.unlock_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.end348:                                        ; preds = %sw.epilog
  %mux = getelementptr inbounds %struct.cfcnfg, ptr %layer, i32 0, i32 2
  %33 = ptrtoint ptr %mux to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mux, align 4
  %dn = getelementptr inbounds %struct.cflayer, ptr %servicel.0, i32 0, i32 1
  %35 = ptrtoint ptr %dn to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %dn, align 4
  %36 = load ptr, ptr %mux, align 4
  %call350 = tail call i32 @cfmuxl_set_uplayer(ptr noundef %36, ptr noundef nonnull %servicel.0, i8 noundef zeroext %channel_id) #10
  %37 = ptrtoint ptr %servicel.0 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %adapt_layer, ptr %servicel.0, align 4
  %dn351 = getelementptr inbounds %struct.cflayer, ptr %adapt_layer, i32 0, i32 1
  %38 = ptrtoint ptr %dn351 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %servicel.0, ptr %dn351, align 4
  %call.i416 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i416, label %if.end348.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i419

if.end348.rcu_read_unlock.exit_crit_edge:         ; preds = %if.end348
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i419:                               ; preds = %if.end348
  %call1.i417 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i417)
  %tobool.not.i418 = icmp eq i32 %call1.i417, 0
  br i1 %tobool.not.i418, label %land.lhs.true.i419.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i421

land.lhs.true.i419.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i419
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i421:                              ; preds = %land.lhs.true.i419
  %.b4.i420 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i420, label %land.lhs.true2.i421.rcu_read_unlock.exit_crit_edge, label %if.then.i422

land.lhs.true2.i421.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i421
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i422:                                     ; preds = %land.lhs.true2.i421
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.44, i32 noundef 724, ptr noundef nonnull @.str.49) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i422, %land.lhs.true2.i421.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i419.rcu_read_unlock.exit_crit_edge, %if.end348.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !154
  %39 = tail call i32 @llvm.read_register.i32(metadata !140) #10
  %and.i.i.i.i.i423 = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i.i.i423 to ptr
  %preempt_count.i.i.i.i424 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %preempt_count.i.i.i.i424 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %preempt_count.i.i.i.i424, align 4
  %sub.i.i.i = add i32 %42, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i424, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %ctrlcmd352 = getelementptr inbounds %struct.cflayer, ptr %servicel.0, i32 0, i32 5
  %43 = ptrtoint ptr %ctrlcmd352 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ctrlcmd352, align 4
  tail call void %44(ptr noundef nonnull %servicel.0, i32 noundef 3, i32 noundef 0) #10
  br label %cleanup

unlock:                                           ; preds = %sw.epilog.unlock_crit_edge, %do.end343, %do.end124, %do.end22
  %call.i426 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i426, label %unlock.rcu_read_unlock.exit437_crit_edge, label %land.lhs.true.i429

unlock.rcu_read_unlock.exit437_crit_edge:         ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit437

land.lhs.true.i429:                               ; preds = %unlock
  %call1.i427 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i427)
  %tobool.not.i428 = icmp eq i32 %call1.i427, 0
  br i1 %tobool.not.i428, label %land.lhs.true.i429.rcu_read_unlock.exit437_crit_edge, label %land.lhs.true2.i431

land.lhs.true.i429.rcu_read_unlock.exit437_crit_edge: ; preds = %land.lhs.true.i429
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit437

land.lhs.true2.i431:                              ; preds = %land.lhs.true.i429
  %.b4.i430 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i430, label %land.lhs.true2.i431.rcu_read_unlock.exit437_crit_edge, label %if.then.i432

land.lhs.true2.i431.rcu_read_unlock.exit437_crit_edge: ; preds = %land.lhs.true2.i431
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit437

if.then.i432:                                     ; preds = %land.lhs.true2.i431
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.44, i32 noundef 724, ptr noundef nonnull @.str.49) #10
  br label %rcu_read_unlock.exit437

rcu_read_unlock.exit437:                          ; preds = %if.then.i432, %land.lhs.true2.i431.rcu_read_unlock.exit437_crit_edge, %land.lhs.true.i429.rcu_read_unlock.exit437_crit_edge, %unlock.rcu_read_unlock.exit437_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !154
  %45 = tail call i32 @llvm.read_register.i32(metadata !140) #10
  %and.i.i.i.i.i433 = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i.i.i433 to ptr
  %preempt_count.i.i.i.i434 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i.i.i.i434 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i.i.i.i434, align 4
  %sub.i.i.i435 = add i32 %48, -1
  store volatile i32 %sub.i.i.i435, ptr %preempt_count.i.i.i.i434, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit437, %rcu_read_unlock.exit, %if.then7, %land.lhs.true.cleanup_crit_edge, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cfcnfg_reject_rsp(ptr nocapture noundef readnone %layer, i8 noundef zeroext %channel_id, ptr noundef %adapt_layer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not = icmp eq ptr %adapt_layer, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %ctrlcmd = getelementptr inbounds %struct.cflayer, ptr %adapt_layer, i32 0, i32 5
  %0 = ptrtoint ptr %ctrlcmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrlcmd, align 4
  %cmp1.not = icmp eq ptr %1, null
  br i1 %cmp1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %1(ptr noundef nonnull %adapt_layer, i32 noundef 5, i32 noundef 0) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfmuxl_set_uplayer(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cfcnfg_remove(ptr noundef %cfg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 119) #10
  %tobool.not = icmp eq ptr %cfg, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @synchronize_rcu() #10
  %mux = getelementptr inbounds %struct.cfcnfg, ptr %cfg, i32 0, i32 2
  %0 = ptrtoint ptr %mux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mux, align 4
  tail call void @kfree(ptr noundef %1) #10
  %ctrl = getelementptr inbounds %struct.cfcnfg, ptr %cfg, i32 0, i32 1
  %2 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl, align 4
  tail call void @cfctrl_remove(ptr noundef %3) #10
  tail call void @kfree(ptr noundef nonnull %cfg) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfctrl_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @caif_disconnect_client(ptr noundef %net, ptr noundef %adap_layer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @get_cfcnfg(ptr noundef %net) #10
  %cmp.not = icmp eq ptr %adap_layer, null
  br i1 %cmp.not, label %do.end, label %entry.do.end30_crit_edge

entry.do.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 184, i32 noundef 9, ptr noundef null) #10
  br label %do.end30

do.end30:                                         ; preds = %do.end, %entry.do.end30_crit_edge
  %ctrl = getelementptr inbounds %struct.cfcnfg, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl, align 4
  %call31 = tail call i32 @cfctrl_cancel_req(ptr noundef %1, ptr noundef %adap_layer) #10
  %id = getelementptr inbounds %struct.cflayer, ptr %adap_layer, i32 0, i32 7
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %conv32 = and i32 %3, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv32)
  %cmp33.not = icmp eq i32 %conv32, 0
  br i1 %cmp33.not, label %do.body43, label %if.then35

if.then35:                                        ; preds = %do.end30
  %conv = trunc i32 %3 to i8
  %mux = getelementptr inbounds %struct.cfcnfg, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %mux to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mux, align 4
  %call36 = tail call ptr @cfmuxl_remove_uplayer(ptr noundef %5, i8 noundef zeroext %conv) #10
  %6 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctrl, align 4
  %call38 = tail call i32 @cfctrl_linkdown_req(ptr noundef %7, i8 noundef zeroext %conv, ptr noundef %adap_layer) #10
  %cmp39.not = icmp eq ptr %call36, null
  br i1 %cmp39.not, label %if.then35.if.end59_crit_edge, label %if.then41

if.then35.if.end59_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

if.then41:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %call36 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %call36, align 4
  br label %if.end59

do.body43:                                        ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @caif_disconnect_client.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@caif_disconnect_client, %if.end59)) #10
          to label %if.then55 [label %if.end59], !srcloc !151

if.then55:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @caif_disconnect_client.__UNIQUE_ID_ddebug345, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.3) #10
  br label %if.end59

if.end59:                                         ; preds = %if.then55, %do.body43, %if.then41, %if.then35.if.end59_crit_edge
  tail call void @synchronize_rcu() #10
  %ctrlcmd = getelementptr inbounds %struct.cflayer, ptr %adap_layer, i32 0, i32 5
  %9 = ptrtoint ptr %ctrlcmd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctrlcmd, align 4
  %cmp60.not = icmp eq ptr %10, null
  br i1 %cmp60.not, label %if.end59.if.end64_crit_edge, label %if.then62

if.end59.if.end64_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

if.then62:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %10(ptr noundef %adap_layer, i32 noundef 4, i32 noundef 0) #10
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %if.end59.if.end64_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_cfcnfg(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfctrl_cancel_req(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfmuxl_remove_uplayer(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfctrl_linkdown_req(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @caif_connect_client(ptr noundef %net, ptr noundef %conn_req, ptr noundef %adap_layer, ptr nocapture noundef writeonly %ifindex, ptr nocapture noundef writeonly %proto_head, ptr nocapture noundef writeonly %proto_tail) #0 align 64 {
entry:
  %param = alloca %struct.cfctrl_link_param, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %param) #10
  %0 = call ptr @memset(ptr %param, i32 255, i32 288)
  %call = tail call ptr @get_cfcnfg(ptr noundef %net) #10
  %1 = tail call i32 @llvm.read_register.i32(metadata !140) #10
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !150
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.44, i32 noundef 696, ptr noundef nonnull @.str.45) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %5 = call ptr @memset(ptr %param, i32 0, i32 288)
  %priority.i = getelementptr inbounds %struct.caif_connect_request, ptr %conn_req, i32 0, i32 2
  %6 = ptrtoint ptr %priority.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %priority.i, align 4
  %8 = trunc i32 %7 to i8
  %conv.i = sub i8 32, %8
  %priority1.i = getelementptr inbounds %struct.cfctrl_link_param, ptr %param, i32 0, i32 1
  %9 = ptrtoint ptr %priority1.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv.i, ptr %priority1.i, align 4
  %ifindex.i = getelementptr inbounds %struct.caif_connect_request, ptr %conn_req, i32 0, i32 4
  %10 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ifindex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not.i = icmp eq i32 %11, 0
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i211

if.then.i211:                                     ; preds = %rcu_read_lock.exit
  %call.i.i = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.then.i211.do.end.i.i_crit_edge

if.then.i211.do.end.i.i_crit_edge:                ; preds = %if.then.i211
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i211
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.do.end.i.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i.i.do.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %.b29.i.i = load i1, ptr @cfcnfg_get_id_from_ifi.__warned, align 1
  br i1 %.b29.i.i, label %land.lhs.true3.i.i.do.end.i.i_crit_edge, label %if.then.i.i

land.lhs.true3.i.i.do.end.i.i_crit_edge:          ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cfcnfg_get_id_from_ifi.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 173, ptr noundef nonnull @.str.46) #10
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true3.i.i.do.end.i.i_crit_edge, %land.lhs.true.i.i.do.end.i.i_crit_edge, %if.then.i211.do.end.i.i_crit_edge
  %phys.i.i = getelementptr inbounds %struct.cfcnfg, ptr %call, i32 0, i32 3
  %12 = ptrtoint ptr %phys.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %phy.031.i.i = load volatile ptr, ptr %phys.i.i, align 4
  %cmp.not32.i.i = icmp eq ptr %phy.031.i.i, %phys.i.i
  br i1 %cmp.not32.i.i, label %do.end.i.i.unlock_crit_edge, label %do.end.i.i.for.body.i.i_crit_edge

do.end.i.i.for.body.i.i_crit_edge:                ; preds = %do.end.i.i
  br label %for.body.i.i

do.end.i.i.unlock_crit_edge:                      ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %do.end.i.i.for.body.i.i_crit_edge
  %phy.033.i.i = phi ptr [ %phy.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %phy.031.i.i, %do.end.i.i.for.body.i.i_crit_edge ]
  %ifindex.i.i = getelementptr inbounds %struct.cfcnfg_phyinfo, ptr %phy.033.i.i, i32 0, i32 7
  %13 = ptrtoint ptr %ifindex.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ifindex.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %11)
  %cmp10.i.i = icmp eq i32 %14, %11
  br i1 %cmp10.i.i, label %land.lhs.true11.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

land.lhs.true11.i.i:                              ; preds = %for.body.i.i
  %up.i.i = getelementptr inbounds %struct.cfcnfg_phyinfo, ptr %phy.033.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %up.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %up.i.i, align 4, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool12.not.i.i = icmp eq i8 %16, 0
  br i1 %tobool12.not.i.i, label %land.lhs.true11.i.i.for.inc.i.i_crit_edge, label %cfcnfg_get_id_from_ifi.exit.i

land.lhs.true11.i.i.for.inc.i.i_crit_edge:        ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true11.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %17 = ptrtoint ptr %phy.033.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %phy.0.i.i = load volatile ptr, ptr %phy.033.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %phy.0.i.i, %phys.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.unlock_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.unlock_crit_edge:                     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

cfcnfg_get_id_from_ifi.exit.i:                    ; preds = %land.lhs.true11.i.i
  %id.i.i = getelementptr inbounds %struct.cfcnfg_phyinfo, ptr %phy.033.i.i, i32 0, i32 4
  %18 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp4.i = icmp slt i32 %19, 0
  br i1 %cmp4.i, label %cfcnfg_get_id_from_ifi.exit.i.unlock_crit_edge, label %cfcnfg_get_id_from_ifi.exit.i.if.end16.i_crit_edge

cfcnfg_get_id_from_ifi.exit.i.if.end16.i_crit_edge: ; preds = %cfcnfg_get_id_from_ifi.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i

cfcnfg_get_id_from_ifi.exit.i.unlock_crit_edge:   ; preds = %cfcnfg_get_id_from_ifi.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.else.i:                                        ; preds = %rcu_read_lock.exit
  %link_selector.i = getelementptr inbounds %struct.caif_connect_request, ptr %conn_req, i32 0, i32 3
  %20 = ptrtoint ptr %link_selector.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %link_selector.i, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %21, label %if.else.i.unlock_crit_edge [
    i32 0, label %if.else.i.sw.epilog.i_crit_edge
    i32 1, label %sw.bb8.i
  ]

if.else.i.sw.epilog.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.else.i.unlock_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

sw.bb8.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb8.i, %if.else.i.sw.epilog.i_crit_edge
  %pref.0.i = phi i32 [ 1, %sw.bb8.i ], [ 2, %if.else.i.sw.epilog.i_crit_edge ]
  %call.i140.i = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i140.i)
  %tobool.not.i141.i = icmp eq i32 %call.i140.i, 0
  br i1 %tobool.not.i141.i, label %land.lhs.true.i144.i, label %sw.epilog.i.do.end.i148.i_crit_edge

sw.epilog.i.do.end.i148.i_crit_edge:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i148.i

land.lhs.true.i144.i:                             ; preds = %sw.epilog.i
  %call1.i142.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i142.i)
  %tobool2.not.i143.i = icmp eq i32 %call1.i142.i, 0
  br i1 %tobool2.not.i143.i, label %land.lhs.true.i144.i.do.end.i148.i_crit_edge, label %land.lhs.true3.i145.i

land.lhs.true.i144.i.do.end.i148.i_crit_edge:     ; preds = %land.lhs.true.i144.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i148.i

land.lhs.true3.i145.i:                            ; preds = %land.lhs.true.i144.i
  %.b82.i.i = load i1, ptr @cfcnfg_get_phyid.__warned, align 1
  br i1 %.b82.i.i, label %land.lhs.true3.i145.i.do.end.i148.i_crit_edge, label %if.then.i146.i

land.lhs.true3.i145.i.do.end.i148.i_crit_edge:    ; preds = %land.lhs.true3.i145.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i148.i

if.then.i146.i:                                   ; preds = %land.lhs.true3.i145.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cfcnfg_get_phyid.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 154, ptr noundef nonnull @.str.46) #10
  br label %do.end.i148.i

do.end.i148.i:                                    ; preds = %if.then.i146.i, %land.lhs.true3.i145.i.do.end.i148.i_crit_edge, %land.lhs.true.i144.i.do.end.i148.i_crit_edge, %sw.epilog.i.do.end.i148.i_crit_edge
  %phys.i147.i = getelementptr inbounds %struct.cfcnfg, ptr %call, i32 0, i32 3
  %23 = ptrtoint ptr %phys.i147.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %phy.085.i.i = load volatile ptr, ptr %phys.i147.i, align 4
  %cmp.not86.i.i = icmp eq ptr %phy.085.i.i, %phys.i147.i
  br i1 %cmp.not86.i.i, label %do.end.i148.i.do.body26.i.i_crit_edge, label %do.end.i148.i.for.body.i150.i_crit_edge

do.end.i148.i.for.body.i150.i_crit_edge:          ; preds = %do.end.i148.i
  br label %for.body.i150.i

do.end.i148.i.do.body26.i.i_crit_edge:            ; preds = %do.end.i148.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body26.i.i

for.body.i150.i:                                  ; preds = %for.inc.i154.i.for.body.i150.i_crit_edge, %do.end.i148.i.for.body.i150.i_crit_edge
  %phy.087.i.i = phi ptr [ %phy.0.i152.i, %for.inc.i154.i.for.body.i150.i_crit_edge ], [ %phy.085.i.i, %do.end.i148.i.for.body.i150.i_crit_edge ]
  %up.i149.i = getelementptr inbounds %struct.cfcnfg_phyinfo, ptr %phy.087.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %up.i149.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %up.i149.i, align 4, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool10.not.i.i = icmp eq i8 %25, 0
  br i1 %tobool10.not.i.i, label %for.body.i150.i.for.inc.i154.i_crit_edge, label %land.lhs.true11.i151.i

for.body.i150.i.for.inc.i154.i_crit_edge:         ; preds = %for.body.i150.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i154.i

land.lhs.true11.i151.i:                           ; preds = %for.body.i150.i
  %pref.i.i = getelementptr inbounds %struct.cfcnfg_phyinfo, ptr %phy.087.i.i, i32 0, i32 5
  %26 = ptrtoint ptr %pref.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pref.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %pref.0.i)
  %cmp12.i.i = icmp eq i32 %27, %pref.0.i
  br i1 %cmp12.i.i, label %land.lhs.true13.i.i, label %land.lhs.true11.i151.i.for.inc.i154.i_crit_edge

land.lhs.true11.i151.i.for.inc.i154.i_crit_edge:  ; preds = %land.lhs.true11.i151.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i154.i

land.lhs.true13.i.i:                              ; preds = %land.lhs.true11.i151.i
  %frm_layer.i.i = getelementptr inbounds %struct.cfcnfg_phyinfo, ptr %phy.087.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %frm_layer.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %frm_layer.i.i, align 4
  %cmp14.not.i.i = icmp eq ptr %29, null
  br i1 %cmp14.not.i.i, label %land.lhs.true13.i.i.for.inc.i154.i_crit_edge, label %land.lhs.true13.i.i.cfcnfg_get_phyid.exit.i_crit_edge

land.lhs.true13.i.i.cfcnfg_get_phyid.exit.i_crit_edge: ; preds = %land.lhs.true13.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cfcnfg_get_phyid.exit.i

land.lhs.true13.i.i.for.inc.i154.i_crit_edge:     ; preds = %land.lhs.true13.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i154.i

for.inc.i154.i:                                   ; preds = %land.lhs.true13.i.i.for.inc.i154.i_crit_edge, %land.lhs.true11.i151.i.for.inc.i154.i_crit_edge, %for.body.i150.i.for.inc.i154.i_crit_edge
  %30 = ptrtoint ptr %phy.087.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %phy.0.i152.i = load volatile ptr, ptr %phy.087.i.i, align 4
  %cmp.not.i153.i = icmp eq ptr %phy.0.i152.i, %phys.i147.i
  br i1 %cmp.not.i153.i, label %for.inc.i154.i.do.body26.i.i_crit_edge, label %for.inc.i154.i.for.body.i150.i_crit_edge

for.inc.i154.i.for.body.i150.i_crit_edge:         ; preds = %for.inc.i154.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i150.i

for.inc.i154.i.do.body26.i.i_crit_edge:           ; preds = %for.inc.i154.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body26.i.i

do.body26.i.i:                                    ; preds = %for.inc.i154.i.do.body26.i.i_crit_edge, %do.end.i148.i.do.body26.i.i_crit_edge
  %call27.i.i = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i)
  %tobool28.not.i.i = icmp eq i32 %call27.i.i, 0
  br i1 %tobool28.not.i.i, label %land.lhs.true29.i.i, label %do.body26.i.i.for.cond47.i.i.preheader_crit_edge

do.body26.i.i.for.cond47.i.i.preheader_crit_edge: ; preds = %do.body26.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond47.i.i.preheader

land.lhs.true29.i.i:                              ; preds = %do.body26.i.i
  %call30.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i.i)
  %tobool31.not.i.i = icmp eq i32 %call30.i.i, 0
  br i1 %tobool31.not.i.i, label %land.lhs.true29.i.i.for.cond47.i.i.preheader_crit_edge, label %land.lhs.true32.i.i

land.lhs.true29.i.i.for.cond47.i.i.preheader_crit_edge: ; preds = %land.lhs.true29.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond47.i.i.preheader

land.lhs.true32.i.i:                              ; preds = %land.lhs.true29.i.i
  %.b8081.i.i = load i1, ptr @cfcnfg_get_phyid.__warned.47, align 1
  br i1 %.b8081.i.i, label %land.lhs.true32.i.i.for.cond47.i.i.preheader_crit_edge, label %if.then34.i.i

land.lhs.true32.i.i.for.cond47.i.i.preheader_crit_edge: ; preds = %land.lhs.true32.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond47.i.i.preheader

if.then34.i.i:                                    ; preds = %land.lhs.true32.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cfcnfg_get_phyid.__warned.47, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 162, ptr noundef nonnull @.str.46) #10
  br label %for.cond47.i.i.preheader

for.cond47.i.i.preheader:                         ; preds = %if.then34.i.i, %land.lhs.true32.i.i.for.cond47.i.i.preheader_crit_edge, %land.lhs.true29.i.i.for.cond47.i.i.preheader_crit_edge, %do.body26.i.i.for.cond47.i.i.preheader_crit_edge
  br label %for.cond47.i.i

for.cond47.i.i:                                   ; preds = %for.body51.i.i.for.cond47.i.i_crit_edge, %for.cond47.i.i.preheader
  %phy.1.in.i.i = phi ptr [ %phy.1.i.i, %for.body51.i.i.for.cond47.i.i_crit_edge ], [ %phys.i147.i, %for.cond47.i.i.preheader ]
  %31 = ptrtoint ptr %phy.1.in.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %phy.1.i.i = load volatile ptr, ptr %phy.1.in.i.i, align 4
  %cmp50.not.i.i = icmp eq ptr %phy.1.i.i, %phys.i147.i
  br i1 %cmp50.not.i.i, label %for.cond47.i.i.unlock_crit_edge, label %for.body51.i.i

for.cond47.i.i.unlock_crit_edge:                  ; preds = %for.cond47.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

for.body51.i.i:                                   ; preds = %for.cond47.i.i
  %up52.i.i = getelementptr inbounds %struct.cfcnfg_phyinfo, ptr %phy.1.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %up52.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %up52.i.i, align 4, !range !155
  %tobool53.not.i.i = icmp eq i8 %33, 0
  br i1 %tobool53.not.i.i, label %for.body51.i.i.for.cond47.i.i_crit_edge, label %for.body51.i.i.cfcnfg_get_phyid.exit.i_crit_edge

for.body51.i.i.cfcnfg_get_phyid.exit.i_crit_edge: ; preds = %for.body51.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cfcnfg_get_phyid.exit.i

for.body51.i.i.for.cond47.i.i_crit_edge:          ; preds = %for.body51.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond47.i.i

cfcnfg_get_phyid.exit.i:                          ; preds = %for.body51.i.i.cfcnfg_get_phyid.exit.i_crit_edge, %land.lhs.true13.i.i.cfcnfg_get_phyid.exit.i_crit_edge
  %phy.087.i.pn.i = phi ptr [ %phy.1.i.i, %for.body51.i.i.cfcnfg_get_phyid.exit.i_crit_edge ], [ %phy.087.i.i, %land.lhs.true13.i.i.cfcnfg_get_phyid.exit.i_crit_edge ]
  %id.i = getelementptr inbounds %struct.cfcnfg_phyinfo, ptr %phy.087.i.pn.i, i32 0, i32 6, i32 1
  %34 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %id.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %cfcnfg_get_phyid.exit.i, %cfcnfg_get_id_from_ifi.exit.i.if.end16.i_crit_edge
  %.sink.i = phi i32 [ %35, %cfcnfg_get_phyid.exit.i ], [ %19, %cfcnfg_get_id_from_ifi.exit.i.if.end16.i_crit_edge ]
  %conv14.i = trunc i32 %.sink.i to i8
  %phyid15.i = getelementptr inbounds %struct.cfctrl_link_param, ptr %param, i32 0, i32 2
  %36 = ptrtoint ptr %phyid15.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv14.i, ptr %phyid15.i, align 1
  %37 = ptrtoint ptr %conn_req to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %conn_req, align 4
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %38, label %if.end16.i.unlock_crit_edge [
    i32 0, label %sw.bb17.i
    i32 1, label %sw.bb26.i
    i32 2, label %sw.bb32.i
    i32 4, label %sw.bb40.i
    i32 3, label %sw.bb52.i
    i32 5, label %sw.bb79.i
  ]

if.end16.i.unlock_crit_edge:                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

sw.bb17.i:                                        ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %param, align 4
  %u.i = getelementptr inbounds %struct.caif_connect_request, ptr %conn_req, i32 0, i32 1, i32 1
  %41 = ptrtoint ptr %u.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %u.i, align 4
  %43 = lshr i8 %42, 2
  %44 = and i8 %43, 3
  %endpoint.i = getelementptr inbounds %struct.cfctrl_link_param, ptr %param, i32 0, i32 3
  %45 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %endpoint.i, align 2
  %46 = and i8 %42, 3
  %chtype.i = getelementptr inbounds %struct.cfctrl_link_param, ptr %param, i32 0, i32 4
  %47 = ptrtoint ptr %chtype.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %chtype.i, align 1
  br label %if.end

sw.bb26.i:                                        ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 4, ptr %param, align 4
  %chtype28.i = getelementptr inbounds %struct.cfctrl_link_param, ptr %param, i32 0, i32 4
  %49 = ptrtoint ptr %chtype28.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %chtype28.i, align 1
  %u30.i = getelementptr inbounds %struct.caif_connect_request, ptr %conn_req, i32 0, i32 1, i32 1
  %50 = ptrtoint ptr %u30.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %u30.i, align 4
  %u31.i = getelementptr inbounds %struct.cfctrl_link_param, ptr %param, i32 0, i32 5
  %52 = ptrtoint ptr %u31.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %u31.i, align 4
  br label %if.end

sw.bb32.i:                                        ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 4, ptr %param, align 4
  %chtype34.i = getelementptr inbounds %struct.cfctrl_link_param, ptr %param, i32 0, i32 4
  %54 = ptrtoint ptr %chtype34.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 3, ptr %chtype34.i, align 1
  %endpoint35.i = getelementptr inbounds %struct.cfctrl_link_param, ptr %param, i32 0, i32 3
  %55 = ptrtoint ptr %endpoint35.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %endpoint35.i, align 2
  %u37.i = getelementptr inbounds %struct.caif_connect_request, ptr %conn_req, i32 0, i32 1, i32 1
  %56 = ptrtoint ptr %u37.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %u37.i, align 4
  %u38.i = getelementptr inbounds %struct.cfctrl_link_param, ptr %param, i32 0, i32 5
  %58 = ptrtoint ptr %u38.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %u38.i, align 4
  br label %if.end

sw.bb40.i:                                        ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  %59 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 5, ptr %param, align 4
  %u43.i = getelementptr inbounds %struct.caif_connect_request, ptr %conn_req, i32 0, i32 1, i32 1
  %60 = ptrtoint ptr %u43.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %u43.i, align 4
  %u44.i = getelementptr inbounds %struct.cfctrl_link_param, ptr %param, i32 0, i32 5
  %62 = ptrtoint ptr %u44.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %u44.i, align 4
  %volume.i = getelementptr inbounds %struct.cfctrl_link_param, ptr %param, i32 0, i32 5, i32 0, i32 1
  %volume49.i = getelementptr inbounds %struct.caif_connect_request, ptr %conn_req, i32 0, i32 1, i32 1, i32 0, i32 1
  %call51.i = call i32 @strlcpy(ptr noundef %volume.i, ptr noundef %volume49.i, i32 noundef 20) #10
  br label %if.end

sw.bb52.i:                                        ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  %63 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 6, ptr %param, align 4
  %endpoint54.i = getelementptr inbounds %struct.cfctrl_link_param, ptr %param, i32 0, i32 3
  %64 = ptrtoint ptr %endpoint54.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %endpoint54.i, align 2
  %chtype55.i = getelementptr inbounds %struct.cfctrl_link_param, ptr %param, i32 0, i32 4
  %65 = ptrtoint ptr %chtype55.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %chtype55.i, align 1
  %name.i = getelementptr inbounds %struct.cfctrl_link_param, ptr %param, i32 0, i32 5, i32 0, i32 1
  %u59.i = getelementptr inbounds %struct.caif_connect_request, ptr %conn_req, i32 0, i32 1, i32 1
  %call61.i = call i32 @strlcpy(ptr noundef %name.i, ptr noundef %u59.i, i32 noundef 16) #10
  %param.i = getelementptr inbounds %struct.caif_connect_request, ptr %conn_req, i32 0, i32 5
  %66 = ptrtoint ptr %param.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %param.i, align 4
  %paramlen.i = getelementptr inbounds %struct.cfctrl_link_param, ptr %param, i32 0, i32 5, i32 1, i32 252
  %68 = call i16 @llvm.umin.i16(i16 %67, i16 255) #10
  %69 = ptrtoint ptr %paramlen.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %68, ptr %paramlen.i, align 4
  %params.i = getelementptr inbounds %struct.cfctrl_link_param, ptr %param, i32 0, i32 5, i32 0, i32 1, i32 16
  %data.i = getelementptr inbounds %struct.caif_connect_request, ptr %conn_req, i32 0, i32 5, i32 1
  %conv78.i = zext i16 %68 to i32
  %70 = call ptr @memcpy(ptr %params.i, ptr %data.i, i32 %conv78.i)
  br label %if.end

sw.bb79.i:                                        ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  %71 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 3, ptr %param, align 4
  %u82.i = getelementptr inbounds %struct.caif_connect_request, ptr %conn_req, i32 0, i32 1, i32 1
  %service83.i = getelementptr inbounds %struct.anon.124, ptr %u82.i, i32 0, i32 1
  %72 = ptrtoint ptr %service83.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %service83.i, align 1
  %endpoint84.i = getelementptr inbounds %struct.cfctrl_link_param, ptr %param, i32 0, i32 3
  %74 = ptrtoint ptr %endpoint84.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %endpoint84.i, align 2
  %75 = ptrtoint ptr %u82.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %u82.i, align 4
  %chtype88.i = getelementptr inbounds %struct.cfctrl_link_param, ptr %param, i32 0, i32 4
  %77 = ptrtoint ptr %chtype88.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %chtype88.i, align 1
  br label %if.end

if.end:                                           ; preds = %sw.bb79.i, %sw.bb52.i, %sw.bb40.i, %sw.bb32.i, %sw.bb26.i, %sw.bb17.i
  %78 = ptrtoint ptr %phyid15.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %phyid15.i, align 1
  %call.i212 = call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i212)
  %tobool.not.i213 = icmp eq i32 %call.i212, 0
  br i1 %tobool.not.i213, label %land.lhs.true.i215, label %if.end.do.end.i_crit_edge

if.end.do.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true.i215:                               ; preds = %if.end
  %call1.i214 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i214)
  %tobool2.not.i = icmp eq i32 %call1.i214, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i215.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i215.do.end.i_crit_edge:            ; preds = %land.lhs.true.i215
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i215
  %.b27.i = load i1, ptr @cfcnfg_get_phyinfo_rcu.__warned, align 1
  br i1 %.b27.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i216

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then.i216:                                     ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cfcnfg_get_phyinfo_rcu.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 138, ptr noundef nonnull @.str.46) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i216, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i215.do.end.i_crit_edge, %if.end.do.end.i_crit_edge
  %phys.i = getelementptr inbounds %struct.cfcnfg, ptr %call, i32 0, i32 3
  %conv.i217 = zext i8 %79 to i32
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %phy.0.in.i = phi ptr [ %phys.i, %do.end.i ], [ %phy.0.i, %for.body.i.for.cond.i_crit_edge ]
  %80 = ptrtoint ptr %phy.0.in.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %phy.0.i = load volatile ptr, ptr %phy.0.in.i, align 4
  %cmp.not.i218 = icmp eq ptr %phy.0.i, %phys.i
  br i1 %cmp.not.i218, label %for.cond.i.unlock_crit_edge, label %for.body.i

for.cond.i.unlock_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

for.body.i:                                       ; preds = %for.cond.i
  %id.i219 = getelementptr inbounds %struct.cfcnfg_phyinfo, ptr %phy.0.i, i32 0, i32 4
  %81 = ptrtoint ptr %id.i219 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %id.i219, align 4
  %cmp10.i = icmp eq i32 %82, %conv.i217
  br i1 %cmp10.i, label %cfcnfg_get_phyinfo_rcu.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

cfcnfg_get_phyinfo_rcu.exit:                      ; preds = %for.body.i
  %id.i219.le = getelementptr inbounds %struct.cfcnfg_phyinfo, ptr %phy.0.i, i32 0, i32 4
  %tobool3.not = icmp eq ptr %phy.0.i, null
  br i1 %tobool3.not, label %cfcnfg_get_phyinfo_rcu.exit.unlock_crit_edge, label %if.end5

cfcnfg_get_phyinfo_rcu.exit.unlock_crit_edge:     ; preds = %cfcnfg_get_phyinfo_rcu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.end5:                                          ; preds = %cfcnfg_get_phyinfo_rcu.exit
  %cmp = icmp eq ptr %adap_layer, null
  br i1 %cmp, label %if.end5.unlock.sink.split_crit_edge, label %if.end8

if.end5.unlock.sink.split_crit_edge:              ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock.sink.split

if.end8:                                          ; preds = %if.end5
  %receive = getelementptr inbounds %struct.cflayer, ptr %adap_layer, i32 0, i32 3
  %83 = ptrtoint ptr %receive to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %receive, align 4
  %cmp9 = icmp eq ptr %84, null
  br i1 %cmp9, label %if.end8.unlock.sink.split_crit_edge, label %if.end16

if.end8.unlock.sink.split_crit_edge:              ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock.sink.split

if.end16:                                         ; preds = %if.end8
  %ctrlcmd = getelementptr inbounds %struct.cflayer, ptr %adap_layer, i32 0, i32 5
  %85 = ptrtoint ptr %ctrlcmd to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ctrlcmd, align 4
  %cmp17 = icmp eq ptr %86, null
  br i1 %cmp17, label %if.end16.unlock.sink.split_crit_edge, label %if.end24

if.end16.unlock.sink.split_crit_edge:             ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock.sink.split

if.end24:                                         ; preds = %if.end16
  %frm_layer = getelementptr inbounds %struct.cfcnfg_phyinfo, ptr %phy.0.i, i32 0, i32 2
  %87 = ptrtoint ptr %frm_layer to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %frm_layer, align 4
  %cmp25 = icmp eq ptr %88, null
  br i1 %cmp25, label %if.end24.unlock.sink.split_crit_edge, label %do.body33

if.end24.unlock.sink.split_crit_edge:             ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock.sink.split

do.body33:                                        ; preds = %if.end24
  %89 = ptrtoint ptr %phyid15.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %phyid15.i, align 1
  %conv = zext i8 %90 to i32
  %91 = ptrtoint ptr %id.i219.le to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %id.i219.le, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %92, i32 %conv)
  %cmp35 = icmp eq i32 %92, %conv
  br i1 %cmp35, label %do.body33.do.body77_crit_edge, label %do.end40

do.body33.do.body77_crit_edge:                    ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body77

do.end40:                                         ; preds = %do.body33
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.21) #14
  %93 = ptrtoint ptr %phyid15.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %phyid15.i, align 1
  %conv44 = zext i8 %94 to i32
  %95 = ptrtoint ptr %id.i219.le to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %id.i219.le, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %96, i32 %conv44)
  %cmp46.not = icmp eq i32 %96, %conv44
  br i1 %cmp46.not, label %do.end40.do.body77_crit_edge, label %do.end60, !prof !152

do.end40.do.body77_crit_edge:                     ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body77

do.end60:                                         ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 341, i32 noundef 9, ptr noundef null) #10
  br label %do.body77

do.body77:                                        ; preds = %do.end60, %do.end40.do.body77_crit_edge, %do.body33.do.body77_crit_edge
  %97 = ptrtoint ptr %frm_layer to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %frm_layer, align 4
  %id79 = getelementptr inbounds %struct.cflayer, ptr %98, i32 0, i32 7
  %99 = ptrtoint ptr %id79 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %id79, align 4
  %101 = ptrtoint ptr %phyid15.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %phyid15.i, align 1
  %conv81 = zext i8 %102 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %conv81)
  %cmp82 = icmp eq i32 %100, %conv81
  br i1 %cmp82, label %do.body77.do.body131_crit_edge, label %do.end87

do.body77.do.body131_crit_edge:                   ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body131

do.end87:                                         ; preds = %do.body77
  %call89 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.24) #14
  %103 = ptrtoint ptr %frm_layer to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %frm_layer, align 4
  %id92 = getelementptr inbounds %struct.cflayer, ptr %104, i32 0, i32 7
  %105 = ptrtoint ptr %id92 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %id92, align 4
  %107 = ptrtoint ptr %phyid15.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %phyid15.i, align 1
  %conv94 = zext i8 %108 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %106, i32 %conv94)
  %cmp95.not = icmp eq i32 %106, %conv94
  br i1 %cmp95.not, label %do.end87.do.body131_crit_edge, label %do.end114, !prof !152

do.end87.do.body131_crit_edge:                    ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body131

do.end114:                                        ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 343, i32 noundef 9, ptr noundef null) #10
  br label %do.body131

do.body131:                                       ; preds = %do.end114, %do.end87.do.body131_crit_edge, %do.body77.do.body131_crit_edge
  %phy_layer = getelementptr inbounds %struct.cfcnfg_phyinfo, ptr %phy.0.i, i32 0, i32 3
  %109 = ptrtoint ptr %phy_layer to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %phy_layer, align 4
  %id132 = getelementptr inbounds %struct.cflayer, ptr %110, i32 0, i32 7
  %111 = ptrtoint ptr %id132 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %id132, align 4
  %113 = ptrtoint ptr %phyid15.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %phyid15.i, align 1
  %conv134 = zext i8 %114 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %112, i32 %conv134)
  %cmp135 = icmp eq i32 %112, %conv134
  br i1 %cmp135, label %do.body131.do.end183_crit_edge, label %do.end140

do.body131.do.end183_crit_edge:                   ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end183

do.end140:                                        ; preds = %do.body131
  %call142 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.27) #14
  %115 = ptrtoint ptr %phy_layer to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %phy_layer, align 4
  %id145 = getelementptr inbounds %struct.cflayer, ptr %116, i32 0, i32 7
  %117 = ptrtoint ptr %id145 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %id145, align 4
  %119 = ptrtoint ptr %phyid15.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %phyid15.i, align 1
  %conv147 = zext i8 %120 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %118, i32 %conv147)
  %cmp148.not = icmp eq i32 %118, %conv147
  br i1 %cmp148.not, label %do.end140.do.end183_crit_edge, label %do.end167, !prof !152

do.end140.do.end183_crit_edge:                    ; preds = %do.end140
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end183

do.end167:                                        ; preds = %do.end140
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 345, i32 noundef 9, ptr noundef null) #10
  br label %do.end183

do.end183:                                        ; preds = %do.end167, %do.end140.do.end183_crit_edge, %do.body131.do.end183_crit_edge
  %ifindex184 = getelementptr inbounds %struct.cfcnfg_phyinfo, ptr %phy.0.i, i32 0, i32 7
  %121 = ptrtoint ptr %ifindex184 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %ifindex184, align 4
  %123 = ptrtoint ptr %ifindex to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %ifindex, align 4
  %124 = ptrtoint ptr %proto_tail to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 2, ptr %proto_tail, align 4
  %125 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %param, align 4
  %arrayidx = getelementptr [15 x i32], ptr @protohead, i32 0, i32 %126
  %127 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx, align 4
  %head_room = getelementptr inbounds %struct.cfcnfg_phyinfo, ptr %phy.0.i, i32 0, i32 8
  %129 = ptrtoint ptr %head_room to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %head_room, align 4
  %add = add i32 %130, %128
  %131 = ptrtoint ptr %proto_head to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %add, ptr %proto_head, align 4
  %call.i221 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i221, label %do.end183.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i224

do.end183.rcu_read_unlock.exit_crit_edge:         ; preds = %do.end183
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i224:                               ; preds = %do.end183
  %call1.i222 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i222)
  %tobool.not.i223 = icmp eq i32 %call1.i222, 0
  br i1 %tobool.not.i223, label %land.lhs.true.i224.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i226

land.lhs.true.i224.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i224
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i226:                              ; preds = %land.lhs.true.i224
  %.b4.i225 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i225, label %land.lhs.true2.i226.rcu_read_unlock.exit_crit_edge, label %if.then.i227

land.lhs.true2.i226.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i226
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i227:                                     ; preds = %land.lhs.true2.i226
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.44, i32 noundef 724, ptr noundef nonnull @.str.49) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i227, %land.lhs.true2.i226.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i224.rcu_read_unlock.exit_crit_edge, %do.end183.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !154
  %132 = call i32 @llvm.read_register.i32(metadata !140) #10
  %and.i.i.i.i.i228 = and i32 %132, -16384
  %133 = inttoptr i32 %and.i.i.i.i.i228 to ptr
  %preempt_count.i.i.i.i229 = getelementptr inbounds %struct.thread_info, ptr %133, i32 0, i32 1
  %134 = ptrtoint ptr %preempt_count.i.i.i.i229 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load volatile i32, ptr %preempt_count.i.i.i.i229, align 4
  %sub.i.i.i = add i32 %135, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i229, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %ctrl = getelementptr inbounds %struct.cfcnfg, ptr %call, i32 0, i32 1
  %136 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %ctrl, align 4
  %138 = ptrtoint ptr %phyid15.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %phyid15.i, align 1
  call void @cfctrl_enum_req(ptr noundef %137, i8 noundef zeroext %139) #10
  %140 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %ctrl, align 4
  %call187 = call i32 @cfctrl_linkup_request(ptr noundef %141, ptr noundef nonnull %param, ptr noundef nonnull %adap_layer) #10
  br label %cleanup

unlock.sink.split:                                ; preds = %if.end24.unlock.sink.split_crit_edge, %if.end16.unlock.sink.split_crit_edge, %if.end8.unlock.sink.split_crit_edge, %if.end5.unlock.sink.split_crit_edge
  %.str.17.sink = phi ptr [ @.str.8, %if.end5.unlock.sink.split_crit_edge ], [ @.str.11, %if.end8.unlock.sink.split_crit_edge ], [ @.str.14, %if.end16.unlock.sink.split_crit_edge ], [ @.str.17, %if.end24.unlock.sink.split_crit_edge ]
  %err.0.ph = phi i32 [ -22, %if.end5.unlock.sink.split_crit_edge ], [ -22, %if.end8.unlock.sink.split_crit_edge ], [ -22, %if.end16.unlock.sink.split_crit_edge ], [ -19, %if.end24.unlock.sink.split_crit_edge ]
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.17.sink, ptr noundef nonnull @.str.9) #14
  br label %unlock

unlock:                                           ; preds = %unlock.sink.split, %cfcnfg_get_phyinfo_rcu.exit.unlock_crit_edge, %for.cond.i.unlock_crit_edge, %if.end16.i.unlock_crit_edge, %for.cond47.i.i.unlock_crit_edge, %if.else.i.unlock_crit_edge, %cfcnfg_get_id_from_ifi.exit.i.unlock_crit_edge, %for.inc.i.i.unlock_crit_edge, %do.end.i.i.unlock_crit_edge
  %err.0 = phi i32 [ -19, %cfcnfg_get_phyinfo_rcu.exit.unlock_crit_edge ], [ %19, %cfcnfg_get_id_from_ifi.exit.i.unlock_crit_edge ], [ -22, %if.else.i.unlock_crit_edge ], [ -22, %if.end16.i.unlock_crit_edge ], [ -19, %do.end.i.i.unlock_crit_edge ], [ %err.0.ph, %unlock.sink.split ], [ -19, %for.cond.i.unlock_crit_edge ], [ -19, %for.cond47.i.i.unlock_crit_edge ], [ -19, %for.inc.i.i.unlock_crit_edge ]
  %call.i231 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i231, label %unlock.rcu_read_unlock.exit242_crit_edge, label %land.lhs.true.i234

unlock.rcu_read_unlock.exit242_crit_edge:         ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit242

land.lhs.true.i234:                               ; preds = %unlock
  %call1.i232 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i232)
  %tobool.not.i233 = icmp eq i32 %call1.i232, 0
  br i1 %tobool.not.i233, label %land.lhs.true.i234.rcu_read_unlock.exit242_crit_edge, label %land.lhs.true2.i236

land.lhs.true.i234.rcu_read_unlock.exit242_crit_edge: ; preds = %land.lhs.true.i234
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit242

land.lhs.true2.i236:                              ; preds = %land.lhs.true.i234
  %.b4.i235 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i235, label %land.lhs.true2.i236.rcu_read_unlock.exit242_crit_edge, label %if.then.i237

land.lhs.true2.i236.rcu_read_unlock.exit242_crit_edge: ; preds = %land.lhs.true2.i236
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit242

if.then.i237:                                     ; preds = %land.lhs.true2.i236
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.44, i32 noundef 724, ptr noundef nonnull @.str.49) #10
  br label %rcu_read_unlock.exit242

rcu_read_unlock.exit242:                          ; preds = %if.then.i237, %land.lhs.true2.i236.rcu_read_unlock.exit242_crit_edge, %land.lhs.true.i234.rcu_read_unlock.exit242_crit_edge, %unlock.rcu_read_unlock.exit242_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !154
  %142 = call i32 @llvm.read_register.i32(metadata !140) #10
  %and.i.i.i.i.i238 = and i32 %142, -16384
  %143 = inttoptr i32 %and.i.i.i.i.i238 to ptr
  %preempt_count.i.i.i.i239 = getelementptr inbounds %struct.thread_info, ptr %143, i32 0, i32 1
  %144 = ptrtoint ptr %preempt_count.i.i.i.i239 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load volatile i32, ptr %preempt_count.i.i.i.i239, align 4
  %sub.i.i.i240 = add i32 %145, -1
  store volatile i32 %sub.i.i.i240, ptr %preempt_count.i.i.i.i239, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit242, %rcu_read_unlock.exit
  %retval.0 = phi i32 [ %err.0, %rcu_read_unlock.exit242 ], [ %call187, %rcu_read_unlock.exit ]
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %param) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfctrl_enum_req(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfctrl_linkup_request(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cfcnfg_add_phy_layer(ptr noundef %cnfg, ptr noundef %dev, ptr noundef %phy_layer, i32 noundef %pref, ptr noundef %link_support, i1 noundef zeroext %fcs, i32 noundef %head_room) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %fcs to i8
  %lock = getelementptr inbounds %struct.cfcnfg, ptr %cnfg, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %ifindex = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 17
  %phys.i = getelementptr inbounds %struct.cfcnfg, ptr %cnfg, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.0106 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %0 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ifindex, align 4
  %add = add i32 %1, %i.0106
  %2 = trunc i32 %add to i8
  %conv = and i8 %2, 7
  %conv1 = zext i8 %conv to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %cmp2 = icmp eq i8 %conv, 0
  br i1 %cmp2, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %for.body
  %call.i = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end.for.cond.i.preheader_crit_edge

if.end.for.cond.i.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.preheader

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.for.cond.i.preheader_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.for.cond.i.preheader_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.preheader

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b27.i = load i1, ptr @cfcnfg_get_phyinfo_rcu.__warned, align 1
  br i1 %.b27.i, label %land.lhs.true3.i.for.cond.i.preheader_crit_edge, label %if.then.i

land.lhs.true3.i.for.cond.i.preheader_crit_edge:  ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.preheader

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cfcnfg_get_phyinfo_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 138, ptr noundef nonnull @.str.46) #10
  br label %for.cond.i.preheader

for.cond.i.preheader:                             ; preds = %if.then.i, %land.lhs.true3.i.for.cond.i.preheader_crit_edge, %land.lhs.true.i.for.cond.i.preheader_crit_edge, %if.end.for.cond.i.preheader_crit_edge
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %phy.0.in.i = phi ptr [ %phy.0.i, %for.body.i.for.cond.i_crit_edge ], [ %phys.i, %for.cond.i.preheader ]
  %3 = ptrtoint ptr %phy.0.in.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %phy.0.i = load volatile ptr, ptr %phy.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %phy.0.i, %phys.i
  br i1 %cmp.not.i, label %for.cond.i.got_phyid_crit_edge, label %for.body.i

for.cond.i.got_phyid_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %got_phyid

for.body.i:                                       ; preds = %for.cond.i
  %id.i = getelementptr inbounds %struct.cfcnfg_phyinfo, ptr %phy.0.i, i32 0, i32 4
  %4 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id.i, align 4
  %cmp10.i = icmp eq i32 %5, %conv1
  br i1 %cmp10.i, label %cfcnfg_get_phyinfo_rcu.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

cfcnfg_get_phyinfo_rcu.exit:                      ; preds = %for.body.i
  %cmp4 = icmp eq ptr %phy.0.i, null
  br i1 %cmp4, label %cfcnfg_get_phyinfo_rcu.exit.got_phyid_crit_edge, label %cfcnfg_get_phyinfo_rcu.exit.for.inc_crit_edge

cfcnfg_get_phyinfo_rcu.exit.for.inc_crit_edge:    ; preds = %cfcnfg_get_phyinfo_rcu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

cfcnfg_get_phyinfo_rcu.exit.got_phyid_crit_edge:  ; preds = %cfcnfg_get_phyinfo_rcu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %got_phyid

for.inc:                                          ; preds = %cfcnfg_get_phyinfo_rcu.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0106, 1
  %exitcond.not = icmp eq i32 %inc, 7
  br i1 %exitcond.not, label %do.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.end:                                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29) #14
  br label %cleanup

got_phyid:                                        ; preds = %cfcnfg_get_phyinfo_rcu.exit.got_phyid_crit_edge, %for.cond.i.got_phyid_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 2848, i32 noundef 48) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %got_phyid.cleanup_crit_edge, label %if.end11

got_phyid.cleanup_crit_edge:                      ; preds = %got_phyid
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %got_phyid
  %id = getelementptr inbounds %struct.cflayer, ptr %phy_layer, i32 0, i32 7
  %7 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv1, ptr %id, align 4
  %pref13 = getelementptr inbounds %struct.cfcnfg_phyinfo, ptr %call7.i.i, i32 0, i32 5
  %8 = ptrtoint ptr %pref13 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %pref, ptr %pref13, align 8
  %id15 = getelementptr inbounds %struct.cfcnfg_phyinfo, ptr %call7.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %id15 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv1, ptr %id15, align 4
  %dev_info = getelementptr inbounds %struct.cfcnfg_phyinfo, ptr %call7.i.i, i32 0, i32 6
  %id17 = getelementptr inbounds %struct.cfcnfg_phyinfo, ptr %call7.i.i, i32 0, i32 6, i32 1
  %10 = ptrtoint ptr %id17 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv1, ptr %id17, align 8
  %11 = ptrtoint ptr %dev_info to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev, ptr %dev_info, align 4
  %phy_layer20 = getelementptr inbounds %struct.cfcnfg_phyinfo, ptr %call7.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %phy_layer20 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %phy_layer, ptr %phy_layer20, align 8
  %13 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ifindex, align 4
  %ifindex22 = getelementptr inbounds %struct.cfcnfg_phyinfo, ptr %call7.i.i, i32 0, i32 7
  %15 = ptrtoint ptr %ifindex22 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %ifindex22, align 4
  %head_room23 = getelementptr inbounds %struct.cfcnfg_phyinfo, ptr %call7.i.i, i32 0, i32 8
  %16 = ptrtoint ptr %head_room23 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %head_room, ptr %head_room23, align 8
  %use_fcs = getelementptr inbounds %struct.cfcnfg_phyinfo, ptr %call7.i.i, i32 0, i32 9
  %17 = ptrtoint ptr %use_fcs to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %frombool, ptr %use_fcs, align 4
  %conv26 = zext i8 %conv to i16
  %call28 = tail call ptr @cffrml_create(i16 noundef zeroext %conv26, i1 noundef zeroext %fcs) #10
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

if.end31:                                         ; preds = %if.end11
  %frm_layer = getelementptr inbounds %struct.cfcnfg_phyinfo, ptr %call7.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %frm_layer to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call28, ptr %frm_layer, align 4
  %mux = getelementptr inbounds %struct.cfcnfg, ptr %cnfg, i32 0, i32 2
  %19 = ptrtoint ptr %mux to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mux, align 4
  %21 = ptrtoint ptr %call28 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %call28, align 4
  %cmp32.not = icmp eq ptr %link_support, null
  br i1 %cmp32.not, label %if.end31.if.end42_crit_edge, label %if.then34

if.end31.if.end42_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %id36 = getelementptr inbounds %struct.cflayer, ptr %link_support, i32 0, i32 7
  %22 = ptrtoint ptr %id36 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv1, ptr %id36, align 4
  %dn = getelementptr inbounds %struct.cflayer, ptr %call28, i32 0, i32 1
  %23 = ptrtoint ptr %dn to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %link_support, ptr %dn, align 4
  %24 = ptrtoint ptr %link_support to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call28, ptr %link_support, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then34, %if.end31.if.end42_crit_edge
  %call28.sink = phi ptr [ %link_support, %if.then34 ], [ %call28, %if.end31.if.end42_crit_edge ]
  %dn40 = getelementptr inbounds %struct.cflayer, ptr %call28.sink, i32 0, i32 1
  %25 = ptrtoint ptr %dn40 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %phy_layer, ptr %dn40, align 4
  %26 = ptrtoint ptr %phy_layer to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call28.sink, ptr %phy_layer, align 4
  %27 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %phys.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %phys.i, ptr noundef %28) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %call7.i.i, align 8
  %prev2.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %phys.i, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !156
  %31 = ptrtoint ptr %phys.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %call7.i.i, ptr %phys.i, align 4
  %prev37.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %32 = ptrtoint ptr %prev37.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call7.i.i, ptr %prev37.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end42.cleanup_crit_edge, %if.then30, %got_phyid.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -12, %if.then30 ], [ -17, %do.end ], [ -12, %got_phyid.cleanup_crit_edge ], [ 0, %if.end42.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  tail call void @mutex_unlock(ptr noundef %lock) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cffrml_create(i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cfcnfg_set_phy_state(ptr noundef %cnfg, ptr nocapture noundef readonly %phy_layer, i1 noundef zeroext %up) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %up to i8
  %0 = tail call i32 @llvm.read_register.i32(metadata !140) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !150
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.44, i32 noundef 696, ptr noundef nonnull @.str.45) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %id = getelementptr inbounds %struct.cflayer, ptr %phy_layer, i32 0, i32 7
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %call.i36 = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36)
  %tobool.not.i37 = icmp eq i32 %call.i36, 0
  br i1 %tobool.not.i37, label %land.lhs.true.i39, label %rcu_read_lock.exit.do.end.i_crit_edge

rcu_read_lock.exit.do.end.i_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true.i39:                                ; preds = %rcu_read_lock.exit
  %call1.i38 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i38)
  %tobool2.not.i = icmp eq i32 %call1.i38, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i39.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i39.do.end.i_crit_edge:             ; preds = %land.lhs.true.i39
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i39
  %.b27.i = load i1, ptr @cfcnfg_get_phyinfo_rcu.__warned, align 1
  br i1 %.b27.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i40

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then.i40:                                      ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cfcnfg_get_phyinfo_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 138, ptr noundef nonnull @.str.46) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i40, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i39.do.end.i_crit_edge, %rcu_read_lock.exit.do.end.i_crit_edge
  %phys.i = getelementptr inbounds %struct.cfcnfg, ptr %cnfg, i32 0, i32 3
  %conv.i = and i32 %5, 255
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %phy.0.in.i = phi ptr [ %phys.i, %do.end.i ], [ %phy.0.i, %for.body.i.for.cond.i_crit_edge ]
  %6 = ptrtoint ptr %phy.0.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %phy.0.i = load volatile ptr, ptr %phy.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %phy.0.i, %phys.i
  br i1 %cmp.not.i, label %for.cond.i.if.then_crit_edge, label %for.body.i

for.cond.i.if.then_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

for.body.i:                                       ; preds = %for.cond.i
  %id.i = getelementptr inbounds %struct.cfcnfg_phyinfo, ptr %phy.0.i, i32 0, i32 4
  %7 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id.i, align 4
  %cmp10.i = icmp eq i32 %8, %conv.i
  br i1 %cmp10.i, label %cfcnfg_get_phyinfo_rcu.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

cfcnfg_get_phyinfo_rcu.exit:                      ; preds = %for.body.i
  %cmp = icmp eq ptr %phy.0.i, null
  br i1 %cmp, label %cfcnfg_get_phyinfo_rcu.exit.if.then_crit_edge, label %if.end

cfcnfg_get_phyinfo_rcu.exit.if.then_crit_edge:    ; preds = %cfcnfg_get_phyinfo_rcu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %cfcnfg_get_phyinfo_rcu.exit.if.then_crit_edge, %for.cond.i.if.then_crit_edge
  %call.i41 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i41, label %if.then.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i44

if.then.rcu_read_unlock.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i44:                                ; preds = %if.then
  %call1.i42 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i42)
  %tobool.not.i43 = icmp eq i32 %call1.i42, 0
  br i1 %tobool.not.i43, label %land.lhs.true.i44.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i46

land.lhs.true.i44.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i44
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i46:                               ; preds = %land.lhs.true.i44
  %.b4.i45 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i45, label %land.lhs.true2.i46.rcu_read_unlock.exit_crit_edge, label %if.then.i47

land.lhs.true2.i46.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i46
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i47:                                      ; preds = %land.lhs.true2.i46
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.44, i32 noundef 724, ptr noundef nonnull @.str.49) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i47, %land.lhs.true2.i46.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i44.rcu_read_unlock.exit_crit_edge, %if.then.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !154
  br label %cleanup

if.end:                                           ; preds = %cfcnfg_get_phyinfo_rcu.exit
  %up2 = getelementptr inbounds %struct.cfcnfg_phyinfo, ptr %phy.0.i, i32 0, i32 1
  %9 = ptrtoint ptr %up2 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %up2, align 4, !range !155
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %frombool)
  %cmp6 = icmp eq i8 %10, %frombool
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  %call.i51 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i51, label %if.then8.rcu_read_unlock.exit62_crit_edge, label %land.lhs.true.i54

if.then8.rcu_read_unlock.exit62_crit_edge:        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit62

land.lhs.true.i54:                                ; preds = %if.then8
  %call1.i52 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i52)
  %tobool.not.i53 = icmp eq i32 %call1.i52, 0
  br i1 %tobool.not.i53, label %land.lhs.true.i54.rcu_read_unlock.exit62_crit_edge, label %land.lhs.true2.i56

land.lhs.true.i54.rcu_read_unlock.exit62_crit_edge: ; preds = %land.lhs.true.i54
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit62

land.lhs.true2.i56:                               ; preds = %land.lhs.true.i54
  %.b4.i55 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i55, label %land.lhs.true2.i56.rcu_read_unlock.exit62_crit_edge, label %if.then.i57

land.lhs.true2.i56.rcu_read_unlock.exit62_crit_edge: ; preds = %land.lhs.true2.i56
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit62

if.then.i57:                                      ; preds = %land.lhs.true2.i56
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.44, i32 noundef 724, ptr noundef nonnull @.str.49) #10
  br label %rcu_read_unlock.exit62

rcu_read_unlock.exit62:                           ; preds = %if.then.i57, %land.lhs.true2.i56.rcu_read_unlock.exit62_crit_edge, %land.lhs.true.i54.rcu_read_unlock.exit62_crit_edge, %if.then8.rcu_read_unlock.exit62_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !154
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %11 = ptrtoint ptr %up2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %frombool, ptr %up2, align 4
  br i1 %up, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %frm_layer = getelementptr inbounds %struct.cfcnfg_phyinfo, ptr %phy.0.i, i32 0, i32 2
  %12 = ptrtoint ptr %frm_layer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %frm_layer, align 4
  tail call void @cffrml_hold(ptr noundef %13) #10
  %mux = getelementptr inbounds %struct.cfcnfg, ptr %cnfg, i32 0, i32 2
  %14 = ptrtoint ptr %mux to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mux, align 4
  %16 = ptrtoint ptr %frm_layer to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %frm_layer, align 4
  %18 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id, align 4
  %conv17 = trunc i32 %19 to i8
  %call18 = tail call i32 @cfmuxl_set_dnlayer(ptr noundef %15, ptr noundef %17, i8 noundef zeroext %conv17) #10
  br label %if.end24

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %mux19 = getelementptr inbounds %struct.cfcnfg, ptr %cnfg, i32 0, i32 2
  %20 = ptrtoint ptr %mux19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mux19, align 4
  %22 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id, align 4
  %conv21 = trunc i32 %23 to i8
  %call22 = tail call ptr @cfmuxl_remove_dnlayer(ptr noundef %21, i8 noundef zeroext %conv21) #10
  %frm_layer23 = getelementptr inbounds %struct.cfcnfg_phyinfo, ptr %phy.0.i, i32 0, i32 2
  %24 = ptrtoint ptr %frm_layer23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %frm_layer23, align 4
  tail call void @cffrml_put(ptr noundef %25) #10
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then14
  %call.i63 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i63, label %if.end24.rcu_read_unlock.exit74_crit_edge, label %land.lhs.true.i66

if.end24.rcu_read_unlock.exit74_crit_edge:        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit74

land.lhs.true.i66:                                ; preds = %if.end24
  %call1.i64 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i64)
  %tobool.not.i65 = icmp eq i32 %call1.i64, 0
  br i1 %tobool.not.i65, label %land.lhs.true.i66.rcu_read_unlock.exit74_crit_edge, label %land.lhs.true2.i68

land.lhs.true.i66.rcu_read_unlock.exit74_crit_edge: ; preds = %land.lhs.true.i66
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit74

land.lhs.true2.i68:                               ; preds = %land.lhs.true.i66
  %.b4.i67 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i67, label %land.lhs.true2.i68.rcu_read_unlock.exit74_crit_edge, label %if.then.i69

land.lhs.true2.i68.rcu_read_unlock.exit74_crit_edge: ; preds = %land.lhs.true2.i68
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit74

if.then.i69:                                      ; preds = %land.lhs.true2.i68
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.44, i32 noundef 724, ptr noundef nonnull @.str.49) #10
  br label %rcu_read_unlock.exit74

rcu_read_unlock.exit74:                           ; preds = %if.then.i69, %land.lhs.true2.i68.rcu_read_unlock.exit74_crit_edge, %land.lhs.true.i66.rcu_read_unlock.exit74_crit_edge, %if.end24.rcu_read_unlock.exit74_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !154
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit74, %rcu_read_unlock.exit62, %rcu_read_unlock.exit
  %retval.0 = phi i32 [ -19, %rcu_read_unlock.exit ], [ 0, %rcu_read_unlock.exit62 ], [ 0, %rcu_read_unlock.exit74 ]
  %26 = tail call i32 @llvm.read_register.i32(metadata !140) #10
  %and.i.i.i.i.i70 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i70 to ptr
  %preempt_count.i.i.i.i71 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i71 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i71, align 4
  %sub.i.i.i72 = add i32 %29, -1
  store volatile i32 %sub.i.i.i72, ptr %preempt_count.i.i.i.i71, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cffrml_hold(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfmuxl_set_dnlayer(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfmuxl_remove_dnlayer(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cffrml_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cfcnfg_del_phy_layer(ptr noundef %cnfg, ptr noundef %phy_layer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 566) #10
  %lock = getelementptr inbounds %struct.cfcnfg, ptr %cnfg, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %id = getelementptr inbounds %struct.cflayer, ptr %phy_layer, i32 0, i32 7
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %call.i = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b27.i = load i1, ptr @cfcnfg_get_phyinfo_rcu.__warned, align 1
  br i1 %.b27.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cfcnfg_get_phyinfo_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 138, ptr noundef nonnull @.str.46) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %phys.i = getelementptr inbounds %struct.cfcnfg, ptr %cnfg, i32 0, i32 3
  %conv.i = and i32 %1, 255
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %phy.0.in.i = phi ptr [ %phys.i, %do.end.i ], [ %phy.0.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %phy.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %phy.0.i = load volatile ptr, ptr %phy.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %phy.0.i, %phys.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %id.i = getelementptr inbounds %struct.cfcnfg_phyinfo, ptr %phy.0.i, i32 0, i32 4
  %3 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id.i, align 4
  %cmp10.i = icmp eq i32 %4, %conv.i
  br i1 %cmp10.i, label %cfcnfg_get_phyinfo_rcu.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

cfcnfg_get_phyinfo_rcu.exit:                      ; preds = %for.body.i
  %id.i.le = getelementptr inbounds %struct.cfcnfg_phyinfo, ptr %phy.0.i, i32 0, i32 4
  %cmp = icmp eq ptr %phy.0.i, null
  br i1 %cmp, label %cfcnfg_get_phyinfo_rcu.exit.cleanup_crit_edge, label %do.body7

cfcnfg_get_phyinfo_rcu.exit.cleanup_crit_edge:    ; preds = %cfcnfg_get_phyinfo_rcu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body7:                                         ; preds = %cfcnfg_get_phyinfo_rcu.exit
  %conv8 = and i32 %1, 65535
  %5 = ptrtoint ptr %id.i.le to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id.i.le, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv8, i32 %6)
  %cmp10 = icmp eq i32 %conv8, %6
  br i1 %cmp10, label %do.body7.do.body49_crit_edge, label %do.end15

do.body7.do.body49_crit_edge:                     ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body49

do.end15:                                         ; preds = %do.body7
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31) #14
  %7 = ptrtoint ptr %id.i.le to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id.i.le, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv8, i32 %8)
  %cmp19.not = icmp eq i32 %conv8, %8
  br i1 %cmp19.not, label %do.end15.do.body49_crit_edge, label %do.end32, !prof !152

do.end15.do.body49_crit_edge:                     ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body49

do.end32:                                         ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 577, i32 noundef 9, ptr noundef null) #10
  br label %do.body49

do.body49:                                        ; preds = %do.end32, %do.end15.do.body49_crit_edge, %do.body7.do.body49_crit_edge
  %phy_layer50 = getelementptr inbounds %struct.cfcnfg_phyinfo, ptr %phy.0.i, i32 0, i32 3
  %9 = ptrtoint ptr %phy_layer50 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %phy_layer50, align 4
  %cmp51 = icmp eq ptr %10, %phy_layer
  br i1 %cmp51, label %do.body49.do.body97_crit_edge, label %do.end56

do.body49.do.body97_crit_edge:                    ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body97

do.end56:                                         ; preds = %do.body49
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.34) #14
  %11 = ptrtoint ptr %phy_layer50 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %phy_layer50, align 4
  %cmp61.not = icmp eq ptr %12, %phy_layer
  br i1 %cmp61.not, label %do.end56.do.body97_crit_edge, label %do.end80, !prof !152

do.end56.do.body97_crit_edge:                     ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body97

do.end80:                                         ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 578, i32 noundef 9, ptr noundef null) #10
  br label %do.body97

do.body97:                                        ; preds = %do.end80, %do.end56.do.body97_crit_edge, %do.body49.do.body97_crit_edge
  %13 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %conv8)
  %cmp100 = icmp eq i32 %14, %conv8
  br i1 %cmp100, label %do.body97.do.body147_crit_edge, label %do.end105

do.body97.do.body147_crit_edge:                   ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body147

do.end105:                                        ; preds = %do.body97
  %call107 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.37) #14
  %15 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv8)
  %cmp111.not = icmp eq i32 %16, %conv8
  br i1 %cmp111.not, label %do.end105.do.body147_crit_edge, label %do.end130, !prof !152

do.end105.do.body147_crit_edge:                   ; preds = %do.end105
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body147

do.end130:                                        ; preds = %do.end105
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 579, i32 noundef 9, ptr noundef null) #10
  br label %do.body147

do.body147:                                       ; preds = %do.end130, %do.end105.do.body147_crit_edge, %do.body97.do.body147_crit_edge
  %frm_layer = getelementptr inbounds %struct.cfcnfg_phyinfo, ptr %phy.0.i, i32 0, i32 2
  %17 = ptrtoint ptr %frm_layer to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %frm_layer, align 4
  %id148 = getelementptr inbounds %struct.cflayer, ptr %18, i32 0, i32 7
  %19 = ptrtoint ptr %id148 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %id148, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %conv8)
  %cmp150 = icmp eq i32 %20, %conv8
  br i1 %cmp150, label %do.body147.do.end197_crit_edge, label %do.end155

do.body147.do.end197_crit_edge:                   ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end197

do.end155:                                        ; preds = %do.body147
  %call157 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.40) #14
  %21 = ptrtoint ptr %frm_layer to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %frm_layer, align 4
  %id160 = getelementptr inbounds %struct.cflayer, ptr %22, i32 0, i32 7
  %23 = ptrtoint ptr %id160 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %id160, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %conv8)
  %cmp162.not = icmp eq i32 %24, %conv8
  br i1 %cmp162.not, label %do.end155.do.end197_crit_edge, label %do.end181, !prof !152

do.end155.do.end197_crit_edge:                    ; preds = %do.end155
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end197

do.end181:                                        ; preds = %do.end155
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 580, i32 noundef 9, ptr noundef null) #10
  br label %do.end197

do.end197:                                        ; preds = %do.end181, %do.end155.do.end197_crit_edge, %do.body147.do.end197_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %phy.0.i) #10
  br i1 %call.i.i, label %if.end.i.i, label %do.end197.list_del_rcu.exit_crit_edge

do.end197.list_del_rcu.exit_crit_edge:            ; preds = %do.end197
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %do.end197
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %phy.0.i, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i, align 4
  %27 = ptrtoint ptr %phy.0.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %phy.0.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %do.end197.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %phy.0.i, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @synchronize_rcu() #10
  %32 = ptrtoint ptr %frm_layer to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %frm_layer, align 4
  %call199 = tail call i32 @cffrml_refcnt_read(ptr noundef %33) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call199)
  %cmp200.not = icmp eq i32 %call199, 0
  br i1 %cmp200.not, label %if.end210, label %do.end205

do.end205:                                        ; preds = %list_del_rcu.exit
  %call207 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.30) #14
  %34 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %phys.i, align 4
  %call.i.i267 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %phy.0.i, ptr noundef %phys.i, ptr noundef %35) #10
  br i1 %call.i.i267, label %if.end.i.i268, label %do.end205.cleanup_crit_edge

do.end205.cleanup_crit_edge:                      ; preds = %do.end205
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i268:                                    ; preds = %do.end205
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %phy.0.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %phy.0.i, align 4
  %37 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %phys.i, ptr %prev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !156
  %38 = ptrtoint ptr %phys.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %phy.0.i, ptr %phys.i, align 4
  %prev37.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %39 = ptrtoint ptr %prev37.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %phy.0.i, ptr %prev37.i.i, align 4
  br label %cleanup

if.end210:                                        ; preds = %list_del_rcu.exit
  %40 = ptrtoint ptr %frm_layer to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %frm_layer, align 4
  %dn = getelementptr inbounds %struct.cflayer, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dn, align 4
  tail call void @cffrml_set_uplayer(ptr noundef %41, ptr noundef null) #10
  tail call void @cffrml_set_dnlayer(ptr noundef %41, ptr noundef null) #10
  %cmp212.not = icmp eq ptr %43, %phy_layer
  br i1 %cmp212.not, label %if.end210.if.end216_crit_edge, label %if.then214

if.end210.if.end216_crit_edge:                    ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end216

if.then214:                                       ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %43, align 4
  %dn215 = getelementptr inbounds %struct.cflayer, ptr %43, i32 0, i32 1
  %45 = ptrtoint ptr %dn215 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %dn215, align 4
  br label %if.end216

if.end216:                                        ; preds = %if.then214, %if.end210.if.end216_crit_edge
  %46 = ptrtoint ptr %phy_layer to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %phy_layer, align 4
  %47 = ptrtoint ptr %phy_layer50 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %phy_layer50, align 4
  %cmp219.not = icmp eq ptr %48, %43
  br i1 %cmp219.not, label %if.end216.if.end222_crit_edge, label %if.then221

if.end216.if.end222_crit_edge:                    ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end222

if.then221:                                       ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef %43) #10
  br label %if.end222

if.end222:                                        ; preds = %if.then221, %if.end216.if.end222_crit_edge
  tail call void @cffrml_free(ptr noundef %41) #10
  tail call void @kfree(ptr noundef nonnull %phy.0.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end222, %if.end.i.i268, %do.end205.cleanup_crit_edge, %cfcnfg_get_phyinfo_rcu.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end222 ], [ 0, %cfcnfg_get_phyinfo_rcu.exit.cleanup_crit_edge ], [ -11, %do.end205.cleanup_crit_edge ], [ -11, %if.end.i.i268 ], [ 0, %for.cond.i.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cffrml_refcnt_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cffrml_set_uplayer(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cffrml_set_dnlayer(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cffrml_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfvei_create(i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfdgml_create(i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfrfml_create(i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfutill_create(i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfvidl_create(i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfdbgl_create(i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10, !11, !13, !14, !15, !16, !18, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !51, !52, !53, !54, !56, !58, !60, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !83, !84, !85, !87, !88, !90, !92, !94, !96, !98, !99, !101, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139}
!llvm.named.register.sp = !{!140}
!llvm.module.flags = !{!141, !142, !143, !144, !145, !146, !147, !148}
!llvm.ident = !{!149}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/caif/cfcnfg.c", i32 77, i32 2}
!2 = !{ptr @cfcnfg_create.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../net/caif/cfcnfg.c", i32 105, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../net/caif/cfcnfg.c", i32 184, i32 2}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @caif_disconnect_client._entry, !6, !"_entry", i1 false, i1 false}
!9 = !{ptr @caif_disconnect_client._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/caif/cfcnfg.c", i32 194, i32 3}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @caif_disconnect_client.__UNIQUE_ID_ddebug345, !12, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!15 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @__ksymtab_caif_disconnect_client, !17, !"__ksymtab_caif_disconnect_client", i1 false, i1 false}
!17 = !{!"../net/caif/cfcnfg.c", i32 203, i32 1}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/caif/cfcnfg.c", i32 323, i32 3}
!20 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @caif_connect_client._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @caif_connect_client._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/caif/cfcnfg.c", i32 327, i32 3}
!25 = !{ptr @caif_connect_client._entry.10, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @caif_connect_client._entry_ptr.12, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/caif/cfcnfg.c", i32 331, i32 3}
!29 = !{ptr @caif_connect_client._entry.13, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @caif_connect_client._entry_ptr.15, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/caif/cfcnfg.c", i32 338, i32 3}
!33 = !{ptr @caif_connect_client._entry.16, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @caif_connect_client._entry_ptr.18, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @caif_connect_client._entry.19, !36, !"_entry", i1 false, i1 false}
!36 = !{!"../net/caif/cfcnfg.c", i32 341, i32 2}
!37 = !{ptr @caif_connect_client._entry_ptr.20, !36, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @caif_connect_client._entry.22, !40, !"_entry", i1 false, i1 false}
!40 = !{!"../net/caif/cfcnfg.c", i32 342, i32 2}
!41 = !{ptr @caif_connect_client._entry_ptr.23, !40, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.24, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @caif_connect_client._entry.25, !44, !"_entry", i1 false, i1 false}
!44 = !{!"../net/caif/cfcnfg.c", i32 344, i32 2}
!45 = !{ptr @caif_connect_client._entry_ptr.26, !44, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.27, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @__ksymtab_caif_connect_client, !48, !"__ksymtab_caif_connect_client", i1 false, i1 false}
!48 = !{!"../net/caif/cfcnfg.c", i32 361, i32 1}
!49 = !{ptr @.str.28, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../net/caif/cfcnfg.c", i32 475, i32 2}
!51 = !{ptr @.str.29, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @cfcnfg_add_phy_layer._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @cfcnfg_add_phy_layer._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @__ksymtab_cfcnfg_add_phy_layer, !55, !"__ksymtab_cfcnfg_add_phy_layer", i1 false, i1 false}
!55 = !{!"../net/caif/cfcnfg.c", i32 526, i32 1}
!56 = !{ptr @__ksymtab_cfcnfg_set_phy_state, !57, !"__ksymtab_cfcnfg_set_phy_state", i1 false, i1 false}
!57 = !{!"../net/caif/cfcnfg.c", i32 558, i32 1}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../net/caif/cfcnfg.c", i32 577, i32 2}
!60 = !{ptr @cfcnfg_del_phy_layer._entry, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @cfcnfg_del_phy_layer._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @cfcnfg_del_phy_layer._entry.32, !64, !"_entry", i1 false, i1 false}
!64 = !{!"../net/caif/cfcnfg.c", i32 578, i32 2}
!65 = !{ptr @cfcnfg_del_phy_layer._entry_ptr.33, !64, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.34, !64, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @cfcnfg_del_phy_layer._entry.35, !68, !"_entry", i1 false, i1 false}
!68 = !{!"../net/caif/cfcnfg.c", i32 579, i32 2}
!69 = !{ptr @cfcnfg_del_phy_layer._entry_ptr.36, !68, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.37, !68, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @cfcnfg_del_phy_layer._entry.38, !72, !"_entry", i1 false, i1 false}
!72 = !{!"../net/caif/cfcnfg.c", i32 580, i32 2}
!73 = !{ptr @cfcnfg_del_phy_layer._entry_ptr.39, !72, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.40, !72, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.42, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../net/caif/cfcnfg.c", i32 587, i32 3}
!77 = !{ptr @cfcnfg_del_phy_layer._entry.41, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @cfcnfg_del_phy_layer._entry_ptr.43, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @__ksymtab_cfcnfg_del_phy_layer, !80, !"__ksymtab_cfcnfg_del_phy_layer", i1 false, i1 false}
!80 = !{!"../net/caif/cfcnfg.c", i32 612, i32 1}
!81 = distinct !{null, !82, !"__warned", i1 false, i1 false}
!82 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!83 = !{ptr @.str.44, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.45, !82, !"<string literal>", i1 false, i1 false}
!85 = distinct !{null, !86, !"__warned", i1 false, i1 false}
!86 = !{!"../net/caif/cfcnfg.c", i32 173, i32 2}
!87 = !{ptr @.str.46, !86, !"<string literal>", i1 false, i1 false}
!88 = distinct !{null, !89, !"__warned", i1 false, i1 false}
!89 = !{!"../net/caif/cfcnfg.c", i32 154, i32 2}
!90 = distinct !{null, !91, !"__warned", i1 false, i1 false}
!91 = !{!"../net/caif/cfcnfg.c", i32 162, i32 2}
!92 = distinct !{null, !93, !"__warned", i1 false, i1 false}
!93 = !{!"../net/caif/cfcnfg.c", i32 138, i32 2}
!94 = !{ptr @protohead, !95, !"protohead", i1 false, i1 false}
!95 = !{!"../net/caif/cfcnfg.c", i32 209, i32 18}
!96 = distinct !{null, !97, !"__warned", i1 false, i1 false}
!97 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!98 = !{ptr @.str.49, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.50, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../net/caif/cfcnfg.c", i32 381, i32 3}
!101 = !{ptr @.str.51, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @cfcnfg_linkup_rsp._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @cfcnfg_linkup_rsp._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../net/caif/cfcnfg.c", i32 391, i32 3}
!106 = !{ptr @cfcnfg_linkup_rsp.__UNIQUE_ID_ddebug346, !105, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!107 = !{ptr @.str.53, !105, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @cfcnfg_linkup_rsp._entry.54, !109, !"_entry", i1 false, i1 false}
!109 = !{!"../net/caif/cfcnfg.c", i32 396, i32 2}
!110 = !{ptr @cfcnfg_linkup_rsp._entry_ptr.55, !109, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.56, !109, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @cfcnfg_linkup_rsp._entry.57, !113, !"_entry", i1 false, i1 false}
!113 = !{!"../net/caif/cfcnfg.c", i32 397, i32 2}
!114 = !{ptr @cfcnfg_linkup_rsp._entry_ptr.58, !113, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.59, !113, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.61, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../net/caif/cfcnfg.c", i32 401, i32 3}
!118 = !{ptr @cfcnfg_linkup_rsp._entry.60, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @cfcnfg_linkup_rsp._entry_ptr.62, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @cfcnfg_linkup_rsp._entry.63, !121, !"_entry", i1 false, i1 false}
!121 = !{!"../net/caif/cfcnfg.c", i32 405, i32 2}
!122 = !{ptr @cfcnfg_linkup_rsp._entry_ptr.64, !121, !"_entry_ptr", i1 false, i1 false}
!123 = distinct !{null, !121, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @cfcnfg_linkup_rsp._entry.66, !125, !"_entry", i1 false, i1 false}
!125 = !{!"../net/caif/cfcnfg.c", i32 406, i32 2}
!126 = !{ptr @cfcnfg_linkup_rsp._entry_ptr.67, !125, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.68, !125, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @cfcnfg_linkup_rsp._entry.69, !129, !"_entry", i1 false, i1 false}
!129 = !{!"../net/caif/cfcnfg.c", i32 407, i32 2}
!130 = !{ptr @cfcnfg_linkup_rsp._entry_ptr.70, !129, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.71, !129, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @cfcnfg_linkup_rsp._entry.72, !133, !"_entry", i1 false, i1 false}
!133 = !{!"../net/caif/cfcnfg.c", i32 408, i32 2}
!134 = !{ptr @cfcnfg_linkup_rsp._entry_ptr.73, !133, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.74, !133, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.76, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../net/caif/cfcnfg.c", i32 435, i32 3}
!138 = !{ptr @cfcnfg_linkup_rsp._entry.75, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @cfcnfg_linkup_rsp._entry_ptr.77, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{!"sp"}
!141 = !{i32 1, !"wchar_size", i32 2}
!142 = !{i32 1, !"min_enum_size", i32 4}
!143 = !{i32 8, !"branch-target-enforcement", i32 0}
!144 = !{i32 8, !"sign-return-address", i32 0}
!145 = !{i32 8, !"sign-return-address-all", i32 0}
!146 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!147 = !{i32 7, !"uwtable", i32 1}
!148 = !{i32 7, !"frame-pointer", i32 2}
!149 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!150 = !{i64 2149930022}
!151 = !{i64 2148704174, i64 2148704179, i64 2148704192, i64 2148704236, i64 2148704270, i64 2148704291}
!152 = !{!"branch_weights", i32 2000, i32 1}
!153 = !{!"branch_weights", i32 1, i32 2000}
!154 = !{i64 2149930288}
!155 = !{i8 0, i8 2}
!156 = !{i64 2151432534}
