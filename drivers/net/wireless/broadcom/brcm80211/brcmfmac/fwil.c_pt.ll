; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.99 }
%struct.atomic_t = type { i32 }
%union.anon.99 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.brcmf_pub = type { ptr, ptr, ptr, ptr, ptr, i32, [32 x i8], [6 x i8], [16 x %struct.mac_address], [16 x ptr], [16 x i32], ptr, %struct.mutex, [8192 x i8], %struct.brcmf_fweh_info, [256 x ptr], i32, i32, %struct.brcmf_rev_info, ptr, %struct.notifier_block, %struct.notifier_block, ptr, %struct.work_struct, [256 x i8] }
%struct.mac_address = type { [6 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.brcmf_fweh_info = type { i8, %struct.work_struct, %struct.spinlock, %struct.list_head, [139 x ptr] }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.brcmf_rev_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i8], i32, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.brcmf_if = type { ptr, ptr, ptr, %struct.work_struct, %struct.work_struct, ptr, i32, i32, [6 x i8], i8, %struct.spinlock, %struct.atomic_t, %struct.wait_queue_head, [8 x %struct.in6_addr], i8, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.in6_addr = type { %union.anon.43 }
%union.anon.43 = type { [4 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.brcmf_bus = type { %union.anon, i32, ptr, ptr, i32, %struct.brcmf_bus_stats, i32, i32, i32, i8, i8, ptr, ptr }
%union.anon = type { ptr }
%struct.brcmf_bus_stats = type { %struct.atomic_t, %struct.atomic_t }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.124, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.possible_net_t = type { ptr }
%struct.anon.124 = type { i64, i64, i8 }
%struct.brcmf_proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__func__.brcmf_fil_cmd_data_set = private unnamed_addr constant [23 x i8] c"brcmf_fil_cmd_data_set\00", align 1
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ifidx=%d, cmd=%d, len=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@brcmf_msg_level = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"data\0A\00", [26 x i8] zeroinitializer }, align 32
@__func__.brcmf_fil_cmd_data_get = private unnamed_addr constant [23 x i8] c"brcmf_fil_cmd_data_get\00", align 1
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ifidx=%d, cmd=%d, len=%d, err=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__.brcmf_fil_cmd_int_set = private unnamed_addr constant [22 x i8] c"brcmf_fil_cmd_int_set\00", align 1
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ifidx=%d, cmd=%d, value=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.brcmf_fil_cmd_int_get = private unnamed_addr constant [22 x i8] c"brcmf_fil_cmd_int_get\00", align 1
@__func__.brcmf_fil_iovar_data_set = private unnamed_addr constant [25 x i8] c"brcmf_fil_iovar_data_set\00", align 1
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ifidx=%d, name=%s, len=%d\0A\00", [37 x i8] zeroinitializer }, align 32
@brcmf_fil_iovar_data_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.brcmf_fil_iovar_data_set, ptr @.str.6, i32 236, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: Creating iovar failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@brcmf_fil_iovar_data_set._entry_ptr = internal global ptr @brcmf_fil_iovar_data_set._entry, section ".printk_index", align 4
@brcmf_fil_iovar_data_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.9, ptr @.str.6, i32 262, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"brcmf_fil_iovar_data_get\00", [39 x i8] zeroinitializer }, align 32
@brcmf_fil_iovar_data_get._entry_ptr = internal global ptr @brcmf_fil_iovar_data_get._entry, section ".printk_index", align 4
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ifidx=%d, name=%s, len=%d, err=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.brcmf_fil_bsscfg_data_set = private unnamed_addr constant [26 x i8] c"brcmf_fil_bsscfg_data_set\00", align 1
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ifidx=%d, bsscfgidx=%d, name=%s, len=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@brcmf_fil_bsscfg_data_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @__func__.brcmf_fil_bsscfg_data_set, ptr @.str.6, i32 361, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: Creating bsscfg failed\0A\00", [36 x i8] zeroinitializer }, align 32
@brcmf_fil_bsscfg_data_set._entry_ptr = internal global ptr @brcmf_fil_bsscfg_data_set._entry, section ".printk_index", align 4
@brcmf_fil_bsscfg_data_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.6, i32 387, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"brcmf_fil_bsscfg_data_get\00", [38 x i8] zeroinitializer }, align 32
@brcmf_fil_bsscfg_data_get._entry_ptr = internal global ptr @brcmf_fil_bsscfg_data_get._entry, section ".printk_index", align 4
@.str.14 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"ifidx=%d, bsscfgidx=%d, name=%s, len=%d, err=%d\0A\00", [47 x i8] zeroinitializer }, align 32
@__func__.brcmf_fil_xtlv_data_set = private unnamed_addr constant [24 x i8] c"brcmf_fil_xtlv_data_set\00", align 1
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ifidx=%d, name=%s, id=%u, len=%u\0A\00", [62 x i8] zeroinitializer }, align 32
@brcmf_fil_xtlv_data_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @__func__.brcmf_fil_xtlv_data_set, ptr @.str.6, i32 462, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: Creating xtlv failed\0A\00", [38 x i8] zeroinitializer }, align 32
@brcmf_fil_xtlv_data_set._entry_ptr = internal global ptr @brcmf_fil_xtlv_data_set._entry, section ".printk_index", align 4
@brcmf_fil_xtlv_data_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.17, ptr @.str.6, i32 487, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"brcmf_fil_xtlv_data_get\00", [40 x i8] zeroinitializer }, align 32
@brcmf_fil_xtlv_data_get._entry_ptr = internal global ptr @brcmf_fil_xtlv_data_get._entry, section ".printk_index", align 4
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ifidx=%d, name=%s, id=%u, len=%u, err=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_brcmf_hexdump = external dso_local global %struct.tracepoint, align 4
@.str.19 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"drivers/net/wireless/broadcom/brcm80211/brcmfmac/tracepoint.h\00", [34 x i8] zeroinitializer }, align 32
@trace_brcmf_hexdump.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@brcmf_fil_cmd_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.6, i32 103, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: bus is down. we have nothing to do.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"brcmf_fil_cmd_data\00", [45 x i8] zeroinitializer }, align 32
@brcmf_fil_cmd_data._entry_ptr = internal global ptr @brcmf_fil_cmd_data._entry, section ".printk_index", align 4
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Failed: error=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Firmware error: %s (%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"(unknown)\00", [22 x i8] zeroinitializer }, align 32
@brcmf_fil_errstr = internal constant { [53 x ptr], [44 x i8] } { [53 x ptr] [ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79], [44 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"BCME_OK\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"BCME_ERROR\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"BCME_BADARG\00", [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"BCME_BADOPTION\00", [17 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"BCME_NOTUP\00", [21 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"BCME_NOTDOWN\00", [19 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"BCME_NOTAP\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"BCME_NOTSTA\00", [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"BCME_BADKEYIDX\00", [17 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"BCME_RADIOOFF\00", [18 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"BCME_NOTBANDLOCKED\00", [45 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"BCME_NOCLK\00", [21 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"BCME_BADRATESET\00", [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"BCME_BADBAND\00", [19 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"BCME_BUFTOOSHORT\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"BCME_BUFTOOLONG\00", [16 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"BCME_BUSY\00", [22 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"BCME_NOTASSOCIATED\00", [45 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"BCME_BADSSIDLEN\00", [16 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"BCME_OUTOFRANGECHAN\00", [44 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"BCME_BADCHAN\00", [19 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"BCME_BADADDR\00", [19 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"BCME_NORESOURCE\00", [16 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"BCME_UNSUPPORTED\00", [47 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"BCME_BADLEN\00", [20 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"BCME_NOTREADY\00", [18 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"BCME_EPERM\00", [21 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"BCME_NOMEM\00", [21 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"BCME_ASSOCIATED\00", [16 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"BCME_RANGE\00", [21 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"BCME_NOTFOUND\00", [18 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"BCME_WME_NOT_ENABLED\00", [43 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"BCME_TSPEC_NOTFOUND\00", [44 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"BCME_ACM_NOTSUPPORTED\00", [42 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"BCME_NOT_WME_ASSOCIATION\00", [39 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"BCME_SDIO_ERROR\00", [16 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"BCME_DONGLE_DOWN\00", [47 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"BCME_VERSION\00", [19 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"BCME_TXFAIL\00", [20 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"BCME_RXFAIL\00", [20 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"BCME_NODEVICE\00", [18 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"BCME_NMODE_DISABLED\00", [44 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"BCME_NONRESIDENT\00", [47 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"BCME_SCANREJECT\00", [16 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"BCME_USAGE_ERROR\00", [47 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"BCME_IOCTL_ERROR\00", [47 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"BCME_SERIAL_PORT_ERR\00", [43 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"BCME_DISABLED\00", [18 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"BCME_DECERR\00", [20 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"BCME_ENCERR\00", [20 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"BCME_MICERR\00", [20 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"BCME_REPLAY\00", [20 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"BCME_IE_NOTFOUND\00", [47 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bsscfg:\00", [24 x i8] zeroinitializer }, align 32
@__func__.brcmf_create_bsscfg = private unnamed_addr constant [20 x i8] c"brcmf_create_bsscfg\00", align 1
@.str.81 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"buffer is too short\0A\00", [43 x i8] zeroinitializer }, align 32
@__func__.brcmf_create_xtlv = private unnamed_addr constant [18 x i8] c"brcmf_create_xtlv\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 136, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 137, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 154, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 172, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 225, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 236, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 262, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 265, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 349, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 361, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 387, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 389, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 450, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 462, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 487, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 489, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant [65 x i8] c"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/tracepoint.h\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 65, i32 1 }
@___asan_gen_.164 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 108, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 103, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 117, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 119, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 85, i32 10 }
@___asan_gen_.184 = private unnamed_addr constant [17 x i8] c"brcmf_fil_errstr\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 26, i32 27 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 27, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 28, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 29, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 30, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 31, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 32, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 33, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 34, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 35, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 36, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 37, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 38, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 39, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 40, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 41, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 42, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 43, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 44, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 45, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 46, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 47, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 48, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 49, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 50, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 51, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 52, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 53, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 54, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 55, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 56, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 57, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 58, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 59, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 60, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 61, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 62, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 63, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 64, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 65, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 66, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 67, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 68, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 69, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 70, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 71, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 72, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 73, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 74, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 75, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 76, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 77, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 78, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 79, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 298, i32 21 }
@___asan_gen_.349 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.350 = private constant [59 x i8] c"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 313, i32 3 }
@llvm.compiler.used = appending global [97 x ptr] [ptr @brcmf_fil_bsscfg_data_get._entry, ptr @brcmf_fil_bsscfg_data_get._entry_ptr, ptr @brcmf_fil_bsscfg_data_set._entry, ptr @brcmf_fil_bsscfg_data_set._entry_ptr, ptr @brcmf_fil_cmd_data._entry, ptr @brcmf_fil_cmd_data._entry_ptr, ptr @brcmf_fil_iovar_data_get._entry, ptr @brcmf_fil_iovar_data_get._entry_ptr, ptr @brcmf_fil_iovar_data_set._entry, ptr @brcmf_fil_iovar_data_set._entry_ptr, ptr @brcmf_fil_xtlv_data_get._entry, ptr @brcmf_fil_xtlv_data_get._entry_ptr, ptr @brcmf_fil_xtlv_data_set._entry, ptr @brcmf_fil_xtlv_data_set._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @brcmf_fil_errstr, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81], section "llvm.metadata"
@0 = internal global [90 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_fil_iovar_data_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_fil_iovar_data_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_fil_bsscfg_data_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_fil_bsscfg_data_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_fil_xtlv_data_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_fil_xtlv_data_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_fil_cmd_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmf_fil_errstr to i32), i32 212, i32 256, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_fil_cmd_data_set(ptr nocapture noundef readonly %ifp, i32 noundef %cmd, ptr noundef %data, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ifp, align 4
  %proto_block = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %proto_block, i32 noundef 0) #8
  %ifidx = getelementptr inbounds %struct.brcmf_if, ptr %ifp, i32 0, i32 6
  %2 = ptrtoint ptr %ifidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ifidx, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4096, ptr noundef nonnull @__func__.brcmf_fil_cmd_data_set, ptr noundef nonnull @.str, i32 noundef %3, i32 noundef %cmd, i32 noundef %len) #8
  %4 = tail call i32 @llvm.umin.i32(i32 %len, i32 64)
  tail call fastcc void @trace_brcmf_hexdump(ptr noundef %data, i32 noundef %4)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @brcmf_msg_level to i32))
  %5 = load i32, ptr @brcmf_msg_level, align 4
  %and = and i32 %5, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end11_crit_edge, label %if.then

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end11

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @brcmu_dbg_hex_dump(ptr noundef %data, i32 noundef %4, ptr noundef nonnull @.str.1) #8
  br label %do.end11

do.end11:                                         ; preds = %if.then, %entry.do.end11_crit_edge
  %call = tail call fastcc i32 @brcmf_fil_cmd_data(ptr noundef %ifp, i32 noundef %cmd, ptr noundef %data, i32 noundef %len, i1 noundef zeroext true)
  %6 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ifp, align 4
  %proto_block13 = getelementptr inbounds %struct.brcmf_pub, ptr %7, i32 0, i32 12
  tail call void @mutex_unlock(ptr noundef %proto_block13) #8
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brcmf_dbg(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_brcmf_hexdump(ptr noundef %data, i32 noundef %len) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_brcmf_hexdump, i32 0, i32 1), ptr blockaddress(@trace_brcmf_hexdump, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !199

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !189) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !200

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 @llvm.read_register.i32(metadata !189) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !201
  %call42 = tail call i32 @__traceiter_brcmf_hexdump(ptr noundef null, ptr noundef %data, i32 noundef %len) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !202
  %13 = tail call i32 @llvm.read_register.i32(metadata !189) #8
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !189) #8
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !200

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !189) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !203
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_brcmf_hexdump, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_brcmf_hexdump, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_brcmf_hexdump.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_brcmf_hexdump.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 79, ptr noundef nonnull @.str.20) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !204
  %31 = tail call i32 @llvm.read_register.i32(metadata !189) #8
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmu_dbg_hex_dump(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @brcmf_fil_cmd_data(ptr nocapture noundef readonly %ifp, i32 noundef %cmd, ptr noundef %data, i32 noundef %len, i1 noundef zeroext %set) unnamed_addr #0 align 64 {
entry:
  %fwerr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ifp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fwerr) #8
  %2 = ptrtoint ptr %fwerr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %fwerr, align 4, !annotation !205
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %state = getelementptr inbounds %struct.brcmf_bus, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.not = icmp eq i32 %6, 1
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %wiphy = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wiphy, align 4
  %dev = getelementptr inbounds %struct.wiphy, ptr %8, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp5.not = icmp eq ptr %data, null
  %9 = tail call i32 @llvm.umin.i32(i32 %len, i32 8192)
  %len.addr.0 = select i1 %cmp5.not, i32 %len, i32 %9
  %ifidx = getelementptr inbounds %struct.brcmf_if, ptr %ifp, i32 0, i32 6
  %10 = ptrtoint ptr %ifidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ifidx, align 4
  %proto.i = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %proto.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %proto.i, align 4
  %query_dcmd.i = getelementptr inbounds %struct.brcmf_proto, ptr %13, i32 0, i32 1
  %set_dcmd.i = getelementptr inbounds %struct.brcmf_proto, ptr %13, i32 0, i32 2
  %query_dcmd.i.sink = select i1 %set, ptr %set_dcmd.i, ptr %query_dcmd.i
  %14 = ptrtoint ptr %query_dcmd.i.sink to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %query_dcmd.i.sink, align 4
  %call.i48 = call i32 %15(ptr noundef %1, i32 noundef %11, i32 noundef %cmd, ptr noundef %data, i32 noundef %len.addr.0, ptr noundef nonnull %fwerr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48)
  %tobool13.not = icmp eq i32 %call.i48, 0
  br i1 %tobool13.not, label %if.else18, label %do.body15

do.body15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4096, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef %call.i48) #8
  br label %if.end26

if.else18:                                        ; preds = %if.end
  %16 = ptrtoint ptr %fwerr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fwerr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp19 = icmp slt i32 %17, 0
  br i1 %cmp19, label %do.body21, label %if.else18.if.end26_crit_edge

if.else18.if.end26_crit_edge:                     ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

do.body21:                                        ; preds = %if.else18
  %sub = sub i32 0, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %sub)
  %cmp.i = icmp ugt i32 %sub, 52
  br i1 %cmp.i, label %do.body21.brcmf_fil_get_errstr.exit_crit_edge, label %if.end.i

do.body21.brcmf_fil_get_errstr.exit_crit_edge:    ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #10
  br label %brcmf_fil_get_errstr.exit

if.end.i:                                         ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr [53 x ptr], ptr @brcmf_fil_errstr, i32 0, i32 %sub
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  br label %brcmf_fil_get_errstr.exit

brcmf_fil_get_errstr.exit:                        ; preds = %if.end.i, %do.body21.brcmf_fil_get_errstr.exit_crit_edge
  %retval.0.i = phi ptr [ %19, %if.end.i ], [ @.str.26, %do.body21.brcmf_fil_get_errstr.exit_crit_edge ]
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4096, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.25, ptr noundef %retval.0.i, i32 noundef %17) #8
  br label %if.end26

if.end26:                                         ; preds = %brcmf_fil_get_errstr.exit, %if.else18.if.end26_crit_edge, %do.body15
  %err.1 = phi i32 [ %call.i48, %do.body15 ], [ -52, %brcmf_fil_get_errstr.exit ], [ 0, %if.else18.if.end26_crit_edge ]
  %fwil_fwerr = getelementptr inbounds %struct.brcmf_if, ptr %ifp, i32 0, i32 15
  %20 = ptrtoint ptr %fwil_fwerr to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %fwil_fwerr, align 1, !range !206
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool27.not = icmp eq i8 %21, 0
  br i1 %tobool27.not, label %if.end26.cleanup_crit_edge, label %if.then28

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %fwerr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fwerr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %if.end26.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ %23, %if.then28 ], [ %err.1, %if.end26.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fwerr) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_fil_cmd_data_get(ptr nocapture noundef readonly %ifp, i32 noundef %cmd, ptr noundef %data, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ifp, align 4
  %proto_block = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %proto_block, i32 noundef 0) #8
  %call = tail call fastcc i32 @brcmf_fil_cmd_data(ptr noundef %ifp, i32 noundef %cmd, ptr noundef %data, i32 noundef %len, i1 noundef zeroext false)
  %ifidx = getelementptr inbounds %struct.brcmf_if, ptr %ifp, i32 0, i32 6
  %2 = ptrtoint ptr %ifidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ifidx, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4096, ptr noundef nonnull @__func__.brcmf_fil_cmd_data_get, ptr noundef nonnull @.str.2, i32 noundef %3, i32 noundef %cmd, i32 noundef %len, i32 noundef %call) #8
  %4 = tail call i32 @llvm.umin.i32(i32 %len, i32 64)
  tail call fastcc void @trace_brcmf_hexdump(ptr noundef %data, i32 noundef %4)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @brcmf_msg_level to i32))
  %5 = load i32, ptr @brcmf_msg_level, align 4
  %and = and i32 %5, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end11_crit_edge, label %if.then

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end11

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @brcmu_dbg_hex_dump(ptr noundef %data, i32 noundef %4, ptr noundef nonnull @.str.1) #8
  br label %do.end11

do.end11:                                         ; preds = %if.then, %entry.do.end11_crit_edge
  %6 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ifp, align 4
  %proto_block13 = getelementptr inbounds %struct.brcmf_pub, ptr %7, i32 0, i32 12
  tail call void @mutex_unlock(ptr noundef %proto_block13) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_fil_cmd_int_set(ptr nocapture noundef readonly %ifp, i32 noundef %cmd, i32 noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %data_le = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_le) #8
  %0 = tail call i32 @llvm.bswap.i32(i32 %data)
  %1 = ptrtoint ptr %data_le to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %data_le, align 4
  %2 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ifp, align 4
  %proto_block = getelementptr inbounds %struct.brcmf_pub, ptr %3, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %proto_block, i32 noundef 0) #8
  %ifidx = getelementptr inbounds %struct.brcmf_if, ptr %ifp, i32 0, i32 6
  %4 = ptrtoint ptr %ifidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ifidx, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4096, ptr noundef nonnull @__func__.brcmf_fil_cmd_int_set, ptr noundef nonnull @.str.3, i32 noundef %5, i32 noundef %cmd, i32 noundef %data) #8
  %call = call fastcc i32 @brcmf_fil_cmd_data(ptr noundef %ifp, i32 noundef %cmd, ptr noundef nonnull %data_le, i32 noundef 4, i1 noundef zeroext true)
  %6 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ifp, align 4
  %proto_block2 = getelementptr inbounds %struct.brcmf_pub, ptr %7, i32 0, i32 12
  call void @mutex_unlock(ptr noundef %proto_block2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_le) #8
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_fil_cmd_int_get(ptr nocapture noundef readonly %ifp, i32 noundef %cmd, ptr nocapture noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %data_le = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_le) #8
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %3 = ptrtoint ptr %data_le to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %data_le, align 4
  %4 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ifp, align 4
  %proto_block = getelementptr inbounds %struct.brcmf_pub, ptr %5, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %proto_block, i32 noundef 0) #8
  %call = call fastcc i32 @brcmf_fil_cmd_data(ptr noundef %ifp, i32 noundef %cmd, ptr noundef nonnull %data_le, i32 noundef 4, i1 noundef zeroext false)
  %6 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ifp, align 4
  %proto_block2 = getelementptr inbounds %struct.brcmf_pub, ptr %7, i32 0, i32 12
  call void @mutex_unlock(ptr noundef %proto_block2) #8
  %8 = ptrtoint ptr %data_le to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_le, align 4
  %10 = call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %data, align 4
  %ifidx = getelementptr inbounds %struct.brcmf_if, ptr %ifp, i32 0, i32 6
  %12 = ptrtoint ptr %ifidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ifidx, align 4
  call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4096, ptr noundef nonnull @__func__.brcmf_fil_cmd_int_get, ptr noundef nonnull @.str.3, i32 noundef %13, i32 noundef %cmd, i32 noundef %10) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_le) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_fil_iovar_data_set(ptr nocapture noundef readonly %ifp, ptr noundef %name, ptr noundef %data, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ifp, align 4
  %proto_block = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %proto_block, i32 noundef 0) #8
  %ifidx = getelementptr inbounds %struct.brcmf_if, ptr %ifp, i32 0, i32 6
  %2 = ptrtoint ptr %ifidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ifidx, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4096, ptr noundef nonnull @__func__.brcmf_fil_iovar_data_set, ptr noundef nonnull @.str.4, i32 noundef %3, ptr noundef %name, i32 noundef %len) #8
  %4 = tail call i32 @llvm.umin.i32(i32 %len, i32 64)
  tail call fastcc void @trace_brcmf_hexdump(ptr noundef %data, i32 noundef %4)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @brcmf_msg_level to i32))
  %5 = load i32, ptr @brcmf_msg_level, align 4
  %and = and i32 %5, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end12_crit_edge, label %if.then

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end12

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @brcmu_dbg_hex_dump(ptr noundef %data, i32 noundef %4, ptr noundef nonnull @.str.1) #8
  br label %do.end12

do.end12:                                         ; preds = %if.then, %entry.do.end12_crit_edge
  %proto_buf = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 13
  %call.i = tail call i32 @strlen(ptr noundef %name) #12
  %add.i = add i32 %call.i, 1
  %add1.i = add i32 %add.i, %len
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %add1.i)
  %cmp.i = icmp ugt i32 %add1.i, 8192
  br i1 %cmp.i, label %do.end12.if.else_crit_edge, label %if.end.i

do.end12.if.else_crit_edge:                       ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.end.i:                                         ; preds = %do.end12
  %6 = call ptr @memcpy(ptr %proto_buf, ptr %name, i32 %add.i)
  %tobool.not.i = icmp eq ptr %data, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool2.not.i = icmp eq i32 %len, 0
  %or.cond.i = or i1 %tobool.not.i, %tobool2.not.i
  br i1 %or.cond.i, label %if.end.i.brcmf_create_iovar.exit_crit_edge, label %if.then3.i

if.end.i.brcmf_create_iovar.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %brcmf_create_iovar.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr i8, ptr %proto_buf, i32 %add.i
  %7 = call ptr @memcpy(ptr %arrayidx.i, ptr %data, i32 %len)
  br label %brcmf_create_iovar.exit

brcmf_create_iovar.exit:                          ; preds = %if.then3.i, %if.end.i.brcmf_create_iovar.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add1.i)
  %tobool13.not = icmp eq i32 %add1.i, 0
  br i1 %tobool13.not, label %brcmf_create_iovar.exit.if.else_crit_edge, label %if.then14

brcmf_create_iovar.exit.if.else_crit_edge:        ; preds = %brcmf_create_iovar.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then14:                                        ; preds = %brcmf_create_iovar.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call17 = tail call fastcc i32 @brcmf_fil_cmd_data(ptr noundef %ifp, i32 noundef 263, ptr noundef %proto_buf, i32 noundef %add1.i, i1 noundef zeroext true)
  br label %if.end24

if.else:                                          ; preds = %brcmf_create_iovar.exit.if.else_crit_edge, %do.end12.if.else_crit_edge
  %wiphy = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wiphy, align 4
  %dev = getelementptr inbounds %struct.wiphy, ptr %9, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.brcmf_fil_iovar_data_set) #11
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then14
  %err.0 = phi i32 [ %call17, %if.then14 ], [ -1, %if.else ]
  tail call void @mutex_unlock(ptr noundef %proto_block) #8
  ret i32 %err.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_fil_iovar_data_get(ptr nocapture noundef readonly %ifp, ptr noundef %name, ptr noundef %data, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ifp, align 4
  %proto_block = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %proto_block, i32 noundef 0) #8
  %proto_buf = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 13
  %call.i = tail call i32 @strlen(ptr noundef %name) #12
  %add.i = add i32 %call.i, 1
  %add1.i = add i32 %add.i, %len
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %add1.i)
  %cmp.i = icmp ugt i32 %add1.i, 8192
  br i1 %cmp.i, label %entry.if.else_crit_edge, label %if.end.i

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.end.i:                                         ; preds = %entry
  %2 = call ptr @memcpy(ptr %proto_buf, ptr %name, i32 %add.i)
  %tobool.not.i = icmp eq ptr %data, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool2.not.i = icmp eq i32 %len, 0
  %or.cond.i = or i1 %tobool.not.i, %tobool2.not.i
  br i1 %or.cond.i, label %if.end.i.brcmf_create_iovar.exit_crit_edge, label %if.then3.i

if.end.i.brcmf_create_iovar.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %brcmf_create_iovar.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr i8, ptr %proto_buf, i32 %add.i
  %3 = call ptr @memcpy(ptr %arrayidx.i, ptr %data, i32 %len)
  br label %brcmf_create_iovar.exit

brcmf_create_iovar.exit:                          ; preds = %if.then3.i, %if.end.i.brcmf_create_iovar.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add1.i)
  %tobool.not = icmp eq i32 %add1.i, 0
  br i1 %tobool.not, label %brcmf_create_iovar.exit.if.else_crit_edge, label %if.then

brcmf_create_iovar.exit.if.else_crit_edge:        ; preds = %brcmf_create_iovar.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then:                                          ; preds = %brcmf_create_iovar.exit
  %call4 = tail call fastcc i32 @brcmf_fil_cmd_data(ptr noundef %ifp, i32 noundef 262, ptr noundef %proto_buf, i32 noundef %add1.i, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %if.then5, label %if.then.do.body12_crit_edge

if.then.do.body12_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body12

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %4 = call ptr @memcpy(ptr %data, ptr %proto_buf, i32 %len)
  br label %do.body12

if.else:                                          ; preds = %brcmf_create_iovar.exit.if.else_crit_edge, %entry.if.else_crit_edge
  %wiphy = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wiphy, align 4
  %dev = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.9) #11
  br label %do.body12

do.body12:                                        ; preds = %if.else, %if.then5, %if.then.do.body12_crit_edge
  %err.0 = phi i32 [ 0, %if.then5 ], [ %call4, %if.then.do.body12_crit_edge ], [ -1, %if.else ]
  %ifidx = getelementptr inbounds %struct.brcmf_if, ptr %ifp, i32 0, i32 6
  %7 = ptrtoint ptr %ifidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ifidx, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4096, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef %8, ptr noundef %name, i32 noundef %len, i32 noundef %err.0) #8
  %9 = tail call i32 @llvm.umin.i32(i32 %len, i32 64)
  tail call fastcc void @trace_brcmf_hexdump(ptr noundef %data, i32 noundef %9)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @brcmf_msg_level to i32))
  %10 = load i32, ptr @brcmf_msg_level, align 4
  %and = and i32 %10, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %do.body12.do.end29_crit_edge, label %if.then18

do.body12.do.end29_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end29

if.then18:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @brcmu_dbg_hex_dump(ptr noundef %data, i32 noundef %9, ptr noundef nonnull @.str.1) #8
  br label %do.end29

do.end29:                                         ; preds = %if.then18, %do.body12.do.end29_crit_edge
  tail call void @mutex_unlock(ptr noundef %proto_block) #8
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_fil_iovar_int_set(ptr nocapture noundef readonly %ifp, ptr noundef %name, i32 noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %data_le = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_le) #8
  %0 = tail call i32 @llvm.bswap.i32(i32 %data)
  %1 = ptrtoint ptr %data_le to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %data_le, align 4
  %call = call i32 @brcmf_fil_iovar_data_set(ptr noundef %ifp, ptr noundef %name, ptr noundef nonnull %data_le, i32 noundef 4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_le) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_fil_iovar_int_get(ptr nocapture noundef readonly %ifp, ptr noundef %name, ptr nocapture noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %data_le = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_le) #8
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %3 = ptrtoint ptr %data_le to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %data_le, align 4
  %call = call i32 @brcmf_fil_iovar_data_get(ptr noundef %ifp, ptr noundef %name, ptr noundef nonnull %data_le, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %data_le to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_le, align 4
  %6 = call i32 @llvm.bswap.i32(i32 %5)
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %data, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_le) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_fil_bsscfg_data_set(ptr nocapture noundef readonly %ifp, ptr noundef %name, ptr noundef %data, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ifp, align 4
  %proto_block = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %proto_block, i32 noundef 0) #8
  %ifidx = getelementptr inbounds %struct.brcmf_if, ptr %ifp, i32 0, i32 6
  %2 = ptrtoint ptr %ifidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ifidx, align 4
  %bsscfgidx = getelementptr inbounds %struct.brcmf_if, ptr %ifp, i32 0, i32 7
  %4 = ptrtoint ptr %bsscfgidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bsscfgidx, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4096, ptr noundef nonnull @__func__.brcmf_fil_bsscfg_data_set, ptr noundef nonnull @.str.11, i32 noundef %3, i32 noundef %5, ptr noundef %name, i32 noundef %len) #8
  %6 = tail call i32 @llvm.umin.i32(i32 %len, i32 64)
  tail call fastcc void @trace_brcmf_hexdump(ptr noundef %data, i32 noundef %6)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @brcmf_msg_level to i32))
  %7 = load i32, ptr @brcmf_msg_level, align 4
  %and = and i32 %7, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end12_crit_edge, label %if.then

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end12

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @brcmu_dbg_hex_dump(ptr noundef %data, i32 noundef %6, ptr noundef nonnull @.str.1) #8
  br label %do.end12

do.end12:                                         ; preds = %if.then, %entry.do.end12_crit_edge
  %8 = ptrtoint ptr %bsscfgidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bsscfgidx, align 4
  %proto_buf = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp eq i32 %9, 0
  %call.i.i = tail call i32 @strlen(ptr noundef %name) #12
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %do.end12
  %add.i.i = add i32 %call.i.i, 1
  %add1.i.i = add i32 %add.i.i, %len
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %add1.i.i)
  %cmp.i.i = icmp ugt i32 %add1.i.i, 8192
  br i1 %cmp.i.i, label %if.then.i.if.else_crit_edge, label %if.end.i.i

if.then.i.if.else_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.end.i.i:                                       ; preds = %if.then.i
  %10 = call ptr @memcpy(ptr %proto_buf, ptr %name, i32 %add.i.i)
  %tobool.not.i.i = icmp eq ptr %data, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool2.not.i.i = icmp eq i32 %len, 0
  %or.cond.i.i = or i1 %tobool.not.i.i, %tobool2.not.i.i
  br i1 %or.cond.i.i, label %if.end.i.i.brcmf_create_bsscfg.exit_crit_edge, label %if.then3.i.i

if.end.i.i.brcmf_create_bsscfg.exit_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %brcmf_create_bsscfg.exit

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i = getelementptr i8, ptr %proto_buf, i32 %add.i.i
  %11 = call ptr @memcpy(ptr %arrayidx.i.i, ptr %data, i32 %len)
  br label %brcmf_create_bsscfg.exit

if.end.i:                                         ; preds = %do.end12
  %add4.i = add i32 %len, 12
  %add5.i = add i32 %add4.i, %call.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %add5.i)
  %cmp6.i = icmp ugt i32 %add5.i, 8192
  br i1 %cmp6.i, label %do.body.i, label %if.end8.i

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_create_bsscfg, ptr noundef nonnull @.str.81) #8
  br label %if.else

if.end8.i:                                        ; preds = %if.end.i
  %add.i = add i32 %call.i.i, 1
  %12 = call ptr @memcpy(ptr %proto_buf, ptr @.str.80, i32 7)
  %add.ptr.i = getelementptr %struct.brcmf_pub, ptr %1, i32 0, i32 13, i32 7
  %13 = call ptr @memcpy(ptr %add.ptr.i, ptr %name, i32 %add.i)
  %add.ptr9.i = getelementptr i8, ptr %add.ptr.i, i32 %add.i
  %14 = tail call i32 @llvm.bswap.i32(i32 %9) #8
  %15 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %14, ptr %add.ptr9.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not.i = icmp eq i32 %len, 0
  br i1 %tobool.not.i, label %if.end8.i.brcmf_create_bsscfg.exit_crit_edge, label %if.then11.i

if.end8.i.brcmf_create_bsscfg.exit_crit_edge:     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %brcmf_create_bsscfg.exit

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr10.i = getelementptr i8, ptr %add.ptr9.i, i32 4
  %16 = call ptr @memcpy(ptr %add.ptr10.i, ptr %data, i32 %len)
  br label %brcmf_create_bsscfg.exit

brcmf_create_bsscfg.exit:                         ; preds = %if.then11.i, %if.end8.i.brcmf_create_bsscfg.exit_crit_edge, %if.then3.i.i, %if.end.i.i.brcmf_create_bsscfg.exit_crit_edge
  %retval.0.i = phi i32 [ %add5.i, %if.then11.i ], [ %add5.i, %if.end8.i.brcmf_create_bsscfg.exit_crit_edge ], [ %add1.i.i, %if.then3.i.i ], [ %add1.i.i, %if.end.i.i.brcmf_create_bsscfg.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool14.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool14.not, label %brcmf_create_bsscfg.exit.if.else_crit_edge, label %if.then15

brcmf_create_bsscfg.exit.if.else_crit_edge:       ; preds = %brcmf_create_bsscfg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then15:                                        ; preds = %brcmf_create_bsscfg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call18 = tail call fastcc i32 @brcmf_fil_cmd_data(ptr noundef %ifp, i32 noundef 263, ptr noundef %proto_buf, i32 noundef %retval.0.i, i1 noundef zeroext true)
  br label %if.end25

if.else:                                          ; preds = %brcmf_create_bsscfg.exit.if.else_crit_edge, %do.body.i, %if.then.i.if.else_crit_edge
  %wiphy = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wiphy, align 4
  %dev = getelementptr inbounds %struct.wiphy, ptr %18, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.brcmf_fil_bsscfg_data_set) #11
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then15
  %err.0 = phi i32 [ %call18, %if.then15 ], [ -1, %if.else ]
  tail call void @mutex_unlock(ptr noundef %proto_block) #8
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_fil_bsscfg_data_get(ptr nocapture noundef readonly %ifp, ptr noundef %name, ptr noundef %data, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ifp, align 4
  %proto_block = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %proto_block, i32 noundef 0) #8
  %bsscfgidx = getelementptr inbounds %struct.brcmf_if, ptr %ifp, i32 0, i32 7
  %2 = ptrtoint ptr %bsscfgidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bsscfgidx, align 4
  %proto_buf = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  %call.i.i = tail call i32 @strlen(ptr noundef %name) #12
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  %add.i.i = add i32 %call.i.i, 1
  %add1.i.i = add i32 %add.i.i, %len
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %add1.i.i)
  %cmp.i.i = icmp ugt i32 %add1.i.i, 8192
  br i1 %cmp.i.i, label %if.then.i.if.else_crit_edge, label %if.end.i.i

if.then.i.if.else_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.end.i.i:                                       ; preds = %if.then.i
  %4 = call ptr @memcpy(ptr %proto_buf, ptr %name, i32 %add.i.i)
  %tobool.not.i.i = icmp eq ptr %data, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool2.not.i.i = icmp eq i32 %len, 0
  %or.cond.i.i = or i1 %tobool.not.i.i, %tobool2.not.i.i
  br i1 %or.cond.i.i, label %if.end.i.i.brcmf_create_bsscfg.exit_crit_edge, label %if.then3.i.i

if.end.i.i.brcmf_create_bsscfg.exit_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %brcmf_create_bsscfg.exit

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i = getelementptr i8, ptr %proto_buf, i32 %add.i.i
  %5 = call ptr @memcpy(ptr %arrayidx.i.i, ptr %data, i32 %len)
  br label %brcmf_create_bsscfg.exit

if.end.i:                                         ; preds = %entry
  %add4.i = add i32 %len, 12
  %add5.i = add i32 %add4.i, %call.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %add5.i)
  %cmp6.i = icmp ugt i32 %add5.i, 8192
  br i1 %cmp6.i, label %do.body.i, label %if.end8.i

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_create_bsscfg, ptr noundef nonnull @.str.81) #8
  br label %if.else

if.end8.i:                                        ; preds = %if.end.i
  %add.i = add i32 %call.i.i, 1
  %6 = call ptr @memcpy(ptr %proto_buf, ptr @.str.80, i32 7)
  %add.ptr.i = getelementptr %struct.brcmf_pub, ptr %1, i32 0, i32 13, i32 7
  %7 = call ptr @memcpy(ptr %add.ptr.i, ptr %name, i32 %add.i)
  %add.ptr9.i = getelementptr i8, ptr %add.ptr.i, i32 %add.i
  %8 = tail call i32 @llvm.bswap.i32(i32 %3) #8
  %9 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %8, ptr %add.ptr9.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not.i = icmp eq i32 %len, 0
  br i1 %tobool.not.i, label %if.end8.i.brcmf_create_bsscfg.exit_crit_edge, label %if.then11.i

if.end8.i.brcmf_create_bsscfg.exit_crit_edge:     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %brcmf_create_bsscfg.exit

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr10.i = getelementptr i8, ptr %add.ptr9.i, i32 4
  %10 = call ptr @memcpy(ptr %add.ptr10.i, ptr %data, i32 %len)
  br label %brcmf_create_bsscfg.exit

brcmf_create_bsscfg.exit:                         ; preds = %if.then11.i, %if.end8.i.brcmf_create_bsscfg.exit_crit_edge, %if.then3.i.i, %if.end.i.i.brcmf_create_bsscfg.exit_crit_edge
  %retval.0.i = phi i32 [ %add5.i, %if.then11.i ], [ %add5.i, %if.end8.i.brcmf_create_bsscfg.exit_crit_edge ], [ %add1.i.i, %if.then3.i.i ], [ %add1.i.i, %if.end.i.i.brcmf_create_bsscfg.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %brcmf_create_bsscfg.exit.if.else_crit_edge, label %if.then

brcmf_create_bsscfg.exit.if.else_crit_edge:       ; preds = %brcmf_create_bsscfg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then:                                          ; preds = %brcmf_create_bsscfg.exit
  %call4 = tail call fastcc i32 @brcmf_fil_cmd_data(ptr noundef %ifp, i32 noundef 262, ptr noundef %proto_buf, i32 noundef %retval.0.i, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %if.then5, label %if.then.do.body12_crit_edge

if.then.do.body12_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body12

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %11 = call ptr @memcpy(ptr %data, ptr %proto_buf, i32 %len)
  br label %do.body12

if.else:                                          ; preds = %brcmf_create_bsscfg.exit.if.else_crit_edge, %do.body.i, %if.then.i.if.else_crit_edge
  %wiphy = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wiphy, align 4
  %dev = getelementptr inbounds %struct.wiphy, ptr %13, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #11
  br label %do.body12

do.body12:                                        ; preds = %if.else, %if.then5, %if.then.do.body12_crit_edge
  %err.0 = phi i32 [ 0, %if.then5 ], [ %call4, %if.then.do.body12_crit_edge ], [ -1, %if.else ]
  %ifidx = getelementptr inbounds %struct.brcmf_if, ptr %ifp, i32 0, i32 6
  %14 = ptrtoint ptr %ifidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ifidx, align 4
  %16 = ptrtoint ptr %bsscfgidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bsscfgidx, align 4
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4096, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef %15, i32 noundef %17, ptr noundef %name, i32 noundef %len, i32 noundef %err.0) #8
  %18 = tail call i32 @llvm.umin.i32(i32 %len, i32 64)
  tail call fastcc void @trace_brcmf_hexdump(ptr noundef %data, i32 noundef %18)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @brcmf_msg_level to i32))
  %19 = load i32, ptr @brcmf_msg_level, align 4
  %and = and i32 %19, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %do.body12.do.end30_crit_edge, label %if.then19

do.body12.do.end30_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end30

if.then19:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @brcmu_dbg_hex_dump(ptr noundef %data, i32 noundef %18, ptr noundef nonnull @.str.1) #8
  br label %do.end30

do.end30:                                         ; preds = %if.then19, %do.body12.do.end30_crit_edge
  tail call void @mutex_unlock(ptr noundef %proto_block) #8
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_fil_bsscfg_int_set(ptr nocapture noundef readonly %ifp, ptr noundef %name, i32 noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %data_le = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_le) #8
  %0 = tail call i32 @llvm.bswap.i32(i32 %data)
  %1 = ptrtoint ptr %data_le to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %data_le, align 4
  %call = call i32 @brcmf_fil_bsscfg_data_set(ptr noundef %ifp, ptr noundef %name, ptr noundef nonnull %data_le, i32 noundef 4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_le) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_fil_bsscfg_int_get(ptr nocapture noundef readonly %ifp, ptr noundef %name, ptr nocapture noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %data_le = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_le) #8
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %3 = ptrtoint ptr %data_le to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %data_le, align 4
  %call = call i32 @brcmf_fil_bsscfg_data_get(ptr noundef %ifp, ptr noundef %name, ptr noundef nonnull %data_le, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %data_le to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_le, align 4
  %6 = call i32 @llvm.bswap.i32(i32 %5)
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %data, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_le) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_fil_xtlv_data_set(ptr nocapture noundef readonly %ifp, ptr noundef %name, i16 noundef zeroext %id, ptr noundef %data, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ifp, align 4
  %proto_block = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %proto_block, i32 noundef 0) #8
  %ifidx = getelementptr inbounds %struct.brcmf_if, ptr %ifp, i32 0, i32 6
  %2 = ptrtoint ptr %ifidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ifidx, align 4
  %conv = zext i16 %id to i32
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4096, ptr noundef nonnull @__func__.brcmf_fil_xtlv_data_set, ptr noundef nonnull @.str.15, i32 noundef %3, ptr noundef %name, i32 noundef %conv, i32 noundef %len) #8
  %4 = tail call i32 @llvm.umin.i32(i32 %len, i32 64)
  tail call fastcc void @trace_brcmf_hexdump(ptr noundef %data, i32 noundef %4)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @brcmf_msg_level to i32))
  %5 = load i32, ptr @brcmf_msg_level, align 4
  %and = and i32 %5, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %if.then

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @brcmu_dbg_hex_dump(ptr noundef %data, i32 noundef %4, ptr noundef nonnull @.str.1) #8
  br label %do.end14

do.end14:                                         ; preds = %if.then, %entry.do.end14_crit_edge
  %proto_buf = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 13
  %call.i = tail call i32 @strlen(ptr noundef %name) #12
  %add.i = add i32 %call.i, 1
  %call1.i = tail call i32 @brcmf_xtlv_data_size(i32 noundef %len, i16 noundef zeroext 1) #8
  %add2.i = add i32 %add.i, %call1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %add2.i)
  %cmp.i = icmp ugt i32 %add2.i, 8192
  br i1 %cmp.i, label %brcmf_create_xtlv.exit.thread, label %brcmf_create_xtlv.exit

brcmf_create_xtlv.exit.thread:                    ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_create_xtlv, ptr noundef nonnull @.str.81) #8
  br label %if.else

brcmf_create_xtlv.exit:                           ; preds = %do.end14
  %6 = call ptr @memcpy(ptr %proto_buf, ptr %name, i32 %add.i)
  %add.ptr.i = getelementptr i8, ptr %proto_buf, i32 %add.i
  %conv.i = trunc i32 %len to i16
  tail call void @brcmf_xtlv_pack_header(ptr noundef %add.ptr.i, i16 noundef zeroext %id, i16 noundef zeroext %conv.i, ptr noundef %data, i16 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add2.i)
  %tobool15.not = icmp eq i32 %add2.i, 0
  br i1 %tobool15.not, label %brcmf_create_xtlv.exit.if.else_crit_edge, label %if.then16

brcmf_create_xtlv.exit.if.else_crit_edge:         ; preds = %brcmf_create_xtlv.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then16:                                        ; preds = %brcmf_create_xtlv.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call19 = tail call fastcc i32 @brcmf_fil_cmd_data(ptr noundef %ifp, i32 noundef 263, ptr noundef %proto_buf, i32 noundef %add2.i, i1 noundef zeroext true)
  br label %if.end26

if.else:                                          ; preds = %brcmf_create_xtlv.exit.if.else_crit_edge, %brcmf_create_xtlv.exit.thread
  %wiphy = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wiphy, align 4
  %dev = getelementptr inbounds %struct.wiphy, ptr %8, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.brcmf_fil_xtlv_data_set) #11
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then16
  %err.0 = phi i32 [ %call19, %if.then16 ], [ -1, %if.else ]
  tail call void @mutex_unlock(ptr noundef %proto_block) #8
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_fil_xtlv_data_get(ptr nocapture noundef readonly %ifp, ptr noundef %name, i16 noundef zeroext %id, ptr noundef %data, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ifp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ifp, align 4
  %proto_block = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %proto_block, i32 noundef 0) #8
  %proto_buf = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 13
  %call.i = tail call i32 @strlen(ptr noundef %name) #12
  %add.i = add i32 %call.i, 1
  %call1.i = tail call i32 @brcmf_xtlv_data_size(i32 noundef %len, i16 noundef zeroext 1) #8
  %add2.i = add i32 %add.i, %call1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %add2.i)
  %cmp.i = icmp ugt i32 %add2.i, 8192
  br i1 %cmp.i, label %brcmf_create_xtlv.exit.thread, label %brcmf_create_xtlv.exit

brcmf_create_xtlv.exit.thread:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_create_xtlv, ptr noundef nonnull @.str.81) #8
  br label %if.else

brcmf_create_xtlv.exit:                           ; preds = %entry
  %2 = call ptr @memcpy(ptr %proto_buf, ptr %name, i32 %add.i)
  %add.ptr.i = getelementptr i8, ptr %proto_buf, i32 %add.i
  %conv.i = trunc i32 %len to i16
  tail call void @brcmf_xtlv_pack_header(ptr noundef %add.ptr.i, i16 noundef zeroext %id, i16 noundef zeroext %conv.i, ptr noundef %data, i16 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add2.i)
  %tobool.not = icmp eq i32 %add2.i, 0
  br i1 %tobool.not, label %brcmf_create_xtlv.exit.if.else_crit_edge, label %if.then

brcmf_create_xtlv.exit.if.else_crit_edge:         ; preds = %brcmf_create_xtlv.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then:                                          ; preds = %brcmf_create_xtlv.exit
  %call4 = tail call fastcc i32 @brcmf_fil_cmd_data(ptr noundef %ifp, i32 noundef 262, ptr noundef %proto_buf, i32 noundef %add2.i, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %if.then5, label %if.then.do.body12_crit_edge

if.then.do.body12_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body12

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %3 = call ptr @memcpy(ptr %data, ptr %proto_buf, i32 %len)
  br label %do.body12

if.else:                                          ; preds = %brcmf_create_xtlv.exit.if.else_crit_edge, %brcmf_create_xtlv.exit.thread
  %wiphy = getelementptr inbounds %struct.brcmf_pub, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wiphy, align 4
  %dev = getelementptr inbounds %struct.wiphy, ptr %5, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.17) #11
  br label %do.body12

do.body12:                                        ; preds = %if.else, %if.then5, %if.then.do.body12_crit_edge
  %err.0 = phi i32 [ 0, %if.then5 ], [ %call4, %if.then.do.body12_crit_edge ], [ -1, %if.else ]
  %ifidx = getelementptr inbounds %struct.brcmf_if, ptr %ifp, i32 0, i32 6
  %6 = ptrtoint ptr %ifidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ifidx, align 4
  %conv = zext i16 %id to i32
  tail call void (i32, ptr, ptr, ...) @__brcmf_dbg(i32 noundef 4096, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %7, ptr noundef %name, i32 noundef %conv, i32 noundef %len, i32 noundef %err.0) #8
  %8 = tail call i32 @llvm.umin.i32(i32 %len, i32 64)
  tail call fastcc void @trace_brcmf_hexdump(ptr noundef %data, i32 noundef %8)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @brcmf_msg_level to i32))
  %9 = load i32, ptr @brcmf_msg_level, align 4
  %and = and i32 %9, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %do.body12.do.end31_crit_edge, label %if.then19

do.body12.do.end31_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end31

if.then19:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @brcmu_dbg_hex_dump(ptr noundef %data, i32 noundef %8, ptr noundef nonnull @.str.1) #8
  br label %do.end31

do.end31:                                         ; preds = %if.then19, %do.body12.do.end31_crit_edge
  tail call void @mutex_unlock(ptr noundef %proto_block) #8
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_fil_xtlv_int_set(ptr nocapture noundef readonly %ifp, ptr noundef %name, i16 noundef zeroext %id, i32 noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %data_le = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_le) #8
  %0 = tail call i32 @llvm.bswap.i32(i32 %data)
  %1 = ptrtoint ptr %data_le to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %data_le, align 4
  %call = call i32 @brcmf_fil_xtlv_data_set(ptr noundef %ifp, ptr noundef %name, i16 noundef zeroext %id, ptr noundef nonnull %data_le, i32 noundef 4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_le) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_fil_xtlv_int_get(ptr nocapture noundef readonly %ifp, ptr noundef %name, i16 noundef zeroext %id, ptr nocapture noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %data_le = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_le) #8
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %3 = ptrtoint ptr %data_le to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %data_le, align 4
  %call = call i32 @brcmf_fil_xtlv_data_get(ptr noundef %ifp, ptr noundef %name, i16 noundef zeroext %id, ptr noundef nonnull %data_le, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %data_le to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_le, align 4
  %6 = call i32 @llvm.bswap.i32(i32 %5)
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %data, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_le) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_fil_xtlv_int8_get(ptr nocapture noundef readonly %ifp, ptr noundef %name, i16 noundef zeroext %id, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @brcmf_fil_xtlv_data_get(ptr noundef %ifp, ptr noundef %name, i16 noundef zeroext %id, ptr noundef %data, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @brcmf_fil_xtlv_int16_get(ptr nocapture noundef readonly %ifp, ptr noundef %name, i16 noundef zeroext %id, ptr nocapture noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %data_le = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data_le) #8
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %data, align 2
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %3 = ptrtoint ptr %data_le to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %data_le, align 2
  %call = call i32 @brcmf_fil_xtlv_data_get(ptr noundef %ifp, ptr noundef %name, i16 noundef zeroext %id, ptr noundef nonnull %data_le, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %data_le to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %data_le, align 2
  %6 = call i16 @llvm.bswap.i16(i16 %5)
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %data, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data_le) #8
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_brcmf_hexdump(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brcmf_err(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmf_xtlv_data_size(i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brcmf_xtlv_pack_header(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !11, !13, !15, !16, !18, !19, !20, !21, !22, !23, !25, !26, !27, !29, !31, !32, !34, !35, !36, !38, !39, !40, !42, !44, !45, !47, !48, !49, !51, !52, !53, !55, !57, !58, !59, !60, !62, !63, !65, !66, !67, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !187}
!llvm.named.register.sp = !{!189}
!llvm.module.flags = !{!190, !191, !192, !193, !194, !195, !196, !197}
!llvm.ident = !{!198}

!0 = !{ptr @__func__.brcmf_fil_cmd_data_set, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 136, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 137, i32 2}
!5 = !{ptr @__func__.brcmf_fil_cmd_data_get, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 154, i32 2}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @__func__.brcmf_fil_cmd_int_set, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 172, i32 2}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @__func__.brcmf_fil_cmd_int_get, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 189, i32 2}
!13 = !{ptr @__func__.brcmf_fil_iovar_data_set, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 225, i32 2}
!15 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 236, i32 3}
!18 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @brcmf_fil_iovar_data_set._entry, !17, !"_entry", i1 false, i1 false}
!22 = !{ptr @brcmf_fil_iovar_data_set._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 262, i32 3}
!25 = !{ptr @brcmf_fil_iovar_data_get._entry, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @brcmf_fil_iovar_data_get._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 265, i32 2}
!29 = !{ptr @__func__.brcmf_fil_bsscfg_data_set, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 349, i32 2}
!31 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 361, i32 3}
!34 = !{ptr @brcmf_fil_bsscfg_data_set._entry, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @brcmf_fil_bsscfg_data_set._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 387, i32 3}
!38 = !{ptr @brcmf_fil_bsscfg_data_get._entry, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @brcmf_fil_bsscfg_data_get._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 389, i32 2}
!42 = !{ptr @__func__.brcmf_fil_xtlv_data_set, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 450, i32 2}
!44 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 462, i32 3}
!47 = !{ptr @brcmf_fil_xtlv_data_set._entry, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @brcmf_fil_xtlv_data_set._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 487, i32 3}
!51 = !{ptr @brcmf_fil_xtlv_data_get._entry, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @brcmf_fil_xtlv_data_get._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 489, i32 2}
!55 = distinct !{null, !56, !"__already_done", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/tracepoint.h", i32 65, i32 1}
!57 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!58 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!59 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!60 = distinct !{null, !61, !"__already_done", i1 false, i1 false}
!61 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!62 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 103, i32 3}
!65 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @brcmf_fil_cmd_data._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @brcmf_fil_cmd_data._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.24, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 117, i32 3}
!70 = !{ptr @.str.25, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 119, i32 3}
!72 = !{ptr @.str.26, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 85, i32 10}
!74 = !{ptr @.str.27, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 27, i32 2}
!76 = !{ptr @.str.28, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 28, i32 2}
!78 = !{ptr @.str.29, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 29, i32 2}
!80 = !{ptr @.str.30, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 30, i32 2}
!82 = !{ptr @.str.31, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 31, i32 2}
!84 = !{ptr @.str.32, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 32, i32 2}
!86 = !{ptr @.str.33, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 33, i32 2}
!88 = !{ptr @.str.34, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 34, i32 2}
!90 = !{ptr @.str.35, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 35, i32 2}
!92 = !{ptr @.str.36, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 36, i32 2}
!94 = !{ptr @.str.37, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 37, i32 2}
!96 = !{ptr @.str.38, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 38, i32 2}
!98 = !{ptr @.str.39, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 39, i32 2}
!100 = !{ptr @.str.40, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 40, i32 2}
!102 = !{ptr @.str.41, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 41, i32 2}
!104 = !{ptr @.str.42, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 42, i32 2}
!106 = !{ptr @.str.43, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 43, i32 2}
!108 = !{ptr @.str.44, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 44, i32 2}
!110 = !{ptr @.str.45, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 45, i32 2}
!112 = !{ptr @.str.46, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 46, i32 2}
!114 = !{ptr @.str.47, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 47, i32 2}
!116 = !{ptr @.str.48, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 48, i32 2}
!118 = !{ptr @.str.49, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 49, i32 2}
!120 = !{ptr @.str.50, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 50, i32 2}
!122 = !{ptr @.str.51, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 51, i32 2}
!124 = !{ptr @.str.52, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 52, i32 2}
!126 = !{ptr @.str.53, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 53, i32 2}
!128 = !{ptr @.str.54, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 54, i32 2}
!130 = !{ptr @.str.55, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 55, i32 2}
!132 = !{ptr @.str.56, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 56, i32 2}
!134 = !{ptr @.str.57, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 57, i32 2}
!136 = !{ptr @.str.58, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 58, i32 2}
!138 = !{ptr @.str.59, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 59, i32 2}
!140 = !{ptr @.str.60, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 60, i32 2}
!142 = !{ptr @.str.61, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 61, i32 2}
!144 = !{ptr @.str.62, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 62, i32 2}
!146 = !{ptr @.str.63, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 63, i32 2}
!148 = !{ptr @.str.64, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 64, i32 2}
!150 = !{ptr @.str.65, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 65, i32 2}
!152 = !{ptr @.str.66, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 66, i32 2}
!154 = !{ptr @.str.67, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 67, i32 2}
!156 = !{ptr @.str.68, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 68, i32 2}
!158 = !{ptr @.str.69, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 69, i32 2}
!160 = !{ptr @.str.70, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 70, i32 2}
!162 = !{ptr @.str.71, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 71, i32 2}
!164 = !{ptr @.str.72, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 72, i32 2}
!166 = !{ptr @.str.73, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 73, i32 2}
!168 = !{ptr @.str.74, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 74, i32 2}
!170 = !{ptr @.str.75, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 75, i32 2}
!172 = !{ptr @.str.76, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 76, i32 2}
!174 = !{ptr @.str.77, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 77, i32 2}
!176 = !{ptr @.str.78, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 78, i32 2}
!178 = !{ptr @.str.79, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 79, i32 2}
!180 = !{ptr @brcmf_fil_errstr, !181, !"brcmf_fil_errstr", i1 false, i1 false}
!181 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 26, i32 27}
!182 = !{ptr @.str.80, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 298, i32 21}
!184 = !{ptr @__func__.brcmf_create_bsscfg, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 313, i32 3}
!186 = !{ptr @.str.81, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @__func__.brcmf_create_xtlv, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/wireless/broadcom/brcm80211/brcmfmac/fwil.c", i32 430, i32 3}
!189 = !{!"sp"}
!190 = !{i32 1, !"wchar_size", i32 2}
!191 = !{i32 1, !"min_enum_size", i32 4}
!192 = !{i32 8, !"branch-target-enforcement", i32 0}
!193 = !{i32 8, !"sign-return-address", i32 0}
!194 = !{i32 8, !"sign-return-address-all", i32 0}
!195 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!196 = !{i32 7, !"uwtable", i32 1}
!197 = !{i32 7, !"frame-pointer", i32 2}
!198 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!199 = !{i64 2148701778, i64 2148701783, i64 2148701796, i64 2148701840, i64 2148701874, i64 2148701895}
!200 = !{!"branch_weights", i32 2000, i32 1}
!201 = !{i64 2157171504}
!202 = !{i64 2157171711}
!203 = !{i64 2149606906}
!204 = !{i64 2149607942}
!205 = !{!"auto-init"}
!206 = !{i8 0, i8 2}
