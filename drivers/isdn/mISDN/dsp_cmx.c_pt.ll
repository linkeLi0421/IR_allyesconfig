; ModuleID = '/llk/IR_all_yes/drivers/isdn/mISDN/dsp_cmx.c_pt.bc'
source_filename = "../drivers/isdn/mISDN/dsp_cmx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dsp = type { %struct.list_head, %struct.mISDNchannel, ptr, [64 x i8], i32, %struct.dsp_echo, i32, i32, i32, %struct.dsp_tone, %struct.dsp_dtmf, i32, i32, %struct.work_struct, %struct.sk_buff_head, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, [5 x i32], [5 x i32], [32768 x i8], [32768 x i8], i32, i32, i32, i32, %struct.dsp_features, i32, i32, i32, i32, i32, i32, i32, i32, [18 x i32], [1024 x i32], i32, [9 x i8], [9 x i8], i32, i32, [16 x i8], [9 x i8], i32, %struct.dsp_pipeline }
%struct.mISDNchannel = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.dsp_echo = type { i32, i32 }
%struct.dsp_tone = type { i32, i32, i32, ptr, i32, i32, %struct.timer_list }
%struct.dsp_dtmf = type { i32, i32, i32, i32, i32, [102 x i16], i8, i8, i32, [16 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.sk_buff_head = type { %union.anon.94, i32, %struct.spinlock }
%union.anon.94 = type { %struct.anon.95 }
%struct.anon.95 = type { ptr, ptr }
%struct.dsp_features = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dsp_pipeline = type { %struct.rwlock_t, %struct.list_head, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.dsp_conf = type { %struct.list_head, i32, %struct.list_head, i32, i32 }
%struct.dsp_conf_member = type { %struct.list_head, ptr }
%struct.mISDN_ctrl_req = type { i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.124, %union.anon.125, [48 x i8], %union.anon.126, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.128, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.124 = type { ptr }
%union.anon.125 = type { i64 }
%union.anon.126 = type { %struct.anon.127 }
%struct.anon.127 = type { i32, ptr }
%union.anon.128 = type { %struct.anon.129 }
%struct.anon.129 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.130, i32, i32, i32, i16, i16, %union.anon.132, i32, %union.anon.133, %union.anon.134, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.130 = type { i32 }
%union.anon.132 = type { i32 }
%union.anon.133 = type { i32 }
%union.anon.134 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }

@dsp_cmx_debug._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017-----Current DSP\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dsp_cmx_debug\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/isdn/mISDN/dsp_cmx.c\00", [35 x i8] zeroinitializer }, align 32
@dsp_cmx_debug._entry_ptr = internal global ptr @dsp_cmx_debug._entry, section ".printk_index", align 4
@dsp_ilist = external dso_local global %struct.list_head, align 4
@dsp_cmx_debug._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017* %s hardecho=%d softecho=%d txmix=%d\00", [56 x i8] zeroinitializer }, align 32
@dsp_cmx_debug._entry_ptr.5 = internal global ptr @dsp_cmx_debug._entry.3, section ".printk_index", align 4
@dsp_cmx_debug._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" (Conf %d)\00", [21 x i8] zeroinitializer }, align 32
@dsp_cmx_debug._entry_ptr.8 = internal global ptr @dsp_cmx_debug._entry.6, section ".printk_index", align 4
@dsp_cmx_debug._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" *this*\00", [24 x i8] zeroinitializer }, align 32
@dsp_cmx_debug._entry_ptr.11 = internal global ptr @dsp_cmx_debug._entry.9, section ".printk_index", align 4
@dsp_cmx_debug._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@dsp_cmx_debug._entry_ptr.14 = internal global ptr @dsp_cmx_debug._entry.12, section ".printk_index", align 4
@dsp_cmx_debug._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017-----Current Conf:\0A\00", [42 x i8] zeroinitializer }, align 32
@dsp_cmx_debug._entry_ptr.17 = internal global ptr @dsp_cmx_debug._entry.15, section ".printk_index", align 4
@conf_ilist = external dso_local global %struct.list_head, align 4
@dsp_cmx_debug._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017* Conf %d (%p)\0A\00", [46 x i8] zeroinitializer }, align 32
@dsp_cmx_debug._entry_ptr.20 = internal global ptr @dsp_cmx_debug._entry.18, section ".printk_index", align 4
@dsp_cmx_debug._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 188, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [106 x i8], [54 x i8] } { [106 x i8] c"\017  - member = %s (slot_tx %d, bank_tx %d, slot_rx %d, bank_rx %d hfc_conf %d tx_data %d rx_is_off %d)%s\0A\00", [54 x i8] zeroinitializer }, align 32
@dsp_cmx_debug._entry_ptr.23 = internal global ptr @dsp_cmx_debug._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@dsp_cmx_debug._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.1, ptr @.str.2, i32 191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\017-----end\0A\00", [20 x i8] zeroinitializer }, align 32
@dsp_cmx_debug._entry_ptr.27 = internal global ptr @dsp_cmx_debug._entry.25, section ".printk_index", align 4
@dsp_cmx_del_conf_member._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\014%s: dsp is 0.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dsp_cmx_del_conf_member\00", [40 x i8] zeroinitializer }, align 32
@dsp_cmx_del_conf_member._entry_ptr = internal global ptr @dsp_cmx_del_conf_member._entry, section ".printk_index", align 4
@dsp_cmx_del_conf_member._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.2, i32 277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014%s: dsp is not in a conf.\0A\00", [35 x i8] zeroinitializer }, align 32
@dsp_cmx_del_conf_member._entry_ptr.32 = internal global ptr @dsp_cmx_del_conf_member._entry.30, section ".printk_index", align 4
@dsp_cmx_del_conf_member._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.29, ptr @.str.2, i32 283, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014%s: dsp has linked an empty conf.\0A\00", [59 x i8] zeroinitializer }, align 32
@dsp_cmx_del_conf_member._entry_ptr.35 = internal global ptr @dsp_cmx_del_conf_member._entry.33, section ".printk_index", align 4
@dsp_cmx_del_conf_member._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.29, ptr @.str.2, i32 299, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014%s: dsp is not present in its own conf_member list.\0A\00", [41 x i8] zeroinitializer }, align 32
@dsp_cmx_del_conf_member._entry_ptr.38 = internal global ptr @dsp_cmx_del_conf_member._entry.36, section ".printk_index", align 4
@dsp_cmx_del_conf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\014%s: conf is null.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dsp_cmx_del_conf\00", [47 x i8] zeroinitializer }, align 32
@dsp_cmx_del_conf._entry_ptr = internal global ptr @dsp_cmx_del_conf._entry, section ".printk_index", align 4
@dsp_cmx_del_conf._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.2, i32 347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\014%s: conf not empty.\0A\00", [41 x i8] zeroinitializer }, align 32
@dsp_cmx_del_conf._entry_ptr.43 = internal global ptr @dsp_cmx_del_conf._entry.41, section ".printk_index", align 4
@dsp_debug = external dso_local local_unnamed_addr global i32, align 4
@dsp_cmx_hardware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 400, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s checking dsp %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dsp_cmx_hardware\00", [47 x i8] zeroinitializer }, align 32
@dsp_cmx_hardware._entry_ptr = internal global ptr @dsp_cmx_hardware._entry, section ".printk_index", align 4
@dsp_cmx_hardware._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.2, i32 408, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\017%s removing %s from HFC conf %d because dsp is split\0A\00", [40 x i8] zeroinitializer }, align 32
@dsp_cmx_hardware._entry_ptr.48 = internal global ptr @dsp_cmx_hardware._entry.46, section ".printk_index", align 4
@dsp_cmx_hardware._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.45, ptr @.str.2, i32 424, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\017%s removing %s from PCM slot %d (TX) %d (RX) because dsp is split (no echo)\0A\00", [49 x i8] zeroinitializer }, align 32
@dsp_cmx_hardware._entry_ptr.51 = internal global ptr @dsp_cmx_hardware._entry.49, section ".printk_index", align 4
@dsp_cmx_hardware._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.45, ptr @.str.2, i32 452, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s refresh %s for echo using slot %d\0A\00", [56 x i8] zeroinitializer }, align 32
@dsp_cmx_hardware._entry_ptr.54 = internal global ptr @dsp_cmx_hardware._entry.52, section ".printk_index", align 4
@dsp_cmx_hardware._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.45, ptr @.str.2, i32 483, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s no slot available for echo\0A\00", [63 x i8] zeroinitializer }, align 32
@dsp_cmx_hardware._entry_ptr.57 = internal global ptr @dsp_cmx_hardware._entry.55, section ".printk_index", align 4
@dsp_cmx_hardware._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.45, ptr @.str.2, i32 496, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s assign echo for %s using slot %d\0A\00", [57 x i8] zeroinitializer }, align 32
@dsp_cmx_hardware._entry_ptr.60 = internal global ptr @dsp_cmx_hardware._entry.58, section ".printk_index", align 4
@dsp_cmx_hardware._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.45, ptr @.str.2, i32 506, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s checking conference %d\0A\00", [35 x i8] zeroinitializer }, align 32
@dsp_cmx_hardware._entry_ptr.63 = internal global ptr @dsp_cmx_hardware._entry.61, section ".printk_index", align 4
@dsp_cmx_hardware._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.45, ptr @.str.2, i32 510, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: conference without members\0A\00", [62 x i8] zeroinitializer }, align 32
@dsp_cmx_hardware._entry_ptr.66 = internal global ptr @dsp_cmx_hardware._entry.64, section ".printk_index", align 4
@dsp_cmx_hardware._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.45, ptr @.str.2, i32 524, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\017%s dsp %s cannot form a conf, because tx_mix is turned on\0A\00", [35 x i8] zeroinitializer }, align 32
@dsp_cmx_hardware._entry_ptr.69 = internal global ptr @dsp_cmx_hardware._entry.67, section ".printk_index", align 4
@dsp_cmx_hardware._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.45, ptr @.str.2, i32 537, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\017%s removing %s from HFC conf %d because not possible with hardware\0A\00", [58 x i8] zeroinitializer }, align 32
@dsp_cmx_hardware._entry_ptr.72 = internal global ptr @dsp_cmx_hardware._entry.70, section ".printk_index", align 4
@dsp_cmx_hardware._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.45, ptr @.str.2, i32 554, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"\017%s removing %s from PCM slot %d (TX) slot %d (RX) because not possible with hardware\0A\00", [40 x i8] zeroinitializer }, align 32
@dsp_cmx_hardware._entry_ptr.75 = internal global ptr @dsp_cmx_hardware._entry.73, section ".printk_index", align 4
@dsp_cmx_hardware._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.45, ptr @.str.2, i32 574, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\017%s dsp %s cannot form a conf, because echo is turned on\0A\00", [37 x i8] zeroinitializer }, align 32
@dsp_cmx_hardware._entry_ptr.78 = internal global ptr @dsp_cmx_hardware._entry.76, section ".printk_index", align 4
@dsp_cmx_hardware._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.45, ptr @.str.2, i32 583, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dsp_cmx_hardware._entry_ptr.80 = internal global ptr @dsp_cmx_hardware._entry.79, section ".printk_index", align 4
@dsp_cmx_hardware._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.45, ptr @.str.2, i32 592, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\017%s dsp %s cannot form a conf, because tx_volume is changed\0A\00", [34 x i8] zeroinitializer }, align 32
@dsp_cmx_hardware._entry_ptr.83 = internal global ptr @dsp_cmx_hardware._entry.81, section ".printk_index", align 4
@dsp_cmx_hardware._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.45, ptr @.str.2, i32 600, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\017%s dsp %s cannot form a conf, because rx_volume is changed\0A\00", [34 x i8] zeroinitializer }, align 32
@dsp_cmx_hardware._entry_ptr.86 = internal global ptr @dsp_cmx_hardware._entry.84, section ".printk_index", align 4
@dsp_cmx_hardware._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.45, ptr @.str.2, i32 608, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s dsp %s tx_data is turned on\0A\00", [62 x i8] zeroinitializer }, align 32
@dsp_cmx_hardware._entry_ptr.89 = internal global ptr @dsp_cmx_hardware._entry.87, section ".printk_index", align 4
@dsp_cmx_hardware._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.45, ptr @.str.2, i32 617, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\017%s dsp %s cannot form a conf, because pipeline exists\0A\00", [39 x i8] zeroinitializer }, align 32
@dsp_cmx_hardware._entry_ptr.92 = internal global ptr @dsp_cmx_hardware._entry.90, section ".printk_index", align 4
@dsp_cmx_hardware._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.45, ptr @.str.2, i32 625, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\017%s dsp %s cannot form a conf, because encryption is enabled\0A\00", [33 x i8] zeroinitializer }, align 32
@dsp_cmx_hardware._entry_ptr.95 = internal global ptr @dsp_cmx_hardware._entry.93, section ".printk_index", align 4
@dsp_cmx_hardware._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.45, ptr @.str.2, i32 634, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\017%s dsp %s cannot form a conf, because dsp has no PCM bus\0A\00", [36 x i8] zeroinitializer }, align 32
@dsp_cmx_hardware._entry_ptr.98 = internal global ptr @dsp_cmx_hardware._entry.96, section ".printk_index", align 4
@dsp_cmx_hardware._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.45, ptr @.str.2, i32 644, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"\017%s dsp %s cannot form a conf, because dsp is on a different PCM bus than the first dsp\0A\00", [38 x i8] zeroinitializer }, align 32
@dsp_cmx_hardware._entry_ptr.101 = internal global ptr @dsp_cmx_hardware._entry.99, section ".printk_index", align 4
@dsp_cmx_hardware._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.45, ptr @.str.2, i32 669, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\017%s conf %d cannot form a HW conference, because dsp is alone\0A\00", [32 x i8] zeroinitializer }, align 32
@dsp_cmx_hardware._entry_ptr.104 = internal global ptr @dsp_cmx_hardware._entry.102, section ".printk_index", align 4
@dsp_cmx_hardware._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.45, ptr @.str.2, i32 697, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\017%s removing %s from HFC conf %d because two parties require only a PCM slot\0A\00", [49 x i8] zeroinitializer }, align 32
@dsp_cmx_hardware._entry_ptr.107 = internal global ptr @dsp_cmx_hardware._entry.105, section ".printk_index", align 4
@dsp_cmx_hardware._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.45, ptr @.str.2, i32 708, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dsp_cmx_hardware._entry_ptr.109 = internal global ptr @dsp_cmx_hardware._entry.108, section ".printk_index", align 4
@dsp_cmx_hardware._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.45, ptr @.str.2, i32 744, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"\017%s dsp %s & %s stay joined on PCM slot %d bank %d (TX) bank %d (RX) (on different chips)\0A\00", [36 x i8] zeroinitializer }, align 32
@dsp_cmx_hardware._entry_ptr.112 = internal global ptr @dsp_cmx_hardware._entry.110, section ".printk_index", align 4
@dsp_cmx_hardware._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.45, ptr @.str.2, i32 779, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s no slot available for %s & %s\0A\00", [60 x i8] zeroinitializer }, align 32
@dsp_cmx_hardware._entry_ptr.115 = internal global ptr @dsp_cmx_hardware._entry.113, section ".printk_index", align 4
@dsp_cmx_hardware._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.45, ptr @.str.2, i32 800, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [112 x i8], [48 x i8] } { [112 x i8] c"\017%s adding %s & %s to new PCM slot %d (TX and RX on different chips) because both members have not same slots\0A\00", [48 x i8] zeroinitializer }, align 32
@dsp_cmx_hardware._entry_ptr.118 = internal global ptr @dsp_cmx_hardware._entry.116, section ".printk_index", align 4
@dsp_cmx_hardware._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.45, ptr @.str.2, i32 836, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"\017%s dsp %s & %s stay joined on PCM slot %d (TX) %d (RX) on same chip or one bank PCM)\0A\00", [40 x i8] zeroinitializer }, align 32
@dsp_cmx_hardware._entry_ptr.121 = internal global ptr @dsp_cmx_hardware._entry.119, section ".printk_index", align 4
@dsp_cmx_hardware._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.45, ptr @.str.2, i32 871, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dsp_cmx_hardware._entry_ptr.123 = internal global ptr @dsp_cmx_hardware._entry.122, section ".printk_index", align 4
@dsp_cmx_hardware._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.45, ptr @.str.2, i32 888, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dsp_cmx_hardware._entry_ptr.125 = internal global ptr @dsp_cmx_hardware._entry.124, section ".printk_index", align 4
@dsp_cmx_hardware._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.45, ptr @.str.2, i32 910, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [127 x i8], [33 x i8] } { [127 x i8] c"\017%s adding %s & %s to new PCM slot %d (TX) %d (RX) on same chip or one bank PCM, because both members have not crossed slots\0A\00", [33 x i8] zeroinitializer }, align 32
@dsp_cmx_hardware._entry_ptr.128 = internal global ptr @dsp_cmx_hardware._entry.126, section ".printk_index", align 4
@dsp_cmx_hardware._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.45, ptr @.str.2, i32 935, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"\017%s conference %d cannot be formed, because members are on different chips or not on HFC chip\0A\00", [32 x i8] zeroinitializer }, align 32
@dsp_cmx_hardware._entry_ptr.131 = internal global ptr @dsp_cmx_hardware._entry.129, section ".printk_index", align 4
@dsp_cmx_hardware._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.45, ptr @.str.2, i32 1000, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\017%s conference %d cannot be formed, because no slot free\0A\00", [37 x i8] zeroinitializer }, align 32
@dsp_cmx_hardware._entry_ptr.134 = internal global ptr @dsp_cmx_hardware._entry.132, section ".printk_index", align 4
@dsp_cmx_hardware._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.45, ptr @.str.2, i32 1007, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017%s changing dsp %s to HW conference %d slot %d\0A\00", [46 x i8] zeroinitializer }, align 32
@dsp_cmx_hardware._entry_ptr.137 = internal global ptr @dsp_cmx_hardware._entry.135, section ".printk_index", align 4
@dsp_cmx_hardware._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.45, ptr @.str.2, i32 1050, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\017%s conference %d cannot be formed, because no conference number free\0A\00", [56 x i8] zeroinitializer }, align 32
@dsp_cmx_hardware._entry_ptr.140 = internal global ptr @dsp_cmx_hardware._entry.138, section ".printk_index", align 4
@dsp_cmx_conf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.142, ptr @.str.2, i32 1078, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017removing us from conference %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dsp_cmx_conf\00", [19 x i8] zeroinitializer }, align 32
@dsp_cmx_conf._entry_ptr = internal global ptr @dsp_cmx_conf._entry, section ".printk_index", align 4
@dsp_cmx_conf._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.142, ptr @.str.2, i32 1093, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017conference is empty, so we remove it.\0A\00", [55 x i8] zeroinitializer }, align 32
@dsp_cmx_conf._entry_ptr.145 = internal global ptr @dsp_cmx_conf._entry.143, section ".printk_index", align 4
@dsp_cmx_conf._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.142, ptr @.str.2, i32 1110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017searching conference %d\0A\00", [37 x i8] zeroinitializer }, align 32
@dsp_cmx_conf._entry_ptr.148 = internal global ptr @dsp_cmx_conf._entry.146, section ".printk_index", align 4
@dsp_cmx_conf._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.142, ptr @.str.2, i32 1115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017conference doesn't exist yet, creating.\0A\00", [53 x i8] zeroinitializer }, align 32
@dsp_cmx_conf._entry_ptr.151 = internal global ptr @dsp_cmx_conf._entry.149, section ".printk_index", align 4
@dsp_cmx_conf._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.142, ptr @.str.2, i32 1126, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017cannot join transparent conference.\0A\00", [57 x i8] zeroinitializer }, align 32
@dsp_cmx_conf._entry_ptr.154 = internal global ptr @dsp_cmx_conf._entry.152, section ".printk_index", align 4
@dsp_cmx_conf._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.142, ptr @.str.2, i32 1132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017cannot join hdlc conference.\0A\00", [32 x i8] zeroinitializer }, align 32
@dsp_cmx_conf._entry_ptr.157 = internal global ptr @dsp_cmx_conf._entry.155, section ".printk_index", align 4
@dsp_cmx_conf._entry.158 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.142, ptr @.str.2, i32 1146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017we are alone in this conference, so exit.\0A\00", [51 x i8] zeroinitializer }, align 32
@dsp_cmx_conf._entry_ptr.160 = internal global ptr @dsp_cmx_conf._entry.158, section ".printk_index", align 4
@dsp_cmx_receive._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.162, ptr @.str.2, i32 1198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [121 x i8], [39 x i8] } { [121 x i8] c"\013%s line %d: packet from card is too large (%d bytes). please make card send smaller packets OR increase CMX_BUFF_SIZE\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dsp_cmx_receive\00", [16 x i8] zeroinitializer }, align 32
@dsp_cmx_receive._entry_ptr = internal global ptr @dsp_cmx_receive._entry, section ".printk_index", align 4
@dsp_poll = external dso_local local_unnamed_addr global i32, align 4
@dsp_cmx_receive._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.162, ptr @.str.2, i32 1238, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [100 x i8], [60 x i8] } { [100 x i8] c"\017cmx_receive(dsp=%lx): UNDERRUN (or overrun the maximum delay), adjusting read pointer! (inst %s)\0A\00", [60 x i8] zeroinitializer }, align 32
@dsp_cmx_receive._entry_ptr.165 = internal global ptr @dsp_cmx_receive._entry.163, section ".printk_index", align 4
@dsp_silence = external dso_local local_unnamed_addr global i8, align 1
@dsp_cmx_receive._entry.166 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.162, ptr @.str.2, i32 1266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [105 x i8], [55 x i8] } { [105 x i8] c"\017cmx_receive(dsp=%lx): OVERRUN (because twice the delay is reached), adjusting read pointer! (inst %s)\0A\00", [55 x i8] zeroinitializer }, align 32
@dsp_cmx_receive._entry_ptr.168 = internal global ptr @dsp_cmx_receive._entry.166, section ".printk_index", align 4
@dsp_cmx_send.mixbuffer = internal global { [356 x i32], [368 x i8] } zeroinitializer, align 32
@dsp_lock = external dso_local global %struct.spinlock, align 4
@dsp_count_valid = internal global { i1, [31 x i8] } zeroinitializer, align 32
@dsp_count = internal global { i16, [30 x i8] } zeroinitializer, align 32
@jittercount = internal global { i32, [28 x i8] } zeroinitializer, align 32
@dsp_audio_law_to_s32 = external dso_local local_unnamed_addr global ptr, align 4
@dsp_cmx_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.170, ptr @.str.2, i32 1787, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\017%s lowest rx_delay of %d bytes for dsp %s are now removed.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dsp_cmx_send\00", [19 x i8] zeroinitializer }, align 32
@dsp_cmx_send._entry_ptr = internal global ptr @dsp_cmx_send._entry, section ".printk_index", align 4
@dsp_cmx_send._entry.171 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.170, ptr @.str.2, i32 1818, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\017%s lowest tx_delay of %d bytes for dsp %s are now removed.\0A\00", [34 x i8] zeroinitializer }, align 32
@dsp_cmx_send._entry_ptr.173 = internal global ptr @dsp_cmx_send._entry.171, section ".printk_index", align 4
@dsp_spl_jiffies = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@dsp_tics = external dso_local local_unnamed_addr global i32, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@dsp_spl_tl = dso_local global { %struct.timer_list, [48 x i8] } zeroinitializer, align 32
@dsp_cmx_transmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.175, ptr @.str.2, i32 1882, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\017%s: TX overflow space=%d skb->len=%d, w=0x%04x, ww=0x%04x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dsp_cmx_transmit\00", [47 x i8] zeroinitializer }, align 32
@dsp_cmx_transmit._entry_ptr = internal global ptr @dsp_cmx_transmit._entry, section ".printk_index", align 4
@dsp_cmx_search_conf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.177, ptr @.str.2, i32 203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\014%s: conference ID is 0.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dsp_cmx_search_conf\00", [44 x i8] zeroinitializer }, align 32
@dsp_cmx_search_conf._entry_ptr = internal global ptr @dsp_cmx_search_conf._entry, section ".printk_index", align 4
@dsp_cmx_new_conf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.179, ptr @.str.2, i32 315, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\014%s: id is 0.\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dsp_cmx_new_conf\00", [47 x i8] zeroinitializer }, align 32
@dsp_cmx_new_conf._entry_ptr = internal global ptr @dsp_cmx_new_conf._entry, section ".printk_index", align 4
@dsp_cmx_new_conf._entry.180 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.179, ptr @.str.2, i32 321, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013kzalloc struct dsp_conf failed\0A\00", [62 x i8] zeroinitializer }, align 32
@dsp_cmx_new_conf._entry_ptr.182 = internal global ptr @dsp_cmx_new_conf._entry.180, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dsp_cmx_add_conf_member._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.183, ptr @.str.184, ptr @.str.2, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\014%s: conf or dsp is 0.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dsp_cmx_add_conf_member\00", [40 x i8] zeroinitializer }, align 32
@dsp_cmx_add_conf_member._entry_ptr = internal global ptr @dsp_cmx_add_conf_member._entry, section ".printk_index", align 4
@dsp_cmx_add_conf_member._entry.185 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.186, ptr @.str.184, ptr @.str.2, i32 230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014%s: dsp is already member in a conf.\0A\00", [56 x i8] zeroinitializer }, align 32
@dsp_cmx_add_conf_member._entry_ptr.187 = internal global ptr @dsp_cmx_add_conf_member._entry.185, section ".printk_index", align 4
@dsp_cmx_add_conf_member._entry.188 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.184, ptr @.str.2, i32 236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014%s: dsp is already in a conf.\0A\00", [63 x i8] zeroinitializer }, align 32
@dsp_cmx_add_conf_member._entry_ptr.190 = internal global ptr @dsp_cmx_add_conf_member._entry.188, section ".printk_index", align 4
@dsp_cmx_add_conf_member._entry.191 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.184, ptr @.str.2, i32 242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013kzalloc struct dsp_conf_member failed\0A\00", [55 x i8] zeroinitializer }, align 32
@dsp_cmx_add_conf_member._entry_ptr.193 = internal global ptr @dsp_cmx_add_conf_member._entry.191, section ".printk_index", align 4
@dsp_cmx_send_member._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.194, ptr @.str.195, ptr @.str.2, i32 1358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013FATAL ERROR in mISDN_dsp.o: cannot alloc %d bytes\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dsp_cmx_send_member\00", [44 x i8] zeroinitializer }, align 32
@dsp_cmx_send_member._entry_ptr = internal global ptr @dsp_cmx_send_member._entry, section ".printk_index", align 4
@dsp_cmx_send_member._entry.196 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.197, ptr @.str.195, ptr @.str.2, i32 1431, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\017%s: RX empty\0A\00", [16 x i8] zeroinitializer }, align 32
@dsp_cmx_send_member._entry_ptr.198 = internal global ptr @dsp_cmx_send_member._entry.196, section ".printk_index", align 4
@dsp_audio_mix_law = external dso_local local_unnamed_addr global [65536 x i8], align 1
@dsp_audio_s16_to_law = external dso_local local_unnamed_addr global [65536 x i8], align 1
@dsp_cmx_send_member._entry.199 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.194, ptr @.str.195, ptr @.str.2, i32 1593, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dsp_cmx_send_member._entry_ptr.200 = internal global ptr @dsp_cmx_send_member._entry.199, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 165, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 167, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 171, i32 4 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 173, i32 4 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 174, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 176, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 178, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 180, i32 4 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 191, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 270, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 276, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 282, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 297, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 340, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 346, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 399, i32 4 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 405, i32 5 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 420, i32 6 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 449, i32 5 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 481, i32 5 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 494, i32 4 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 505, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 509, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 521, i32 5 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 531, i32 7 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 547, i32 7 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 571, i32 5 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 580, i32 5 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 589, i32 5 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 597, i32 5 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 606, i32 5 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 614, i32 5 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 623, i32 5 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 631, i32 5 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 640, i32 5 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 667, i32 4 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 693, i32 5 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 704, i32 5 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 735, i32 6 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 775, i32 6 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 793, i32 5 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 829, i32 6 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 867, i32 6 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 883, i32 6 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 902, i32 5 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 931, i32 4 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 997, i32 6 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 1004, i32 5 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 1047, i32 4 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 1077, i32 4 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 1092, i32 5 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 1109, i32 3 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 1114, i32 4 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 1125, i32 5 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 1131, i32 5 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 1145, i32 4 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 1195, i32 3 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 1235, i32 4 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 1262, i32 5 }
@___asan_gen_.567 = private unnamed_addr constant [10 x i8] c"mixbuffer\00", align 1
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 1634, i32 13 }
@___asan_gen_.570 = private unnamed_addr constant [16 x i8] c"dsp_count_valid\00", align 1
@___asan_gen_.571 = private unnamed_addr constant [10 x i8] c"dsp_count\00", align 1
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 1624, i32 12 }
@___asan_gen_.574 = private unnamed_addr constant [12 x i8] c"jittercount\00", align 1
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 1621, i32 12 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 1783, i32 6 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 1814, i32 6 }
@___asan_gen_.592 = private unnamed_addr constant [16 x i8] c"dsp_spl_jiffies\00", align 1
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 1623, i32 15 }
@___asan_gen_.595 = private unnamed_addr constant [11 x i8] c"dsp_spl_tl\00", align 1
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 1622, i32 19 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 1880, i32 4 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 203, i32 3 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 314, i32 3 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 321, i32 3 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 225, i32 3 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 229, i32 3 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 235, i32 3 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 242, i32 3 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 1356, i32 3 }
@___asan_gen_.670 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 1430, i32 6 }
@___asan_gen_.673 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.674 = private constant [32 x i8] c"../drivers/isdn/mISDN/dsp_cmx.c\00", align 1
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.674, i32 1591, i32 5 }
@llvm.compiler.used = appending global [231 x ptr] [ptr @dsp_cmx_add_conf_member._entry, ptr @dsp_cmx_add_conf_member._entry.185, ptr @dsp_cmx_add_conf_member._entry.188, ptr @dsp_cmx_add_conf_member._entry.191, ptr @dsp_cmx_add_conf_member._entry_ptr, ptr @dsp_cmx_add_conf_member._entry_ptr.187, ptr @dsp_cmx_add_conf_member._entry_ptr.190, ptr @dsp_cmx_add_conf_member._entry_ptr.193, ptr @dsp_cmx_conf._entry, ptr @dsp_cmx_conf._entry.143, ptr @dsp_cmx_conf._entry.146, ptr @dsp_cmx_conf._entry.149, ptr @dsp_cmx_conf._entry.152, ptr @dsp_cmx_conf._entry.155, ptr @dsp_cmx_conf._entry.158, ptr @dsp_cmx_conf._entry_ptr, ptr @dsp_cmx_conf._entry_ptr.145, ptr @dsp_cmx_conf._entry_ptr.148, ptr @dsp_cmx_conf._entry_ptr.151, ptr @dsp_cmx_conf._entry_ptr.154, ptr @dsp_cmx_conf._entry_ptr.157, ptr @dsp_cmx_conf._entry_ptr.160, ptr @dsp_cmx_debug._entry, ptr @dsp_cmx_debug._entry.12, ptr @dsp_cmx_debug._entry.15, ptr @dsp_cmx_debug._entry.18, ptr @dsp_cmx_debug._entry.21, ptr @dsp_cmx_debug._entry.25, ptr @dsp_cmx_debug._entry.3, ptr @dsp_cmx_debug._entry.6, ptr @dsp_cmx_debug._entry.9, ptr @dsp_cmx_debug._entry_ptr, ptr @dsp_cmx_debug._entry_ptr.11, ptr @dsp_cmx_debug._entry_ptr.14, ptr @dsp_cmx_debug._entry_ptr.17, ptr @dsp_cmx_debug._entry_ptr.20, ptr @dsp_cmx_debug._entry_ptr.23, ptr @dsp_cmx_debug._entry_ptr.27, ptr @dsp_cmx_debug._entry_ptr.5, ptr @dsp_cmx_debug._entry_ptr.8, ptr @dsp_cmx_del_conf._entry, ptr @dsp_cmx_del_conf._entry.41, ptr @dsp_cmx_del_conf._entry_ptr, ptr @dsp_cmx_del_conf._entry_ptr.43, ptr @dsp_cmx_del_conf_member._entry, ptr @dsp_cmx_del_conf_member._entry.30, ptr @dsp_cmx_del_conf_member._entry.33, ptr @dsp_cmx_del_conf_member._entry.36, ptr @dsp_cmx_del_conf_member._entry_ptr, ptr @dsp_cmx_del_conf_member._entry_ptr.32, ptr @dsp_cmx_del_conf_member._entry_ptr.35, ptr @dsp_cmx_del_conf_member._entry_ptr.38, ptr @dsp_cmx_hardware._entry, ptr @dsp_cmx_hardware._entry.102, ptr @dsp_cmx_hardware._entry.105, ptr @dsp_cmx_hardware._entry.108, ptr @dsp_cmx_hardware._entry.110, ptr @dsp_cmx_hardware._entry.113, ptr @dsp_cmx_hardware._entry.116, ptr @dsp_cmx_hardware._entry.119, ptr @dsp_cmx_hardware._entry.122, ptr @dsp_cmx_hardware._entry.124, ptr @dsp_cmx_hardware._entry.126, ptr @dsp_cmx_hardware._entry.129, ptr @dsp_cmx_hardware._entry.132, ptr @dsp_cmx_hardware._entry.135, ptr @dsp_cmx_hardware._entry.138, ptr @dsp_cmx_hardware._entry.46, ptr @dsp_cmx_hardware._entry.49, ptr @dsp_cmx_hardware._entry.52, ptr @dsp_cmx_hardware._entry.55, ptr @dsp_cmx_hardware._entry.58, ptr @dsp_cmx_hardware._entry.61, ptr @dsp_cmx_hardware._entry.64, ptr @dsp_cmx_hardware._entry.67, ptr @dsp_cmx_hardware._entry.70, ptr @dsp_cmx_hardware._entry.73, ptr @dsp_cmx_hardware._entry.76, ptr @dsp_cmx_hardware._entry.79, ptr @dsp_cmx_hardware._entry.81, ptr @dsp_cmx_hardware._entry.84, ptr @dsp_cmx_hardware._entry.87, ptr @dsp_cmx_hardware._entry.90, ptr @dsp_cmx_hardware._entry.93, ptr @dsp_cmx_hardware._entry.96, ptr @dsp_cmx_hardware._entry.99, ptr @dsp_cmx_hardware._entry_ptr, ptr @dsp_cmx_hardware._entry_ptr.101, ptr @dsp_cmx_hardware._entry_ptr.104, ptr @dsp_cmx_hardware._entry_ptr.107, ptr @dsp_cmx_hardware._entry_ptr.109, ptr @dsp_cmx_hardware._entry_ptr.112, ptr @dsp_cmx_hardware._entry_ptr.115, ptr @dsp_cmx_hardware._entry_ptr.118, ptr @dsp_cmx_hardware._entry_ptr.121, ptr @dsp_cmx_hardware._entry_ptr.123, ptr @dsp_cmx_hardware._entry_ptr.125, ptr @dsp_cmx_hardware._entry_ptr.128, ptr @dsp_cmx_hardware._entry_ptr.131, ptr @dsp_cmx_hardware._entry_ptr.134, ptr @dsp_cmx_hardware._entry_ptr.137, ptr @dsp_cmx_hardware._entry_ptr.140, ptr @dsp_cmx_hardware._entry_ptr.48, ptr @dsp_cmx_hardware._entry_ptr.51, ptr @dsp_cmx_hardware._entry_ptr.54, ptr @dsp_cmx_hardware._entry_ptr.57, ptr @dsp_cmx_hardware._entry_ptr.60, ptr @dsp_cmx_hardware._entry_ptr.63, ptr @dsp_cmx_hardware._entry_ptr.66, ptr @dsp_cmx_hardware._entry_ptr.69, ptr @dsp_cmx_hardware._entry_ptr.72, ptr @dsp_cmx_hardware._entry_ptr.75, ptr @dsp_cmx_hardware._entry_ptr.78, ptr @dsp_cmx_hardware._entry_ptr.80, ptr @dsp_cmx_hardware._entry_ptr.83, ptr @dsp_cmx_hardware._entry_ptr.86, ptr @dsp_cmx_hardware._entry_ptr.89, ptr @dsp_cmx_hardware._entry_ptr.92, ptr @dsp_cmx_hardware._entry_ptr.95, ptr @dsp_cmx_hardware._entry_ptr.98, ptr @dsp_cmx_new_conf._entry, ptr @dsp_cmx_new_conf._entry.180, ptr @dsp_cmx_new_conf._entry_ptr, ptr @dsp_cmx_new_conf._entry_ptr.182, ptr @dsp_cmx_receive._entry, ptr @dsp_cmx_receive._entry.163, ptr @dsp_cmx_receive._entry.166, ptr @dsp_cmx_receive._entry_ptr, ptr @dsp_cmx_receive._entry_ptr.165, ptr @dsp_cmx_receive._entry_ptr.168, ptr @dsp_cmx_search_conf._entry, ptr @dsp_cmx_search_conf._entry_ptr, ptr @dsp_cmx_send._entry, ptr @dsp_cmx_send._entry.171, ptr @dsp_cmx_send._entry_ptr, ptr @dsp_cmx_send._entry_ptr.173, ptr @dsp_cmx_send_member._entry, ptr @dsp_cmx_send_member._entry.196, ptr @dsp_cmx_send_member._entry.199, ptr @dsp_cmx_send_member._entry_ptr, ptr @dsp_cmx_send_member._entry_ptr.198, ptr @dsp_cmx_send_member._entry_ptr.200, ptr @dsp_cmx_transmit._entry, ptr @dsp_cmx_transmit._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @.str.77, ptr @.str.82, ptr @.str.85, ptr @.str.88, ptr @.str.91, ptr @.str.94, ptr @.str.97, ptr @.str.100, ptr @.str.103, ptr @.str.106, ptr @.str.111, ptr @.str.114, ptr @.str.117, ptr @.str.120, ptr @.str.127, ptr @.str.130, ptr @.str.133, ptr @.str.136, ptr @.str.139, ptr @.str.141, ptr @.str.142, ptr @.str.144, ptr @.str.147, ptr @.str.150, ptr @.str.153, ptr @.str.156, ptr @.str.159, ptr @.str.161, ptr @.str.162, ptr @.str.164, ptr @.str.167, ptr @dsp_cmx_send.mixbuffer, ptr @dsp_count_valid, ptr @dsp_count, ptr @jittercount, ptr @.str.169, ptr @.str.170, ptr @.str.172, ptr @dsp_spl_jiffies, ptr @dsp_spl_tl, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.181, ptr @.str.183, ptr @.str.184, ptr @.str.186, ptr @.str.189, ptr @.str.192, ptr @.str.194, ptr @.str.195, ptr @.str.197], section "llvm.metadata"
@0 = internal global [159 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_debug._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_debug._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_debug._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_debug._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_debug._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_debug._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_debug._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_debug._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 106, i32 160, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_debug._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_del_conf_member._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_del_conf_member._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_del_conf_member._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_del_conf_member._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_del_conf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_del_conf._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_hardware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_hardware._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_hardware._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_hardware._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_hardware._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_hardware._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_hardware._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_hardware._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_hardware._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_hardware._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_hardware._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_hardware._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_hardware._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_hardware._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_hardware._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_hardware._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_hardware._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_hardware._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_hardware._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_hardware._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_hardware._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_hardware._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_hardware._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_hardware._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_hardware._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_hardware._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_hardware._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_hardware._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_hardware._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_hardware._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 127, i32 160, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_hardware._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_hardware._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_hardware._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_hardware._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_conf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_conf._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_conf._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_conf._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_conf._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_conf._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_conf._entry.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_receive._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 121, i32 160, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_receive._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_receive._entry.166 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 105, i32 160, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_send.mixbuffer to i32), i32 1424, i32 1792, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_count_valid to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_count to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jittercount to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_send._entry.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_spl_jiffies to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_spl_tl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_transmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_search_conf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_new_conf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_new_conf._entry.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_add_conf_member._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_add_conf_member._entry.185 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_add_conf_member._entry.188 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_add_conf_member._entry.191 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_send_member._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_send_member._entry.196 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_cmx_send_member._entry.199 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dsp_cmx_debug(ptr noundef readnone %dsp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_ilist to i32))
  %odsp.0121 = load ptr, ptr @dsp_ilist, align 4
  %cmp.not122 = icmp eq ptr %odsp.0121, @dsp_ilist
  br i1 %cmp.not122, label %entry.do.end34_crit_edge, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  br label %do.end4

entry.do.end34_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end34

do.end4:                                          ; preds = %do.end25.do.end4_crit_edge, %entry.do.end4_crit_edge
  %odsp.0123 = phi ptr [ %odsp.0, %do.end25.do.end4_crit_edge ], [ %odsp.0121, %entry.do.end4_crit_edge ]
  %name = getelementptr inbounds %struct.dsp, ptr %odsp.0123, i32 0, i32 3
  %echo = getelementptr inbounds %struct.dsp, ptr %odsp.0123, i32 0, i32 5
  %hardware = getelementptr inbounds %struct.dsp, ptr %odsp.0123, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %hardware to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hardware, align 4
  %2 = ptrtoint ptr %echo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %echo, align 4
  %tx_mix = getelementptr inbounds %struct.dsp, ptr %odsp.0123, i32 0, i32 8
  %4 = ptrtoint ptr %tx_mix to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_mix, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name, i32 noundef %1, i32 noundef %3, i32 noundef %5) #9
  %conf8 = getelementptr inbounds %struct.dsp, ptr %odsp.0123, i32 0, i32 18
  %6 = ptrtoint ptr %conf8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %conf8, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %do.end4.if.end_crit_edge, label %do.end11

do.end4.if.end_crit_edge:                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end11:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #8
  %id = getelementptr inbounds %struct.dsp_conf, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %9) #9
  br label %if.end

if.end:                                           ; preds = %do.end11, %do.end4.if.end_crit_edge
  %cmp15 = icmp eq ptr %odsp.0123, %dsp
  br i1 %cmp15, label %do.end19, label %if.end.do.end25_crit_edge

if.end.do.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end25

do.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #9
  br label %do.end25

do.end25:                                         ; preds = %do.end19, %if.end.do.end25_crit_edge
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #9
  %10 = ptrtoint ptr %odsp.0123 to i32
  call void @__asan_load4_noabort(i32 %10)
  %odsp.0 = load ptr, ptr %odsp.0123, align 4
  %cmp.not = icmp eq ptr %odsp.0, @dsp_ilist
  br i1 %cmp.not, label %do.end25.do.end34_crit_edge, label %do.end25.do.end4_crit_edge

do.end25.do.end4_crit_edge:                       ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4

do.end25.do.end34_crit_edge:                      ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end34

do.end34:                                         ; preds = %do.end25.do.end34_crit_edge, %entry.do.end34_crit_edge
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @conf_ilist to i32))
  %conf.0127 = load ptr, ptr @conf_ilist, align 4
  %cmp42.not128 = icmp eq ptr %conf.0127, @conf_ilist
  br i1 %cmp42.not128, label %do.end34.do.end94_crit_edge, label %do.end34.do.end47_crit_edge

do.end34.do.end47_crit_edge:                      ; preds = %do.end34
  br label %do.end47

do.end34.do.end94_crit_edge:                      ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end94

for.cond40.loopexit:                              ; preds = %do.end63.for.cond40.loopexit_crit_edge, %do.end47.for.cond40.loopexit_crit_edge
  %11 = ptrtoint ptr %conf.0129 to i32
  call void @__asan_load4_noabort(i32 %11)
  %conf.0 = load ptr, ptr %conf.0129, align 4
  %cmp42.not = icmp eq ptr %conf.0, @conf_ilist
  br i1 %cmp42.not, label %for.cond40.loopexit.do.end94_crit_edge, label %for.cond40.loopexit.do.end47_crit_edge

for.cond40.loopexit.do.end47_crit_edge:           ; preds = %for.cond40.loopexit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end47

for.cond40.loopexit.do.end94_crit_edge:           ; preds = %for.cond40.loopexit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end94

do.end47:                                         ; preds = %for.cond40.loopexit.do.end47_crit_edge, %do.end34.do.end47_crit_edge
  %conf.0129 = phi ptr [ %conf.0, %for.cond40.loopexit.do.end47_crit_edge ], [ %conf.0127, %do.end34.do.end47_crit_edge ]
  %id49 = getelementptr inbounds %struct.dsp_conf, ptr %conf.0129, i32 0, i32 1
  %12 = ptrtoint ptr %id49 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id49, align 4
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %13, ptr noundef %conf.0129) #9
  %mlist = getelementptr inbounds %struct.dsp_conf, ptr %conf.0129, i32 0, i32 2
  %14 = ptrtoint ptr %mlist to i32
  call void @__asan_load4_noabort(i32 %14)
  %member.0124 = load ptr, ptr %mlist, align 4
  %cmp58.not125 = icmp eq ptr %member.0124, %mlist
  br i1 %cmp58.not125, label %do.end47.for.cond40.loopexit_crit_edge, label %do.end47.do.end63_crit_edge

do.end47.do.end63_crit_edge:                      ; preds = %do.end47
  br label %do.end63

do.end47.for.cond40.loopexit_crit_edge:           ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond40.loopexit

do.end63:                                         ; preds = %do.end63.do.end63_crit_edge, %do.end47.do.end63_crit_edge
  %member.0126 = phi ptr [ %member.0, %do.end63.do.end63_crit_edge ], [ %member.0124, %do.end47.do.end63_crit_edge ]
  %dsp65 = getelementptr inbounds %struct.dsp_conf_member, ptr %member.0126, i32 0, i32 1
  %15 = ptrtoint ptr %dsp65 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dsp65, align 4
  %name66 = getelementptr inbounds %struct.dsp, ptr %16, i32 0, i32 3
  %pcm_slot_tx = getelementptr inbounds %struct.dsp, ptr %16, i32 0, i32 38
  %17 = ptrtoint ptr %pcm_slot_tx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pcm_slot_tx, align 4
  %pcm_bank_tx = getelementptr inbounds %struct.dsp, ptr %16, i32 0, i32 39
  %19 = ptrtoint ptr %pcm_bank_tx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pcm_bank_tx, align 4
  %pcm_slot_rx = getelementptr inbounds %struct.dsp, ptr %16, i32 0, i32 36
  %21 = ptrtoint ptr %pcm_slot_rx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pcm_slot_rx, align 4
  %pcm_bank_rx = getelementptr inbounds %struct.dsp, ptr %16, i32 0, i32 37
  %23 = ptrtoint ptr %pcm_bank_rx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pcm_bank_rx, align 4
  %hfc_conf = getelementptr inbounds %struct.dsp, ptr %16, i32 0, i32 40
  %25 = ptrtoint ptr %hfc_conf to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %hfc_conf, align 4
  %tx_data = getelementptr inbounds %struct.dsp, ptr %16, i32 0, i32 32
  %27 = ptrtoint ptr %tx_data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx_data, align 4
  %rx_is_off = getelementptr inbounds %struct.dsp, ptr %16, i32 0, i32 7
  %29 = ptrtoint ptr %rx_is_off to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rx_is_off, align 4
  %cmp76 = icmp eq ptr %16, %dsp
  %cond = select i1 %cmp76, ptr @.str.10, ptr @.str.24
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %name66, i32 noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef %24, i32 noundef %26, i32 noundef %28, i32 noundef %30, ptr noundef nonnull %cond) #9
  %31 = ptrtoint ptr %member.0126 to i32
  call void @__asan_load4_noabort(i32 %31)
  %member.0 = load ptr, ptr %member.0126, align 4
  %cmp58.not = icmp eq ptr %member.0, %mlist
  br i1 %cmp58.not, label %do.end63.for.cond40.loopexit_crit_edge, label %do.end63.do.end63_crit_edge

do.end63.do.end63_crit_edge:                      ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end63

do.end63.for.cond40.loopexit_crit_edge:           ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond40.loopexit

do.end94:                                         ; preds = %for.cond40.loopexit.do.end94_crit_edge, %do.end34.do.end94_crit_edge
  %call96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dsp_cmx_del_conf_member(ptr noundef %dsp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dsp, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %conf = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 18
  %0 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conf, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %do.end5, label %if.end8

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.29) #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %mlist = getelementptr inbounds %struct.dsp_conf, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mlist to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %mlist, align 4
  %cmp.i.not = icmp eq ptr %3, %mlist
  br i1 %cmp.i.not, label %do.end15, label %if.end8.for.cond_crit_edge

if.end8.for.cond_crit_edge:                       ; preds = %if.end8
  br label %for.cond

do.end15:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.29) #9
  br label %cleanup

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end8.for.cond_crit_edge
  %member.0.in = phi ptr [ %member.0, %for.body.for.cond_crit_edge ], [ %mlist, %if.end8.for.cond_crit_edge ]
  %4 = ptrtoint ptr %member.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %member.0 = load ptr, ptr %member.0.in, align 4
  %cmp.not = icmp eq ptr %member.0, %mlist
  br i1 %cmp.not, label %do.end38, label %for.body

for.body:                                         ; preds = %for.cond
  %dsp24 = getelementptr inbounds %struct.dsp_conf_member, ptr %member.0, i32 0, i32 1
  %5 = ptrtoint ptr %dsp24 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dsp24, align 4
  %cmp25 = icmp eq ptr %6, %dsp
  br i1 %cmp25, label %if.then26, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

if.then26:                                        ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %member.0) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.then26.list_del.exit_crit_edge

if.then26.list_del.exit_crit_edge:                ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %member.0, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %member.0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %member.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then26.list_del.exit_crit_edge
  %13 = ptrtoint ptr %member.0 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %member.0, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %member.0, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %15 = ptrtoint ptr %conf to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %conf, align 4
  %member29 = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 19
  %16 = ptrtoint ptr %member29 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %member29, align 4
  tail call void @kfree(ptr noundef %member.0) #6
  br label %cleanup

do.end38:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.29) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end38, %list_del.exit, %do.end15, %do.end5, %do.end
  %retval.0 = phi i32 [ -22, %do.end15 ], [ 0, %list_del.exit ], [ -22, %do.end38 ], [ -22, %do.end5 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dsp_cmx_del_conf(ptr noundef %conf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %conf, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40) #9
  br label %return

if.end:                                           ; preds = %entry
  %mlist = getelementptr inbounds %struct.dsp_conf, ptr %conf, i32 0, i32 2
  %0 = ptrtoint ptr %mlist to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %mlist, align 4
  %cmp.i.not = icmp eq ptr %1, %mlist
  br i1 %cmp.i.not, label %if.end8, label %do.end5

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.40) #9
  br label %return

if.end8:                                          ; preds = %if.end
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %conf) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end8.list_del.exit_crit_edge

if.end8.list_del.exit_crit_edge:                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %conf, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %conf, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end8.list_del.exit_crit_edge
  %8 = ptrtoint ptr %conf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %conf, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %conf, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef nonnull %conf) #6
  br label %return

return:                                           ; preds = %list_del.exit, %do.end5, %do.end
  %retval.0 = phi i32 [ 0, %list_del.exit ], [ -22, %do.end5 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dsp_cmx_hardware(ptr noundef %conf, ptr noundef %dsp) local_unnamed_addr #0 align 64 {
entry:
  %cq.i1725 = alloca %struct.mISDN_ctrl_req, align 4
  %cq.i1716 = alloca %struct.mISDN_ctrl_req, align 4
  %cq.i1705 = alloca %struct.mISDN_ctrl_req, align 4
  %cq.i1694 = alloca %struct.mISDN_ctrl_req, align 4
  %cq.i1683 = alloca %struct.mISDN_ctrl_req, align 4
  %cq.i1674 = alloca %struct.mISDN_ctrl_req, align 4
  %cq.i1667 = alloca %struct.mISDN_ctrl_req, align 4
  %cq.i1660 = alloca %struct.mISDN_ctrl_req, align 4
  %cq.i1653 = alloca %struct.mISDN_ctrl_req, align 4
  %cq.i1646 = alloca %struct.mISDN_ctrl_req, align 4
  %cq.i1637 = alloca %struct.mISDN_ctrl_req, align 4
  %cq.i1630 = alloca %struct.mISDN_ctrl_req, align 4
  %cq.i1623 = alloca %struct.mISDN_ctrl_req, align 4
  %cq.i = alloca %struct.mISDN_ctrl_req, align 4
  %freeunits = alloca [8 x i32], align 4
  %freeslots = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %freeunits) #6
  %0 = getelementptr inbounds [8 x i32], ptr %freeunits, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i32], ptr %freeunits, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i32], ptr %freeunits, i32 0, i32 3
  %3 = getelementptr inbounds [8 x i32], ptr %freeunits, i32 0, i32 4
  %4 = getelementptr inbounds [8 x i32], ptr %freeunits, i32 0, i32 5
  %5 = getelementptr inbounds [8 x i32], ptr %freeunits, i32 0, i32 6
  %6 = getelementptr inbounds [8 x i32], ptr %freeunits, i32 0, i32 7
  %7 = call ptr @memset(ptr %freeunits, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %freeslots) #6
  %8 = call ptr @memset(ptr %freeslots, i32 255, i32 256)
  %tobool.not = icmp eq ptr %conf, null
  br i1 %tobool.not, label %if.then, label %if.end164

if.then:                                          ; preds = %entry
  %tobool1.not = icmp eq ptr %dsp, null
  br i1 %tobool1.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_debug to i32))
  %9 = load i32, ptr @dsp_debug, align 4
  %and = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end.one_member_crit_edge, label %do.end

if.end.one_member_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %one_member

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 3
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, ptr noundef %name) #9
  br label %one_member

one_member:                                       ; preds = %if.end481, %do.end, %if.end.one_member_crit_edge
  %dsp.addr.0 = phi ptr [ %224, %if.end481 ], [ %dsp, %do.end ], [ %dsp, %if.end.one_member_crit_edge ]
  %hfc_conf = getelementptr inbounds %struct.dsp, ptr %dsp.addr.0, i32 0, i32 40
  %10 = ptrtoint ptr %hfc_conf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hfc_conf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp = icmp sgt i32 %11, -1
  br i1 %cmp, label %if.then6, label %one_member.if.end20_crit_edge

one_member.if.end20_crit_edge:                    ; preds = %one_member
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then6:                                         ; preds = %one_member
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_debug to i32))
  %12 = load i32, ptr @dsp_debug, align 4
  %and7 = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.then6.if.end18_crit_edge, label %do.end12

if.then6.if.end18_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

do.end12:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  %name14 = getelementptr inbounds %struct.dsp, ptr %dsp.addr.0, i32 0, i32 3
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, ptr noundef %name14, i32 noundef %11) #9
  br label %if.end18

if.end18:                                         ; preds = %do.end12, %if.then6.if.end18_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cq.i) #6
  %13 = getelementptr inbounds %struct.mISDN_ctrl_req, ptr %cq.i, i32 0, i32 2
  %14 = getelementptr inbounds %struct.mISDN_ctrl_req, ptr %cq.i, i32 0, i32 3
  %15 = getelementptr inbounds i8, ptr %cq.i, i32 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %15, align 4
  %17 = ptrtoint ptr %cq.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 16388, ptr %cq.i, align 4
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %13, align 4
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %14, align 4
  %peer.i = getelementptr inbounds %struct.dsp, ptr %dsp.addr.0, i32 0, i32 1, i32 6
  %20 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %peer.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.end18.dsp_cmx_hw_message.exit_crit_edge, label %if.then.i

if.end18.dsp_cmx_hw_message.exit_crit_edge:       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsp_cmx_hw_message.exit

if.then.i:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %ctrl.i = getelementptr inbounds %struct.mISDNchannel, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctrl.i, align 4
  %call.i = call i32 %23(ptr noundef nonnull %21, i32 noundef 768, ptr noundef nonnull %cq.i) #6
  br label %dsp_cmx_hw_message.exit

dsp_cmx_hw_message.exit:                          ; preds = %if.then.i, %if.end18.dsp_cmx_hw_message.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cq.i) #6
  %24 = ptrtoint ptr %hfc_conf to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %hfc_conf, align 4
  br label %if.end20

if.end20:                                         ; preds = %dsp_cmx_hw_message.exit, %one_member.if.end20_crit_edge
  %pcm_banks = getelementptr inbounds %struct.dsp, ptr %dsp.addr.0, i32 0, i32 33, i32 7
  %25 = ptrtoint ptr %pcm_banks to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pcm_banks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp21 = icmp slt i32 %26, 1
  br i1 %cmp21, label %if.end20.cleanup_crit_edge, label %if.end23

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end23:                                         ; preds = %if.end20
  %echo = getelementptr inbounds %struct.dsp, ptr %dsp.addr.0, i32 0, i32 5
  %27 = ptrtoint ptr %echo to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %echo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool24.not = icmp eq i32 %28, 0
  br i1 %tobool24.not, label %land.lhs.true, label %if.end23.if.end47_crit_edge

if.end23.if.end47_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

land.lhs.true:                                    ; preds = %if.end23
  %hardware = getelementptr inbounds %struct.dsp, ptr %dsp.addr.0, i32 0, i32 5, i32 1
  %29 = ptrtoint ptr %hardware to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %hardware, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool26.not = icmp eq i32 %30, 0
  br i1 %tobool26.not, label %if.then27, label %land.lhs.true.if.end47_crit_edge

land.lhs.true.if.end47_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.then27:                                        ; preds = %land.lhs.true
  %pcm_slot_tx = getelementptr inbounds %struct.dsp, ptr %dsp.addr.0, i32 0, i32 38
  %31 = ptrtoint ptr %pcm_slot_tx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pcm_slot_tx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %cmp28 = icmp sgt i32 %32, -1
  br i1 %cmp28, label %if.then27.if.then30_crit_edge, label %lor.lhs.false

if.then27.if.then30_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then30

lor.lhs.false:                                    ; preds = %if.then27
  %pcm_slot_rx = getelementptr inbounds %struct.dsp, ptr %dsp.addr.0, i32 0, i32 36
  %33 = ptrtoint ptr %pcm_slot_rx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pcm_slot_rx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %cmp29 = icmp sgt i32 %34, -1
  br i1 %cmp29, label %lor.lhs.false.if.then30_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false.if.then30_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then30

if.then30:                                        ; preds = %lor.lhs.false.if.then30_crit_edge, %if.then27.if.then30_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_debug to i32))
  %35 = load i32, ptr @dsp_debug, align 4
  %and31 = and i32 %35, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.then30.if.end43_crit_edge, label %do.end36

if.then30.if.end43_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

do.end36:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  %name38 = getelementptr inbounds %struct.dsp, ptr %dsp.addr.0, i32 0, i32 3
  %pcm_slot_rx41 = getelementptr inbounds %struct.dsp, ptr %dsp.addr.0, i32 0, i32 36
  %36 = ptrtoint ptr %pcm_slot_rx41 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pcm_slot_rx41, align 4
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.45, ptr noundef %name38, i32 noundef %32, i32 noundef %37) #9
  br label %if.end43

if.end43:                                         ; preds = %do.end36, %if.then30.if.end43_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cq.i1623) #6
  %38 = getelementptr inbounds %struct.mISDN_ctrl_req, ptr %cq.i1623, i32 0, i32 2
  %39 = getelementptr inbounds %struct.mISDN_ctrl_req, ptr %cq.i1623, i32 0, i32 3
  %40 = getelementptr inbounds i8, ptr %cq.i1623, i32 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %40, align 4
  %42 = ptrtoint ptr %cq.i1623 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 16386, ptr %cq.i1623, align 4
  %43 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %38, align 4
  %44 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %39, align 4
  %peer.i1624 = getelementptr inbounds %struct.dsp, ptr %dsp.addr.0, i32 0, i32 1, i32 6
  %45 = ptrtoint ptr %peer.i1624 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %peer.i1624, align 4
  %tobool.not.i1625 = icmp eq ptr %46, null
  br i1 %tobool.not.i1625, label %if.end43.dsp_cmx_hw_message.exit1629_crit_edge, label %if.then.i1628

if.end43.dsp_cmx_hw_message.exit1629_crit_edge:   ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsp_cmx_hw_message.exit1629

if.then.i1628:                                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  %ctrl.i1626 = getelementptr inbounds %struct.mISDNchannel, ptr %46, i32 0, i32 9
  %47 = ptrtoint ptr %ctrl.i1626 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ctrl.i1626, align 4
  %call.i1627 = call i32 %48(ptr noundef nonnull %46, i32 noundef 768, ptr noundef nonnull %cq.i1623) #6
  br label %dsp_cmx_hw_message.exit1629

dsp_cmx_hw_message.exit1629:                      ; preds = %if.then.i1628, %if.end43.dsp_cmx_hw_message.exit1629_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cq.i1623) #6
  %pcm_slot_rx45 = getelementptr inbounds %struct.dsp, ptr %dsp.addr.0, i32 0, i32 36
  %49 = call ptr @memset(ptr %pcm_slot_rx45, i32 255, i32 16)
  br label %cleanup

if.end47:                                         ; preds = %land.lhs.true.if.end47_crit_edge, %if.end23.if.end47_crit_edge
  %tx_data48 = getelementptr inbounds %struct.dsp, ptr %dsp.addr.0, i32 0, i32 32
  %50 = ptrtoint ptr %tx_data48 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tx_data48, align 4
  %52 = ptrtoint ptr %echo to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %echo, align 4
  %hardware52 = getelementptr inbounds %struct.dsp, ptr %dsp.addr.0, i32 0, i32 5, i32 1
  %53 = ptrtoint ptr %hardware52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %hardware52, align 4
  %pcm_slot_tx53 = getelementptr inbounds %struct.dsp, ptr %dsp.addr.0, i32 0, i32 38
  %54 = ptrtoint ptr %pcm_slot_tx53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pcm_slot_tx53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %55)
  %cmp54 = icmp sgt i32 %55, -1
  br i1 %cmp54, label %land.lhs.true55, label %if.end91

land.lhs.true55:                                  ; preds = %if.end47
  %pcm_slot_rx56 = getelementptr inbounds %struct.dsp, ptr %dsp.addr.0, i32 0, i32 36
  %56 = ptrtoint ptr %pcm_slot_rx56 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pcm_slot_rx56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp57 = icmp slt i32 %57, 0
  br i1 %cmp57, label %land.lhs.true58, label %land.lhs.true55.if.then70_crit_edge

land.lhs.true55.if.then70_crit_edge:              ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then70

land.lhs.true58:                                  ; preds = %land.lhs.true55
  %pcm_bank_tx59 = getelementptr inbounds %struct.dsp, ptr %dsp.addr.0, i32 0, i32 39
  %58 = ptrtoint ptr %pcm_bank_tx59 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pcm_bank_tx59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %59)
  %cmp60 = icmp eq i32 %59, 2
  br i1 %cmp60, label %land.lhs.true61, label %land.lhs.true58.if.then70_crit_edge

land.lhs.true58.if.then70_crit_edge:              ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then70

land.lhs.true61:                                  ; preds = %land.lhs.true58
  %pcm_bank_rx62 = getelementptr inbounds %struct.dsp, ptr %dsp.addr.0, i32 0, i32 37
  %60 = ptrtoint ptr %pcm_bank_rx62 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pcm_bank_rx62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %61)
  %cmp63 = icmp eq i32 %61, 2
  br i1 %cmp63, label %if.then64, label %land.lhs.true61.if.then70_crit_edge

land.lhs.true61.if.then70_crit_edge:              ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then70

if.then64:                                        ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #8
  %62 = ptrtoint ptr %hardware52 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %hardware52, align 4
  br label %cleanup

if.then70:                                        ; preds = %land.lhs.true61.if.then70_crit_edge, %land.lhs.true58.if.then70_crit_edge, %land.lhs.true55.if.then70_crit_edge
  %63 = ptrtoint ptr %pcm_slot_rx56 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %55, ptr %pcm_slot_rx56, align 4
  %pcm_bank_tx73 = getelementptr inbounds %struct.dsp, ptr %dsp.addr.0, i32 0, i32 39
  %64 = ptrtoint ptr %pcm_bank_tx73 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 2, ptr %pcm_bank_tx73, align 4
  %pcm_bank_rx74 = getelementptr inbounds %struct.dsp, ptr %dsp.addr.0, i32 0, i32 37
  %65 = ptrtoint ptr %pcm_bank_rx74 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 2, ptr %pcm_bank_rx74, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_debug to i32))
  %66 = load i32, ptr @dsp_debug, align 4
  %and75 = and i32 %66, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %if.then70.if.end86_crit_edge, label %do.end80

if.then70.if.end86_crit_edge:                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end86

do.end80:                                         ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #8
  %name82 = getelementptr inbounds %struct.dsp, ptr %dsp.addr.0, i32 0, i32 3
  %call85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.45, ptr noundef %name82, i32 noundef %55) #9
  br label %if.end86

if.end86:                                         ; preds = %do.end80, %if.then70.if.end86_crit_edge
  %67 = ptrtoint ptr %pcm_slot_tx53 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %pcm_slot_tx53, align 4
  %69 = ptrtoint ptr %pcm_slot_rx56 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %pcm_slot_rx56, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cq.i1630) #6
  %71 = getelementptr inbounds %struct.mISDN_ctrl_req, ptr %cq.i1630, i32 0, i32 2
  %72 = getelementptr inbounds %struct.mISDN_ctrl_req, ptr %cq.i1630, i32 0, i32 3
  %73 = getelementptr inbounds i8, ptr %cq.i1630, i32 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %73, align 4
  %75 = ptrtoint ptr %cq.i1630 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 16385, ptr %cq.i1630, align 4
  %or.i = or i32 %68, 512
  %76 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %or.i, ptr %71, align 4
  %or2.i = or i32 %70, 512
  %77 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %or2.i, ptr %72, align 4
  %peer.i1631 = getelementptr inbounds %struct.dsp, ptr %dsp.addr.0, i32 0, i32 1, i32 6
  %78 = ptrtoint ptr %peer.i1631 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %peer.i1631, align 4
  %tobool.not.i1632 = icmp eq ptr %79, null
  br i1 %tobool.not.i1632, label %if.end86.dsp_cmx_hw_message.exit1636_crit_edge, label %if.then.i1635

if.end86.dsp_cmx_hw_message.exit1636_crit_edge:   ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsp_cmx_hw_message.exit1636

if.then.i1635:                                    ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  %ctrl.i1633 = getelementptr inbounds %struct.mISDNchannel, ptr %79, i32 0, i32 9
  %80 = ptrtoint ptr %ctrl.i1633 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ctrl.i1633, align 4
  %call.i1634 = call i32 %81(ptr noundef nonnull %79, i32 noundef 768, ptr noundef nonnull %cq.i1630) #6
  br label %dsp_cmx_hw_message.exit1636

dsp_cmx_hw_message.exit1636:                      ; preds = %if.then.i1635, %if.end86.dsp_cmx_hw_message.exit1636_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cq.i1630) #6
  %82 = ptrtoint ptr %hardware52 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 1, ptr %hardware52, align 4
  br label %cleanup

if.end91:                                         ; preds = %if.end47
  %83 = ptrtoint ptr %pcm_slot_tx53 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 -1, ptr %pcm_slot_tx53, align 4
  %pcm_slot_rx93 = getelementptr inbounds %struct.dsp, ptr %dsp.addr.0, i32 0, i32 36
  %84 = ptrtoint ptr %pcm_slot_rx93 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 -1, ptr %pcm_slot_rx93, align 4
  %85 = call ptr @memset(ptr %freeslots, i32 1, i32 256)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_ilist to i32))
  %finddsp.01827 = load ptr, ptr @dsp_ilist, align 4
  %cmp96.not1828 = icmp eq ptr %finddsp.01827, @dsp_ilist
  br i1 %cmp96.not1828, label %if.end91.for.end_crit_edge, label %for.body.lr.ph

if.end91.for.end_crit_edge:                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end91
  %pcm_id99 = getelementptr inbounds %struct.dsp, ptr %dsp.addr.0, i32 0, i32 33, i32 5
  %86 = ptrtoint ptr %pcm_id99 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %pcm_id99, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %finddsp.01829 = phi ptr [ %finddsp.01827, %for.body.lr.ph ], [ %finddsp.0, %for.inc.for.body_crit_edge ]
  %pcm_id = getelementptr inbounds %struct.dsp, ptr %finddsp.01829, i32 0, i32 33, i32 5
  %88 = ptrtoint ptr %pcm_id to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %pcm_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %89, i32 %87)
  %cmp100 = icmp eq i32 %89, %87
  br i1 %cmp100, label %if.then101, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then101:                                       ; preds = %for.body
  %pcm_slot_rx102 = getelementptr inbounds %struct.dsp, ptr %finddsp.01829, i32 0, i32 36
  %90 = ptrtoint ptr %pcm_slot_rx102 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %pcm_slot_rx102, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %91)
  %cmp106 = icmp ult i32 %91, 256
  br i1 %cmp106, label %if.then107, label %if.then101.if.end109_crit_edge

if.then101.if.end109_crit_edge:                   ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end109

if.then107:                                       ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr [256 x i8], ptr %freeslots, i32 0, i32 %91
  %92 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 0, ptr %arrayidx, align 1
  br label %if.end109

if.end109:                                        ; preds = %if.then107, %if.then101.if.end109_crit_edge
  %pcm_slot_tx110 = getelementptr inbounds %struct.dsp, ptr %finddsp.01829, i32 0, i32 38
  %93 = ptrtoint ptr %pcm_slot_tx110 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %pcm_slot_tx110, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %94)
  %cmp114 = icmp ult i32 %94, 256
  br i1 %cmp114, label %if.then115, label %if.end109.for.inc_crit_edge

if.end109.for.inc_crit_edge:                      ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then115:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx117 = getelementptr [256 x i8], ptr %freeslots, i32 0, i32 %94
  %95 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 0, ptr %arrayidx117, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then115, %if.end109.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %96 = ptrtoint ptr %finddsp.01829 to i32
  call void @__asan_load4_noabort(i32 %96)
  %finddsp.0 = load ptr, ptr %finddsp.01829, align 4
  %cmp96.not = icmp eq ptr %finddsp.0, @dsp_ilist
  br i1 %cmp96.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end91.for.end_crit_edge
  %pcm_slots = getelementptr inbounds %struct.dsp, ptr %dsp.addr.0, i32 0, i32 33, i32 6
  %97 = ptrtoint ptr %pcm_slots to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %pcm_slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp1251830 = icmp sgt i32 %98, 0
  br i1 %cmp1251830, label %for.end.while.body_crit_edge, label %for.end.while.end_crit_edge

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

for.end.while.body_crit_edge:                     ; preds = %for.end
  br label %while.body

while.body:                                       ; preds = %if.end129.while.body_crit_edge, %for.end.while.body_crit_edge
  %i.01831 = phi i32 [ %inc, %if.end129.while.body_crit_edge ], [ 0, %for.end.while.body_crit_edge ]
  %arrayidx126 = getelementptr [256 x i8], ptr %freeslots, i32 0, i32 %i.01831
  %99 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx126, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool127.not = icmp eq i8 %100, 0
  br i1 %tobool127.not, label %if.end129, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end129:                                        ; preds = %while.body
  %inc = add nuw nsw i32 %i.01831, 1
  %exitcond1866.not = icmp eq i32 %inc, %98
  br i1 %exitcond1866.not, label %if.end129.if.then131_crit_edge, label %if.end129.while.body_crit_edge

if.end129.while.body_crit_edge:                   ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end129.if.then131_crit_edge:                   ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then131

while.end:                                        ; preds = %while.body.while.end_crit_edge, %for.end.while.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.end.while.end_crit_edge ], [ %i.01831, %while.body.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %98)
  %cmp130 = icmp eq i32 %i.0.lcssa, %98
  br i1 %cmp130, label %while.end.if.then131_crit_edge, label %if.end143

while.end.if.then131_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then131

if.then131:                                       ; preds = %while.end.if.then131_crit_edge, %if.end129.if.then131_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_debug to i32))
  %101 = load i32, ptr @dsp_debug, align 4
  %and132 = and i32 %101, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and132)
  %tobool133.not = icmp eq i32 %and132, 0
  br i1 %tobool133.not, label %if.then131.if.end140_crit_edge, label %do.end137

if.then131.if.end140_crit_edge:                   ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end140

do.end137:                                        ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #8
  %call139 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.45) #9
  br label %if.end140

if.end140:                                        ; preds = %do.end137, %if.then131.if.end140_crit_edge
  %102 = ptrtoint ptr %echo to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 1, ptr %echo, align 4
  br label %cleanup

if.end143:                                        ; preds = %while.end
  %103 = ptrtoint ptr %pcm_slot_tx53 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %i.0.lcssa, ptr %pcm_slot_tx53, align 4
  %104 = ptrtoint ptr %pcm_slot_rx93 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %i.0.lcssa, ptr %pcm_slot_rx93, align 4
  %pcm_bank_tx146 = getelementptr inbounds %struct.dsp, ptr %dsp.addr.0, i32 0, i32 39
  %105 = ptrtoint ptr %pcm_bank_tx146 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 2, ptr %pcm_bank_tx146, align 4
  %pcm_bank_rx147 = getelementptr inbounds %struct.dsp, ptr %dsp.addr.0, i32 0, i32 37
  %106 = ptrtoint ptr %pcm_bank_rx147 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 2, ptr %pcm_bank_rx147, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_debug to i32))
  %107 = load i32, ptr @dsp_debug, align 4
  %and148 = and i32 %107, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148)
  %tobool149.not = icmp eq i32 %and148, 0
  br i1 %tobool149.not, label %if.end143.if.end159_crit_edge, label %do.end153

if.end143.if.end159_crit_edge:                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end159

do.end153:                                        ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #8
  %name155 = getelementptr inbounds %struct.dsp, ptr %dsp.addr.0, i32 0, i32 3
  %call158 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.45, ptr noundef %name155, i32 noundef %i.0.lcssa) #9
  br label %if.end159

if.end159:                                        ; preds = %do.end153, %if.end143.if.end159_crit_edge
  %108 = ptrtoint ptr %pcm_slot_tx53 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %pcm_slot_tx53, align 4
  %110 = ptrtoint ptr %pcm_slot_rx93 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %pcm_slot_rx93, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cq.i1637) #6
  %112 = getelementptr inbounds %struct.mISDN_ctrl_req, ptr %cq.i1637, i32 0, i32 2
  %113 = getelementptr inbounds %struct.mISDN_ctrl_req, ptr %cq.i1637, i32 0, i32 3
  %114 = getelementptr inbounds i8, ptr %cq.i1637, i32 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 0, ptr %114, align 4
  %116 = ptrtoint ptr %cq.i1637 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 16385, ptr %cq.i1637, align 4
  %or.i1638 = or i32 %109, 512
  %117 = ptrtoint ptr %112 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %or.i1638, ptr %112, align 4
  %or2.i1639 = or i32 %111, 512
  %118 = ptrtoint ptr %113 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %or2.i1639, ptr %113, align 4
  %peer.i1640 = getelementptr inbounds %struct.dsp, ptr %dsp.addr.0, i32 0, i32 1, i32 6
  %119 = ptrtoint ptr %peer.i1640 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %peer.i1640, align 4
  %tobool.not.i1641 = icmp eq ptr %120, null
  br i1 %tobool.not.i1641, label %if.end159.dsp_cmx_hw_message.exit1645_crit_edge, label %if.then.i1644

if.end159.dsp_cmx_hw_message.exit1645_crit_edge:  ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsp_cmx_hw_message.exit1645

if.then.i1644:                                    ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #8
  %ctrl.i1642 = getelementptr inbounds %struct.mISDNchannel, ptr %120, i32 0, i32 9
  %121 = ptrtoint ptr %ctrl.i1642 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %ctrl.i1642, align 4
  %call.i1643 = call i32 %122(ptr noundef nonnull %120, i32 noundef 768, ptr noundef nonnull %cq.i1637) #6
  br label %dsp_cmx_hw_message.exit1645

dsp_cmx_hw_message.exit1645:                      ; preds = %if.then.i1644, %if.end159.dsp_cmx_hw_message.exit1645_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cq.i1637) #6
  %123 = ptrtoint ptr %hardware52 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 1, ptr %hardware52, align 4
  br label %cleanup

if.end164:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_debug to i32))
  %124 = load i32, ptr @dsp_debug, align 4
  %and165 = and i32 %124, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and165)
  %tobool166.not = icmp eq i32 %and165, 0
  br i1 %tobool166.not, label %if.end164.if.end173_crit_edge, label %do.end170

if.end164.if.end173_crit_edge:                    ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end173

do.end170:                                        ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #8
  %id = getelementptr inbounds %struct.dsp_conf, ptr %conf, i32 0, i32 1
  %125 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %id, align 4
  %call172 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.45, i32 noundef %126) #9
  br label %if.end173

if.end173:                                        ; preds = %do.end170, %if.end164.if.end173_crit_edge
  %mlist = getelementptr inbounds %struct.dsp_conf, ptr %conf, i32 0, i32 2
  %127 = ptrtoint ptr %mlist to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load volatile ptr, ptr %mlist, align 4
  %cmp.i.not = icmp eq ptr %128, %mlist
  br i1 %cmp.i.not, label %do.end179, label %if.end182

do.end179:                                        ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #8
  %call181 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.45) #9
  br label %cleanup

if.end182:                                        ; preds = %if.end173
  %dsp188 = getelementptr inbounds %struct.dsp_conf_member, ptr %128, i32 0, i32 1
  %129 = ptrtoint ptr %dsp188 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dsp188, align 4
  %features189 = getelementptr inbounds %struct.dsp, ptr %130, i32 0, i32 33
  %131 = ptrtoint ptr %features189 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %features189, align 4
  %pcm_id192 = getelementptr inbounds %struct.dsp, ptr %130, i32 0, i32 33, i32 5
  %133 = ptrtoint ptr %pcm_id192 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %pcm_id192, align 4
  br label %for.body203

for.body203:                                      ; preds = %if.end453.for.body203_crit_edge, %if.end182
  %member.01791 = phi ptr [ %128, %if.end182 ], [ %214, %if.end453.for.body203_crit_edge ]
  %memb.01790 = phi i32 [ 0, %if.end182 ], [ %inc459, %if.end453.for.body203_crit_edge ]
  %same_hfc.01789 = phi i32 [ %132, %if.end182 ], [ %spec.store.select, %if.end453.for.body203_crit_edge ]
  %current_conf.01788 = phi i32 [ -1, %if.end182 ], [ %current_conf.1, %if.end453.for.body203_crit_edge ]
  %all_conf.01787 = phi i32 [ 1, %if.end182 ], [ %spec.select1609, %if.end453.for.body203_crit_edge ]
  %tx_data.01786 = phi i32 [ 0, %if.end182 ], [ %tx_data.1, %if.end453.for.body203_crit_edge ]
  %dsp204 = getelementptr inbounds %struct.dsp_conf_member, ptr %member.01791, i32 0, i32 1
  %135 = ptrtoint ptr %dsp204 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dsp204, align 4
  %tx_mix = getelementptr inbounds %struct.dsp, ptr %136, i32 0, i32 8
  %137 = ptrtoint ptr %tx_mix to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %tx_mix, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool205.not = icmp eq i32 %138, 0
  br i1 %tobool205.not, label %if.end281, label %if.then206

if.then206:                                       ; preds = %for.body203
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_debug to i32))
  %139 = load i32, ptr @dsp_debug, align 4
  %and207 = and i32 %139, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and207)
  %tobool208.not = icmp eq i32 %and207, 0
  br i1 %tobool208.not, label %if.then206.conf_software_crit_edge, label %do.end212

if.then206.conf_software_crit_edge:               ; preds = %if.then206
  call void @__sanitizer_cov_trace_pc() #8
  br label %conf_software

do.end212:                                        ; preds = %if.then206
  call void @__sanitizer_cov_trace_pc() #8
  %name215 = getelementptr inbounds %struct.dsp, ptr %136, i32 0, i32 3
  %call217 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.45, ptr noundef %name215) #9
  br label %conf_software

conf_software:                                    ; preds = %do.end1194, %if.then1188.conf_software_crit_edge, %do.end1109, %if.then1103.conf_software_crit_edge, %if.end1035.conf_software_crit_edge, %for.body1029.conf_software_crit_edge, %do.end1006, %if.then1000.conf_software_crit_edge, %do.end932, %if.then926.conf_software_crit_edge, %do.end905, %if.then899.conf_software_crit_edge, %do.end702, %if.then696.conf_software_crit_edge, %do.end431, %if.then425.conf_software_crit_edge, %do.end413, %if.then407.conf_software_crit_edge, %do.end395, %if.then389.conf_software_crit_edge, %do.end379, %if.then373.conf_software_crit_edge, %do.end346, %if.then340.conf_software_crit_edge, %do.end330, %if.then324.conf_software_crit_edge, %do.end297, %if.then291.conf_software_crit_edge, %do.end212, %if.then206.conf_software_crit_edge
  %140 = ptrtoint ptr %mlist to i32
  call void @__asan_load4_noabort(i32 %140)
  %member.11824 = load ptr, ptr %mlist, align 4
  %cmp227.not1825 = icmp eq ptr %member.11824, %mlist
  br i1 %cmp227.not1825, label %conf_software.for.end278_crit_edge, label %for.body229.lr.ph

conf_software.for.end278_crit_edge:               ; preds = %conf_software
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end278

for.body229.lr.ph:                                ; preds = %conf_software
  %141 = getelementptr inbounds %struct.mISDN_ctrl_req, ptr %cq.i1646, i32 0, i32 2
  %142 = getelementptr inbounds %struct.mISDN_ctrl_req, ptr %cq.i1646, i32 0, i32 3
  %143 = getelementptr inbounds i8, ptr %cq.i1646, i32 4
  %144 = getelementptr inbounds %struct.mISDN_ctrl_req, ptr %cq.i1653, i32 0, i32 2
  %145 = getelementptr inbounds %struct.mISDN_ctrl_req, ptr %cq.i1653, i32 0, i32 3
  %146 = getelementptr inbounds i8, ptr %cq.i1653, i32 4
  br label %for.body229

for.body229:                                      ; preds = %for.inc272.for.body229_crit_edge, %for.body229.lr.ph
  %member.11826 = phi ptr [ %member.11824, %for.body229.lr.ph ], [ %member.1, %for.inc272.for.body229_crit_edge ]
  %dsp230 = getelementptr inbounds %struct.dsp_conf_member, ptr %member.11826, i32 0, i32 1
  %147 = ptrtoint ptr %dsp230 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %dsp230, align 4
  %hfc_conf231 = getelementptr inbounds %struct.dsp, ptr %148, i32 0, i32 40
  %149 = ptrtoint ptr %hfc_conf231 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %hfc_conf231, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %150)
  %cmp232 = icmp sgt i32 %150, -1
  br i1 %cmp232, label %if.then233, label %for.body229.if.end247_crit_edge

for.body229.if.end247_crit_edge:                  ; preds = %for.body229
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end247

if.then233:                                       ; preds = %for.body229
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_debug to i32))
  %151 = load i32, ptr @dsp_debug, align 4
  %and234 = and i32 %151, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and234)
  %tobool235.not = icmp eq i32 %and234, 0
  br i1 %tobool235.not, label %if.then233.if.end245_crit_edge, label %do.end239

if.then233.if.end245_crit_edge:                   ; preds = %if.then233
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end245

do.end239:                                        ; preds = %if.then233
  call void @__sanitizer_cov_trace_pc() #8
  %name241 = getelementptr inbounds %struct.dsp, ptr %148, i32 0, i32 3
  %call244 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.45, ptr noundef %name241, i32 noundef %150) #9
  br label %if.end245

if.end245:                                        ; preds = %do.end239, %if.then233.if.end245_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cq.i1646) #6
  %152 = ptrtoint ptr %143 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 0, ptr %143, align 4
  %153 = ptrtoint ptr %cq.i1646 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 16388, ptr %cq.i1646, align 4
  %154 = ptrtoint ptr %141 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 0, ptr %141, align 4
  %155 = ptrtoint ptr %142 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 0, ptr %142, align 4
  %peer.i1647 = getelementptr inbounds %struct.dsp, ptr %148, i32 0, i32 1, i32 6
  %156 = ptrtoint ptr %peer.i1647 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %peer.i1647, align 4
  %tobool.not.i1648 = icmp eq ptr %157, null
  br i1 %tobool.not.i1648, label %if.end245.dsp_cmx_hw_message.exit1652_crit_edge, label %if.then.i1651

if.end245.dsp_cmx_hw_message.exit1652_crit_edge:  ; preds = %if.end245
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsp_cmx_hw_message.exit1652

if.then.i1651:                                    ; preds = %if.end245
  call void @__sanitizer_cov_trace_pc() #8
  %ctrl.i1649 = getelementptr inbounds %struct.mISDNchannel, ptr %157, i32 0, i32 9
  %158 = ptrtoint ptr %ctrl.i1649 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %ctrl.i1649, align 4
  %call.i1650 = call i32 %159(ptr noundef nonnull %157, i32 noundef 768, ptr noundef nonnull %cq.i1646) #6
  br label %dsp_cmx_hw_message.exit1652

dsp_cmx_hw_message.exit1652:                      ; preds = %if.then.i1651, %if.end245.dsp_cmx_hw_message.exit1652_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cq.i1646) #6
  %160 = ptrtoint ptr %hfc_conf231 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 -1, ptr %hfc_conf231, align 4
  br label %if.end247

if.end247:                                        ; preds = %dsp_cmx_hw_message.exit1652, %for.body229.if.end247_crit_edge
  %pcm_slot_tx248 = getelementptr inbounds %struct.dsp, ptr %148, i32 0, i32 38
  %161 = ptrtoint ptr %pcm_slot_tx248 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %pcm_slot_tx248, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %162)
  %cmp249 = icmp sgt i32 %162, -1
  br i1 %cmp249, label %if.end247.if.then253_crit_edge, label %lor.lhs.false250

if.end247.if.then253_crit_edge:                   ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then253

lor.lhs.false250:                                 ; preds = %if.end247
  %pcm_slot_rx251 = getelementptr inbounds %struct.dsp, ptr %148, i32 0, i32 36
  %163 = ptrtoint ptr %pcm_slot_rx251 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %pcm_slot_rx251, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %164)
  %cmp252 = icmp sgt i32 %164, -1
  br i1 %cmp252, label %lor.lhs.false250.if.then253_crit_edge, label %lor.lhs.false250.for.inc272_crit_edge

lor.lhs.false250.for.inc272_crit_edge:            ; preds = %lor.lhs.false250
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc272

lor.lhs.false250.if.then253_crit_edge:            ; preds = %lor.lhs.false250
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then253

if.then253:                                       ; preds = %lor.lhs.false250.if.then253_crit_edge, %if.end247.if.then253_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_debug to i32))
  %165 = load i32, ptr @dsp_debug, align 4
  %and254 = and i32 %165, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and254)
  %tobool255.not = icmp eq i32 %and254, 0
  br i1 %tobool255.not, label %if.then253.if.end266_crit_edge, label %do.end259

if.then253.if.end266_crit_edge:                   ; preds = %if.then253
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end266

do.end259:                                        ; preds = %if.then253
  call void @__sanitizer_cov_trace_pc() #8
  %name261 = getelementptr inbounds %struct.dsp, ptr %148, i32 0, i32 3
  %pcm_slot_rx264 = getelementptr inbounds %struct.dsp, ptr %148, i32 0, i32 36
  %166 = ptrtoint ptr %pcm_slot_rx264 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %pcm_slot_rx264, align 4
  %call265 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.45, ptr noundef %name261, i32 noundef %162, i32 noundef %167) #9
  br label %if.end266

if.end266:                                        ; preds = %do.end259, %if.then253.if.end266_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cq.i1653) #6
  %168 = ptrtoint ptr %146 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 0, ptr %146, align 4
  %169 = ptrtoint ptr %cq.i1653 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 16386, ptr %cq.i1653, align 4
  %170 = ptrtoint ptr %144 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 0, ptr %144, align 4
  %171 = ptrtoint ptr %145 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 0, ptr %145, align 4
  %peer.i1654 = getelementptr inbounds %struct.dsp, ptr %148, i32 0, i32 1, i32 6
  %172 = ptrtoint ptr %peer.i1654 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %peer.i1654, align 4
  %tobool.not.i1655 = icmp eq ptr %173, null
  br i1 %tobool.not.i1655, label %if.end266.dsp_cmx_hw_message.exit1659_crit_edge, label %if.then.i1658

if.end266.dsp_cmx_hw_message.exit1659_crit_edge:  ; preds = %if.end266
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsp_cmx_hw_message.exit1659

if.then.i1658:                                    ; preds = %if.end266
  call void @__sanitizer_cov_trace_pc() #8
  %ctrl.i1656 = getelementptr inbounds %struct.mISDNchannel, ptr %173, i32 0, i32 9
  %174 = ptrtoint ptr %ctrl.i1656 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %ctrl.i1656, align 4
  %call.i1657 = call i32 %175(ptr noundef nonnull %173, i32 noundef 768, ptr noundef nonnull %cq.i1653) #6
  br label %dsp_cmx_hw_message.exit1659

dsp_cmx_hw_message.exit1659:                      ; preds = %if.then.i1658, %if.end266.dsp_cmx_hw_message.exit1659_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cq.i1653) #6
  %pcm_slot_rx269 = getelementptr inbounds %struct.dsp, ptr %148, i32 0, i32 36
  %176 = call ptr @memset(ptr %pcm_slot_rx269, i32 255, i32 16)
  br label %for.inc272

for.inc272:                                       ; preds = %dsp_cmx_hw_message.exit1659, %lor.lhs.false250.for.inc272_crit_edge
  %177 = ptrtoint ptr %member.11826 to i32
  call void @__asan_load4_noabort(i32 %177)
  %member.1 = load ptr, ptr %member.11826, align 4
  %cmp227.not = icmp eq ptr %member.1, %mlist
  br i1 %cmp227.not, label %for.inc272.for.end278_crit_edge, label %for.inc272.for.body229_crit_edge

for.inc272.for.body229_crit_edge:                 ; preds = %for.inc272
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body229

for.inc272.for.end278_crit_edge:                  ; preds = %for.inc272
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end278

for.end278:                                       ; preds = %for.inc272.for.end278_crit_edge, %conf_software.for.end278_crit_edge
  %hardware279 = getelementptr inbounds %struct.dsp_conf, ptr %conf, i32 0, i32 4
  %178 = ptrtoint ptr %hardware279 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 0, ptr %hardware279, align 4
  %software280 = getelementptr inbounds %struct.dsp_conf, ptr %conf, i32 0, i32 3
  %179 = ptrtoint ptr %software280 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 1, ptr %software280, align 4
  br label %cleanup

if.end281:                                        ; preds = %for.body203
  %hardware284 = getelementptr inbounds %struct.dsp, ptr %136, i32 0, i32 5, i32 1
  %180 = ptrtoint ptr %hardware284 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %hardware284, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %181)
  %tobool285.not = icmp eq i32 %181, 0
  br i1 %tobool285.not, label %lor.lhs.false286, label %if.end281.if.then291_crit_edge

if.end281.if.then291_crit_edge:                   ; preds = %if.end281
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then291

lor.lhs.false286:                                 ; preds = %if.end281
  %echo283 = getelementptr inbounds %struct.dsp, ptr %136, i32 0, i32 5
  %182 = ptrtoint ptr %echo283 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %echo283, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %183)
  %tobool290.not = icmp eq i32 %183, 0
  br i1 %tobool290.not, label %if.end321, label %lor.lhs.false286.if.then291_crit_edge

lor.lhs.false286.if.then291_crit_edge:            ; preds = %lor.lhs.false286
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then291

if.then291:                                       ; preds = %lor.lhs.false286.if.then291_crit_edge, %if.end281.if.then291_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_debug to i32))
  %184 = load i32, ptr @dsp_debug, align 4
  %and292 = and i32 %184, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and292)
  %tobool293.not = icmp eq i32 %and292, 0
  br i1 %tobool293.not, label %if.then291.conf_software_crit_edge, label %do.end297

if.then291.conf_software_crit_edge:               ; preds = %if.then291
  call void @__sanitizer_cov_trace_pc() #8
  br label %conf_software

do.end297:                                        ; preds = %if.then291
  call void @__sanitizer_cov_trace_pc() #8
  %name300 = getelementptr inbounds %struct.dsp, ptr %136, i32 0, i32 3
  %call302 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.45, ptr noundef %name300) #9
  br label %conf_software

if.end321:                                        ; preds = %lor.lhs.false286
  %tx_volume = getelementptr inbounds %struct.dsp, ptr %136, i32 0, i32 11
  %185 = ptrtoint ptr %tx_volume to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %tx_volume, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %tobool323.not = icmp eq i32 %186, 0
  br i1 %tobool323.not, label %if.end337, label %if.then324

if.then324:                                       ; preds = %if.end321
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_debug to i32))
  %187 = load i32, ptr @dsp_debug, align 4
  %and325 = and i32 %187, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and325)
  %tobool326.not = icmp eq i32 %and325, 0
  br i1 %tobool326.not, label %if.then324.conf_software_crit_edge, label %do.end330

if.then324.conf_software_crit_edge:               ; preds = %if.then324
  call void @__sanitizer_cov_trace_pc() #8
  br label %conf_software

do.end330:                                        ; preds = %if.then324
  call void @__sanitizer_cov_trace_pc() #8
  %name333 = getelementptr inbounds %struct.dsp, ptr %136, i32 0, i32 3
  %call335 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.45, ptr noundef %name333) #9
  br label %conf_software

if.end337:                                        ; preds = %if.end321
  %rx_volume = getelementptr inbounds %struct.dsp, ptr %136, i32 0, i32 12
  %188 = ptrtoint ptr %rx_volume to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %rx_volume, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %189)
  %tobool339.not = icmp eq i32 %189, 0
  br i1 %tobool339.not, label %if.end353, label %if.then340

if.then340:                                       ; preds = %if.end337
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_debug to i32))
  %190 = load i32, ptr @dsp_debug, align 4
  %and341 = and i32 %190, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and341)
  %tobool342.not = icmp eq i32 %and341, 0
  br i1 %tobool342.not, label %if.then340.conf_software_crit_edge, label %do.end346

if.then340.conf_software_crit_edge:               ; preds = %if.then340
  call void @__sanitizer_cov_trace_pc() #8
  br label %conf_software

do.end346:                                        ; preds = %if.then340
  call void @__sanitizer_cov_trace_pc() #8
  %name349 = getelementptr inbounds %struct.dsp, ptr %136, i32 0, i32 3
  %call351 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.45, ptr noundef %name349) #9
  br label %conf_software

if.end353:                                        ; preds = %if.end337
  %tx_data355 = getelementptr inbounds %struct.dsp, ptr %136, i32 0, i32 32
  %191 = ptrtoint ptr %tx_data355 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %tx_data355, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %192)
  %tobool356.not = icmp eq i32 %192, 0
  br i1 %tobool356.not, label %if.end353.if.end370_crit_edge, label %if.then357

if.end353.if.end370_crit_edge:                    ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end370

if.then357:                                       ; preds = %if.end353
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_debug to i32))
  %193 = load i32, ptr @dsp_debug, align 4
  %and358 = and i32 %193, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and358)
  %tobool359.not = icmp eq i32 %and358, 0
  br i1 %tobool359.not, label %if.then357.if.end370_crit_edge, label %do.end363

if.then357.if.end370_crit_edge:                   ; preds = %if.then357
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end370

do.end363:                                        ; preds = %if.then357
  call void @__sanitizer_cov_trace_pc() #8
  %name366 = getelementptr inbounds %struct.dsp, ptr %136, i32 0, i32 3
  %call368 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.45, ptr noundef %name366) #9
  br label %if.end370

if.end370:                                        ; preds = %do.end363, %if.then357.if.end370_crit_edge, %if.end353.if.end370_crit_edge
  %tx_data.1 = phi i32 [ %tx_data.01786, %if.end353.if.end370_crit_edge ], [ 1, %do.end363 ], [ 1, %if.then357.if.end370_crit_edge ]
  %194 = ptrtoint ptr %dsp204 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %dsp204, align 4
  %inuse = getelementptr inbounds %struct.dsp, ptr %195, i32 0, i32 52, i32 2
  %196 = ptrtoint ptr %inuse to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %inuse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %197)
  %tobool372.not = icmp eq i32 %197, 0
  br i1 %tobool372.not, label %if.end386, label %if.then373

if.then373:                                       ; preds = %if.end370
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_debug to i32))
  %198 = load i32, ptr @dsp_debug, align 4
  %and374 = and i32 %198, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and374)
  %tobool375.not = icmp eq i32 %and374, 0
  br i1 %tobool375.not, label %if.then373.conf_software_crit_edge, label %do.end379

if.then373.conf_software_crit_edge:               ; preds = %if.then373
  call void @__sanitizer_cov_trace_pc() #8
  br label %conf_software

do.end379:                                        ; preds = %if.then373
  call void @__sanitizer_cov_trace_pc() #8
  %name382 = getelementptr inbounds %struct.dsp, ptr %195, i32 0, i32 3
  %call384 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.45, ptr noundef %name382) #9
  br label %conf_software

if.end386:                                        ; preds = %if.end370
  %bf_enable = getelementptr inbounds %struct.dsp, ptr %195, i32 0, i32 41
  %199 = ptrtoint ptr %bf_enable to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %bf_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %200)
  %tobool388.not = icmp eq i32 %200, 0
  br i1 %tobool388.not, label %if.end402, label %if.then389

if.then389:                                       ; preds = %if.end386
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_debug to i32))
  %201 = load i32, ptr @dsp_debug, align 4
  %and390 = and i32 %201, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and390)
  %tobool391.not = icmp eq i32 %and390, 0
  br i1 %tobool391.not, label %if.then389.conf_software_crit_edge, label %do.end395

if.then389.conf_software_crit_edge:               ; preds = %if.then389
  call void @__sanitizer_cov_trace_pc() #8
  br label %conf_software

do.end395:                                        ; preds = %if.then389
  call void @__sanitizer_cov_trace_pc() #8
  %name398 = getelementptr inbounds %struct.dsp, ptr %195, i32 0, i32 3
  %call400 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.45, ptr noundef %name398) #9
  br label %conf_software

if.end402:                                        ; preds = %if.end386
  %features404 = getelementptr inbounds %struct.dsp, ptr %195, i32 0, i32 33
  %pcm_id405 = getelementptr inbounds %struct.dsp, ptr %195, i32 0, i32 33, i32 5
  %202 = ptrtoint ptr %pcm_id405 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %pcm_id405, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %203)
  %cmp406 = icmp slt i32 %203, 0
  br i1 %cmp406, label %if.then407, label %if.end420

if.then407:                                       ; preds = %if.end402
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_debug to i32))
  %204 = load i32, ptr @dsp_debug, align 4
  %and408 = and i32 %204, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and408)
  %tobool409.not = icmp eq i32 %and408, 0
  br i1 %tobool409.not, label %if.then407.conf_software_crit_edge, label %do.end413

if.then407.conf_software_crit_edge:               ; preds = %if.then407
  call void @__sanitizer_cov_trace_pc() #8
  br label %conf_software

do.end413:                                        ; preds = %if.then407
  call void @__sanitizer_cov_trace_pc() #8
  %name416 = getelementptr inbounds %struct.dsp, ptr %195, i32 0, i32 3
  %call418 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.45, ptr noundef %name416) #9
  br label %conf_software

if.end420:                                        ; preds = %if.end402
  call void @__sanitizer_cov_trace_cmp4(i32 %203, i32 %134)
  %cmp424.not = icmp eq i32 %203, %134
  br i1 %cmp424.not, label %if.end438, label %if.then425

if.then425:                                       ; preds = %if.end420
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_debug to i32))
  %205 = load i32, ptr @dsp_debug, align 4
  %and426 = and i32 %205, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and426)
  %tobool427.not = icmp eq i32 %and426, 0
  br i1 %tobool427.not, label %if.then425.conf_software_crit_edge, label %do.end431

if.then425.conf_software_crit_edge:               ; preds = %if.then425
  call void @__sanitizer_cov_trace_pc() #8
  br label %conf_software

do.end431:                                        ; preds = %if.then425
  call void @__sanitizer_cov_trace_pc() #8
  %name434 = getelementptr inbounds %struct.dsp, ptr %195, i32 0, i32 3
  %call436 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.45, ptr noundef %name434) #9
  br label %conf_software

if.end438:                                        ; preds = %if.end420
  %206 = ptrtoint ptr %features404 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %features404, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %same_hfc.01789, i32 %207)
  %cmp442.not = icmp eq i32 %same_hfc.01789, %207
  %spec.store.select = select i1 %cmp442.not, i32 %same_hfc.01789, i32 -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %current_conf.01788)
  %cmp445 = icmp slt i32 %current_conf.01788, 0
  br i1 %cmp445, label %land.lhs.true446, label %if.end438.if.end453_crit_edge

if.end438.if.end453_crit_edge:                    ; preds = %if.end438
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end453

land.lhs.true446:                                 ; preds = %if.end438
  call void @__sanitizer_cov_trace_pc() #8
  %hfc_conf448 = getelementptr inbounds %struct.dsp, ptr %195, i32 0, i32 40
  %208 = ptrtoint ptr %hfc_conf448 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %hfc_conf448, align 4
  %210 = tail call i32 @llvm.smax.i32(i32 %209, i32 -1)
  br label %if.end453

if.end453:                                        ; preds = %land.lhs.true446, %if.end438.if.end453_crit_edge
  %current_conf.1 = phi i32 [ %current_conf.01788, %if.end438.if.end453_crit_edge ], [ %210, %land.lhs.true446 ]
  %hfc_conf455 = getelementptr inbounds %struct.dsp, ptr %195, i32 0, i32 40
  %211 = ptrtoint ptr %hfc_conf455 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %hfc_conf455, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %212)
  %cmp456 = icmp slt i32 %212, 0
  %spec.select1609 = select i1 %cmp456, i32 0, i32 %all_conf.01787
  %inc459 = add i32 %memb.01790, 1
  %213 = ptrtoint ptr %member.01791 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %member.01791, align 4
  %cmp201.not = icmp eq ptr %214, %mlist
  br i1 %cmp201.not, label %for.end466, label %if.end453.for.body203_crit_edge

if.end453.for.body203_crit_edge:                  ; preds = %if.end453
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body203

for.end466:                                       ; preds = %if.end453
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483646, i32 %memb.01790)
  %cmp467 = icmp ugt i32 %memb.01790, 2147483646
  br i1 %cmp467, label %for.end466.cleanup_crit_edge, label %if.end469

for.end466.cleanup_crit_edge:                     ; preds = %for.end466
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end469:                                        ; preds = %for.end466
  %215 = zext i32 %memb.01790 to i64
  call void @__sanitizer_cov_trace_switch(i64 %215, ptr @__sancov_gen_cov_switch_values)
  switch i32 %memb.01790, label %if.end998 [
    i32 0, label %if.then471
    i32 1, label %if.then492
  ]

if.then471:                                       ; preds = %if.end469
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_debug to i32))
  %216 = load i32, ptr @dsp_debug, align 4
  %and472 = and i32 %216, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and472)
  %tobool473.not = icmp eq i32 %and472, 0
  br i1 %tobool473.not, label %if.then471.if.end481_crit_edge, label %do.end477

if.then471.if.end481_crit_edge:                   ; preds = %if.then471
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end481

do.end477:                                        ; preds = %if.then471
  call void @__sanitizer_cov_trace_pc() #8
  %id479 = getelementptr inbounds %struct.dsp_conf, ptr %conf, i32 0, i32 1
  %217 = ptrtoint ptr %id479 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %id479, align 4
  %call480 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.45, i32 noundef %218) #9
  br label %if.end481

if.end481:                                        ; preds = %do.end477, %if.then471.if.end481_crit_edge
  %hardware482 = getelementptr inbounds %struct.dsp_conf, ptr %conf, i32 0, i32 4
  %219 = ptrtoint ptr %hardware482 to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 0, ptr %hardware482, align 4
  %software483 = getelementptr inbounds %struct.dsp_conf, ptr %conf, i32 0, i32 3
  %220 = ptrtoint ptr %software483 to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 0, ptr %software483, align 4
  %221 = ptrtoint ptr %mlist to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %mlist, align 4
  %dsp489 = getelementptr inbounds %struct.dsp_conf_member, ptr %222, i32 0, i32 1
  %223 = ptrtoint ptr %dsp489 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %dsp489, align 4
  br label %one_member

if.then492:                                       ; preds = %if.end469
  %225 = ptrtoint ptr %mlist to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %mlist, align 4
  %227 = ptrtoint ptr %226 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %226, align 4
  %dsp503 = getelementptr inbounds %struct.dsp_conf_member, ptr %226, i32 0, i32 1
  %229 = ptrtoint ptr %dsp503 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %dsp503, align 4
  %hfc_conf504 = getelementptr inbounds %struct.dsp, ptr %230, i32 0, i32 40
  %231 = ptrtoint ptr %hfc_conf504 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %hfc_conf504, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %232)
  %cmp505 = icmp sgt i32 %232, -1
  br i1 %cmp505, label %if.then506, label %if.then492.if.end524_crit_edge

if.then492.if.end524_crit_edge:                   ; preds = %if.then492
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end524

if.then506:                                       ; preds = %if.then492
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_debug to i32))
  %233 = load i32, ptr @dsp_debug, align 4
  %and507 = and i32 %233, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and507)
  %tobool508.not = icmp eq i32 %and507, 0
  br i1 %tobool508.not, label %if.then506.if.end520_crit_edge, label %do.end512

if.then506.if.end520_crit_edge:                   ; preds = %if.then506
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end520

do.end512:                                        ; preds = %if.then506
  call void @__sanitizer_cov_trace_pc() #8
  %name515 = getelementptr inbounds %struct.dsp, ptr %230, i32 0, i32 3
  %call519 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.45, ptr noundef %name515, i32 noundef %232) #9
  br label %if.end520

if.end520:                                        ; preds = %do.end512, %if.then506.if.end520_crit_edge
  %234 = ptrtoint ptr %dsp503 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %dsp503, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cq.i1660) #6
  %236 = getelementptr inbounds %struct.mISDN_ctrl_req, ptr %cq.i1660, i32 0, i32 2
  %237 = getelementptr inbounds %struct.mISDN_ctrl_req, ptr %cq.i1660, i32 0, i32 3
  %238 = getelementptr inbounds i8, ptr %cq.i1660, i32 4
  %239 = ptrtoint ptr %238 to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 0, ptr %238, align 4
  %240 = ptrtoint ptr %cq.i1660 to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 16388, ptr %cq.i1660, align 4
  %241 = ptrtoint ptr %236 to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 0, ptr %236, align 4
  %242 = ptrtoint ptr %237 to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 0, ptr %237, align 4
  %peer.i1661 = getelementptr inbounds %struct.dsp, ptr %235, i32 0, i32 1, i32 6
  %243 = ptrtoint ptr %peer.i1661 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %peer.i1661, align 4
  %tobool.not.i1662 = icmp eq ptr %244, null
  br i1 %tobool.not.i1662, label %if.end520.dsp_cmx_hw_message.exit1666_crit_edge, label %if.then.i1665

if.end520.dsp_cmx_hw_message.exit1666_crit_edge:  ; preds = %if.end520
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsp_cmx_hw_message.exit1666

if.then.i1665:                                    ; preds = %if.end520
  call void @__sanitizer_cov_trace_pc() #8
  %ctrl.i1663 = getelementptr inbounds %struct.mISDNchannel, ptr %244, i32 0, i32 9
  %245 = ptrtoint ptr %ctrl.i1663 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %ctrl.i1663, align 4
  %call.i1664 = call i32 %246(ptr noundef nonnull %244, i32 noundef 768, ptr noundef nonnull %cq.i1660) #6
  br label %dsp_cmx_hw_message.exit1666

dsp_cmx_hw_message.exit1666:                      ; preds = %if.then.i1665, %if.end520.dsp_cmx_hw_message.exit1666_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cq.i1660) #6
  %247 = ptrtoint ptr %dsp503 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %dsp503, align 4
  %hfc_conf523 = getelementptr inbounds %struct.dsp, ptr %248, i32 0, i32 40
  %249 = ptrtoint ptr %hfc_conf523 to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 -1, ptr %hfc_conf523, align 4
  br label %if.end524

if.end524:                                        ; preds = %dsp_cmx_hw_message.exit1666, %if.then492.if.end524_crit_edge
  %dsp525 = getelementptr inbounds %struct.dsp_conf_member, ptr %228, i32 0, i32 1
  %250 = ptrtoint ptr %dsp525 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %dsp525, align 4
  %hfc_conf526 = getelementptr inbounds %struct.dsp, ptr %251, i32 0, i32 40
  %252 = ptrtoint ptr %hfc_conf526 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %hfc_conf526, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %253)
  %cmp527 = icmp sgt i32 %253, -1
  br i1 %cmp527, label %if.then528, label %if.end524.if.end546_crit_edge

if.end524.if.end546_crit_edge:                    ; preds = %if.end524
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end546

if.then528:                                       ; preds = %if.end524
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_debug to i32))
  %254 = load i32, ptr @dsp_debug, align 4
  %and529 = and i32 %254, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and529)
  %tobool530.not = icmp eq i32 %and529, 0
  br i1 %tobool530.not, label %if.then528.if.end542_crit_edge, label %do.end534

if.then528.if.end542_crit_edge:                   ; preds = %if.then528
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end542

do.end534:                                        ; preds = %if.then528
  call void @__sanitizer_cov_trace_pc() #8
  %name537 = getelementptr inbounds %struct.dsp, ptr %251, i32 0, i32 3
  %call541 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.45, ptr noundef %name537, i32 noundef %253) #9
  br label %if.end542

if.end542:                                        ; preds = %do.end534, %if.then528.if.end542_crit_edge
  %255 = ptrtoint ptr %dsp525 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %dsp525, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cq.i1667) #6
  %257 = getelementptr inbounds %struct.mISDN_ctrl_req, ptr %cq.i1667, i32 0, i32 2
  %258 = getelementptr inbounds %struct.mISDN_ctrl_req, ptr %cq.i1667, i32 0, i32 3
  %259 = getelementptr inbounds i8, ptr %cq.i1667, i32 4
  %260 = ptrtoint ptr %259 to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 0, ptr %259, align 4
  %261 = ptrtoint ptr %cq.i1667 to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 16388, ptr %cq.i1667, align 4
  %262 = ptrtoint ptr %257 to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 0, ptr %257, align 4
  %263 = ptrtoint ptr %258 to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 0, ptr %258, align 4
  %peer.i1668 = getelementptr inbounds %struct.dsp, ptr %256, i32 0, i32 1, i32 6
  %264 = ptrtoint ptr %peer.i1668 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %peer.i1668, align 4
  %tobool.not.i1669 = icmp eq ptr %265, null
  br i1 %tobool.not.i1669, label %if.end542.dsp_cmx_hw_message.exit1673_crit_edge, label %if.then.i1672

if.end542.dsp_cmx_hw_message.exit1673_crit_edge:  ; preds = %if.end542
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsp_cmx_hw_message.exit1673

if.then.i1672:                                    ; preds = %if.end542
  call void @__sanitizer_cov_trace_pc() #8
  %ctrl.i1670 = getelementptr inbounds %struct.mISDNchannel, ptr %265, i32 0, i32 9
  %266 = ptrtoint ptr %ctrl.i1670 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %ctrl.i1670, align 4
  %call.i1671 = call i32 %267(ptr noundef nonnull %265, i32 noundef 768, ptr noundef nonnull %cq.i1667) #6
  br label %dsp_cmx_hw_message.exit1673

dsp_cmx_hw_message.exit1673:                      ; preds = %if.then.i1672, %if.end542.dsp_cmx_hw_message.exit1673_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cq.i1667) #6
  %268 = ptrtoint ptr %dsp525 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %dsp525, align 4
  %hfc_conf545 = getelementptr inbounds %struct.dsp, ptr %269, i32 0, i32 40
  %270 = ptrtoint ptr %hfc_conf545 to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 -1, ptr %hfc_conf545, align 4
  br label %if.end546

if.end546:                                        ; preds = %dsp_cmx_hw_message.exit1673, %if.end524.if.end546_crit_edge
  %271 = ptrtoint ptr %dsp503 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %dsp503, align 4
  %features548 = getelementptr inbounds %struct.dsp, ptr %272, i32 0, i32 33
  %pcm_banks549 = getelementptr inbounds %struct.dsp, ptr %272, i32 0, i32 33, i32 7
  %273 = ptrtoint ptr %pcm_banks549 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %pcm_banks549, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %274)
  %cmp550 = icmp sgt i32 %274, 1
  br i1 %cmp550, label %land.lhs.true551, label %if.end546.if.else_crit_edge

if.end546.if.else_crit_edge:                      ; preds = %if.end546
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true551:                                 ; preds = %if.end546
  %275 = ptrtoint ptr %dsp525 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %dsp525, align 4
  %pcm_banks554 = getelementptr inbounds %struct.dsp, ptr %276, i32 0, i32 33, i32 7
  %277 = ptrtoint ptr %pcm_banks554 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %pcm_banks554, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %278)
  %cmp555 = icmp sgt i32 %278, 1
  br i1 %cmp555, label %land.lhs.true556, label %land.lhs.true551.if.else_crit_edge

land.lhs.true551.if.else_crit_edge:               ; preds = %land.lhs.true551
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true556:                                 ; preds = %land.lhs.true551
  %features553 = getelementptr inbounds %struct.dsp, ptr %276, i32 0, i32 33
  %279 = ptrtoint ptr %features548 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %features548, align 4
  %281 = ptrtoint ptr %features553 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %features553, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %280, i32 %282)
  %cmp563.not = icmp eq i32 %280, %282
  br i1 %cmp563.not, label %land.lhs.true556.if.else_crit_edge, label %if.then564

land.lhs.true556.if.else_crit_edge:               ; preds = %land.lhs.true556
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then564:                                       ; preds = %land.lhs.true556
  %pcm_slot_tx566 = getelementptr inbounds %struct.dsp, ptr %272, i32 0, i32 38
  %283 = ptrtoint ptr %pcm_slot_tx566 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %pcm_slot_tx566, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %284)
  %cmp567 = icmp sgt i32 %284, -1
  br i1 %cmp567, label %land.lhs.true568, label %if.then564.if.end634_crit_edge

if.then564.if.end634_crit_edge:                   ; preds = %if.then564
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end634

land.lhs.true568:                                 ; preds = %if.then564
  %pcm_slot_rx570 = getelementptr inbounds %struct.dsp, ptr %272, i32 0, i32 36
  %285 = ptrtoint ptr %pcm_slot_rx570 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %pcm_slot_rx570, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %286)
  %cmp571 = icmp sgt i32 %286, -1
  br i1 %cmp571, label %land.lhs.true572, label %land.lhs.true568.if.end634_crit_edge

land.lhs.true568.if.end634_crit_edge:             ; preds = %land.lhs.true568
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end634

land.lhs.true572:                                 ; preds = %land.lhs.true568
  %pcm_slot_tx574 = getelementptr inbounds %struct.dsp, ptr %276, i32 0, i32 38
  %287 = ptrtoint ptr %pcm_slot_tx574 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %pcm_slot_tx574, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %288)
  %cmp575 = icmp sgt i32 %288, -1
  br i1 %cmp575, label %land.lhs.true576, label %land.lhs.true572.if.end634_crit_edge

land.lhs.true572.if.end634_crit_edge:             ; preds = %land.lhs.true572
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end634

land.lhs.true576:                                 ; preds = %land.lhs.true572
  %pcm_slot_rx578 = getelementptr inbounds %struct.dsp, ptr %276, i32 0, i32 36
  %289 = ptrtoint ptr %pcm_slot_rx578 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %pcm_slot_rx578, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %290)
  %cmp579 = icmp sgt i32 %290, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %288, i32 %286)
  %cmp585 = icmp eq i32 %288, %286
  %or.cond1610 = select i1 %cmp579, i1 %cmp585, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %290, i32 %284)
  %cmp591 = icmp eq i32 %290, %284
  %or.cond1611 = select i1 %or.cond1610, i1 %cmp591, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %288, i32 %284)
  %cmp597 = icmp eq i32 %288, %284
  %or.cond1612 = select i1 %or.cond1611, i1 %cmp597, i1 false
  br i1 %or.cond1612, label %land.lhs.true598, label %land.lhs.true576.if.end634_crit_edge

land.lhs.true576.if.end634_crit_edge:             ; preds = %land.lhs.true576
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end634

land.lhs.true598:                                 ; preds = %land.lhs.true576
  %pcm_bank_tx600 = getelementptr inbounds %struct.dsp, ptr %272, i32 0, i32 39
  %291 = ptrtoint ptr %pcm_bank_tx600 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %pcm_bank_tx600, align 4
  %pcm_bank_rx602 = getelementptr inbounds %struct.dsp, ptr %272, i32 0, i32 37
  %293 = ptrtoint ptr %pcm_bank_rx602 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %pcm_bank_rx602, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %292, i32 %294)
  %cmp603.not = icmp eq i32 %292, %294
  br i1 %cmp603.not, label %land.lhs.true598.if.end634_crit_edge, label %land.lhs.true604

land.lhs.true598.if.end634_crit_edge:             ; preds = %land.lhs.true598
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end634

land.lhs.true604:                                 ; preds = %land.lhs.true598
  %pcm_bank_tx606 = getelementptr inbounds %struct.dsp, ptr %276, i32 0, i32 39
  %295 = ptrtoint ptr %pcm_bank_tx606 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %pcm_bank_tx606, align 4
  %pcm_bank_rx608 = getelementptr inbounds %struct.dsp, ptr %276, i32 0, i32 37
  %297 = ptrtoint ptr %pcm_bank_rx608 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %pcm_bank_rx608, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %296, i32 %298)
  %cmp609.not = icmp eq i32 %296, %298
  br i1 %cmp609.not, label %land.lhs.true604.if.end634_crit_edge, label %if.then610

land.lhs.true604.if.end634_crit_edge:             ; preds = %land.lhs.true604
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end634

if.then610:                                       ; preds = %land.lhs.true604
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_debug to i32))
  %299 = load i32, ptr @dsp_debug, align 4
  %and611 = and i32 %299, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and611)
  %tobool612.not = icmp eq i32 %and611, 0
  br i1 %tobool612.not, label %if.then610.if.end631_crit_edge, label %do.end616

if.then610.if.end631_crit_edge:                   ; preds = %if.then610
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end631

do.end616:                                        ; preds = %if.then610
  call void @__sanitizer_cov_trace_pc() #8
  %name619 = getelementptr inbounds %struct.dsp, ptr %272, i32 0, i32 3
  %name622 = getelementptr inbounds %struct.dsp, ptr %276, i32 0, i32 3
  %call630 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.45, ptr noundef %name619, ptr noundef %name622, i32 noundef %284, i32 noundef %292, i32 noundef %294) #9
  br label %if.end631

if.end631:                                        ; preds = %do.end616, %if.then610.if.end631_crit_edge
  %hardware632 = getelementptr inbounds %struct.dsp_conf, ptr %conf, i32 0, i32 4
  %300 = ptrtoint ptr %hardware632 to i32
  call void @__asan_store4_noabort(i32 %300)
  store i32 1, ptr %hardware632, align 4
  %software633 = getelementptr inbounds %struct.dsp_conf, ptr %conf, i32 0, i32 3
  %301 = ptrtoint ptr %software633 to i32
  call void @__asan_store4_noabort(i32 %301)
  store i32 %tx_data.1, ptr %software633, align 4
  br label %cleanup

if.end634:                                        ; preds = %land.lhs.true604.if.end634_crit_edge, %land.lhs.true598.if.end634_crit_edge, %land.lhs.true576.if.end634_crit_edge, %land.lhs.true572.if.end634_crit_edge, %land.lhs.true568.if.end634_crit_edge, %if.then564.if.end634_crit_edge
  %302 = call ptr @memset(ptr %freeslots, i32 1, i32 256)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_ilist to i32))
  %dsp.addr.11796 = load ptr, ptr @dsp_ilist, align 4
  %cmp641.not1797 = icmp eq ptr %dsp.addr.11796, @dsp_ilist
  br i1 %cmp641.not1797, label %if.end634.for.end682_crit_edge, label %for.body643.lr.ph

if.end634.for.end682_crit_edge:                   ; preds = %if.end634
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end682

for.body643.lr.ph:                                ; preds = %if.end634
  %pcm_id652 = getelementptr inbounds %struct.dsp, ptr %272, i32 0, i32 33, i32 5
  br label %for.body643

for.body643:                                      ; preds = %for.inc676.for.body643_crit_edge, %for.body643.lr.ph
  %dsp.addr.11798 = phi ptr [ %dsp.addr.11796, %for.body643.lr.ph ], [ %dsp.addr.1, %for.inc676.for.body643_crit_edge ]
  %cmp645.not = icmp eq ptr %dsp.addr.11798, %272
  %cmp648.not = icmp eq ptr %dsp.addr.11798, %276
  %or.cond = select i1 %cmp645.not, i1 true, i1 %cmp648.not
  br i1 %or.cond, label %for.body643.for.inc676_crit_edge, label %land.lhs.true649

for.body643.for.inc676_crit_edge:                 ; preds = %for.body643
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc676

land.lhs.true649:                                 ; preds = %for.body643
  %303 = ptrtoint ptr %pcm_id652 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %pcm_id652, align 4
  %pcm_id654 = getelementptr inbounds %struct.dsp, ptr %dsp.addr.11798, i32 0, i32 33, i32 5
  %305 = ptrtoint ptr %pcm_id654 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %pcm_id654, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %304, i32 %306)
  %cmp655 = icmp eq i32 %304, %306
  br i1 %cmp655, label %if.then656, label %land.lhs.true649.for.inc676_crit_edge

land.lhs.true649.for.inc676_crit_edge:            ; preds = %land.lhs.true649
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc676

if.then656:                                       ; preds = %land.lhs.true649
  %pcm_slot_rx657 = getelementptr inbounds %struct.dsp, ptr %dsp.addr.11798, i32 0, i32 36
  %307 = ptrtoint ptr %pcm_slot_rx657 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %pcm_slot_rx657, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %308)
  %cmp661 = icmp ult i32 %308, 256
  br i1 %cmp661, label %if.then662, label %if.then656.if.end665_crit_edge

if.then656.if.end665_crit_edge:                   ; preds = %if.then656
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end665

if.then662:                                       ; preds = %if.then656
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx664 = getelementptr [256 x i8], ptr %freeslots, i32 0, i32 %308
  %309 = ptrtoint ptr %arrayidx664 to i32
  call void @__asan_store1_noabort(i32 %309)
  store i8 0, ptr %arrayidx664, align 1
  br label %if.end665

if.end665:                                        ; preds = %if.then662, %if.then656.if.end665_crit_edge
  %pcm_slot_tx666 = getelementptr inbounds %struct.dsp, ptr %dsp.addr.11798, i32 0, i32 38
  %310 = ptrtoint ptr %pcm_slot_tx666 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %pcm_slot_tx666, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %311)
  %cmp670 = icmp ult i32 %311, 256
  br i1 %cmp670, label %if.then671, label %if.end665.for.inc676_crit_edge

if.end665.for.inc676_crit_edge:                   ; preds = %if.end665
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc676

if.then671:                                       ; preds = %if.end665
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx673 = getelementptr [256 x i8], ptr %freeslots, i32 0, i32 %311
  %312 = ptrtoint ptr %arrayidx673 to i32
  call void @__asan_store1_noabort(i32 %312)
  store i8 0, ptr %arrayidx673, align 1
  br label %for.inc676

for.inc676:                                       ; preds = %if.then671, %if.end665.for.inc676_crit_edge, %land.lhs.true649.for.inc676_crit_edge, %for.body643.for.inc676_crit_edge
  %313 = ptrtoint ptr %dsp.addr.11798 to i32
  call void @__asan_load4_noabort(i32 %313)
  %dsp.addr.1 = load ptr, ptr %dsp.addr.11798, align 4
  %cmp641.not = icmp eq ptr %dsp.addr.1, @dsp_ilist
  br i1 %cmp641.not, label %for.inc676.for.end682_crit_edge, label %for.inc676.for.body643_crit_edge

for.inc676.for.body643_crit_edge:                 ; preds = %for.inc676
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body643

for.inc676.for.end682_crit_edge:                  ; preds = %for.inc676
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end682

for.end682:                                       ; preds = %for.inc676.for.end682_crit_edge, %if.end634.for.end682_crit_edge
  %pcm_slots685 = getelementptr inbounds %struct.dsp, ptr %272, i32 0, i32 33, i32 6
  %314 = ptrtoint ptr %pcm_slots685 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %pcm_slots685, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %315)
  %cmp6871799 = icmp sgt i32 %315, 0
  br i1 %cmp6871799, label %for.end682.while.body688_crit_edge, label %for.end682.while.end694_crit_edge

for.end682.while.end694_crit_edge:                ; preds = %for.end682
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end694

for.end682.while.body688_crit_edge:               ; preds = %for.end682
  br label %while.body688

while.body688:                                    ; preds = %if.end692.while.body688_crit_edge, %for.end682.while.body688_crit_edge
  %i.11800 = phi i32 [ %inc693, %if.end692.while.body688_crit_edge ], [ 0, %for.end682.while.body688_crit_edge ]
  %arrayidx689 = getelementptr [256 x i8], ptr %freeslots, i32 0, i32 %i.11800
  %316 = ptrtoint ptr %arrayidx689 to i32
  call void @__asan_load1_noabort(i32 %316)
  %317 = load i8, ptr %arrayidx689, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %317)
  %tobool690.not = icmp eq i8 %317, 0
  br i1 %tobool690.not, label %if.end692, label %while.body688.while.end694_crit_edge

while.body688.while.end694_crit_edge:             ; preds = %while.body688
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end694

if.end692:                                        ; preds = %while.body688
  %inc693 = add nuw nsw i32 %i.11800, 1
  %exitcond.not = icmp eq i32 %inc693, %315
  br i1 %exitcond.not, label %if.end692.if.then696_crit_edge, label %if.end692.while.body688_crit_edge

if.end692.while.body688_crit_edge:                ; preds = %if.end692
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body688

if.end692.if.then696_crit_edge:                   ; preds = %if.end692
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then696

while.end694:                                     ; preds = %while.body688.while.end694_crit_edge, %for.end682.while.end694_crit_edge
  %i.1.lcssa = phi i32 [ 0, %for.end682.while.end694_crit_edge ], [ %i.11800, %while.body688.while.end694_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1.lcssa, i32 %315)
  %cmp695 = icmp eq i32 %i.1.lcssa, %315
  br i1 %cmp695, label %while.end694.if.then696_crit_edge, label %if.end712

while.end694.if.then696_crit_edge:                ; preds = %while.end694
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then696

if.then696:                                       ; preds = %while.end694.if.then696_crit_edge, %if.end692.if.then696_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_debug to i32))
  %318 = load i32, ptr @dsp_debug, align 4
  %and697 = and i32 %318, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and697)
  %tobool698.not = icmp eq i32 %and697, 0
  br i1 %tobool698.not, label %if.then696.conf_software_crit_edge, label %do.end702

if.then696.conf_software_crit_edge:               ; preds = %if.then696
  call void @__sanitizer_cov_trace_pc() #8
  br label %conf_software

do.end702:                                        ; preds = %if.then696
  call void @__sanitizer_cov_trace_pc() #8
  %name705 = getelementptr inbounds %struct.dsp, ptr %272, i32 0, i32 3
  %name708 = getelementptr inbounds %struct.dsp, ptr %276, i32 0, i32 3
  %call710 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.45, ptr noundef %name705, ptr noundef %name708) #9
  br label %conf_software

if.end712:                                        ; preds = %while.end694
  %319 = ptrtoint ptr %pcm_slot_tx566 to i32
  call void @__asan_store4_noabort(i32 %319)
  store i32 %i.1.lcssa, ptr %pcm_slot_tx566, align 4
  %320 = ptrtoint ptr %dsp503 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %dsp503, align 4
  %pcm_slot_rx716 = getelementptr inbounds %struct.dsp, ptr %321, i32 0, i32 36
  %322 = ptrtoint ptr %pcm_slot_rx716 to i32
  call void @__asan_store4_noabort(i32 %322)
  store i32 %i.1.lcssa, ptr %pcm_slot_rx716, align 4
  %323 = ptrtoint ptr %dsp525 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %dsp525, align 4
  %pcm_slot_tx718 = getelementptr inbounds %struct.dsp, ptr %324, i32 0, i32 38
  %325 = ptrtoint ptr %pcm_slot_tx718 to i32
  call void @__asan_store4_noabort(i32 %325)
  store i32 %i.1.lcssa, ptr %pcm_slot_tx718, align 4
  %326 = load ptr, ptr %dsp525, align 4
  %pcm_slot_rx720 = getelementptr inbounds %struct.dsp, ptr %326, i32 0, i32 36
  %327 = ptrtoint ptr %pcm_slot_rx720 to i32
  call void @__asan_store4_noabort(i32 %327)
  store i32 %i.1.lcssa, ptr %pcm_slot_rx720, align 4
  %328 = load ptr, ptr %dsp503, align 4
  %pcm_bank_rx722 = getelementptr inbounds %struct.dsp, ptr %328, i32 0, i32 37
  %329 = ptrtoint ptr %pcm_bank_rx722 to i32
  call void @__asan_store4_noabort(i32 %329)
  store i32 0, ptr %pcm_bank_rx722, align 4
  %330 = load ptr, ptr %dsp503, align 4
  %pcm_bank_tx724 = getelementptr inbounds %struct.dsp, ptr %330, i32 0, i32 39
  %331 = ptrtoint ptr %pcm_bank_tx724 to i32
  call void @__asan_store4_noabort(i32 %331)
  store i32 1, ptr %pcm_bank_tx724, align 4
  %332 = load ptr, ptr %dsp525, align 4
  %pcm_bank_rx726 = getelementptr inbounds %struct.dsp, ptr %332, i32 0, i32 37
  %333 = ptrtoint ptr %pcm_bank_rx726 to i32
  call void @__asan_store4_noabort(i32 %333)
  store i32 1, ptr %pcm_bank_rx726, align 4
  %334 = load ptr, ptr %dsp525, align 4
  %pcm_bank_tx728 = getelementptr inbounds %struct.dsp, ptr %334, i32 0, i32 39
  %335 = ptrtoint ptr %pcm_bank_tx728 to i32
  call void @__asan_store4_noabort(i32 %335)
  store i32 0, ptr %pcm_bank_tx728, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_debug to i32))
  %336 = load i32, ptr @dsp_debug, align 4
  %and729 = and i32 %336, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and729)
  %tobool730.not = icmp eq i32 %and729, 0
  br i1 %tobool730.not, label %if.end712.if.end745_crit_edge, label %do.end734

if.end712.if.end745_crit_edge:                    ; preds = %if.end712
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end745

do.end734:                                        ; preds = %if.end712
  call void @__sanitizer_cov_trace_pc() #8
  %337 = ptrtoint ptr %dsp503 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %dsp503, align 4
  %name737 = getelementptr inbounds %struct.dsp, ptr %338, i32 0, i32 3
  %339 = ptrtoint ptr %dsp525 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %dsp525, align 4
  %name740 = getelementptr inbounds %struct.dsp, ptr %340, i32 0, i32 3
  %pcm_slot_tx743 = getelementptr inbounds %struct.dsp, ptr %338, i32 0, i32 38
  %341 = ptrtoint ptr %pcm_slot_tx743 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %pcm_slot_tx743, align 4
  %call744 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.45, ptr noundef %name737, ptr noundef %name740, i32 noundef %342) #9
  br label %if.end745

if.end745:                                        ; preds = %do.end734, %if.end712.if.end745_crit_edge
  %343 = ptrtoint ptr %dsp503 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %dsp503, align 4
  %pcm_slot_tx748 = getelementptr inbounds %struct.dsp, ptr %344, i32 0, i32 38
  %345 = ptrtoint ptr %pcm_slot_tx748 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %pcm_slot_tx748, align 4
  %pcm_bank_tx750 = getelementptr inbounds %struct.dsp, ptr %344, i32 0, i32 39
  %347 = ptrtoint ptr %pcm_bank_tx750 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %pcm_bank_tx750, align 4
  %pcm_slot_rx752 = getelementptr inbounds %struct.dsp, ptr %344, i32 0, i32 36
  %349 = ptrtoint ptr %pcm_slot_rx752 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %pcm_slot_rx752, align 4
  %pcm_bank_rx754 = getelementptr inbounds %struct.dsp, ptr %344, i32 0, i32 37
  %351 = ptrtoint ptr %pcm_bank_rx754 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %pcm_bank_rx754, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cq.i1674) #6
  %353 = getelementptr inbounds %struct.mISDN_ctrl_req, ptr %cq.i1674, i32 0, i32 2
  %354 = getelementptr inbounds %struct.mISDN_ctrl_req, ptr %cq.i1674, i32 0, i32 3
  %355 = getelementptr inbounds i8, ptr %cq.i1674, i32 4
  %356 = ptrtoint ptr %355 to i32
  call void @__asan_store4_noabort(i32 %356)
  store i32 0, ptr %355, align 4
  %357 = ptrtoint ptr %cq.i1674 to i32
  call void @__asan_store4_noabort(i32 %357)
  store i32 16385, ptr %cq.i1674, align 4
  %shl.i = shl i32 %348, 8
  %or.i1675 = or i32 %shl.i, %346
  %358 = ptrtoint ptr %353 to i32
  call void @__asan_store4_noabort(i32 %358)
  store i32 %or.i1675, ptr %353, align 4
  %shl1.i = shl i32 %352, 8
  %or2.i1676 = or i32 %shl1.i, %350
  %359 = ptrtoint ptr %354 to i32
  call void @__asan_store4_noabort(i32 %359)
  store i32 %or2.i1676, ptr %354, align 4
  %peer.i1677 = getelementptr inbounds %struct.dsp, ptr %344, i32 0, i32 1, i32 6
  %360 = ptrtoint ptr %peer.i1677 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %peer.i1677, align 4
  %tobool.not.i1678 = icmp eq ptr %361, null
  br i1 %tobool.not.i1678, label %if.end745.dsp_cmx_hw_message.exit1682_crit_edge, label %if.then.i1681

if.end745.dsp_cmx_hw_message.exit1682_crit_edge:  ; preds = %if.end745
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsp_cmx_hw_message.exit1682

if.then.i1681:                                    ; preds = %if.end745
  call void @__sanitizer_cov_trace_pc() #8
  %ctrl.i1679 = getelementptr inbounds %struct.mISDNchannel, ptr %361, i32 0, i32 9
  %362 = ptrtoint ptr %ctrl.i1679 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %ctrl.i1679, align 4
  %call.i1680 = call i32 %363(ptr noundef nonnull %361, i32 noundef 768, ptr noundef nonnull %cq.i1674) #6
  br label %dsp_cmx_hw_message.exit1682

dsp_cmx_hw_message.exit1682:                      ; preds = %if.then.i1681, %if.end745.dsp_cmx_hw_message.exit1682_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cq.i1674) #6
  %364 = ptrtoint ptr %dsp525 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %dsp525, align 4
  %pcm_slot_tx757 = getelementptr inbounds %struct.dsp, ptr %365, i32 0, i32 38
  %366 = ptrtoint ptr %pcm_slot_tx757 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %pcm_slot_tx757, align 4
  %pcm_bank_tx759 = getelementptr inbounds %struct.dsp, ptr %365, i32 0, i32 39
  %368 = ptrtoint ptr %pcm_bank_tx759 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %pcm_bank_tx759, align 4
  %pcm_slot_rx761 = getelementptr inbounds %struct.dsp, ptr %365, i32 0, i32 36
  %370 = ptrtoint ptr %pcm_slot_rx761 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %pcm_slot_rx761, align 4
  %pcm_bank_rx763 = getelementptr inbounds %struct.dsp, ptr %365, i32 0, i32 37
  %372 = ptrtoint ptr %pcm_bank_rx763 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %pcm_bank_rx763, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cq.i1683) #6
  %374 = getelementptr inbounds %struct.mISDN_ctrl_req, ptr %cq.i1683, i32 0, i32 2
  %375 = getelementptr inbounds %struct.mISDN_ctrl_req, ptr %cq.i1683, i32 0, i32 3
  %376 = getelementptr inbounds i8, ptr %cq.i1683, i32 4
  %377 = ptrtoint ptr %376 to i32
  call void @__asan_store4_noabort(i32 %377)
  store i32 0, ptr %376, align 4
  %378 = ptrtoint ptr %cq.i1683 to i32
  call void @__asan_store4_noabort(i32 %378)
  store i32 16385, ptr %cq.i1683, align 4
  %shl.i1684 = shl i32 %369, 8
  %or.i1685 = or i32 %shl.i1684, %367
  %379 = ptrtoint ptr %374 to i32
  call void @__asan_store4_noabort(i32 %379)
  store i32 %or.i1685, ptr %374, align 4
  %shl1.i1686 = shl i32 %373, 8
  %or2.i1687 = or i32 %shl1.i1686, %371
  %380 = ptrtoint ptr %375 to i32
  call void @__asan_store4_noabort(i32 %380)
  store i32 %or2.i1687, ptr %375, align 4
  %peer.i1688 = getelementptr inbounds %struct.dsp, ptr %365, i32 0, i32 1, i32 6
  %381 = ptrtoint ptr %peer.i1688 to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %peer.i1688, align 4
  %tobool.not.i1689 = icmp eq ptr %382, null
  br i1 %tobool.not.i1689, label %dsp_cmx_hw_message.exit1682.dsp_cmx_hw_message.exit1693_crit_edge, label %if.then.i1692

dsp_cmx_hw_message.exit1682.dsp_cmx_hw_message.exit1693_crit_edge: ; preds = %dsp_cmx_hw_message.exit1682
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsp_cmx_hw_message.exit1693

if.then.i1692:                                    ; preds = %dsp_cmx_hw_message.exit1682
  call void @__sanitizer_cov_trace_pc() #8
  %ctrl.i1690 = getelementptr inbounds %struct.mISDNchannel, ptr %382, i32 0, i32 9
  %383 = ptrtoint ptr %ctrl.i1690 to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %ctrl.i1690, align 4
  %call.i1691 = call i32 %384(ptr noundef nonnull %382, i32 noundef 768, ptr noundef nonnull %cq.i1683) #6
  br label %dsp_cmx_hw_message.exit1693

dsp_cmx_hw_message.exit1693:                      ; preds = %if.then.i1692, %dsp_cmx_hw_message.exit1682.dsp_cmx_hw_message.exit1693_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cq.i1683) #6
  %hardware764 = getelementptr inbounds %struct.dsp_conf, ptr %conf, i32 0, i32 4
  %385 = ptrtoint ptr %hardware764 to i32
  call void @__asan_store4_noabort(i32 %385)
  store i32 1, ptr %hardware764, align 4
  %software765 = getelementptr inbounds %struct.dsp_conf, ptr %conf, i32 0, i32 3
  %386 = ptrtoint ptr %software765 to i32
  call void @__asan_store4_noabort(i32 %386)
  store i32 %tx_data.1, ptr %software765, align 4
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true556.if.else_crit_edge, %land.lhs.true551.if.else_crit_edge, %if.end546.if.else_crit_edge
  %pcm_slot_tx767 = getelementptr inbounds %struct.dsp, ptr %272, i32 0, i32 38
  %387 = ptrtoint ptr %pcm_slot_tx767 to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %pcm_slot_tx767, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %388)
  %cmp768 = icmp sgt i32 %388, -1
  br i1 %cmp768, label %land.lhs.true769, label %if.else.if.end837_crit_edge

if.else.if.end837_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end837

land.lhs.true769:                                 ; preds = %if.else
  %pcm_slot_rx771 = getelementptr inbounds %struct.dsp, ptr %272, i32 0, i32 36
  %389 = ptrtoint ptr %pcm_slot_rx771 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %pcm_slot_rx771, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %390)
  %cmp772 = icmp sgt i32 %390, -1
  br i1 %cmp772, label %land.lhs.true773, label %land.lhs.true769.if.end837_crit_edge

land.lhs.true769.if.end837_crit_edge:             ; preds = %land.lhs.true769
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end837

land.lhs.true773:                                 ; preds = %land.lhs.true769
  %391 = ptrtoint ptr %dsp525 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %dsp525, align 4
  %pcm_slot_tx775 = getelementptr inbounds %struct.dsp, ptr %392, i32 0, i32 38
  %393 = ptrtoint ptr %pcm_slot_tx775 to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %pcm_slot_tx775, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %394)
  %cmp776 = icmp sgt i32 %394, -1
  br i1 %cmp776, label %land.lhs.true777, label %land.lhs.true773.if.end837_crit_edge

land.lhs.true773.if.end837_crit_edge:             ; preds = %land.lhs.true773
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end837

land.lhs.true777:                                 ; preds = %land.lhs.true773
  %pcm_slot_rx779 = getelementptr inbounds %struct.dsp, ptr %392, i32 0, i32 36
  %395 = ptrtoint ptr %pcm_slot_rx779 to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load i32, ptr %pcm_slot_rx779, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %396)
  %cmp780 = icmp slt i32 %396, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %394, i32 %390)
  %cmp786 = icmp ne i32 %394, %390
  %or.cond1615 = select i1 %cmp780, i1 true, i1 %cmp786
  call void @__sanitizer_cov_trace_cmp4(i32 %396, i32 %388)
  %cmp792 = icmp ne i32 %396, %388
  %or.cond1616 = select i1 %or.cond1615, i1 true, i1 %cmp792
  call void @__sanitizer_cov_trace_cmp4(i32 %388, i32 %390)
  %cmp798.not = icmp eq i32 %388, %390
  %or.cond1617 = select i1 %or.cond1616, i1 true, i1 %cmp798.not
  br i1 %or.cond1617, label %land.lhs.true777.if.end837_crit_edge, label %land.lhs.true799

land.lhs.true777.if.end837_crit_edge:             ; preds = %land.lhs.true777
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end837

land.lhs.true799:                                 ; preds = %land.lhs.true777
  %pcm_bank_tx801 = getelementptr inbounds %struct.dsp, ptr %272, i32 0, i32 39
  %397 = ptrtoint ptr %pcm_bank_tx801 to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load i32, ptr %pcm_bank_tx801, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %398)
  %cmp802 = icmp eq i32 %398, 0
  br i1 %cmp802, label %land.lhs.true803, label %land.lhs.true799.if.end837_crit_edge

land.lhs.true799.if.end837_crit_edge:             ; preds = %land.lhs.true799
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end837

land.lhs.true803:                                 ; preds = %land.lhs.true799
  %pcm_bank_rx805 = getelementptr inbounds %struct.dsp, ptr %272, i32 0, i32 37
  %399 = ptrtoint ptr %pcm_bank_rx805 to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load i32, ptr %pcm_bank_rx805, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %400)
  %cmp806 = icmp eq i32 %400, 0
  br i1 %cmp806, label %land.lhs.true807, label %land.lhs.true803.if.end837_crit_edge

land.lhs.true803.if.end837_crit_edge:             ; preds = %land.lhs.true803
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end837

land.lhs.true807:                                 ; preds = %land.lhs.true803
  %pcm_bank_tx809 = getelementptr inbounds %struct.dsp, ptr %392, i32 0, i32 39
  %401 = ptrtoint ptr %pcm_bank_tx809 to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load i32, ptr %pcm_bank_tx809, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %402)
  %cmp810 = icmp eq i32 %402, 0
  br i1 %cmp810, label %land.lhs.true811, label %land.lhs.true807.if.end837_crit_edge

land.lhs.true807.if.end837_crit_edge:             ; preds = %land.lhs.true807
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end837

land.lhs.true811:                                 ; preds = %land.lhs.true807
  %pcm_bank_rx813 = getelementptr inbounds %struct.dsp, ptr %392, i32 0, i32 37
  %403 = ptrtoint ptr %pcm_bank_rx813 to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load i32, ptr %pcm_bank_rx813, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %404)
  %cmp814 = icmp eq i32 %404, 0
  br i1 %cmp814, label %if.then815, label %land.lhs.true811.if.end837_crit_edge

land.lhs.true811.if.end837_crit_edge:             ; preds = %land.lhs.true811
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end837

if.then815:                                       ; preds = %land.lhs.true811
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_debug to i32))
  %405 = load i32, ptr @dsp_debug, align 4
  %and816 = and i32 %405, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and816)
  %tobool817.not = icmp eq i32 %and816, 0
  br i1 %tobool817.not, label %if.then815.if.end834_crit_edge, label %do.end821

if.then815.if.end834_crit_edge:                   ; preds = %if.then815
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end834

do.end821:                                        ; preds = %if.then815
  call void @__sanitizer_cov_trace_pc() #8
  %name824 = getelementptr inbounds %struct.dsp, ptr %272, i32 0, i32 3
  %name827 = getelementptr inbounds %struct.dsp, ptr %392, i32 0, i32 3
  %call833 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.45, ptr noundef %name824, ptr noundef %name827, i32 noundef %388, i32 noundef %390) #9
  br label %if.end834

if.end834:                                        ; preds = %do.end821, %if.then815.if.end834_crit_edge
  %hardware835 = getelementptr inbounds %struct.dsp_conf, ptr %conf, i32 0, i32 4
  %406 = ptrtoint ptr %hardware835 to i32
  call void @__asan_store4_noabort(i32 %406)
  store i32 1, ptr %hardware835, align 4
  %software836 = getelementptr inbounds %struct.dsp_conf, ptr %conf, i32 0, i32 3
  %407 = ptrtoint ptr %software836 to i32
  call void @__asan_store4_noabort(i32 %407)
  store i32 %tx_data.1, ptr %software836, align 4
  br label %cleanup

if.end837:                                        ; preds = %land.lhs.true811.if.end837_crit_edge, %land.lhs.true807.if.end837_crit_edge, %land.lhs.true803.if.end837_crit_edge, %land.lhs.true799.if.end837_crit_edge, %land.lhs.true777.if.end837_crit_edge, %land.lhs.true773.if.end837_crit_edge, %land.lhs.true769.if.end837_crit_edge, %if.else.if.end837_crit_edge
  %408 = call ptr @memset(ptr %freeslots, i32 1, i32 256)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_ilist to i32))
  %dsp.addr.21803 = load ptr, ptr @dsp_ilist, align 4
  %cmp844.not1804 = icmp eq ptr %dsp.addr.21803, @dsp_ilist
  br i1 %cmp844.not1804, label %if.end837.for.end885_crit_edge, label %for.body846.lr.ph

if.end837.for.end885_crit_edge:                   ; preds = %if.end837
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end885

for.body846.lr.ph:                                ; preds = %if.end837
  %pcm_id855 = getelementptr inbounds %struct.dsp, ptr %272, i32 0, i32 33, i32 5
  br label %for.body846

for.body846:                                      ; preds = %for.inc879.for.body846_crit_edge, %for.body846.lr.ph
  %dsp.addr.21805 = phi ptr [ %dsp.addr.21803, %for.body846.lr.ph ], [ %dsp.addr.2, %for.inc879.for.body846_crit_edge ]
  %cmp848.not = icmp eq ptr %dsp.addr.21805, %272
  br i1 %cmp848.not, label %for.body846.for.inc879_crit_edge, label %land.lhs.true849

for.body846.for.inc879_crit_edge:                 ; preds = %for.body846
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc879

land.lhs.true849:                                 ; preds = %for.body846
  %409 = ptrtoint ptr %dsp525 to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %dsp525, align 4
  %cmp851.not = icmp eq ptr %dsp.addr.21805, %410
  br i1 %cmp851.not, label %land.lhs.true849.for.inc879_crit_edge, label %land.lhs.true852

land.lhs.true849.for.inc879_crit_edge:            ; preds = %land.lhs.true849
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc879

land.lhs.true852:                                 ; preds = %land.lhs.true849
  %411 = ptrtoint ptr %pcm_id855 to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load i32, ptr %pcm_id855, align 4
  %pcm_id857 = getelementptr inbounds %struct.dsp, ptr %dsp.addr.21805, i32 0, i32 33, i32 5
  %413 = ptrtoint ptr %pcm_id857 to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load i32, ptr %pcm_id857, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %412, i32 %414)
  %cmp858 = icmp eq i32 %412, %414
  br i1 %cmp858, label %if.then859, label %land.lhs.true852.for.inc879_crit_edge

land.lhs.true852.for.inc879_crit_edge:            ; preds = %land.lhs.true852
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc879

if.then859:                                       ; preds = %land.lhs.true852
  %pcm_slot_rx860 = getelementptr inbounds %struct.dsp, ptr %dsp.addr.21805, i32 0, i32 36
  %415 = ptrtoint ptr %pcm_slot_rx860 to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load i32, ptr %pcm_slot_rx860, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %416)
  %cmp864 = icmp ult i32 %416, 256
  br i1 %cmp864, label %if.then865, label %if.then859.if.end868_crit_edge

if.then859.if.end868_crit_edge:                   ; preds = %if.then859
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end868

if.then865:                                       ; preds = %if.then859
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx867 = getelementptr [256 x i8], ptr %freeslots, i32 0, i32 %416
  %417 = ptrtoint ptr %arrayidx867 to i32
  call void @__asan_store1_noabort(i32 %417)
  store i8 0, ptr %arrayidx867, align 1
  br label %if.end868

if.end868:                                        ; preds = %if.then865, %if.then859.if.end868_crit_edge
  %pcm_slot_tx869 = getelementptr inbounds %struct.dsp, ptr %dsp.addr.21805, i32 0, i32 38
  %418 = ptrtoint ptr %pcm_slot_tx869 to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load i32, ptr %pcm_slot_tx869, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %419)
  %cmp873 = icmp ult i32 %419, 256
  br i1 %cmp873, label %if.then874, label %if.end868.for.inc879_crit_edge

if.end868.for.inc879_crit_edge:                   ; preds = %if.end868
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc879

if.then874:                                       ; preds = %if.end868
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx876 = getelementptr [256 x i8], ptr %freeslots, i32 0, i32 %419
  %420 = ptrtoint ptr %arrayidx876 to i32
  call void @__asan_store1_noabort(i32 %420)
  store i8 0, ptr %arrayidx876, align 1
  br label %for.inc879

for.inc879:                                       ; preds = %if.then874, %if.end868.for.inc879_crit_edge, %land.lhs.true852.for.inc879_crit_edge, %land.lhs.true849.for.inc879_crit_edge, %for.body846.for.inc879_crit_edge
  %421 = ptrtoint ptr %dsp.addr.21805 to i32
  call void @__asan_load4_noabort(i32 %421)
  %dsp.addr.2 = load ptr, ptr %dsp.addr.21805, align 4
  %cmp844.not = icmp eq ptr %dsp.addr.2, @dsp_ilist
  br i1 %cmp844.not, label %for.inc879.for.end885_crit_edge, label %for.inc879.for.body846_crit_edge

for.inc879.for.body846_crit_edge:                 ; preds = %for.inc879
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body846

for.inc879.for.end885_crit_edge:                  ; preds = %for.inc879
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end885

for.end885:                                       ; preds = %for.inc879.for.end885_crit_edge, %if.end837.for.end885_crit_edge
  %pcm_slots888 = getelementptr inbounds %struct.dsp, ptr %272, i32 0, i32 33, i32 6
  %422 = ptrtoint ptr %pcm_slots888 to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load i32, ptr %pcm_slots888, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %423)
  %cmp8901806 = icmp sgt i32 %423, 0
  br i1 %cmp8901806, label %for.end885.while.body891_crit_edge, label %for.end885.while.end897_crit_edge

for.end885.while.end897_crit_edge:                ; preds = %for.end885
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end897

for.end885.while.body891_crit_edge:               ; preds = %for.end885
  br label %while.body891

while.body891:                                    ; preds = %if.end895.while.body891_crit_edge, %for.end885.while.body891_crit_edge
  %i1.01807 = phi i32 [ %inc896, %if.end895.while.body891_crit_edge ], [ 0, %for.end885.while.body891_crit_edge ]
  %arrayidx892 = getelementptr [256 x i8], ptr %freeslots, i32 0, i32 %i1.01807
  %424 = ptrtoint ptr %arrayidx892 to i32
  call void @__asan_load1_noabort(i32 %424)
  %425 = load i8, ptr %arrayidx892, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %425)
  %tobool893.not = icmp eq i8 %425, 0
  br i1 %tobool893.not, label %if.end895, label %while.body891.while.end897_crit_edge

while.body891.while.end897_crit_edge:             ; preds = %while.body891
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end897

if.end895:                                        ; preds = %while.body891
  %inc896 = add nuw nsw i32 %i1.01807, 1
  %exitcond1863.not = icmp eq i32 %inc896, %423
  br i1 %exitcond1863.not, label %if.end895.if.then899_crit_edge, label %if.end895.while.body891_crit_edge

if.end895.while.body891_crit_edge:                ; preds = %if.end895
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body891

if.end895.if.then899_crit_edge:                   ; preds = %if.end895
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then899

while.end897:                                     ; preds = %while.body891.while.end897_crit_edge, %for.end885.while.end897_crit_edge
  %i1.0.lcssa = phi i32 [ 0, %for.end885.while.end897_crit_edge ], [ %i1.01807, %while.body891.while.end897_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i1.0.lcssa, i32 %423)
  %cmp898 = icmp eq i32 %i1.0.lcssa, %423
  br i1 %cmp898, label %while.end897.if.then899_crit_edge, label %while.cond916.preheader

while.end897.if.then899_crit_edge:                ; preds = %while.end897
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then899

while.cond916.preheader:                          ; preds = %while.end897
  %426 = add nuw i32 %i1.0.lcssa, 1
  %smax = call i32 @llvm.smax.i32(i32 %423, i32 %426)
  br label %while.cond916

if.then899:                                       ; preds = %while.end897.if.then899_crit_edge, %if.end895.if.then899_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_debug to i32))
  %427 = load i32, ptr @dsp_debug, align 4
  %and900 = and i32 %427, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and900)
  %tobool901.not = icmp eq i32 %and900, 0
  br i1 %tobool901.not, label %if.then899.conf_software_crit_edge, label %do.end905

if.then899.conf_software_crit_edge:               ; preds = %if.then899
  call void @__sanitizer_cov_trace_pc() #8
  br label %conf_software

do.end905:                                        ; preds = %if.then899
  call void @__sanitizer_cov_trace_pc() #8
  %name908 = getelementptr inbounds %struct.dsp, ptr %272, i32 0, i32 3
  %428 = ptrtoint ptr %dsp525 to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %dsp525, align 4
  %name911 = getelementptr inbounds %struct.dsp, ptr %429, i32 0, i32 3
  %call913 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.45, ptr noundef %name908, ptr noundef %name911) #9
  br label %conf_software

while.cond916:                                    ; preds = %while.body918.while.cond916_crit_edge, %while.cond916.preheader
  %i2.0.in = phi i32 [ %i2.0, %while.body918.while.cond916_crit_edge ], [ %i1.0.lcssa, %while.cond916.preheader ]
  %i2.0 = add i32 %i2.0.in, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %i2.0, i32 %423)
  %cmp917 = icmp slt i32 %i2.0, %423
  br i1 %cmp917, label %while.body918, label %while.cond916.while.end924_crit_edge

while.cond916.while.end924_crit_edge:             ; preds = %while.cond916
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end924

while.body918:                                    ; preds = %while.cond916
  %arrayidx919 = getelementptr [256 x i8], ptr %freeslots, i32 0, i32 %i2.0
  %430 = ptrtoint ptr %arrayidx919 to i32
  call void @__asan_load1_noabort(i32 %430)
  %431 = load i8, ptr %arrayidx919, align 1
  %tobool920.not = icmp eq i8 %431, 0
  br i1 %tobool920.not, label %while.body918.while.cond916_crit_edge, label %while.body918.while.end924_crit_edge

while.body918.while.end924_crit_edge:             ; preds = %while.body918
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end924

while.body918.while.cond916_crit_edge:            ; preds = %while.body918
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond916

while.end924:                                     ; preds = %while.body918.while.end924_crit_edge, %while.cond916.while.end924_crit_edge
  %i2.0.lcssa = phi i32 [ %i2.0, %while.body918.while.end924_crit_edge ], [ %smax, %while.cond916.while.end924_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i2.0.lcssa, i32 %423)
  %cmp925 = icmp eq i32 %i2.0.lcssa, %423
  br i1 %cmp925, label %if.then926, label %if.end942

if.then926:                                       ; preds = %while.end924
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_debug to i32))
  %432 = load i32, ptr @dsp_debug, align 4
  %and927 = and i32 %432, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and927)
  %tobool928.not = icmp eq i32 %and927, 0
  br i1 %tobool928.not, label %if.then926.conf_software_crit_edge, label %do.end932

if.then926.conf_software_crit_edge:               ; preds = %if.then926
  call void @__sanitizer_cov_trace_pc() #8
  br label %conf_software

do.end932:                                        ; preds = %if.then926
  call void @__sanitizer_cov_trace_pc() #8
  %name935 = getelementptr inbounds %struct.dsp, ptr %272, i32 0, i32 3
  %433 = ptrtoint ptr %dsp525 to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %dsp525, align 4
  %name938 = getelementptr inbounds %struct.dsp, ptr %434, i32 0, i32 3
  %call940 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.45, ptr noundef %name935, ptr noundef %name938) #9
  br label %conf_software

if.end942:                                        ; preds = %while.end924
  %435 = ptrtoint ptr %pcm_slot_tx767 to i32
  call void @__asan_store4_noabort(i32 %435)
  store i32 %i1.0.lcssa, ptr %pcm_slot_tx767, align 4
  %436 = ptrtoint ptr %dsp503 to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %dsp503, align 4
  %pcm_slot_rx946 = getelementptr inbounds %struct.dsp, ptr %437, i32 0, i32 36
  %438 = ptrtoint ptr %pcm_slot_rx946 to i32
  call void @__asan_store4_noabort(i32 %438)
  store i32 %i2.0.lcssa, ptr %pcm_slot_rx946, align 4
  %439 = ptrtoint ptr %dsp525 to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %dsp525, align 4
  %pcm_slot_tx948 = getelementptr inbounds %struct.dsp, ptr %440, i32 0, i32 38
  %441 = ptrtoint ptr %pcm_slot_tx948 to i32
  call void @__asan_store4_noabort(i32 %441)
  store i32 %i2.0.lcssa, ptr %pcm_slot_tx948, align 4
  %442 = load ptr, ptr %dsp525, align 4
  %pcm_slot_rx950 = getelementptr inbounds %struct.dsp, ptr %442, i32 0, i32 36
  %443 = ptrtoint ptr %pcm_slot_rx950 to i32
  call void @__asan_store4_noabort(i32 %443)
  store i32 %i1.0.lcssa, ptr %pcm_slot_rx950, align 4
  %444 = load ptr, ptr %dsp503, align 4
  %pcm_bank_rx952 = getelementptr inbounds %struct.dsp, ptr %444, i32 0, i32 37
  %445 = ptrtoint ptr %pcm_bank_rx952 to i32
  call void @__asan_store4_noabort(i32 %445)
  store i32 0, ptr %pcm_bank_rx952, align 4
  %446 = load ptr, ptr %dsp503, align 4
  %pcm_bank_tx954 = getelementptr inbounds %struct.dsp, ptr %446, i32 0, i32 39
  %447 = ptrtoint ptr %pcm_bank_tx954 to i32
  call void @__asan_store4_noabort(i32 %447)
  store i32 0, ptr %pcm_bank_tx954, align 4
  %448 = load ptr, ptr %dsp525, align 4
  %pcm_bank_rx956 = getelementptr inbounds %struct.dsp, ptr %448, i32 0, i32 37
  %449 = ptrtoint ptr %pcm_bank_rx956 to i32
  call void @__asan_store4_noabort(i32 %449)
  store i32 0, ptr %pcm_bank_rx956, align 4
  %450 = load ptr, ptr %dsp525, align 4
  %pcm_bank_tx958 = getelementptr inbounds %struct.dsp, ptr %450, i32 0, i32 39
  %451 = ptrtoint ptr %pcm_bank_tx958 to i32
  call void @__asan_store4_noabort(i32 %451)
  store i32 0, ptr %pcm_bank_tx958, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_debug to i32))
  %452 = load i32, ptr @dsp_debug, align 4
  %and959 = and i32 %452, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and959)
  %tobool960.not = icmp eq i32 %and959, 0
  br i1 %tobool960.not, label %if.end942.if.end977_crit_edge, label %do.end964

if.end942.if.end977_crit_edge:                    ; preds = %if.end942
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end977

do.end964:                                        ; preds = %if.end942
  call void @__sanitizer_cov_trace_pc() #8
  %453 = ptrtoint ptr %dsp503 to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %dsp503, align 4
  %name967 = getelementptr inbounds %struct.dsp, ptr %454, i32 0, i32 3
  %455 = ptrtoint ptr %dsp525 to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load ptr, ptr %dsp525, align 4
  %name970 = getelementptr inbounds %struct.dsp, ptr %456, i32 0, i32 3
  %pcm_slot_tx973 = getelementptr inbounds %struct.dsp, ptr %454, i32 0, i32 38
  %457 = ptrtoint ptr %pcm_slot_tx973 to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load i32, ptr %pcm_slot_tx973, align 4
  %pcm_slot_rx975 = getelementptr inbounds %struct.dsp, ptr %454, i32 0, i32 36
  %459 = ptrtoint ptr %pcm_slot_rx975 to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load i32, ptr %pcm_slot_rx975, align 4
  %call976 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.45, ptr noundef %name967, ptr noundef %name970, i32 noundef %458, i32 noundef %460) #9
  br label %if.end977

if.end977:                                        ; preds = %do.end964, %if.end942.if.end977_crit_edge
  %461 = ptrtoint ptr %dsp503 to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load ptr, ptr %dsp503, align 4
  %pcm_slot_tx980 = getelementptr inbounds %struct.dsp, ptr %462, i32 0, i32 38
  %463 = ptrtoint ptr %pcm_slot_tx980 to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load i32, ptr %pcm_slot_tx980, align 4
  %pcm_bank_tx982 = getelementptr inbounds %struct.dsp, ptr %462, i32 0, i32 39
  %465 = ptrtoint ptr %pcm_bank_tx982 to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load i32, ptr %pcm_bank_tx982, align 4
  %pcm_slot_rx984 = getelementptr inbounds %struct.dsp, ptr %462, i32 0, i32 36
  %467 = ptrtoint ptr %pcm_slot_rx984 to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load i32, ptr %pcm_slot_rx984, align 4
  %pcm_bank_rx986 = getelementptr inbounds %struct.dsp, ptr %462, i32 0, i32 37
  %469 = ptrtoint ptr %pcm_bank_rx986 to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load i32, ptr %pcm_bank_rx986, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cq.i1694) #6
  %471 = getelementptr inbounds %struct.mISDN_ctrl_req, ptr %cq.i1694, i32 0, i32 2
  %472 = getelementptr inbounds %struct.mISDN_ctrl_req, ptr %cq.i1694, i32 0, i32 3
  %473 = getelementptr inbounds i8, ptr %cq.i1694, i32 4
  %474 = ptrtoint ptr %473 to i32
  call void @__asan_store4_noabort(i32 %474)
  store i32 0, ptr %473, align 4
  %475 = ptrtoint ptr %cq.i1694 to i32
  call void @__asan_store4_noabort(i32 %475)
  store i32 16385, ptr %cq.i1694, align 4
  %shl.i1695 = shl i32 %466, 8
  %or.i1696 = or i32 %shl.i1695, %464
  %476 = ptrtoint ptr %471 to i32
  call void @__asan_store4_noabort(i32 %476)
  store i32 %or.i1696, ptr %471, align 4
  %shl1.i1697 = shl i32 %470, 8
  %or2.i1698 = or i32 %shl1.i1697, %468
  %477 = ptrtoint ptr %472 to i32
  call void @__asan_store4_noabort(i32 %477)
  store i32 %or2.i1698, ptr %472, align 4
  %peer.i1699 = getelementptr inbounds %struct.dsp, ptr %462, i32 0, i32 1, i32 6
  %478 = ptrtoint ptr %peer.i1699 to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %peer.i1699, align 4
  %tobool.not.i1700 = icmp eq ptr %479, null
  br i1 %tobool.not.i1700, label %if.end977.dsp_cmx_hw_message.exit1704_crit_edge, label %if.then.i1703

if.end977.dsp_cmx_hw_message.exit1704_crit_edge:  ; preds = %if.end977
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsp_cmx_hw_message.exit1704

if.then.i1703:                                    ; preds = %if.end977
  call void @__sanitizer_cov_trace_pc() #8
  %ctrl.i1701 = getelementptr inbounds %struct.mISDNchannel, ptr %479, i32 0, i32 9
  %480 = ptrtoint ptr %ctrl.i1701 to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load ptr, ptr %ctrl.i1701, align 4
  %call.i1702 = call i32 %481(ptr noundef nonnull %479, i32 noundef 768, ptr noundef nonnull %cq.i1694) #6
  br label %dsp_cmx_hw_message.exit1704

dsp_cmx_hw_message.exit1704:                      ; preds = %if.then.i1703, %if.end977.dsp_cmx_hw_message.exit1704_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cq.i1694) #6
  %482 = ptrtoint ptr %dsp525 to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load ptr, ptr %dsp525, align 4
  %pcm_slot_tx989 = getelementptr inbounds %struct.dsp, ptr %483, i32 0, i32 38
  %484 = ptrtoint ptr %pcm_slot_tx989 to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load i32, ptr %pcm_slot_tx989, align 4
  %pcm_bank_tx991 = getelementptr inbounds %struct.dsp, ptr %483, i32 0, i32 39
  %486 = ptrtoint ptr %pcm_bank_tx991 to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load i32, ptr %pcm_bank_tx991, align 4
  %pcm_slot_rx993 = getelementptr inbounds %struct.dsp, ptr %483, i32 0, i32 36
  %488 = ptrtoint ptr %pcm_slot_rx993 to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load i32, ptr %pcm_slot_rx993, align 4
  %pcm_bank_rx995 = getelementptr inbounds %struct.dsp, ptr %483, i32 0, i32 37
  %490 = ptrtoint ptr %pcm_bank_rx995 to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load i32, ptr %pcm_bank_rx995, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cq.i1705) #6
  %492 = getelementptr inbounds %struct.mISDN_ctrl_req, ptr %cq.i1705, i32 0, i32 2
  %493 = getelementptr inbounds %struct.mISDN_ctrl_req, ptr %cq.i1705, i32 0, i32 3
  %494 = getelementptr inbounds i8, ptr %cq.i1705, i32 4
  %495 = ptrtoint ptr %494 to i32
  call void @__asan_store4_noabort(i32 %495)
  store i32 0, ptr %494, align 4
  %496 = ptrtoint ptr %cq.i1705 to i32
  call void @__asan_store4_noabort(i32 %496)
  store i32 16385, ptr %cq.i1705, align 4
  %shl.i1706 = shl i32 %487, 8
  %or.i1707 = or i32 %shl.i1706, %485
  %497 = ptrtoint ptr %492 to i32
  call void @__asan_store4_noabort(i32 %497)
  store i32 %or.i1707, ptr %492, align 4
  %shl1.i1708 = shl i32 %491, 8
  %or2.i1709 = or i32 %shl1.i1708, %489
  %498 = ptrtoint ptr %493 to i32
  call void @__asan_store4_noabort(i32 %498)
  store i32 %or2.i1709, ptr %493, align 4
  %peer.i1710 = getelementptr inbounds %struct.dsp, ptr %483, i32 0, i32 1, i32 6
  %499 = ptrtoint ptr %peer.i1710 to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load ptr, ptr %peer.i1710, align 4
  %tobool.not.i1711 = icmp eq ptr %500, null
  br i1 %tobool.not.i1711, label %dsp_cmx_hw_message.exit1704.dsp_cmx_hw_message.exit1715_crit_edge, label %if.then.i1714

dsp_cmx_hw_message.exit1704.dsp_cmx_hw_message.exit1715_crit_edge: ; preds = %dsp_cmx_hw_message.exit1704
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsp_cmx_hw_message.exit1715

if.then.i1714:                                    ; preds = %dsp_cmx_hw_message.exit1704
  call void @__sanitizer_cov_trace_pc() #8
  %ctrl.i1712 = getelementptr inbounds %struct.mISDNchannel, ptr %500, i32 0, i32 9
  %501 = ptrtoint ptr %ctrl.i1712 to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load ptr, ptr %ctrl.i1712, align 4
  %call.i1713 = call i32 %502(ptr noundef nonnull %500, i32 noundef 768, ptr noundef nonnull %cq.i1705) #6
  br label %dsp_cmx_hw_message.exit1715

dsp_cmx_hw_message.exit1715:                      ; preds = %if.then.i1714, %dsp_cmx_hw_message.exit1704.dsp_cmx_hw_message.exit1715_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cq.i1705) #6
  %hardware996 = getelementptr inbounds %struct.dsp_conf, ptr %conf, i32 0, i32 4
  %503 = ptrtoint ptr %hardware996 to i32
  call void @__asan_store4_noabort(i32 %503)
  store i32 1, ptr %hardware996, align 4
  %software997 = getelementptr inbounds %struct.dsp_conf, ptr %conf, i32 0, i32 3
  %504 = ptrtoint ptr %software997 to i32
  call void @__asan_store4_noabort(i32 %504)
  store i32 %tx_data.1, ptr %software997, align 4
  br label %cleanup

if.end998:                                        ; preds = %if.end469
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select)
  %cmp999 = icmp slt i32 %spec.store.select, 0
  br i1 %cmp999, label %if.then1000, label %if.end1011

if.then1000:                                      ; preds = %if.end998
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_debug to i32))
  %505 = load i32, ptr @dsp_debug, align 4
  %and1001 = and i32 %505, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1001)
  %tobool1002.not = icmp eq i32 %and1001, 0
  br i1 %tobool1002.not, label %if.then1000.conf_software_crit_edge, label %do.end1006

if.then1000.conf_software_crit_edge:              ; preds = %if.then1000
  call void @__sanitizer_cov_trace_pc() #8
  br label %conf_software

do.end1006:                                       ; preds = %if.then1000
  call void @__sanitizer_cov_trace_pc() #8
  %id1008 = getelementptr inbounds %struct.dsp_conf, ptr %conf, i32 0, i32 1
  %506 = ptrtoint ptr %id1008 to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load i32, ptr %id1008, align 4
  %call1009 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.45, i32 noundef %507) #9
  br label %conf_software

if.end1011:                                       ; preds = %if.end998
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select1609)
  %tobool1012.not = icmp eq i32 %spec.select1609, 0
  br i1 %tobool1012.not, label %if.end1016, label %if.then1013

if.then1013:                                      ; preds = %if.end1011
  call void @__sanitizer_cov_trace_pc() #8
  %hardware1014 = getelementptr inbounds %struct.dsp_conf, ptr %conf, i32 0, i32 4
  %508 = ptrtoint ptr %hardware1014 to i32
  call void @__asan_store4_noabort(i32 %508)
  store i32 1, ptr %hardware1014, align 4
  %software1015 = getelementptr inbounds %struct.dsp_conf, ptr %conf, i32 0, i32 3
  %509 = ptrtoint ptr %software1015 to i32
  call void @__asan_store4_noabort(i32 %509)
  store i32 %tx_data.1, ptr %software1015, align 4
  br label %cleanup

if.end1016:                                       ; preds = %if.end1011
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %current_conf.1)
  %cmp1017 = icmp sgt i32 %current_conf.1, -1
  br i1 %cmp1017, label %if.end1016.join_members_crit_edge, label %if.end1148

if.end1016.join_members_crit_edge:                ; preds = %if.end1016
  call void @__sanitizer_cov_trace_pc() #8
  br label %join_members

join_members:                                     ; preds = %if.end1184.6.join_members_crit_edge, %if.end1184.5.join_members_crit_edge, %if.end1184.4.join_members_crit_edge, %if.end1184.3.join_members_crit_edge, %if.end1184.2.join_members_crit_edge, %if.end1184.1.join_members_crit_edge, %if.end1184.join_members_crit_edge, %while.cond1178.preheader.join_members_crit_edge, %if.end1016.join_members_crit_edge
  %current_conf.2 = phi i32 [ %current_conf.1, %if.end1016.join_members_crit_edge ], [ 0, %while.cond1178.preheader.join_members_crit_edge ], [ 1, %if.end1184.join_members_crit_edge ], [ 2, %if.end1184.1.join_members_crit_edge ], [ 3, %if.end1184.2.join_members_crit_edge ], [ 4, %if.end1184.3.join_members_crit_edge ], [ 5, %if.end1184.4.join_members_crit_edge ], [ 6, %if.end1184.5.join_members_crit_edge ], [ 7, %if.end1184.6.join_members_crit_edge ]
  %510 = ptrtoint ptr %mlist to i32
  call void @__asan_load4_noabort(i32 %510)
  %member.21821 = load ptr, ptr %mlist, align 4
  %cmp1027.not1822 = icmp eq ptr %member.21821, %mlist
  br i1 %cmp1027.not1822, label %join_members.for.end1145_crit_edge, label %for.body1029.lr.ph

join_members.for.end1145_crit_edge:               ; preds = %join_members
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end1145

for.body1029.lr.ph:                               ; preds = %join_members
  %511 = getelementptr inbounds %struct.mISDN_ctrl_req, ptr %cq.i1716, i32 0, i32 2
  %512 = getelementptr inbounds %struct.mISDN_ctrl_req, ptr %cq.i1716, i32 0, i32 3
  %513 = getelementptr inbounds i8, ptr %cq.i1716, i32 4
  %514 = getelementptr inbounds %struct.mISDN_ctrl_req, ptr %cq.i1725, i32 0, i32 2
  %515 = getelementptr inbounds %struct.mISDN_ctrl_req, ptr %cq.i1725, i32 0, i32 3
  %516 = getelementptr inbounds i8, ptr %cq.i1725, i32 4
  br label %for.body1029

for.body1029:                                     ; preds = %for.inc1139.for.body1029_crit_edge, %for.body1029.lr.ph
  %member.21823 = phi ptr [ %member.21821, %for.body1029.lr.ph ], [ %member.2, %for.inc1139.for.body1029_crit_edge ]
  %dsp1030 = getelementptr inbounds %struct.dsp_conf_member, ptr %member.21823, i32 0, i32 1
  %517 = ptrtoint ptr %dsp1030 to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load ptr, ptr %dsp1030, align 4
  %hfc_conf1032 = getelementptr inbounds %struct.dsp, ptr %518, i32 0, i32 33, i32 2
  %519 = ptrtoint ptr %hfc_conf1032 to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load i32, ptr %hfc_conf1032, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %520)
  %tobool1033.not = icmp eq i32 %520, 0
  br i1 %tobool1033.not, label %for.body1029.conf_software_crit_edge, label %if.end1035

for.body1029.conf_software_crit_edge:             ; preds = %for.body1029
  call void @__sanitizer_cov_trace_pc() #8
  br label %conf_software

if.end1035:                                       ; preds = %for.body1029
  %hdlc = getelementptr inbounds %struct.dsp, ptr %518, i32 0, i32 15
  %521 = ptrtoint ptr %hdlc to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load i32, ptr %hdlc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %522)
  %tobool1037.not = icmp eq i32 %522, 0
  br i1 %tobool1037.not, label %if.end1039, label %if.end1035.conf_software_crit_edge

if.end1035.conf_software_crit_edge:               ; preds = %if.end1035
  call void @__sanitizer_cov_trace_pc() #8
  br label %conf_software

if.end1039:                                       ; preds = %if.end1035
  %hfc_conf1041 = getelementptr inbounds %struct.dsp, ptr %518, i32 0, i32 40
  %523 = ptrtoint ptr %hfc_conf1041 to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load i32, ptr %hfc_conf1041, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %524, i32 %current_conf.2)
  %cmp1042 = icmp eq i32 %524, %current_conf.2
  br i1 %cmp1042, label %if.end1039.for.inc1139_crit_edge, label %if.end1044

if.end1039.for.inc1139_crit_edge:                 ; preds = %if.end1039
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc1139

if.end1044:                                       ; preds = %if.end1039
  %525 = call ptr @memset(ptr %freeslots, i32 1, i32 256)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_ilist to i32))
  %dsp.addr.31814 = load ptr, ptr @dsp_ilist, align 4
  %cmp1051.not1815 = icmp eq ptr %dsp.addr.31814, @dsp_ilist
  br i1 %cmp1051.not1815, label %if.end1044.for.end1089_crit_edge, label %for.body1053.lr.ph

if.end1044.for.end1089_crit_edge:                 ; preds = %if.end1044
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end1089

for.body1053.lr.ph:                               ; preds = %if.end1044
  %pcm_id1059 = getelementptr inbounds %struct.dsp, ptr %518, i32 0, i32 33, i32 5
  br label %for.body1053

for.body1053:                                     ; preds = %for.inc1083.for.body1053_crit_edge, %for.body1053.lr.ph
  %dsp.addr.31816 = phi ptr [ %dsp.addr.31814, %for.body1053.lr.ph ], [ %dsp.addr.3, %for.inc1083.for.body1053_crit_edge ]
  %cmp1055.not = icmp eq ptr %dsp.addr.31816, %518
  br i1 %cmp1055.not, label %for.body1053.for.inc1083_crit_edge, label %land.lhs.true1056

for.body1053.for.inc1083_crit_edge:               ; preds = %for.body1053
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc1083

land.lhs.true1056:                                ; preds = %for.body1053
  %526 = ptrtoint ptr %pcm_id1059 to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load i32, ptr %pcm_id1059, align 4
  %pcm_id1061 = getelementptr inbounds %struct.dsp, ptr %dsp.addr.31816, i32 0, i32 33, i32 5
  %528 = ptrtoint ptr %pcm_id1061 to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load i32, ptr %pcm_id1061, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %527, i32 %529)
  %cmp1062 = icmp eq i32 %527, %529
  br i1 %cmp1062, label %if.then1063, label %land.lhs.true1056.for.inc1083_crit_edge

land.lhs.true1056.for.inc1083_crit_edge:          ; preds = %land.lhs.true1056
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc1083

if.then1063:                                      ; preds = %land.lhs.true1056
  %pcm_slot_tx1064 = getelementptr inbounds %struct.dsp, ptr %dsp.addr.31816, i32 0, i32 38
  %530 = ptrtoint ptr %pcm_slot_tx1064 to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load i32, ptr %pcm_slot_tx1064, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %531)
  %cmp1068 = icmp ult i32 %531, 256
  br i1 %cmp1068, label %if.then1069, label %if.then1063.if.end1072_crit_edge

if.then1063.if.end1072_crit_edge:                 ; preds = %if.then1063
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1072

if.then1069:                                      ; preds = %if.then1063
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx1071 = getelementptr [256 x i8], ptr %freeslots, i32 0, i32 %531
  %532 = ptrtoint ptr %arrayidx1071 to i32
  call void @__asan_store1_noabort(i32 %532)
  store i8 0, ptr %arrayidx1071, align 1
  br label %if.end1072

if.end1072:                                       ; preds = %if.then1069, %if.then1063.if.end1072_crit_edge
  %pcm_slot_rx1073 = getelementptr inbounds %struct.dsp, ptr %dsp.addr.31816, i32 0, i32 36
  %533 = ptrtoint ptr %pcm_slot_rx1073 to i32
  call void @__asan_load4_noabort(i32 %533)
  %534 = load i32, ptr %pcm_slot_rx1073, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %534)
  %cmp1077 = icmp ult i32 %534, 256
  br i1 %cmp1077, label %if.then1078, label %if.end1072.for.inc1083_crit_edge

if.end1072.for.inc1083_crit_edge:                 ; preds = %if.end1072
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc1083

if.then1078:                                      ; preds = %if.end1072
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx1080 = getelementptr [256 x i8], ptr %freeslots, i32 0, i32 %534
  %535 = ptrtoint ptr %arrayidx1080 to i32
  call void @__asan_store1_noabort(i32 %535)
  store i8 0, ptr %arrayidx1080, align 1
  br label %for.inc1083

for.inc1083:                                      ; preds = %if.then1078, %if.end1072.for.inc1083_crit_edge, %land.lhs.true1056.for.inc1083_crit_edge, %for.body1053.for.inc1083_crit_edge
  %536 = ptrtoint ptr %dsp.addr.31816 to i32
  call void @__asan_load4_noabort(i32 %536)
  %dsp.addr.3 = load ptr, ptr %dsp.addr.31816, align 4
  %cmp1051.not = icmp eq ptr %dsp.addr.3, @dsp_ilist
  br i1 %cmp1051.not, label %for.inc1083.for.end1089_crit_edge, label %for.inc1083.for.body1053_crit_edge

for.inc1083.for.body1053_crit_edge:               ; preds = %for.inc1083
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body1053

for.inc1083.for.end1089_crit_edge:                ; preds = %for.inc1083
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end1089

for.end1089:                                      ; preds = %for.inc1083.for.end1089_crit_edge, %if.end1044.for.end1089_crit_edge
  %pcm_slots1092 = getelementptr inbounds %struct.dsp, ptr %518, i32 0, i32 33, i32 6
  %537 = ptrtoint ptr %pcm_slots1092 to i32
  call void @__asan_load4_noabort(i32 %537)
  %538 = load i32, ptr %pcm_slots1092, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %538)
  %cmp10941817 = icmp sgt i32 %538, 0
  br i1 %cmp10941817, label %for.end1089.while.body1095_crit_edge, label %for.end1089.while.end1101_crit_edge

for.end1089.while.end1101_crit_edge:              ; preds = %for.end1089
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end1101

for.end1089.while.body1095_crit_edge:             ; preds = %for.end1089
  br label %while.body1095

while.body1095:                                   ; preds = %if.end1099.while.body1095_crit_edge, %for.end1089.while.body1095_crit_edge
  %i.21818 = phi i32 [ %inc1100, %if.end1099.while.body1095_crit_edge ], [ 0, %for.end1089.while.body1095_crit_edge ]
  %arrayidx1096 = getelementptr [256 x i8], ptr %freeslots, i32 0, i32 %i.21818
  %539 = ptrtoint ptr %arrayidx1096 to i32
  call void @__asan_load1_noabort(i32 %539)
  %540 = load i8, ptr %arrayidx1096, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %540)
  %tobool1097.not = icmp eq i8 %540, 0
  br i1 %tobool1097.not, label %if.end1099, label %while.body1095.while.end1101_crit_edge

while.body1095.while.end1101_crit_edge:           ; preds = %while.body1095
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end1101

if.end1099:                                       ; preds = %while.body1095
  %inc1100 = add nuw nsw i32 %i.21818, 1
  %exitcond1865.not = icmp eq i32 %inc1100, %538
  br i1 %exitcond1865.not, label %if.end1099.if.then1103_crit_edge, label %if.end1099.while.body1095_crit_edge

if.end1099.while.body1095_crit_edge:              ; preds = %if.end1099
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body1095

if.end1099.if.then1103_crit_edge:                 ; preds = %if.end1099
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then1103

while.end1101:                                    ; preds = %while.body1095.while.end1101_crit_edge, %for.end1089.while.end1101_crit_edge
  %i.2.lcssa = phi i32 [ 0, %for.end1089.while.end1101_crit_edge ], [ %i.21818, %while.body1095.while.end1101_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.2.lcssa, i32 %538)
  %cmp1102 = icmp eq i32 %i.2.lcssa, %538
  br i1 %cmp1102, label %while.end1101.if.then1103_crit_edge, label %if.end1114

while.end1101.if.then1103_crit_edge:              ; preds = %while.end1101
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then1103

if.then1103:                                      ; preds = %while.end1101.if.then1103_crit_edge, %if.end1099.if.then1103_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_debug to i32))
  %541 = load i32, ptr @dsp_debug, align 4
  %and1104 = and i32 %541, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1104)
  %tobool1105.not = icmp eq i32 %and1104, 0
  br i1 %tobool1105.not, label %if.then1103.conf_software_crit_edge, label %do.end1109

if.then1103.conf_software_crit_edge:              ; preds = %if.then1103
  call void @__sanitizer_cov_trace_pc() #8
  br label %conf_software

do.end1109:                                       ; preds = %if.then1103
  call void @__sanitizer_cov_trace_pc() #8
  %id1111 = getelementptr inbounds %struct.dsp_conf, ptr %conf, i32 0, i32 1
  %542 = ptrtoint ptr %id1111 to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load i32, ptr %id1111, align 4
  %call1112 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.45, i32 noundef %543) #9
  br label %conf_software

if.end1114:                                       ; preds = %while.end1101
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_debug to i32))
  %544 = load i32, ptr @dsp_debug, align 4
  %and1115 = and i32 %544, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1115)
  %tobool1116.not = icmp eq i32 %and1115, 0
  br i1 %tobool1116.not, label %if.end1114.if.end1126_crit_edge, label %do.end1120

if.end1114.if.end1126_crit_edge:                  ; preds = %if.end1114
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end1126

do.end1120:                                       ; preds = %if.end1114
  call void @__sanitizer_cov_trace_pc() #8
  %name1123 = getelementptr inbounds %struct.dsp, ptr %518, i32 0, i32 3
  %call1125 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.45, ptr noundef %name1123, i32 noundef %current_conf.2, i32 noundef %i.2.lcssa) #9
  br label %if.end1126

if.end1126:                                       ; preds = %do.end1120, %if.end1114.if.end1126_crit_edge
  %545 = ptrtoint ptr %dsp1030 to i32
  call void @__asan_load4_noabort(i32 %545)
  %546 = load ptr, ptr %dsp1030, align 4
  %pcm_slot_tx1128 = getelementptr inbounds %struct.dsp, ptr %546, i32 0, i32 38
  %547 = ptrtoint ptr %pcm_slot_tx1128 to i32
  call void @__asan_store4_noabort(i32 %547)
  store i32 %i.2.lcssa, ptr %pcm_slot_tx1128, align 4
  %548 = load ptr, ptr %dsp1030, align 4
  %pcm_slot_rx1130 = getelementptr inbounds %struct.dsp, ptr %548, i32 0, i32 36
  %549 = ptrtoint ptr %pcm_slot_rx1130 to i32
  call void @__asan_store4_noabort(i32 %549)
  store i32 %i.2.lcssa, ptr %pcm_slot_rx1130, align 4
  %550 = load ptr, ptr %dsp1030, align 4
  %pcm_bank_tx1132 = getelementptr inbounds %struct.dsp, ptr %550, i32 0, i32 39
  %551 = ptrtoint ptr %pcm_bank_tx1132 to i32
  call void @__asan_store4_noabort(i32 %551)
  store i32 2, ptr %pcm_bank_tx1132, align 4
  %552 = load ptr, ptr %dsp1030, align 4
  %pcm_bank_rx1134 = getelementptr inbounds %struct.dsp, ptr %552, i32 0, i32 37
  %553 = ptrtoint ptr %pcm_bank_rx1134 to i32
  call void @__asan_store4_noabort(i32 %553)
  store i32 2, ptr %pcm_bank_rx1134, align 4
  %554 = load ptr, ptr %dsp1030, align 4
  %hfc_conf1136 = getelementptr inbounds %struct.dsp, ptr %554, i32 0, i32 40
  %555 = ptrtoint ptr %hfc_conf1136 to i32
  call void @__asan_store4_noabort(i32 %555)
  store i32 %current_conf.2, ptr %hfc_conf1136, align 4
  %556 = load ptr, ptr %dsp1030, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cq.i1716) #6
  %557 = ptrtoint ptr %513 to i32
  call void @__asan_store4_noabort(i32 %557)
  store i32 0, ptr %513, align 4
  %558 = ptrtoint ptr %cq.i1716 to i32
  call void @__asan_store4_noabort(i32 %558)
  store i32 16385, ptr %cq.i1716, align 4
  %or.i1717 = or i32 %i.2.lcssa, 512
  %559 = ptrtoint ptr %511 to i32
  call void @__asan_store4_noabort(i32 %559)
  store i32 %or.i1717, ptr %511, align 4
  %560 = ptrtoint ptr %512 to i32
  call void @__asan_store4_noabort(i32 %560)
  store i32 %or.i1717, ptr %512, align 4
  %peer.i1719 = getelementptr inbounds %struct.dsp, ptr %556, i32 0, i32 1, i32 6
  %561 = ptrtoint ptr %peer.i1719 to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load ptr, ptr %peer.i1719, align 4
  %tobool.not.i1720 = icmp eq ptr %562, null
  br i1 %tobool.not.i1720, label %if.end1126.dsp_cmx_hw_message.exit1724_crit_edge, label %if.then.i1723

if.end1126.dsp_cmx_hw_message.exit1724_crit_edge: ; preds = %if.end1126
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsp_cmx_hw_message.exit1724

if.then.i1723:                                    ; preds = %if.end1126
  call void @__sanitizer_cov_trace_pc() #8
  %ctrl.i1721 = getelementptr inbounds %struct.mISDNchannel, ptr %562, i32 0, i32 9
  %563 = ptrtoint ptr %ctrl.i1721 to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load ptr, ptr %ctrl.i1721, align 4
  %call.i1722 = call i32 %564(ptr noundef nonnull %562, i32 noundef 768, ptr noundef nonnull %cq.i1716) #6
  br label %dsp_cmx_hw_message.exit1724

dsp_cmx_hw_message.exit1724:                      ; preds = %if.then.i1723, %if.end1126.dsp_cmx_hw_message.exit1724_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cq.i1716) #6
  %565 = ptrtoint ptr %dsp1030 to i32
  call void @__asan_load4_noabort(i32 %565)
  %566 = load ptr, ptr %dsp1030, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cq.i1725) #6
  %567 = ptrtoint ptr %516 to i32
  call void @__asan_store4_noabort(i32 %567)
  store i32 0, ptr %516, align 4
  %568 = ptrtoint ptr %cq.i1725 to i32
  call void @__asan_store4_noabort(i32 %568)
  store i32 16387, ptr %cq.i1725, align 4
  %569 = ptrtoint ptr %514 to i32
  call void @__asan_store4_noabort(i32 %569)
  store i32 %current_conf.2, ptr %514, align 4
  %570 = ptrtoint ptr %515 to i32
  call void @__asan_store4_noabort(i32 %570)
  store i32 0, ptr %515, align 4
  %peer.i1726 = getelementptr inbounds %struct.dsp, ptr %566, i32 0, i32 1, i32 6
  %571 = ptrtoint ptr %peer.i1726 to i32
  call void @__asan_load4_noabort(i32 %571)
  %572 = load ptr, ptr %peer.i1726, align 4
  %tobool.not.i1727 = icmp eq ptr %572, null
  br i1 %tobool.not.i1727, label %dsp_cmx_hw_message.exit1724.dsp_cmx_hw_message.exit1731_crit_edge, label %if.then.i1730

dsp_cmx_hw_message.exit1724.dsp_cmx_hw_message.exit1731_crit_edge: ; preds = %dsp_cmx_hw_message.exit1724
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsp_cmx_hw_message.exit1731

if.then.i1730:                                    ; preds = %dsp_cmx_hw_message.exit1724
  call void @__sanitizer_cov_trace_pc() #8
  %ctrl.i1728 = getelementptr inbounds %struct.mISDNchannel, ptr %572, i32 0, i32 9
  %573 = ptrtoint ptr %ctrl.i1728 to i32
  call void @__asan_load4_noabort(i32 %573)
  %574 = load ptr, ptr %ctrl.i1728, align 4
  %call.i1729 = call i32 %574(ptr noundef nonnull %572, i32 noundef 768, ptr noundef nonnull %cq.i1725) #6
  br label %dsp_cmx_hw_message.exit1731

dsp_cmx_hw_message.exit1731:                      ; preds = %if.then.i1730, %dsp_cmx_hw_message.exit1724.dsp_cmx_hw_message.exit1731_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cq.i1725) #6
  br label %for.inc1139

for.inc1139:                                      ; preds = %dsp_cmx_hw_message.exit1731, %if.end1039.for.inc1139_crit_edge
  %575 = ptrtoint ptr %member.21823 to i32
  call void @__asan_load4_noabort(i32 %575)
  %member.2 = load ptr, ptr %member.21823, align 4
  %cmp1027.not = icmp eq ptr %member.2, %mlist
  br i1 %cmp1027.not, label %for.inc1139.for.end1145_crit_edge, label %for.inc1139.for.body1029_crit_edge

for.inc1139.for.body1029_crit_edge:               ; preds = %for.inc1139
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body1029

for.inc1139.for.end1145_crit_edge:                ; preds = %for.inc1139
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end1145

for.end1145:                                      ; preds = %for.inc1139.for.end1145_crit_edge, %join_members.for.end1145_crit_edge
  %hardware1146 = getelementptr inbounds %struct.dsp_conf, ptr %conf, i32 0, i32 4
  %576 = ptrtoint ptr %hardware1146 to i32
  call void @__asan_store4_noabort(i32 %576)
  store i32 1, ptr %hardware1146, align 4
  %software1147 = getelementptr inbounds %struct.dsp_conf, ptr %conf, i32 0, i32 3
  %577 = ptrtoint ptr %software1147 to i32
  call void @__asan_store4_noabort(i32 %577)
  store i32 %tx_data.1, ptr %software1147, align 4
  br label %cleanup

if.end1148:                                       ; preds = %if.end1016
  %578 = call ptr @memset(ptr %freeunits, i32 1, i32 32)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_ilist to i32))
  %dsp.addr.41810 = load ptr, ptr @dsp_ilist, align 4
  %cmp1155.not1811 = icmp eq ptr %dsp.addr.41810, @dsp_ilist
  br i1 %cmp1155.not1811, label %if.end1148.while.cond1178.preheader_crit_edge, label %if.end1148.for.body1157_crit_edge

if.end1148.for.body1157_crit_edge:                ; preds = %if.end1148
  br label %for.body1157

if.end1148.while.cond1178.preheader_crit_edge:    ; preds = %if.end1148
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond1178.preheader

while.cond1178.preheader:                         ; preds = %for.inc1171.while.cond1178.preheader_crit_edge, %if.end1148.while.cond1178.preheader_crit_edge
  %579 = ptrtoint ptr %freeunits to i32
  call void @__asan_load4_noabort(i32 %579)
  %580 = load i32, ptr %freeunits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %580)
  %tobool1182.not = icmp eq i32 %580, 0
  br i1 %tobool1182.not, label %if.end1184, label %while.cond1178.preheader.join_members_crit_edge

while.cond1178.preheader.join_members_crit_edge:  ; preds = %while.cond1178.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %join_members

for.body1157:                                     ; preds = %for.inc1171.for.body1157_crit_edge, %if.end1148.for.body1157_crit_edge
  %dsp.addr.41812 = phi ptr [ %dsp.addr.4, %for.inc1171.for.body1157_crit_edge ], [ %dsp.addr.41810, %if.end1148.for.body1157_crit_edge ]
  %features1158 = getelementptr inbounds %struct.dsp, ptr %dsp.addr.41812, i32 0, i32 33
  %581 = ptrtoint ptr %features1158 to i32
  call void @__asan_load4_noabort(i32 %581)
  %582 = load i32, ptr %features1158, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %582, i32 %spec.store.select)
  %cmp1160 = icmp eq i32 %582, %spec.store.select
  br i1 %cmp1160, label %land.lhs.true1161, label %for.body1157.for.inc1171_crit_edge

for.body1157.for.inc1171_crit_edge:               ; preds = %for.body1157
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc1171

land.lhs.true1161:                                ; preds = %for.body1157
  %hfc_conf1162 = getelementptr inbounds %struct.dsp, ptr %dsp.addr.41812, i32 0, i32 40
  %583 = ptrtoint ptr %hfc_conf1162 to i32
  call void @__asan_load4_noabort(i32 %583)
  %584 = load i32, ptr %hfc_conf1162, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %584)
  %585 = icmp ult i32 %584, 8
  br i1 %585, label %if.then1167, label %land.lhs.true1161.for.inc1171_crit_edge

land.lhs.true1161.for.inc1171_crit_edge:          ; preds = %land.lhs.true1161
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc1171

if.then1167:                                      ; preds = %land.lhs.true1161
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx1169 = getelementptr [8 x i32], ptr %freeunits, i32 0, i32 %584
  %586 = ptrtoint ptr %arrayidx1169 to i32
  call void @__asan_store4_noabort(i32 %586)
  store i32 0, ptr %arrayidx1169, align 4
  br label %for.inc1171

for.inc1171:                                      ; preds = %if.then1167, %land.lhs.true1161.for.inc1171_crit_edge, %for.body1157.for.inc1171_crit_edge
  %587 = ptrtoint ptr %dsp.addr.41812 to i32
  call void @__asan_load4_noabort(i32 %587)
  %dsp.addr.4 = load ptr, ptr %dsp.addr.41812, align 4
  %cmp1155.not = icmp eq ptr %dsp.addr.4, @dsp_ilist
  br i1 %cmp1155.not, label %for.inc1171.while.cond1178.preheader_crit_edge, label %for.inc1171.for.body1157_crit_edge

for.inc1171.for.body1157_crit_edge:               ; preds = %for.inc1171
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body1157

for.inc1171.while.cond1178.preheader_crit_edge:   ; preds = %for.inc1171
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond1178.preheader

if.end1184:                                       ; preds = %while.cond1178.preheader
  %588 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %588)
  %589 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %589)
  %tobool1182.not.1 = icmp eq i32 %589, 0
  br i1 %tobool1182.not.1, label %if.end1184.1, label %if.end1184.join_members_crit_edge

if.end1184.join_members_crit_edge:                ; preds = %if.end1184
  call void @__sanitizer_cov_trace_pc() #8
  br label %join_members

if.end1184.1:                                     ; preds = %if.end1184
  %590 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %591)
  %tobool1182.not.2 = icmp eq i32 %591, 0
  br i1 %tobool1182.not.2, label %if.end1184.2, label %if.end1184.1.join_members_crit_edge

if.end1184.1.join_members_crit_edge:              ; preds = %if.end1184.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %join_members

if.end1184.2:                                     ; preds = %if.end1184.1
  %592 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %592)
  %593 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %593)
  %tobool1182.not.3 = icmp eq i32 %593, 0
  br i1 %tobool1182.not.3, label %if.end1184.3, label %if.end1184.2.join_members_crit_edge

if.end1184.2.join_members_crit_edge:              ; preds = %if.end1184.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %join_members

if.end1184.3:                                     ; preds = %if.end1184.2
  %594 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %594)
  %595 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %595)
  %tobool1182.not.4 = icmp eq i32 %595, 0
  br i1 %tobool1182.not.4, label %if.end1184.4, label %if.end1184.3.join_members_crit_edge

if.end1184.3.join_members_crit_edge:              ; preds = %if.end1184.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %join_members

if.end1184.4:                                     ; preds = %if.end1184.3
  %596 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %597)
  %tobool1182.not.5 = icmp eq i32 %597, 0
  br i1 %tobool1182.not.5, label %if.end1184.5, label %if.end1184.4.join_members_crit_edge

if.end1184.4.join_members_crit_edge:              ; preds = %if.end1184.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %join_members

if.end1184.5:                                     ; preds = %if.end1184.4
  %598 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %599)
  %tobool1182.not.6 = icmp eq i32 %599, 0
  br i1 %tobool1182.not.6, label %if.end1184.6, label %if.end1184.5.join_members_crit_edge

if.end1184.5.join_members_crit_edge:              ; preds = %if.end1184.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %join_members

if.end1184.6:                                     ; preds = %if.end1184.5
  %600 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %600)
  %601 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %601)
  %tobool1182.not.7 = icmp eq i32 %601, 0
  br i1 %tobool1182.not.7, label %if.then1188, label %if.end1184.6.join_members_crit_edge

if.end1184.6.join_members_crit_edge:              ; preds = %if.end1184.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %join_members

if.then1188:                                      ; preds = %if.end1184.6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_debug to i32))
  %602 = load i32, ptr @dsp_debug, align 4
  %and1189 = and i32 %602, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1189)
  %tobool1190.not = icmp eq i32 %and1189, 0
  br i1 %tobool1190.not, label %if.then1188.conf_software_crit_edge, label %do.end1194

if.then1188.conf_software_crit_edge:              ; preds = %if.then1188
  call void @__sanitizer_cov_trace_pc() #8
  br label %conf_software

do.end1194:                                       ; preds = %if.then1188
  call void @__sanitizer_cov_trace_pc() #8
  %id1196 = getelementptr inbounds %struct.dsp_conf, ptr %conf, i32 0, i32 1
  %603 = ptrtoint ptr %id1196 to i32
  call void @__asan_load4_noabort(i32 %603)
  %604 = load i32, ptr %id1196, align 4
  %call1197 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.45, i32 noundef %604) #9
  br label %conf_software

cleanup:                                          ; preds = %for.end1145, %if.then1013, %dsp_cmx_hw_message.exit1715, %if.end834, %dsp_cmx_hw_message.exit1693, %if.end631, %for.end466.cleanup_crit_edge, %for.end278, %do.end179, %dsp_cmx_hw_message.exit1645, %if.end140, %dsp_cmx_hw_message.exit1636, %if.then64, %dsp_cmx_hw_message.exit1629, %lor.lhs.false.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.then.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %freeslots) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %freeunits) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dsp_cmx_conf(ptr noundef %dsp, i32 noundef %conf_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conf_id1 = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 17
  %0 = ptrtoint ptr %conf_id1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %conf_id1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conf_id)
  %cmp = icmp eq i32 %1, %conf_id
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end.if.end31_crit_edge, label %if.then3

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then3:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_debug to i32))
  %2 = load i32, ptr @dsp_debug, align 4
  %and = and i32 %2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.then3.if.end7_crit_edge, label %do.end

if.then3.if.end7_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

do.end:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %conf6 = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 18
  %3 = ptrtoint ptr %conf6 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %conf6, align 4
  %id = getelementptr inbounds %struct.dsp_conf, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, i32 noundef %6) #9
  br label %if.end7

if.end7:                                          ; preds = %do.end, %if.then3.if.end7_crit_edge
  %conf8 = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 18
  %7 = ptrtoint ptr %conf8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %conf8, align 4
  %call9 = tail call i32 @dsp_cmx_del_conf_member(ptr noundef %dsp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %9 = ptrtoint ptr %conf_id1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %conf_id1, align 4
  tail call void @dsp_cmx_hardware(ptr noundef null, ptr noundef %dsp)
  %mlist = getelementptr inbounds %struct.dsp_conf, ptr %8, i32 0, i32 2
  %10 = ptrtoint ptr %mlist to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %mlist, align 4
  %cmp.i.not = icmp eq ptr %11, %mlist
  br i1 %cmp.i.not, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_debug to i32))
  %12 = load i32, ptr @dsp_debug, align 4
  %and17 = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.then16.if.end25_crit_edge, label %do.end22

if.then16.if.end25_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

do.end22:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144) #9
  br label %if.end25

if.end25:                                         ; preds = %do.end22, %if.then16.if.end25_crit_edge
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40) #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end25
  %13 = ptrtoint ptr %mlist to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %mlist, align 4
  %cmp.i.not.i = icmp eq ptr %14, %mlist
  br i1 %cmp.i.not.i, label %if.end8.i, label %do.end5.i

do.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.40) #9
  br label %cleanup

if.end8.i:                                        ; preds = %if.end.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %8) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end8.i.dsp_cmx_del_conf.exit_crit_edge

if.end8.i.dsp_cmx_del_conf.exit_crit_edge:        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsp_cmx_del_conf.exit

if.end.i.i.i:                                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i.i, align 4
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %8, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %dsp_cmx_del_conf.exit

dsp_cmx_del_conf.exit:                            ; preds = %if.end.i.i.i, %if.end8.i.dsp_cmx_del_conf.exit_crit_edge
  %21 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %8) #6
  br label %if.end31

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dsp_cmx_hardware(ptr noundef %8, ptr noundef null)
  br label %if.end31

if.end31:                                         ; preds = %if.else, %dsp_cmx_del_conf.exit, %if.end.if.end31_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conf_id)
  %tobool32.not = icmp eq i32 %conf_id, 0
  br i1 %tobool32.not, label %if.end31.cleanup_crit_edge, label %if.end34

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end34:                                         ; preds = %if.end31
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_debug to i32))
  %23 = load i32, ptr @dsp_debug, align 4
  %and35 = and i32 %23, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end34.for.cond.i.preheader_crit_edge, label %do.end40

if.end34.for.cond.i.preheader_crit_edge:          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i.preheader

do.end40:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, i32 noundef %conf_id) #9
  br label %for.cond.i.preheader

for.cond.i.preheader:                             ; preds = %do.end40, %if.end34.for.cond.i.preheader_crit_edge
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %conf.0.in.i = phi ptr [ %conf.0.i, %for.body.i.for.cond.i_crit_edge ], [ @conf_ilist, %for.cond.i.preheader ]
  %24 = ptrtoint ptr %conf.0.in.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %conf.0.i = load ptr, ptr %conf.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %conf.0.i, @conf_ilist
  br i1 %cmp.not.i, label %for.cond.i.if.then46_crit_edge, label %for.body.i

for.cond.i.if.then46_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then46

for.body.i:                                       ; preds = %for.cond.i
  %id2.i = getelementptr inbounds %struct.dsp_conf, ptr %conf.0.i, i32 0, i32 1
  %25 = ptrtoint ptr %id2.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %id2.i, align 4
  %cmp3.i = icmp eq i32 %26, %conf_id
  br i1 %cmp3.i, label %dsp_cmx_search_conf.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

dsp_cmx_search_conf.exit:                         ; preds = %for.body.i
  %tobool45.not = icmp eq ptr %conf.0.i, null
  br i1 %tobool45.not, label %dsp_cmx_search_conf.exit.if.then46_crit_edge, label %if.else60

dsp_cmx_search_conf.exit.if.then46_crit_edge:     ; preds = %dsp_cmx_search_conf.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then46

if.then46:                                        ; preds = %dsp_cmx_search_conf.exit.if.then46_crit_edge, %for.cond.i.if.then46_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_debug to i32))
  %27 = load i32, ptr @dsp_debug, align 4
  %and47 = and i32 %27, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.then46.if.end55_crit_edge, label %do.end52

if.then46.if.end55_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

do.end52:                                         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #8
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150) #9
  br label %if.end55

if.end55:                                         ; preds = %do.end52, %if.then46.if.end55_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %28 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 2848, i32 noundef 28) #10
  %tobool2.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool2.not.i, label %dsp_cmx_new_conf.exit, label %if.end9.i

if.end9.i:                                        ; preds = %if.end55
  %mlist.i154 = getelementptr inbounds %struct.dsp_conf, ptr %call7.i.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %mlist.i154 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %mlist.i154, ptr %mlist.i154, align 4
  %prev.i.i155 = getelementptr inbounds %struct.dsp_conf, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %30 = ptrtoint ptr %prev.i.i155 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %mlist.i154, ptr %prev.i.i155, align 8
  %id10.i = getelementptr inbounds %struct.dsp_conf, ptr %call7.i.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %id10.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conf_id, ptr %id10.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.list_head, ptr @conf_ilist, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @conf_ilist, i32 0, i32 1), align 4
  %call.i.i.i156 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %32, ptr noundef nonnull @conf_ilist) #6
  br i1 %call.i.i.i156, label %if.end.i.i.i157, label %if.end9.i.if.end100_crit_edge

if.end9.i.if.end100_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end100

if.end.i.i.i157:                                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.list_head, ptr @conf_ilist, i32 0, i32 1) to i32))
  store ptr %call7.i.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @conf_ilist, i32 0, i32 1), align 4
  %33 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @conf_ilist, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %32, ptr %prev3.i.i.i, align 4
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %call7.i.i.i, ptr %32, align 4
  br label %if.end100

dsp_cmx_new_conf.exit:                            ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.181) #9
  br label %cleanup

if.else60:                                        ; preds = %dsp_cmx_search_conf.exit
  %mlist61 = getelementptr inbounds %struct.dsp_conf, ptr %conf.0.i, i32 0, i32 2
  %36 = ptrtoint ptr %mlist61 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %mlist61, align 4
  %cmp.i158.not = icmp eq ptr %37, %mlist61
  br i1 %cmp.i158.not, label %if.else60.if.end100_crit_edge, label %if.then64

if.else60.if.end100_crit_edge:                    ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end100

if.then64:                                        ; preds = %if.else60
  %hdlc = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 15
  %38 = ptrtoint ptr %hdlc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %hdlc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool67.not = icmp eq i32 %39, 0
  %dsp85 = getelementptr inbounds %struct.dsp_conf_member, ptr %37, i32 0, i32 1
  %40 = ptrtoint ptr %dsp85 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dsp85, align 4
  %hdlc86 = getelementptr inbounds %struct.dsp, ptr %41, i32 0, i32 15
  %42 = ptrtoint ptr %hdlc86 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %hdlc86, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool87.not = icmp eq i32 %43, 0
  br i1 %tobool67.not, label %land.lhs.true84, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then64
  br i1 %tobool87.not, label %if.then71, label %land.lhs.true.if.end100_crit_edge

land.lhs.true.if.end100_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end100

if.then71:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_debug to i32))
  %44 = load i32, ptr @dsp_debug, align 4
  %and72 = and i32 %44, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.then71.cleanup_crit_edge, label %do.end77

if.then71.cleanup_crit_edge:                      ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end77:                                         ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #8
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153) #9
  br label %cleanup

land.lhs.true84:                                  ; preds = %if.then64
  br i1 %tobool87.not, label %land.lhs.true84.if.end100_crit_edge, label %if.then88

land.lhs.true84.if.end100_crit_edge:              ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end100

if.then88:                                        ; preds = %land.lhs.true84
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_debug to i32))
  %45 = load i32, ptr @dsp_debug, align 4
  %and89 = and i32 %45, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %if.then88.cleanup_crit_edge, label %do.end94

if.then88.cleanup_crit_edge:                      ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end94:                                         ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #8
  %call96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156) #9
  br label %cleanup

if.end100:                                        ; preds = %land.lhs.true84.if.end100_crit_edge, %land.lhs.true.if.end100_crit_edge, %if.else60.if.end100_crit_edge, %if.end.i.i.i157, %if.end9.i.if.end100_crit_edge
  %conf.0 = phi ptr [ %conf.0.i, %if.else60.if.end100_crit_edge ], [ %conf.0.i, %land.lhs.true84.if.end100_crit_edge ], [ %conf.0.i, %land.lhs.true.if.end100_crit_edge ], [ %call7.i.i.i, %if.end9.i.if.end100_crit_edge ], [ %call7.i.i.i, %if.end.i.i.i157 ]
  %tobool1.not.i = icmp eq ptr %dsp, null
  br i1 %tobool1.not.i, label %do.end.i162, label %if.end.i163

do.end.i162:                                      ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #8
  %call.i161 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.184) #9
  br label %cleanup

if.end.i163:                                      ; preds = %if.end100
  %member2.i = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 19
  %46 = ptrtoint ptr %member2.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %member2.i, align 4
  %tobool3.not.i = icmp eq ptr %47, null
  br i1 %tobool3.not.i, label %if.end10.i, label %do.end7.i

do.end7.i:                                        ; preds = %if.end.i163
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.186, ptr noundef nonnull @.str.184) #9
  br label %cleanup

if.end10.i:                                       ; preds = %if.end.i163
  %conf11.i = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 18
  %48 = ptrtoint ptr %conf11.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %conf11.i, align 4
  %tobool12.not.i = icmp eq ptr %49, null
  br i1 %tobool12.not.i, label %if.end19.i, label %do.end16.i

do.end16.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.184) #9
  br label %cleanup

if.end19.i:                                       ; preds = %if.end10.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %50 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i164 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %50, i32 noundef 2848, i32 noundef 12) #10
  %tobool21.not.i = icmp eq ptr %call7.i.i.i164, null
  br i1 %tobool21.not.i, label %do.end25.i, label %if.end28.i

do.end25.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  %call27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.192) #9
  br label %cleanup

if.end28.i:                                       ; preds = %if.end19.i
  %dsp29.i = getelementptr inbounds %struct.dsp_conf_member, ptr %call7.i.i.i164, i32 0, i32 1
  %51 = ptrtoint ptr %dsp29.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %dsp, ptr %dsp29.i, align 8
  %rx_buff.i = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 28
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @dsp_silence to i32))
  %52 = load i8, ptr @dsp_silence, align 1
  %53 = zext i8 %52 to i32
  %54 = call ptr @memset(ptr %rx_buff.i, i32 %53, i32 32768)
  %rx_init.i = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 22
  %55 = ptrtoint ptr %rx_init.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %rx_init.i, align 4
  %rx_W.i = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 20
  %56 = ptrtoint ptr %rx_W.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %rx_W.i, align 4
  %rx_R.i = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 21
  %57 = ptrtoint ptr %rx_R.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %rx_R.i, align 4
  %mlist.i165 = getelementptr inbounds %struct.dsp_conf, ptr %conf.0, i32 0, i32 2
  %prev.i.i166 = getelementptr inbounds %struct.dsp_conf, ptr %conf.0, i32 0, i32 2, i32 1
  %58 = ptrtoint ptr %prev.i.i166 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %prev.i.i166, align 4
  %call.i.i.i167 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i164, ptr noundef %59, ptr noundef %mlist.i165) #6
  br i1 %call.i.i.i167, label %if.end.i.i.i169, label %if.end28.i.if.end104_crit_edge

if.end28.i.if.end104_crit_edge:                   ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end104

if.end.i.i.i169:                                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %prev.i.i166 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call7.i.i.i164, ptr %prev.i.i166, align 4
  %61 = ptrtoint ptr %call7.i.i.i164 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %mlist.i165, ptr %call7.i.i.i164, align 8
  %prev3.i.i.i168 = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i164, i32 0, i32 1
  %62 = ptrtoint ptr %prev3.i.i.i168 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %59, ptr %prev3.i.i.i168, align 4
  %63 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %call7.i.i.i164, ptr %59, align 4
  br label %if.end104

if.end104:                                        ; preds = %if.end.i.i.i169, %if.end28.i.if.end104_crit_edge
  %64 = ptrtoint ptr %conf11.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %conf.0, ptr %conf11.i, align 4
  %65 = ptrtoint ptr %member2.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call7.i.i.i164, ptr %member2.i, align 4
  %66 = ptrtoint ptr %conf_id1 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %conf_id, ptr %conf_id1, align 4
  %67 = ptrtoint ptr %mlist.i165 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile ptr, ptr %mlist.i165, align 4
  %cmp.i171.not = icmp eq ptr %68, %mlist.i165
  br i1 %cmp.i171.not, label %if.then109, label %if.end119

if.then109:                                       ; preds = %if.end104
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_debug to i32))
  %69 = load i32, ptr @dsp_debug, align 4
  %and110 = and i32 %69, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110)
  %tobool111.not = icmp eq i32 %and110, 0
  br i1 %tobool111.not, label %if.then109.if.end118_crit_edge, label %do.end115

if.then109.if.end118_crit_edge:                   ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end118

do.end115:                                        ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #8
  %call117 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159) #9
  br label %if.end118

if.end118:                                        ; preds = %do.end115, %if.then109.if.end118_crit_edge
  tail call void @dsp_cmx_hardware(ptr noundef null, ptr noundef nonnull %dsp)
  br label %cleanup

if.end119:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dsp_cmx_hardware(ptr noundef nonnull %conf.0, ptr noundef null)
  br label %cleanup

cleanup:                                          ; preds = %if.end119, %if.end118, %do.end25.i, %do.end16.i, %do.end7.i, %do.end.i162, %do.end94, %if.then88.cleanup_crit_edge, %do.end77, %if.then71.cleanup_crit_edge, %dsp_cmx_new_conf.exit, %if.end31.cleanup_crit_edge, %do.end5.i, %do.end.i, %if.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end118 ], [ 0, %if.end119 ], [ 0, %entry.cleanup_crit_edge ], [ %call9, %if.end7.cleanup_crit_edge ], [ 0, %if.end31.cleanup_crit_edge ], [ -22, %dsp_cmx_new_conf.exit ], [ -22, %do.end77 ], [ -22, %if.then71.cleanup_crit_edge ], [ -22, %do.end94 ], [ -22, %if.then88.cleanup_crit_edge ], [ -22, %do.end5.i ], [ -22, %do.end.i ], [ -22, %do.end.i162 ], [ -12, %do.end25.i ], [ -22, %do.end16.i ], [ -22, %do.end7.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dsp_cmx_receive(ptr noundef %dsp, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %len1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16383, i32 %1)
  %cmp2 = icmp ugt i32 %1, 16383
  br i1 %cmp2, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.161, ptr noundef nonnull @.str.2, i32 noundef 1198, i32 noundef %1) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %rx_init = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 22
  %2 = ptrtoint ptr %rx_init to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_init, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end4.if.end31_crit_edge, label %if.then5

if.end4.if.end31_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then5:                                         ; preds = %if.end4
  %4 = ptrtoint ptr %rx_init to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %rx_init, align 4
  %unordered = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 33, i32 9
  %5 = ptrtoint ptr %unordered to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %unordered, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool7.not = icmp eq i32 %6, 0
  br i1 %tobool7.not, label %if.else19, label %if.then8

if.then8:                                         ; preds = %if.then5
  %id = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %7 = ptrtoint ptr %id to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %id, align 1
  %and = and i32 %8, 32767
  %rx_R = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 21
  %9 = ptrtoint ptr %rx_R to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and, ptr %rx_R, align 4
  %cmx_delay = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 30
  %10 = ptrtoint ptr %cmx_delay to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cmx_delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool9.not = icmp eq i32 %11, 0
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  %add = add i32 %11, %8
  %and13 = and i32 %add, 32767
  br label %if.end31.sink.split

if.else:                                          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_poll to i32))
  %12 = load i32, ptr @dsp_poll, align 4
  %13 = lshr i32 %12, 1
  %add15 = add i32 %13, %8
  %and16 = and i32 %add15, 32767
  br label %if.end31.sink.split

if.else19:                                        ; preds = %if.then5
  %rx_R20 = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 21
  %14 = ptrtoint ptr %rx_R20 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %rx_R20, align 4
  %cmx_delay21 = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 30
  %15 = ptrtoint ptr %cmx_delay21 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cmx_delay21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool22.not = icmp eq i32 %16, 0
  br i1 %tobool22.not, label %if.else26, label %if.else19.if.end31.sink.split_crit_edge

if.else19.if.end31.sink.split_crit_edge:          ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31.sink.split

if.else26:                                        ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_poll to i32))
  %17 = load i32, ptr @dsp_poll, align 4
  %shr27 = ashr i32 %17, 1
  br label %if.end31.sink.split

if.end31.sink.split:                              ; preds = %if.else26, %if.else19.if.end31.sink.split_crit_edge, %if.else, %if.then10
  %and16.sink = phi i32 [ %and16, %if.else ], [ %and13, %if.then10 ], [ %shr27, %if.else26 ], [ %16, %if.else19.if.end31.sink.split_crit_edge ]
  %rx_W17 = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 20
  %18 = ptrtoint ptr %rx_W17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and16.sink, ptr %rx_W17, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.end31.sink.split, %if.end4.if.end31_crit_edge
  %unordered33 = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 33, i32 9
  %19 = ptrtoint ptr %unordered33 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %unordered33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool34.not = icmp eq i32 %20, 0
  br i1 %tobool34.not, label %if.end31.if.end39_crit_edge, label %if.then35

if.end31.if.end39_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %id36 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %21 = ptrtoint ptr %id36 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %id36, align 1
  %and37 = and i32 %22, 32767
  %rx_W38 = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 20
  %23 = ptrtoint ptr %rx_W38 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and37, ptr %rx_W38, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then35, %if.end31.if.end39_crit_edge
  %rx_W40 = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 20
  %24 = ptrtoint ptr %rx_W40 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_W40, align 4
  %rx_R41 = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 21
  %26 = ptrtoint ptr %rx_R41 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_R41, align 4
  %sub = sub i32 %25, %27
  %and42 = and i32 %sub, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %cmp43.not = icmp eq i32 %and42, 0
  br i1 %cmp43.not, label %if.end39.if.end89_crit_edge, label %if.then44

if.end39.if.end89_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end89

if.then44:                                        ; preds = %if.end39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_debug to i32))
  %28 = load i32, ptr @dsp_debug, align 4
  %and45 = and i32 %28, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.then44.if.end53_crit_edge, label %do.end50

if.then44.if.end53_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

do.end50:                                         ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %dsp to i32
  %name = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 3
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.164, i32 noundef %29, ptr noundef %name) #9
  br label %if.end53

if.end53:                                         ; preds = %do.end50, %if.then44.if.end53_crit_edge
  %30 = ptrtoint ptr %unordered33 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %unordered33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool56.not = icmp eq i32 %31, 0
  br i1 %tobool56.not, label %if.else76, label %if.then57

if.then57:                                        ; preds = %if.end53
  %id58 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %32 = ptrtoint ptr %id58 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %id58, align 1
  %and59 = and i32 %33, 32767
  %34 = ptrtoint ptr %rx_R41 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %and59, ptr %rx_R41, align 4
  %cmx_delay61 = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 30
  %35 = ptrtoint ptr %cmx_delay61 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cmx_delay61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool62.not = icmp eq i32 %36, 0
  br i1 %tobool62.not, label %if.else69, label %if.then63

if.then63:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #8
  %add66 = add i32 %36, %33
  %and67 = and i32 %add66, 32767
  br label %if.end87

if.else69:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_poll to i32))
  %37 = load i32, ptr @dsp_poll, align 4
  %38 = lshr i32 %37, 1
  %add72 = add i32 %38, %33
  %and73 = and i32 %add72, 32767
  br label %if.end87

if.else76:                                        ; preds = %if.end53
  %39 = ptrtoint ptr %rx_R41 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %rx_R41, align 4
  %cmx_delay78 = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 30
  %40 = ptrtoint ptr %cmx_delay78 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cmx_delay78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool79.not = icmp eq i32 %41, 0
  br i1 %tobool79.not, label %if.else83, label %if.else76.if.end87_crit_edge

if.else76.if.end87_crit_edge:                     ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87

if.else83:                                        ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_poll to i32))
  %42 = load i32, ptr @dsp_poll, align 4
  %shr84 = ashr i32 %42, 1
  br label %if.end87

if.end87:                                         ; preds = %if.else83, %if.else76.if.end87_crit_edge, %if.else69, %if.then63
  %.sink = phi i32 [ %shr84, %if.else83 ], [ %and67, %if.then63 ], [ %and73, %if.else69 ], [ %41, %if.else76.if.end87_crit_edge ]
  %43 = ptrtoint ptr %rx_W40 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %.sink, ptr %rx_W40, align 4
  %rx_buff = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 28
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @dsp_silence to i32))
  %44 = load i8, ptr @dsp_silence, align 1
  %45 = zext i8 %44 to i32
  %46 = call ptr @memset(ptr %rx_buff, i32 %45, i32 32768)
  br label %if.end89

if.end89:                                         ; preds = %if.end87, %if.end39.if.end89_crit_edge
  %cmx_delay90 = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 30
  %47 = ptrtoint ptr %cmx_delay90 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cmx_delay90, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool91.not = icmp eq i32 %48, 0
  br i1 %tobool91.not, label %if.end89.while.body.preheader_crit_edge, label %if.then92

if.end89.while.body.preheader_crit_edge:          ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.preheader

if.then92:                                        ; preds = %if.end89
  %49 = ptrtoint ptr %rx_W40 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rx_W40, align 4
  %51 = ptrtoint ptr %rx_R41 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rx_R41, align 4
  %sub95 = sub i32 %50, %52
  %and96 = and i32 %sub95, 32767
  %shl = shl i32 %48, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and96, i32 %shl)
  %cmp98.not = icmp slt i32 %and96, %shl
  br i1 %cmp98.not, label %if.then92.while.body.preheader_crit_edge, label %if.then100

if.then92.while.body.preheader_crit_edge:         ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.preheader

if.then100:                                       ; preds = %if.then92
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_debug to i32))
  %53 = load i32, ptr @dsp_debug, align 4
  %and101 = and i32 %53, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %if.then100.if.end111_crit_edge, label %do.end106

if.then100.if.end111_crit_edge:                   ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end111

do.end106:                                        ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %dsp to i32
  %name108 = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 3
  %call110 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167, i32 noundef %54, ptr noundef %name108) #9
  br label %if.end111

if.end111:                                        ; preds = %do.end106, %if.then100.if.end111_crit_edge
  %55 = ptrtoint ptr %unordered33 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %unordered33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool114.not = icmp eq i32 %56, 0
  br i1 %tobool114.not, label %if.else124, label %if.then115

if.then115:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #8
  %id116 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %57 = ptrtoint ptr %id116 to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %58 = load i32, ptr %id116, align 1
  %and117 = and i32 %58, 32767
  %59 = ptrtoint ptr %rx_R41 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %and117, ptr %rx_R41, align 4
  %60 = ptrtoint ptr %cmx_delay90 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cmx_delay90, align 4
  %add121 = add i32 %61, %58
  %and122 = and i32 %add121, 32767
  br label %if.end128

if.else124:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #8
  %62 = ptrtoint ptr %rx_R41 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %rx_R41, align 4
  %63 = ptrtoint ptr %cmx_delay90 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cmx_delay90, align 4
  br label %if.end128

if.end128:                                        ; preds = %if.else124, %if.then115
  %storemerge = phi i32 [ %64, %if.else124 ], [ %and122, %if.then115 ]
  %65 = ptrtoint ptr %rx_W40 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %storemerge, ptr %rx_W40, align 4
  %rx_buff129 = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 28
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @dsp_silence to i32))
  %66 = load i8, ptr @dsp_silence, align 1
  %67 = zext i8 %66 to i32
  %68 = call ptr @memset(ptr %rx_buff129, i32 %67, i32 32768)
  br label %while.body.preheader

while.body.preheader:                             ; preds = %if.end128, %if.then92.while.body.preheader_crit_edge, %if.end89.while.body.preheader_crit_edge
  %rx_buff134 = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 28
  %69 = ptrtoint ptr %rx_W40 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %rx_W40, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %71 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %data, align 4
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %p.0223 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %72, %while.body.preheader ]
  %i.0222 = phi i32 [ %inc141, %while.body.while.body_crit_edge ], [ 0, %while.body.preheader ]
  %w.0221 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ %70, %while.body.preheader ]
  %incdec.ptr = getelementptr i8, ptr %p.0223, i32 1
  %73 = ptrtoint ptr %p.0223 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %p.0223, align 1
  %inc = add i32 %w.0221, 1
  %and139 = and i32 %w.0221, 32767
  %arrayidx140 = getelementptr i8, ptr %rx_buff134, i32 %and139
  %75 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %arrayidx140, align 1
  %inc141 = add nuw nsw i32 %i.0222, 1
  %exitcond.not = icmp eq i32 %inc141, %1
  br i1 %exitcond.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %add143 = add i32 %70, %1
  %and144 = and i32 %add143, 32767
  %76 = ptrtoint ptr %rx_W40 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %and144, ptr %rx_W40, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dsp_cmx_send(ptr nocapture noundef readnone %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @dsp_lock) #6
  %.b = load i1, ptr @dsp_count_valid, align 4
  %call7 = tail call zeroext i16 @mISDN_clock_get() #6
  br i1 %.b, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  store i16 %call7, ptr @dsp_count, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_poll to i32))
  %0 = load i32, ptr @dsp_poll, align 4
  store i1 true, ptr @dsp_count_valid, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv8 = zext i16 %call7 to i32
  %1 = load i16, ptr @dsp_count, align 2
  %conv9 = zext i16 %1 to i32
  %sub = sub nsw i32 %conv8, %conv9
  store i16 %call7, ptr @dsp_count, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %length.0.in = phi i32 [ %sub, %if.else ], [ %0, %if.then ]
  %conv11 = and i32 %length.0.in, 65535
  %2 = tail call i32 @llvm.umin.i32(i32 %conv11, i32 356)
  %3 = load i32, ptr @jittercount, align 4
  %add = add i32 %2, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 7999, i32 %add)
  %cmp17 = icmp ugt i32 %add, 7999
  %sub20 = add i32 %add, -8000
  %spec.select = select i1 %cmp17, i32 %sub20, i32 %add
  store i32 %spec.select, ptr @jittercount, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_ilist to i32))
  %dsp.0456 = load ptr, ptr @dsp_ilist, align 4
  %cmp23.not457 = icmp eq ptr %dsp.0456, @dsp_ilist
  br i1 %cmp23.not457, label %if.end.for.cond49.preheader_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.cond49.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond49.preheader

for.cond49.preheader:                             ; preds = %for.inc.for.cond49.preheader_crit_edge, %if.end.for.cond49.preheader_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @conf_ilist to i32))
  %conf.0468 = load ptr, ptr @conf_ilist, align 4
  %cmp51.not469 = icmp eq ptr %conf.0468, @conf_ilist
  br i1 %cmp51.not469, label %for.cond49.preheader.for.cond134.preheader_crit_edge, label %for.body54.lr.ph

for.cond49.preheader.for.cond134.preheader_crit_edge: ; preds = %for.cond49.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond134.preheader

for.body54.lr.ph:                                 ; preds = %for.cond49.preheader
  %mul = shl nuw nsw i32 %2, 2
  br label %for.body54

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %dsp.0458 = phi ptr [ %dsp.0, %for.inc.for.body_crit_edge ], [ %dsp.0456, %if.end.for.body_crit_edge ]
  %hdlc = getelementptr inbounds %struct.dsp, ptr %dsp.0458, i32 0, i32 15
  %4 = ptrtoint ptr %hdlc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hdlc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool25.not = icmp eq i32 %5, 0
  br i1 %tobool25.not, label %if.end27, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end27:                                         ; preds = %for.body
  %conf28 = getelementptr inbounds %struct.dsp, ptr %dsp.0458, i32 0, i32 18
  %6 = ptrtoint ptr %conf28 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %conf28, align 4
  %tobool29.not = icmp eq ptr %7, null
  br i1 %tobool29.not, label %if.end27.if.then39_crit_edge, label %if.then30

if.end27.if.then39_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then39

if.then30:                                        ; preds = %if.end27
  %mlist = getelementptr inbounds %struct.dsp_conf, ptr %7, i32 0, i32 2
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %if.then30
  %cnt.0.i = phi i32 [ 0, %if.then30 ], [ %inc.i, %for.cond.i.for.cond.i_crit_edge ]
  %m.0.in.i = phi ptr [ %mlist, %if.then30 ], [ %m.0.i, %for.cond.i.for.cond.i_crit_edge ]
  %8 = ptrtoint ptr %m.0.in.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %m.0.i = load ptr, ptr %m.0.in.i, align 4
  %cmp.i.not.i = icmp eq ptr %m.0.i, %mlist
  %inc.i = add i32 %cnt.0.i, 1
  br i1 %cmp.i.not.i, label %if.end37, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

if.end37:                                         ; preds = %for.cond.i
  %software = getelementptr inbounds %struct.dsp_conf, ptr %7, i32 0, i32 3
  %9 = ptrtoint ptr %software to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %software, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool32.not = icmp eq i32 %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %cnt.0.i)
  %cmp33 = icmp slt i32 %cnt.0.i, 3
  %or.cond = select i1 %tobool32.not, i1 true, i1 %cmp33
  br i1 %or.cond, label %if.end37.if.then39_crit_edge, label %if.end37.for.inc_crit_edge

if.end37.for.inc_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end37.if.then39_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then39

if.then39:                                        ; preds = %if.end37.if.then39_crit_edge, %if.end27.if.then39_crit_edge
  %members.0454 = phi i32 [ %cnt.0.i, %if.end37.if.then39_crit_edge ], [ 0, %if.end27.if.then39_crit_edge ]
  tail call fastcc void @dsp_cmx_send_member(ptr noundef %dsp.0458, i32 noundef %2, i32 noundef %members.0454)
  br label %for.inc

for.inc:                                          ; preds = %if.then39, %if.end37.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %11 = ptrtoint ptr %dsp.0458 to i32
  call void @__asan_load4_noabort(i32 %11)
  %dsp.0 = load ptr, ptr %dsp.0458, align 4
  %cmp23.not = icmp eq ptr %dsp.0, @dsp_ilist
  br i1 %cmp23.not, label %for.inc.for.cond49.preheader_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.cond49.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond49.preheader

for.cond134.preheader:                            ; preds = %for.inc124.for.cond134.preheader_crit_edge, %for.cond49.preheader.for.cond134.preheader_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_ilist to i32))
  %dsp.1484 = load ptr, ptr @dsp_ilist, align 4
  %cmp136.not485 = icmp eq ptr %dsp.1484, @dsp_ilist
  br i1 %cmp136.not485, label %for.cond134.preheader.for.end308_crit_edge, label %for.cond134.preheader.for.body139_crit_edge

for.cond134.preheader.for.body139_crit_edge:      ; preds = %for.cond134.preheader
  br label %for.body139

for.cond134.preheader.for.end308_crit_edge:       ; preds = %for.cond134.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end308

for.body54:                                       ; preds = %for.inc124.for.body54_crit_edge, %for.body54.lr.ph
  %conf.0470 = phi ptr [ %conf.0468, %for.body54.lr.ph ], [ %conf.0, %for.inc124.for.body54_crit_edge ]
  %mlist55 = getelementptr inbounds %struct.dsp_conf, ptr %conf.0470, i32 0, i32 2
  br label %for.cond.i450

for.cond.i450:                                    ; preds = %for.cond.i450.for.cond.i450_crit_edge, %for.body54
  %cnt.0.i445 = phi i32 [ 0, %for.body54 ], [ %inc.i449, %for.cond.i450.for.cond.i450_crit_edge ]
  %m.0.in.i446 = phi ptr [ %mlist55, %for.body54 ], [ %m.0.i447, %for.cond.i450.for.cond.i450_crit_edge ]
  %12 = ptrtoint ptr %m.0.in.i446 to i32
  call void @__asan_load4_noabort(i32 %12)
  %m.0.i447 = load ptr, ptr %m.0.in.i446, align 4
  %cmp.i.not.i448 = icmp eq ptr %m.0.i447, %mlist55
  %inc.i449 = add i32 %cnt.0.i445, 1
  br i1 %cmp.i.not.i448, label %count_list_member.exit451, label %for.cond.i450.for.cond.i450_crit_edge

for.cond.i450.for.cond.i450_crit_edge:            ; preds = %for.cond.i450
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i450

count_list_member.exit451:                        ; preds = %for.cond.i450
  %software57 = getelementptr inbounds %struct.dsp_conf, ptr %conf.0470, i32 0, i32 3
  %13 = ptrtoint ptr %software57 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %software57, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool58.not = icmp ne i32 %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cnt.0.i445)
  %cmp60 = icmp sgt i32 %cnt.0.i445, 2
  %or.cond441 = select i1 %tobool58.not, i1 %cmp60, i1 false
  br i1 %or.cond441, label %if.then62, label %count_list_member.exit451.for.inc124_crit_edge

count_list_member.exit451.for.inc124_crit_edge:   ; preds = %count_list_member.exit451
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc124

if.then62:                                        ; preds = %count_list_member.exit451
  %15 = ptrtoint ptr %mlist55 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mlist55, align 4
  %dsp68 = getelementptr inbounds %struct.dsp_conf_member, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %dsp68 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dsp68, align 4
  %hdlc69 = getelementptr inbounds %struct.dsp, ptr %18, i32 0, i32 15
  %19 = ptrtoint ptr %hdlc69 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %hdlc69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool70.not = icmp eq i32 %20, 0
  br i1 %tobool70.not, label %if.end72, label %if.then62.for.inc124_crit_edge

if.then62.for.inc124_crit_edge:                   ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc124

if.end72:                                         ; preds = %if.then62
  %21 = call ptr @memset(ptr @dsp_cmx_send.mixbuffer, i32 0, i32 %mul)
  %22 = ptrtoint ptr %mlist55 to i32
  call void @__asan_load4_noabort(i32 %22)
  %member.0462 = load ptr, ptr %mlist55, align 4
  %cmp82.not463 = icmp eq ptr %member.0462, %mlist55
  br i1 %cmp82.not463, label %if.end72.for.cond107.preheader_crit_edge, label %if.end72.for.body85_crit_edge

if.end72.for.body85_crit_edge:                    ; preds = %if.end72
  br label %for.body85

if.end72.for.cond107.preheader_crit_edge:         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond107.preheader

for.cond79.loopexit:                              ; preds = %while.body.for.cond79.loopexit_crit_edge, %for.body85.for.cond79.loopexit_crit_edge
  %23 = ptrtoint ptr %member.0464 to i32
  call void @__asan_load4_noabort(i32 %23)
  %member.0 = load ptr, ptr %member.0464, align 4
  %cmp82.not = icmp eq ptr %member.0, %mlist55
  br i1 %cmp82.not, label %for.cond79.loopexit.for.cond107.preheader_crit_edge, label %for.cond79.loopexit.for.body85_crit_edge

for.cond79.loopexit.for.body85_crit_edge:         ; preds = %for.cond79.loopexit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body85

for.cond79.loopexit.for.cond107.preheader_crit_edge: ; preds = %for.cond79.loopexit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond107.preheader

for.cond107.preheader:                            ; preds = %for.cond79.loopexit.for.cond107.preheader_crit_edge, %if.end72.for.cond107.preheader_crit_edge
  %24 = ptrtoint ptr %mlist55 to i32
  call void @__asan_load4_noabort(i32 %24)
  %member.1465 = load ptr, ptr %mlist55, align 4
  %cmp110.not466 = icmp eq ptr %member.1465, %mlist55
  br i1 %cmp110.not466, label %for.cond107.preheader.for.inc124_crit_edge, label %for.cond107.preheader.for.body113_crit_edge

for.cond107.preheader.for.body113_crit_edge:      ; preds = %for.cond107.preheader
  br label %for.body113

for.cond107.preheader.for.inc124_crit_edge:       ; preds = %for.cond107.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc124

for.body85:                                       ; preds = %for.cond79.loopexit.for.body85_crit_edge, %if.end72.for.body85_crit_edge
  %member.0464 = phi ptr [ %member.0, %for.cond79.loopexit.for.body85_crit_edge ], [ %member.0462, %if.end72.for.body85_crit_edge ]
  %dsp86 = getelementptr inbounds %struct.dsp_conf_member, ptr %member.0464, i32 0, i32 1
  %25 = ptrtoint ptr %dsp86 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dsp86, align 4
  %rx_buff = getelementptr inbounds %struct.dsp, ptr %26, i32 0, i32 28
  %rx_R = getelementptr inbounds %struct.dsp, ptr %26, i32 0, i32 21
  %27 = ptrtoint ptr %rx_R to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rx_R, align 4
  %add88 = add i32 %28, %2
  %and = and i32 %add88, 32767
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %and)
  %cmp89.not459 = icmp eq i32 %28, %and
  br i1 %cmp89.not459, label %for.body85.for.cond79.loopexit_crit_edge, label %while.body.lr.ph

for.body85.for.cond79.loopexit_crit_edge:         ; preds = %for.body85
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond79.loopexit

while.body.lr.ph:                                 ; preds = %for.body85
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_audio_law_to_s32 to i32))
  %29 = load ptr, ptr @dsp_audio_law_to_s32, align 4
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %c.0461 = phi ptr [ @dsp_cmx_send.mixbuffer, %while.body.lr.ph ], [ %incdec.ptr, %while.body.while.body_crit_edge ]
  %r.0460 = phi i32 [ %28, %while.body.lr.ph ], [ %and94, %while.body.while.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %rx_buff, i32 %r.0460
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx, align 1
  %idxprom = zext i8 %31 to i32
  %arrayidx91 = getelementptr i32, ptr %29, i32 %idxprom
  %32 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx91, align 4
  %incdec.ptr = getelementptr i32, ptr %c.0461, i32 1
  %34 = ptrtoint ptr %c.0461 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %c.0461, align 4
  %add92 = add i32 %35, %33
  store i32 %add92, ptr %c.0461, align 4
  %add93 = add i32 %r.0460, 1
  %and94 = and i32 %add93, 32767
  %cmp89.not = icmp eq i32 %and94, %and
  br i1 %cmp89.not, label %while.body.for.cond79.loopexit_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.for.cond79.loopexit_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond79.loopexit

for.body113:                                      ; preds = %for.body113.for.body113_crit_edge, %for.cond107.preheader.for.body113_crit_edge
  %member.1467 = phi ptr [ %member.1, %for.body113.for.body113_crit_edge ], [ %member.1465, %for.cond107.preheader.for.body113_crit_edge ]
  %dsp114 = getelementptr inbounds %struct.dsp_conf_member, ptr %member.1467, i32 0, i32 1
  %36 = ptrtoint ptr %dsp114 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dsp114, align 4
  tail call fastcc void @dsp_cmx_send_member(ptr noundef %37, i32 noundef %2, i32 noundef %cnt.0.i445)
  %38 = ptrtoint ptr %member.1467 to i32
  call void @__asan_load4_noabort(i32 %38)
  %member.1 = load ptr, ptr %member.1467, align 4
  %cmp110.not = icmp eq ptr %member.1, %mlist55
  br i1 %cmp110.not, label %for.body113.for.inc124_crit_edge, label %for.body113.for.body113_crit_edge

for.body113.for.body113_crit_edge:                ; preds = %for.body113
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body113

for.body113.for.inc124_crit_edge:                 ; preds = %for.body113
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc124

for.inc124:                                       ; preds = %for.body113.for.inc124_crit_edge, %for.cond107.preheader.for.inc124_crit_edge, %if.then62.for.inc124_crit_edge, %count_list_member.exit451.for.inc124_crit_edge
  %39 = ptrtoint ptr %conf.0470 to i32
  call void @__asan_load4_noabort(i32 %39)
  %conf.0 = load ptr, ptr %conf.0470, align 4
  %cmp51.not = icmp eq ptr %conf.0, @conf_ilist
  br i1 %cmp51.not, label %for.inc124.for.cond134.preheader_crit_edge, label %for.inc124.for.body54_crit_edge

for.inc124.for.body54_crit_edge:                  ; preds = %for.inc124
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body54

for.inc124.for.cond134.preheader_crit_edge:       ; preds = %for.inc124
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond134.preheader

for.body139:                                      ; preds = %for.inc302.for.body139_crit_edge, %for.cond134.preheader.for.body139_crit_edge
  %dsp.1486 = phi ptr [ %dsp.1, %for.inc302.for.body139_crit_edge ], [ %dsp.1484, %for.cond134.preheader.for.body139_crit_edge ]
  %hdlc140 = getelementptr inbounds %struct.dsp, ptr %dsp.1486, i32 0, i32 15
  %40 = ptrtoint ptr %hdlc140 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %hdlc140, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool141.not = icmp eq i32 %41, 0
  br i1 %tobool141.not, label %if.end143, label %for.body139.for.inc302_crit_edge

for.body139.for.inc302_crit_edge:                 ; preds = %for.body139
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc302

if.end143:                                        ; preds = %for.body139
  %rx_buff144 = getelementptr inbounds %struct.dsp, ptr %dsp.1486, i32 0, i32 28
  %tx_buff = getelementptr inbounds %struct.dsp, ptr %dsp.1486, i32 0, i32 27
  %rx_R147 = getelementptr inbounds %struct.dsp, ptr %dsp.1486, i32 0, i32 21
  %rx_is_off = getelementptr inbounds %struct.dsp, ptr %dsp.1486, i32 0, i32 7
  %42 = ptrtoint ptr %rx_is_off to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rx_is_off, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool148.not = icmp eq i32 %43, 0
  br i1 %tobool148.not, label %if.then149, label %if.end143.if.end162_crit_edge

if.end143.if.end162_crit_edge:                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end162

if.then149:                                       ; preds = %if.end143
  %44 = ptrtoint ptr %rx_R147 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rx_R147, align 4
  %add151 = add i32 %45, %2
  %and152 = and i32 %add151, 32767
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %and152)
  %cmp154.not471 = icmp eq i32 %45, %and152
  br i1 %cmp154.not471, label %if.then149.while.end160_crit_edge, label %if.then149.while.body156_crit_edge

if.then149.while.body156_crit_edge:               ; preds = %if.then149
  br label %while.body156

if.then149.while.end160_crit_edge:                ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end160

while.body156:                                    ; preds = %while.body156.while.body156_crit_edge, %if.then149.while.body156_crit_edge
  %r.1472 = phi i32 [ %and159, %while.body156.while.body156_crit_edge ], [ %45, %if.then149.while.body156_crit_edge ]
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @dsp_silence to i32))
  %46 = load i8, ptr @dsp_silence, align 1
  %arrayidx157 = getelementptr i8, ptr %rx_buff144, i32 %r.1472
  %47 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %arrayidx157, align 1
  %add158 = add i32 %r.1472, 1
  %and159 = and i32 %add158, 32767
  %cmp154.not = icmp eq i32 %and159, %and152
  br i1 %cmp154.not, label %while.body156.while.end160_crit_edge, label %while.body156.while.body156_crit_edge

while.body156.while.body156_crit_edge:            ; preds = %while.body156
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body156

while.body156.while.end160_crit_edge:             ; preds = %while.body156
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end160

while.end160:                                     ; preds = %while.body156.while.end160_crit_edge, %if.then149.while.end160_crit_edge
  %r.1.lcssa = phi i32 [ %45, %if.then149.while.end160_crit_edge ], [ %and152, %while.body156.while.end160_crit_edge ]
  %48 = ptrtoint ptr %rx_R147 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %r.1.lcssa, ptr %rx_R147, align 4
  br label %if.end162

if.end162:                                        ; preds = %while.end160, %if.end143.if.end162_crit_edge
  %rx_W = getelementptr inbounds %struct.dsp, ptr %dsp.1486, i32 0, i32 20
  %49 = ptrtoint ptr %rx_W to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rx_W, align 4
  %51 = ptrtoint ptr %rx_R147 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rx_R147, align 4
  %sub164 = sub i32 %50, %52
  %and165 = and i32 %sub164, 32767
  call void @__sanitizer_cov_trace_const_cmp4(i32 16383, i32 %and165)
  %cmp166 = icmp ugt i32 %and165, 16383
  %spec.store.select318 = select i1 %cmp166, i32 0, i32 %and165
  %rx_delay = getelementptr %struct.dsp, ptr %dsp.1486, i32 0, i32 25
  %53 = ptrtoint ptr %rx_delay to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rx_delay, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select318, i32 %54)
  %cmp171 = icmp slt i32 %spec.store.select318, %54
  br i1 %cmp171, label %if.then173, label %if.end162.if.end176_crit_edge

if.end162.if.end176_crit_edge:                    ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end176

if.then173:                                       ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %rx_delay to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %spec.store.select318, ptr %rx_delay, align 4
  br label %if.end176

if.end176:                                        ; preds = %if.then173, %if.end162.if.end176_crit_edge
  %tx_W = getelementptr inbounds %struct.dsp, ptr %dsp.1486, i32 0, i32 23
  %56 = ptrtoint ptr %tx_W to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %tx_W, align 4
  %tx_R = getelementptr inbounds %struct.dsp, ptr %dsp.1486, i32 0, i32 24
  %58 = ptrtoint ptr %tx_R to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %tx_R, align 4
  %sub177 = sub i32 %57, %59
  %and178 = and i32 %sub177, 32767
  call void @__sanitizer_cov_trace_const_cmp4(i32 16383, i32 %and178)
  %cmp179 = icmp ugt i32 %and178, 16383
  %spec.store.select319 = select i1 %cmp179, i32 0, i32 %and178
  %tx_delay = getelementptr %struct.dsp, ptr %dsp.1486, i32 0, i32 26
  %60 = ptrtoint ptr %tx_delay to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %tx_delay, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select319, i32 %61)
  %cmp184 = icmp slt i32 %spec.store.select319, %61
  br i1 %cmp184, label %if.then186, label %if.end176.if.end189_crit_edge

if.end176.if.end189_crit_edge:                    ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end189

if.then186:                                       ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #8
  %62 = ptrtoint ptr %tx_delay to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %spec.store.select319, ptr %tx_delay, align 4
  br label %if.end189

if.end189:                                        ; preds = %if.then186, %if.end176.if.end189_crit_edge
  br i1 %cmp17, label %if.then191, label %if.end189.for.inc302_crit_edge

if.end189.for.inc302_crit_edge:                   ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc302

if.then191:                                       ; preds = %if.end189
  %63 = ptrtoint ptr %rx_delay to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rx_delay, align 4
  %arrayidx199 = getelementptr %struct.dsp, ptr %dsp.1486, i32 0, i32 25, i32 1
  %65 = ptrtoint ptr %arrayidx199 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx199, align 4
  %67 = tail call i32 @llvm.smin.i32(i32 %64, i32 %66)
  %arrayidx199.1 = getelementptr %struct.dsp, ptr %dsp.1486, i32 0, i32 25, i32 2
  %68 = ptrtoint ptr %arrayidx199.1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx199.1, align 4
  %70 = tail call i32 @llvm.smin.i32(i32 %67, i32 %69)
  %arrayidx199.2 = getelementptr %struct.dsp, ptr %dsp.1486, i32 0, i32 25, i32 3
  %71 = ptrtoint ptr %arrayidx199.2 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx199.2, align 4
  %73 = tail call i32 @llvm.smin.i32(i32 %70, i32 %72)
  %arrayidx199.3 = getelementptr %struct.dsp, ptr %dsp.1486, i32 0, i32 25, i32 4
  %74 = ptrtoint ptr %arrayidx199.3 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx199.3, align 4
  %76 = tail call i32 @llvm.smin.i32(i32 %73, i32 %75)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_poll to i32))
  %77 = load i32, ptr @dsp_poll, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %77)
  %cmp207 = icmp sgt i32 %76, %77
  br i1 %cmp207, label %land.lhs.true209, label %if.then191.if.end235_crit_edge

if.then191.if.end235_crit_edge:                   ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end235

land.lhs.true209:                                 ; preds = %if.then191
  %cmx_delay = getelementptr inbounds %struct.dsp, ptr %dsp.1486, i32 0, i32 30
  %78 = ptrtoint ptr %cmx_delay to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %cmx_delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool210.not = icmp eq i32 %79, 0
  br i1 %tobool210.not, label %if.then211, label %land.lhs.true209.if.end235_crit_edge

land.lhs.true209.if.end235_crit_edge:             ; preds = %land.lhs.true209
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end235

if.then211:                                       ; preds = %land.lhs.true209
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_debug to i32))
  %80 = load i32, ptr @dsp_debug, align 4
  %and212 = and i32 %80, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and212)
  %tobool213.not = icmp eq i32 %and212, 0
  br i1 %tobool213.not, label %if.then211.if.end221_crit_edge, label %do.end217

if.then211.if.end221_crit_edge:                   ; preds = %if.then211
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end221

do.end217:                                        ; preds = %if.then211
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.dsp, ptr %dsp.1486, i32 0, i32 3
  %call220 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.170, i32 noundef %76, ptr noundef %name) #9
  br label %if.end221

if.end221:                                        ; preds = %do.end217, %if.then211.if.end221_crit_edge
  %81 = ptrtoint ptr %rx_R147 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %rx_R147, align 4
  %add223 = add i32 %82, %76
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_poll to i32))
  %83 = load i32, ptr @dsp_poll, align 4
  %84 = lshr i32 %83, 1
  %sub224 = sub i32 %add223, %84
  %and225 = and i32 %sub224, 32767
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %and225)
  %cmp227.not475 = icmp eq i32 %82, %and225
  br i1 %cmp227.not475, label %if.end221.while.end233_crit_edge, label %if.end221.while.body229_crit_edge

if.end221.while.body229_crit_edge:                ; preds = %if.end221
  br label %while.body229

if.end221.while.end233_crit_edge:                 ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end233

while.body229:                                    ; preds = %while.body229.while.body229_crit_edge, %if.end221.while.body229_crit_edge
  %r.2476 = phi i32 [ %and232, %while.body229.while.body229_crit_edge ], [ %82, %if.end221.while.body229_crit_edge ]
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @dsp_silence to i32))
  %85 = load i8, ptr @dsp_silence, align 1
  %arrayidx230 = getelementptr i8, ptr %rx_buff144, i32 %r.2476
  %86 = ptrtoint ptr %arrayidx230 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %85, ptr %arrayidx230, align 1
  %add231 = add i32 %r.2476, 1
  %and232 = and i32 %add231, 32767
  %cmp227.not = icmp eq i32 %and232, %and225
  br i1 %cmp227.not, label %while.body229.while.end233_crit_edge, label %while.body229.while.body229_crit_edge

while.body229.while.body229_crit_edge:            ; preds = %while.body229
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body229

while.body229.while.end233_crit_edge:             ; preds = %while.body229
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end233

while.end233:                                     ; preds = %while.body229.while.end233_crit_edge, %if.end221.while.end233_crit_edge
  %r.2.lcssa = phi i32 [ %82, %if.end221.while.end233_crit_edge ], [ %and225, %while.body229.while.end233_crit_edge ]
  %87 = ptrtoint ptr %rx_R147 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %r.2.lcssa, ptr %rx_R147, align 4
  br label %if.end235

if.end235:                                        ; preds = %while.end233, %land.lhs.true209.if.end235_crit_edge, %if.then191.if.end235_crit_edge
  %88 = ptrtoint ptr %tx_delay to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %tx_delay, align 4
  %arrayidx243 = getelementptr %struct.dsp, ptr %dsp.1486, i32 0, i32 26, i32 1
  %90 = ptrtoint ptr %arrayidx243 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx243, align 4
  %92 = tail call i32 @llvm.smin.i32(i32 %89, i32 %91)
  %arrayidx243.1 = getelementptr %struct.dsp, ptr %dsp.1486, i32 0, i32 26, i32 2
  %93 = ptrtoint ptr %arrayidx243.1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx243.1, align 4
  %95 = tail call i32 @llvm.smin.i32(i32 %92, i32 %94)
  %arrayidx243.2 = getelementptr %struct.dsp, ptr %dsp.1486, i32 0, i32 26, i32 3
  %96 = ptrtoint ptr %arrayidx243.2 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx243.2, align 4
  %98 = tail call i32 @llvm.smin.i32(i32 %95, i32 %97)
  %arrayidx243.3 = getelementptr %struct.dsp, ptr %dsp.1486, i32 0, i32 26, i32 4
  %99 = ptrtoint ptr %arrayidx243.3 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx243.3, align 4
  %101 = tail call i32 @llvm.smin.i32(i32 %98, i32 %100)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_poll to i32))
  %102 = load i32, ptr @dsp_poll, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %101, i32 %102)
  %cmp252 = icmp sgt i32 %101, %102
  br i1 %cmp252, label %land.lhs.true254, label %if.end235.if.end282_crit_edge

if.end235.if.end282_crit_edge:                    ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end282

land.lhs.true254:                                 ; preds = %if.end235
  %tx_dejitter = getelementptr inbounds %struct.dsp, ptr %dsp.1486, i32 0, i32 31
  %103 = ptrtoint ptr %tx_dejitter to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %tx_dejitter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool255.not = icmp eq i32 %104, 0
  br i1 %tobool255.not, label %land.lhs.true254.if.end282_crit_edge, label %if.then256

land.lhs.true254.if.end282_crit_edge:             ; preds = %land.lhs.true254
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end282

if.then256:                                       ; preds = %land.lhs.true254
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_debug to i32))
  %105 = load i32, ptr @dsp_debug, align 4
  %and257 = and i32 %105, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and257)
  %tobool258.not = icmp eq i32 %and257, 0
  br i1 %tobool258.not, label %if.then256.if.end267_crit_edge, label %do.end262

if.then256.if.end267_crit_edge:                   ; preds = %if.then256
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end267

do.end262:                                        ; preds = %if.then256
  call void @__sanitizer_cov_trace_pc() #8
  %name264 = getelementptr inbounds %struct.dsp, ptr %dsp.1486, i32 0, i32 3
  %call266 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.172, ptr noundef nonnull @.str.170, i32 noundef %101, ptr noundef %name264) #9
  br label %if.end267

if.end267:                                        ; preds = %do.end262, %if.then256.if.end267_crit_edge
  %106 = ptrtoint ptr %tx_R to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %tx_R, align 4
  %add269 = add i32 %107, %101
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_poll to i32))
  %108 = load i32, ptr @dsp_poll, align 4
  %109 = lshr i32 %108, 1
  %sub271 = sub i32 %add269, %109
  %and272 = and i32 %sub271, 32767
  call void @__sanitizer_cov_trace_cmp4(i32 %107, i32 %and272)
  %cmp274.not480 = icmp eq i32 %107, %and272
  br i1 %cmp274.not480, label %if.end267.while.end280_crit_edge, label %if.end267.while.body276_crit_edge

if.end267.while.body276_crit_edge:                ; preds = %if.end267
  br label %while.body276

if.end267.while.end280_crit_edge:                 ; preds = %if.end267
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end280

while.body276:                                    ; preds = %while.body276.while.body276_crit_edge, %if.end267.while.body276_crit_edge
  %r.3481 = phi i32 [ %and279, %while.body276.while.body276_crit_edge ], [ %107, %if.end267.while.body276_crit_edge ]
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @dsp_silence to i32))
  %110 = load i8, ptr @dsp_silence, align 1
  %arrayidx277 = getelementptr i8, ptr %tx_buff, i32 %r.3481
  %111 = ptrtoint ptr %arrayidx277 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %110, ptr %arrayidx277, align 1
  %add278 = add i32 %r.3481, 1
  %and279 = and i32 %add278, 32767
  %cmp274.not = icmp eq i32 %and279, %and272
  br i1 %cmp274.not, label %while.body276.while.end280_crit_edge, label %while.body276.while.body276_crit_edge

while.body276.while.body276_crit_edge:            ; preds = %while.body276
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body276

while.body276.while.end280_crit_edge:             ; preds = %while.body276
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end280

while.end280:                                     ; preds = %while.body276.while.end280_crit_edge, %if.end267.while.end280_crit_edge
  %r.3.lcssa = phi i32 [ %107, %if.end267.while.end280_crit_edge ], [ %and272, %while.body276.while.end280_crit_edge ]
  %112 = ptrtoint ptr %tx_R to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %r.3.lcssa, ptr %tx_R, align 4
  br label %if.end282

if.end282:                                        ; preds = %while.end280, %land.lhs.true254.if.end282_crit_edge, %if.end235.if.end282_crit_edge
  %113 = ptrtoint ptr %arrayidx199.2 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx199.2, align 4
  %115 = ptrtoint ptr %arrayidx199.3 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %arrayidx199.3, align 4
  %116 = ptrtoint ptr %arrayidx243.2 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx243.2, align 4
  %118 = ptrtoint ptr %arrayidx243.3 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %arrayidx243.3, align 4
  %119 = ptrtoint ptr %arrayidx199.1 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %arrayidx199.1, align 4
  store i32 %120, ptr %arrayidx199.2, align 4
  %121 = ptrtoint ptr %arrayidx243.1 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx243.1, align 4
  store i32 %122, ptr %arrayidx243.2, align 4
  %123 = ptrtoint ptr %arrayidx199 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx199, align 4
  store i32 %124, ptr %arrayidx199.1, align 4
  %125 = ptrtoint ptr %arrayidx243 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx243, align 4
  store i32 %126, ptr %arrayidx243.1, align 4
  %127 = ptrtoint ptr %rx_delay to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %rx_delay, align 4
  store i32 %128, ptr %arrayidx199, align 4
  %129 = ptrtoint ptr %tx_delay to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %tx_delay, align 4
  store i32 %130, ptr %arrayidx243, align 4
  store i32 16384, ptr %tx_delay, align 4
  store i32 16384, ptr %rx_delay, align 4
  br label %for.inc302

for.inc302:                                       ; preds = %if.end282, %if.end189.for.inc302_crit_edge, %for.body139.for.inc302_crit_edge
  %131 = ptrtoint ptr %dsp.1486 to i32
  call void @__asan_load4_noabort(i32 %131)
  %dsp.1 = load ptr, ptr %dsp.1486, align 4
  %cmp136.not = icmp eq ptr %dsp.1, @dsp_ilist
  br i1 %cmp136.not, label %for.inc302.for.end308_crit_edge, label %for.inc302.for.body139_crit_edge

for.inc302.for.body139_crit_edge:                 ; preds = %for.inc302
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body139

for.inc302.for.end308_crit_edge:                  ; preds = %for.inc302
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end308

for.end308:                                       ; preds = %for.inc302.for.end308_crit_edge, %for.cond134.preheader.for.end308_crit_edge
  %132 = load i32, ptr @dsp_spl_jiffies, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_tics to i32))
  %133 = load i32, ptr @dsp_tics, align 4
  %add309 = add i32 %133, %132
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %134 = load volatile i32, ptr @jiffies, align 128
  %sub310 = sub i32 %add309, %134
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub310)
  %cmp311 = icmp slt i32 %sub310, 1
  br i1 %cmp311, label %if.then313, label %for.end308.if.end317_crit_edge

for.end308.if.end317_crit_edge:                   ; preds = %for.end308
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end317

if.then313:                                       ; preds = %for.end308
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %135 = load volatile i32, ptr @jiffies, align 128
  %add314 = add i32 %135, 1
  br label %if.end317

if.end317:                                        ; preds = %if.then313, %for.end308.if.end317_crit_edge
  %storemerge = phi i32 [ %add314, %if.then313 ], [ %add309, %for.end308.if.end317_crit_edge ]
  store i32 %storemerge, ptr @dsp_spl_jiffies, align 4
  store i32 %storemerge, ptr getelementptr inbounds (%struct.timer_list, ptr @dsp_spl_tl, i32 0, i32 1), align 4
  tail call void @add_timer(ptr noundef nonnull @dsp_spl_tl) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @dsp_lock, i32 noundef %call2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @mISDN_clock_get() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dsp_cmx_send_member(ptr noundef %dsp, i32 noundef %len, i32 noundef %members) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conf1 = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 18
  %0 = ptrtoint ptr %conf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conf1, align 4
  %b_active = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 4
  %2 = ptrtoint ptr %b_active to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %b_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %last_tx = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 29
  %4 = ptrtoint ptr %last_tx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %last_tx, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %if.end.lor.lhs.false_crit_edge, label %land.lhs.true

if.end.lor.lhs.false_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end
  %hardware = getelementptr inbounds %struct.dsp_conf, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %hardware to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hardware, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool5.not = icmp eq i32 %6, 0
  br i1 %tobool5.not, label %land.lhs.true.lor.lhs.false_crit_edge, label %land.lhs.true.land.lhs.true8_crit_edge

land.lhs.true.land.lhs.true8_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true8

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %if.end.lor.lhs.false_crit_edge
  %hardware6 = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 5, i32 1
  %7 = ptrtoint ptr %hardware6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hardware6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool7.not = icmp eq i32 %8, 0
  br i1 %tobool7.not, label %lor.lhs.false.if.end41_crit_edge, label %lor.lhs.false.land.lhs.true8_crit_edge

lor.lhs.false.land.lhs.true8_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true8

lor.lhs.false.if.end41_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

land.lhs.true8:                                   ; preds = %lor.lhs.false.land.lhs.true8_crit_edge, %land.lhs.true.land.lhs.true8_crit_edge
  %tx_R = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 24
  %9 = ptrtoint ptr %tx_R to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_R, align 4
  %tx_W = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 23
  %11 = ptrtoint ptr %tx_W to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tx_W, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp = icmp eq i32 %10, %12
  br i1 %cmp, label %land.lhs.true9, label %land.lhs.true8.if.end41_crit_edge

land.lhs.true8.if.end41_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

land.lhs.true9:                                   ; preds = %land.lhs.true8
  %tone10 = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 9, i32 2
  %13 = ptrtoint ptr %tone10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tone10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool11.not = icmp eq i32 %14, 0
  br i1 %tobool11.not, label %land.lhs.true9.if.then15_crit_edge, label %land.lhs.true12

land.lhs.true9.if.then15_crit_edge:               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15

land.lhs.true12:                                  ; preds = %land.lhs.true9
  %tone = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 9
  %15 = ptrtoint ptr %tone to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool14.not = icmp eq i32 %16, 0
  br i1 %tobool14.not, label %land.lhs.true12.if.then15_crit_edge, label %land.lhs.true12.if.end41_crit_edge

land.lhs.true12.if.end41_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

land.lhs.true12.if.then15_crit_edge:              ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15

if.then15:                                        ; preds = %land.lhs.true12.if.then15_crit_edge, %land.lhs.true9.if.then15_crit_edge
  %tx_data = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 32
  %17 = ptrtoint ptr %tx_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool16.not = icmp eq i32 %18, 0
  br i1 %tobool16.not, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  %last_tx18 = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 29
  %19 = ptrtoint ptr %last_tx18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %last_tx18, align 4
  br label %cleanup

if.end19:                                         ; preds = %if.then15
  br i1 %tobool3.not, label %if.end19.if.end31_crit_edge, label %land.lhs.true22

if.end19.if.end31_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

land.lhs.true22:                                  ; preds = %if.end19
  %software24 = getelementptr inbounds %struct.dsp_conf, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %software24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %software24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool25.not = icmp eq i32 %21, 0
  br i1 %tobool25.not, label %land.lhs.true22.if.end31_crit_edge, label %land.lhs.true26

land.lhs.true22.if.end31_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

land.lhs.true26:                                  ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #8
  %hardware28 = getelementptr inbounds %struct.dsp_conf, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %hardware28 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %hardware28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool29.not = icmp ne i32 %23, 0
  %spec.select = zext i1 %tobool29.not to i32
  br label %if.end31

if.end31:                                         ; preds = %land.lhs.true26, %land.lhs.true22.if.end31_crit_edge, %if.end19.if.end31_crit_edge
  %tx_data_only.0 = phi i32 [ 0, %land.lhs.true22.if.end31_crit_edge ], [ 0, %if.end19.if.end31_crit_edge ], [ %spec.select, %land.lhs.true26 ]
  %echo32 = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 5
  %24 = ptrtoint ptr %echo32 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %echo32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool34.not = icmp eq i32 %25, 0
  br i1 %tobool34.not, label %if.end31.if.end41_crit_edge, label %land.lhs.true35

if.end31.if.end41_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

land.lhs.true35:                                  ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %hardware37 = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 5, i32 1
  %26 = ptrtoint ptr %hardware37 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hardware37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool38.not = icmp eq i32 %27, 0
  %spec.select1 = select i1 %tobool38.not, i32 %tx_data_only.0, i32 1
  br label %if.end41

if.end41:                                         ; preds = %land.lhs.true35, %if.end31.if.end41_crit_edge, %land.lhs.true12.if.end41_crit_edge, %land.lhs.true8.if.end41_crit_edge, %lor.lhs.false.if.end41_crit_edge
  %tx_data_only.1 = phi i32 [ 0, %land.lhs.true12.if.end41_crit_edge ], [ %tx_data_only.0, %if.end31.if.end41_crit_edge ], [ 0, %land.lhs.true8.if.end41_crit_edge ], [ 0, %lor.lhs.false.if.end41_crit_edge ], [ %spec.select1, %land.lhs.true35 ]
  %cmx_delay = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 30
  %28 = ptrtoint ptr %cmx_delay to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cmx_delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool42.not = icmp eq i32 %29, 0
  br i1 %tobool42.not, label %if.end41.if.end50_crit_edge, label %land.lhs.true43

if.end41.if.end50_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

land.lhs.true43:                                  ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %last_tx44 = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 29
  %30 = ptrtoint ptr %last_tx44 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %last_tx44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool45.not = icmp eq i32 %31, 0
  %32 = tail call i32 @llvm.smax.i32(i32 %len, i32 128)
  %spec.select2 = select i1 %tobool45.not, i32 %32, i32 0
  br label %if.end50

if.end50:                                         ; preds = %land.lhs.true43, %if.end41.if.end50_crit_edge
  %preload.0 = phi i32 [ 0, %if.end41.if.end50_crit_edge ], [ %spec.select2, %land.lhs.true43 ]
  %add = add i32 %preload.0, %len
  %add.i = add i32 %add, 8
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %add.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #6
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %do.end, label %if.end55, !prof !318

do.end:                                           ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.194, i32 noundef %add) #9
  br label %cleanup

if.end55:                                         ; preds = %if.end50
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %33 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %34, i32 8
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %35 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %36, i32 8
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  %37 = ptrtoint ptr %cb to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 8193, ptr %cb, align 1
  %id = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 4
  %38 = ptrtoint ptr %id to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 0, ptr %id, align 1
  %last_tx56 = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 29
  %39 = ptrtoint ptr %last_tx56 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %last_tx56, align 4
  %tx_buff = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 27
  %rx_buff = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 28
  %call59 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %add) #6
  %tx_R60 = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 24
  %40 = ptrtoint ptr %tx_R60 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tx_R60, align 4
  %tx_W61 = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 23
  %42 = ptrtoint ptr %tx_W61 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tx_W61, align 4
  %rx_R = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 21
  %44 = ptrtoint ptr %rx_R to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rx_R, align 4
  %add62 = add i32 %45, %len
  %and = and i32 %add62, 32767
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %preload.0)
  %tobool63.not = icmp eq i32 %preload.0, 0
  br i1 %tobool63.not, label %if.end55.if.end65_crit_edge, label %if.then64

if.end55.if.end65_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

if.then64:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @dsp_silence to i32))
  %46 = load i8, ptr @dsp_silence, align 1
  %47 = zext i8 %46 to i32
  %48 = call ptr @memset(ptr %call59, i32 %47, i32 %preload.0)
  %add.ptr = getelementptr i8, ptr %call59, i32 %preload.0
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %if.end55.if.end65_crit_edge
  %d.0 = phi ptr [ %add.ptr, %if.then64 ], [ %call59, %if.end55.if.end65_crit_edge ]
  %tone67 = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 9, i32 2
  %49 = ptrtoint ptr %tone67 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tone67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool68.not = icmp eq i32 %50, 0
  br i1 %tobool68.not, label %if.end65.if.end76_crit_edge, label %land.lhs.true69

if.end65.if.end76_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

land.lhs.true69:                                  ; preds = %if.end65
  %tone66 = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 9
  %51 = ptrtoint ptr %tone66 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tone66, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool72.not = icmp eq i32 %52, 0
  br i1 %tobool72.not, label %land.lhs.true69.if.end76_crit_edge, label %if.then73

land.lhs.true69.if.end76_crit_edge:               ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

if.then73:                                        ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dsp_tone_copy(ptr noundef %dsp, ptr noundef %d.0, i32 noundef %len) #6
  %53 = ptrtoint ptr %tx_R60 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %tx_R60, align 4
  %54 = ptrtoint ptr %tx_W61 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %tx_W61, align 4
  br label %send_packet

if.end76:                                         ; preds = %land.lhs.true69.if.end76_crit_edge, %if.end65.if.end76_crit_edge
  %tx_mix = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 8
  %55 = ptrtoint ptr %tx_mix to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tx_mix, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool77.not = icmp ne i32 %56, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %43)
  %cmp79.not = icmp eq i32 %41, %43
  %or.cond = select i1 %tobool77.not, i1 true, i1 %cmp79.not
  br i1 %or.cond, label %if.end76.if.end96_crit_edge, label %while.cond.preheader

if.end76.if.end96_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end96

while.cond.preheader:                             ; preds = %if.end76
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %and)
  %cmp82.not29 = icmp eq i32 %45, %and
  br i1 %cmp82.not29, label %while.cond.preheader.if.then93_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.if.then93_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then93

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %d.134 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %d.0, %while.cond.preheader.while.body_crit_edge ]
  %t.033 = phi i32 [ %and88, %while.body.while.body_crit_edge ], [ %41, %while.cond.preheader.while.body_crit_edge ]
  %r.032 = phi i32 [ %and90, %while.body.while.body_crit_edge ], [ %45, %while.cond.preheader.while.body_crit_edge ]
  %arrayidx86 = getelementptr i8, ptr %tx_buff, i32 %t.033
  %57 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx86, align 1
  %incdec.ptr = getelementptr i8, ptr %d.134, i32 1
  %59 = ptrtoint ptr %d.134 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %d.134, align 1
  %add87 = add i32 %t.033, 1
  %and88 = and i32 %add87, 32767
  %add89 = add i32 %r.032, 1
  %and90 = and i32 %add89, 32767
  call void @__sanitizer_cov_trace_cmp4(i32 %and90, i32 %and)
  %cmp82.not = icmp eq i32 %and90, %and
  call void @__sanitizer_cov_trace_cmp4(i32 %and88, i32 %43)
  %cmp84.not = icmp eq i32 %and88, %43
  %or.cond3 = select i1 %cmp82.not, i1 true, i1 %cmp84.not
  br i1 %or.cond3, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %while.body
  br i1 %cmp82.not, label %while.end.if.then93_crit_edge, label %while.end.if.end96_crit_edge

while.end.if.end96_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end96

while.end.if.then93_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then93

if.then93:                                        ; preds = %while.end.if.then93_crit_edge, %while.cond.preheader.if.then93_crit_edge
  %t.0.lcssa125 = phi i32 [ %and88, %while.end.if.then93_crit_edge ], [ %41, %while.cond.preheader.if.then93_crit_edge ]
  %60 = ptrtoint ptr %tx_R60 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %t.0.lcssa125, ptr %tx_R60, align 4
  br label %send_packet

if.end96:                                         ; preds = %while.end.if.end96_crit_edge, %if.end76.if.end96_crit_edge
  %r.1 = phi i32 [ %45, %if.end76.if.end96_crit_edge ], [ %and90, %while.end.if.end96_crit_edge ]
  %t.1 = phi i32 [ %41, %if.end76.if.end96_crit_edge ], [ %and88, %while.end.if.end96_crit_edge ]
  %d.2 = phi ptr [ %d.0, %if.end76.if.end96_crit_edge ], [ %incdec.ptr, %while.end.if.end96_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %members)
  %cmp99 = icmp slt i32 %members, 2
  %or.cond4 = or i1 %cmp99, %tobool3.not
  br i1 %or.cond4, label %if.then101, label %if.end166

if.then101:                                       ; preds = %if.end96
  %echo102 = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 5
  %61 = ptrtoint ptr %echo102 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %echo102, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool104.not = icmp eq i32 %62, 0
  br i1 %tobool104.not, label %while.cond106.preheader, label %while.cond136.preheader

while.cond136.preheader:                          ; preds = %if.then101
  call void @__sanitizer_cov_trace_cmp4(i32 %r.1, i32 %and)
  %cmp137.not95 = icmp eq i32 %r.1, %and
  call void @__sanitizer_cov_trace_cmp4(i32 %t.1, i32 %43)
  %cmp140.not96 = icmp eq i32 %t.1, %43
  %or.cond697 = select i1 %cmp137.not95, i1 true, i1 %cmp140.not96
  br i1 %or.cond697, label %while.cond136.preheader.while.cond155.preheader_crit_edge, label %while.cond136.preheader.while.body143_crit_edge

while.cond136.preheader.while.body143_crit_edge:  ; preds = %while.cond136.preheader
  br label %while.body143

while.cond136.preheader.while.cond155.preheader_crit_edge: ; preds = %while.cond136.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond155.preheader

while.cond106.preheader:                          ; preds = %if.then101
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %r.1)
  %cmp107.not107 = icmp eq i32 %and, %r.1
  call void @__sanitizer_cov_trace_cmp4(i32 %t.1, i32 %43)
  %cmp110.not108 = icmp eq i32 %t.1, %43
  %or.cond5109 = select i1 %cmp107.not107, i1 true, i1 %cmp110.not108
  br i1 %or.cond5109, label %while.cond106.preheader.while.end120_crit_edge, label %while.cond106.preheader.while.body113_crit_edge

while.cond106.preheader.while.body113_crit_edge:  ; preds = %while.cond106.preheader
  br label %while.body113

while.cond106.preheader.while.end120_crit_edge:   ; preds = %while.cond106.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end120

while.body113:                                    ; preds = %while.body113.while.body113_crit_edge, %while.cond106.preheader.while.body113_crit_edge
  %d.3112 = phi ptr [ %incdec.ptr115, %while.body113.while.body113_crit_edge ], [ %d.2, %while.cond106.preheader.while.body113_crit_edge ]
  %t.2111 = phi i32 [ %and117, %while.body113.while.body113_crit_edge ], [ %t.1, %while.cond106.preheader.while.body113_crit_edge ]
  %r.2110 = phi i32 [ %and119, %while.body113.while.body113_crit_edge ], [ %r.1, %while.cond106.preheader.while.body113_crit_edge ]
  %arrayidx114 = getelementptr i8, ptr %tx_buff, i32 %t.2111
  %63 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx114, align 1
  %incdec.ptr115 = getelementptr i8, ptr %d.3112, i32 1
  %65 = ptrtoint ptr %d.3112 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %d.3112, align 1
  %add116 = add i32 %t.2111, 1
  %and117 = and i32 %add116, 32767
  %add118 = add i32 %r.2110, 1
  %and119 = and i32 %add118, 32767
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %and119)
  %cmp107.not = icmp eq i32 %and, %and119
  call void @__sanitizer_cov_trace_cmp4(i32 %and117, i32 %43)
  %cmp110.not = icmp eq i32 %and117, %43
  %or.cond5 = select i1 %cmp107.not, i1 true, i1 %cmp110.not
  br i1 %or.cond5, label %while.body113.while.end120_crit_edge, label %while.body113.while.body113_crit_edge

while.body113.while.body113_crit_edge:            ; preds = %while.body113
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body113

while.body113.while.end120_crit_edge:             ; preds = %while.body113
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end120

while.end120:                                     ; preds = %while.body113.while.end120_crit_edge, %while.cond106.preheader.while.end120_crit_edge
  %r.2.lcssa = phi i32 [ %r.1, %while.cond106.preheader.while.end120_crit_edge ], [ %and119, %while.body113.while.end120_crit_edge ]
  %t.2.lcssa = phi i32 [ %t.1, %while.cond106.preheader.while.end120_crit_edge ], [ %and117, %while.body113.while.end120_crit_edge ]
  %d.3.lcssa = phi ptr [ %d.2, %while.cond106.preheader.while.end120_crit_edge ], [ %incdec.ptr115, %while.body113.while.end120_crit_edge ]
  %cmp107.not.lcssa = phi i1 [ %cmp107.not107, %while.cond106.preheader.while.end120_crit_edge ], [ %cmp107.not, %while.body113.while.end120_crit_edge ]
  br i1 %cmp107.not.lcssa, label %while.end120.if.end164_crit_edge, label %if.then123

while.end120.if.end164_crit_edge:                 ; preds = %while.end120
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end164

if.then123:                                       ; preds = %while.end120
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_debug to i32))
  %66 = load i32, ptr @dsp_debug, align 4
  %and124 = and i32 %66, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124)
  %tobool125.not = icmp eq i32 %and124, 0
  br i1 %tobool125.not, label %if.then123.if.end132_crit_edge, label %do.end129

if.then123.if.end132_crit_edge:                   ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end132

do.end129:                                        ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #8
  %call131 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.197, ptr noundef nonnull @.str.195) #9
  br label %if.end132

if.end132:                                        ; preds = %do.end129, %if.then123.if.end132_crit_edge
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @dsp_silence to i32))
  %67 = load i8, ptr @dsp_silence, align 1
  %sub = sub i32 %add62, %r.2.lcssa
  %and134 = and i32 %sub, 32767
  %68 = zext i8 %67 to i32
  %69 = call ptr @memset(ptr %d.3.lcssa, i32 %68, i32 %and134)
  br label %if.end164

while.cond155.preheader:                          ; preds = %while.body143.while.cond155.preheader_crit_edge, %while.cond136.preheader.while.cond155.preheader_crit_edge
  %r.3.lcssa = phi i32 [ %r.1, %while.cond136.preheader.while.cond155.preheader_crit_edge ], [ %and153, %while.body143.while.cond155.preheader_crit_edge ]
  %t.3.lcssa = phi i32 [ %t.1, %while.cond136.preheader.while.cond155.preheader_crit_edge ], [ %and151, %while.body143.while.cond155.preheader_crit_edge ]
  %d.4.lcssa = phi ptr [ %d.2, %while.cond136.preheader.while.cond155.preheader_crit_edge ], [ %incdec.ptr149, %while.body143.while.cond155.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %r.3.lcssa, i32 %and)
  %cmp156.not104 = icmp eq i32 %r.3.lcssa, %and
  br i1 %cmp156.not104, label %while.cond155.preheader.if.end164_crit_edge, label %while.cond155.preheader.while.body158_crit_edge

while.cond155.preheader.while.body158_crit_edge:  ; preds = %while.cond155.preheader
  br label %while.body158

while.cond155.preheader.if.end164_crit_edge:      ; preds = %while.cond155.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end164

while.body143:                                    ; preds = %while.body143.while.body143_crit_edge, %while.cond136.preheader.while.body143_crit_edge
  %d.4100 = phi ptr [ %incdec.ptr149, %while.body143.while.body143_crit_edge ], [ %d.2, %while.cond136.preheader.while.body143_crit_edge ]
  %t.399 = phi i32 [ %and151, %while.body143.while.body143_crit_edge ], [ %t.1, %while.cond136.preheader.while.body143_crit_edge ]
  %r.398 = phi i32 [ %and153, %while.body143.while.body143_crit_edge ], [ %r.1, %while.cond136.preheader.while.body143_crit_edge ]
  %arrayidx144 = getelementptr i8, ptr %tx_buff, i32 %t.399
  %70 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx144, align 1
  %conv145 = zext i8 %71 to i32
  %shl = shl nuw nsw i32 %conv145, 8
  %arrayidx146 = getelementptr i8, ptr %rx_buff, i32 %r.398
  %72 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx146, align 1
  %conv147 = zext i8 %73 to i32
  %or = or i32 %shl, %conv147
  %arrayidx148 = getelementptr [65536 x i8], ptr @dsp_audio_mix_law, i32 0, i32 %or
  %74 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx148, align 1
  %incdec.ptr149 = getelementptr i8, ptr %d.4100, i32 1
  %76 = ptrtoint ptr %d.4100 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %d.4100, align 1
  %add150 = add i32 %t.399, 1
  %and151 = and i32 %add150, 32767
  %add152 = add i32 %r.398, 1
  %and153 = and i32 %add152, 32767
  call void @__sanitizer_cov_trace_cmp4(i32 %and153, i32 %and)
  %cmp137.not = icmp eq i32 %and153, %and
  call void @__sanitizer_cov_trace_cmp4(i32 %and151, i32 %43)
  %cmp140.not = icmp eq i32 %and151, %43
  %or.cond6 = select i1 %cmp137.not, i1 true, i1 %cmp140.not
  br i1 %or.cond6, label %while.body143.while.cond155.preheader_crit_edge, label %while.body143.while.body143_crit_edge

while.body143.while.body143_crit_edge:            ; preds = %while.body143
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body143

while.body143.while.cond155.preheader_crit_edge:  ; preds = %while.body143
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond155.preheader

while.body158:                                    ; preds = %while.body158.while.body158_crit_edge, %while.cond155.preheader.while.body158_crit_edge
  %d.5106 = phi ptr [ %incdec.ptr160, %while.body158.while.body158_crit_edge ], [ %d.4.lcssa, %while.cond155.preheader.while.body158_crit_edge ]
  %r.4105 = phi i32 [ %and162, %while.body158.while.body158_crit_edge ], [ %r.3.lcssa, %while.cond155.preheader.while.body158_crit_edge ]
  %arrayidx159 = getelementptr i8, ptr %rx_buff, i32 %r.4105
  %77 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx159, align 1
  %incdec.ptr160 = getelementptr i8, ptr %d.5106, i32 1
  %79 = ptrtoint ptr %d.5106 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %d.5106, align 1
  %add161 = add i32 %r.4105, 1
  %and162 = and i32 %add161, 32767
  %cmp156.not = icmp eq i32 %and162, %and
  br i1 %cmp156.not, label %while.body158.if.end164_crit_edge, label %while.body158.while.body158_crit_edge

while.body158.while.body158_crit_edge:            ; preds = %while.body158
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body158

while.body158.if.end164_crit_edge:                ; preds = %while.body158
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end164

if.end164:                                        ; preds = %while.body158.if.end164_crit_edge, %while.cond155.preheader.if.end164_crit_edge, %if.end132, %while.end120.if.end164_crit_edge
  %t.4 = phi i32 [ %t.2.lcssa, %if.end132 ], [ %t.2.lcssa, %while.end120.if.end164_crit_edge ], [ %t.3.lcssa, %while.cond155.preheader.if.end164_crit_edge ], [ %t.3.lcssa, %while.body158.if.end164_crit_edge ]
  %80 = ptrtoint ptr %tx_R60 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %t.4, ptr %tx_R60, align 4
  br label %send_packet

if.end166:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %members)
  %cmp167 = icmp eq i32 %members, 2
  br i1 %cmp167, label %if.then169, label %if.end281

if.then169:                                       ; preds = %if.end166
  %mlist = getelementptr inbounds %struct.dsp_conf, ptr %1, i32 0, i32 2
  %81 = ptrtoint ptr %mlist to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %mlist, align 4
  %dsp172 = getelementptr inbounds %struct.dsp_conf_member, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %dsp172 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dsp172, align 4
  %cmp173 = icmp eq ptr %84, %dsp
  br i1 %cmp173, label %if.then175, label %if.then169.if.end181_crit_edge

if.then169.if.end181_crit_edge:                   ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end181

if.then175:                                       ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #8
  %prev = getelementptr inbounds %struct.dsp_conf, ptr %1, i32 0, i32 2, i32 1
  %85 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %prev, align 4
  %dsp180 = getelementptr inbounds %struct.dsp_conf_member, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %dsp180 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dsp180, align 4
  br label %if.end181

if.end181:                                        ; preds = %if.then175, %if.then169.if.end181_crit_edge
  %other.0 = phi ptr [ %88, %if.then175 ], [ %84, %if.then169.if.end181_crit_edge ]
  %rx_buff182 = getelementptr inbounds %struct.dsp, ptr %other.0, i32 0, i32 28
  %rx_R184 = getelementptr inbounds %struct.dsp, ptr %other.0, i32 0, i32 21
  %89 = ptrtoint ptr %rx_R184 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %rx_R184, align 4
  %add185 = add i32 %90, %len
  %and186 = and i32 %add185, 32767
  %sub187 = sub i32 %r.1, %add62
  %add188 = add i32 %sub187, %add185
  %and189 = and i32 %add188, 32767
  %echo190 = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 5
  %91 = ptrtoint ptr %echo190 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %echo190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool192.not = icmp eq i32 %92, 0
  br i1 %tobool192.not, label %while.cond194.preheader, label %while.cond225.preheader

while.cond225.preheader:                          ; preds = %if.end181
  call void @__sanitizer_cov_trace_cmp4(i32 %r.1, i32 %and)
  %cmp226.not68 = icmp eq i32 %r.1, %and
  call void @__sanitizer_cov_trace_cmp4(i32 %t.1, i32 %43)
  %cmp229.not69 = icmp eq i32 %t.1, %43
  %or.cond870 = select i1 %cmp226.not68, i1 true, i1 %cmp229.not69
  br i1 %or.cond870, label %while.cond225.preheader.while.cond262.preheader_crit_edge, label %while.cond225.preheader.while.body232_crit_edge

while.cond225.preheader.while.body232_crit_edge:  ; preds = %while.cond225.preheader
  br label %while.body232

while.cond225.preheader.while.cond262.preheader_crit_edge: ; preds = %while.cond225.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond262.preheader

while.cond194.preheader:                          ; preds = %if.end181
  call void @__sanitizer_cov_trace_cmp4(i32 %and189, i32 %and186)
  %cmp195.not83 = icmp eq i32 %and189, %and186
  call void @__sanitizer_cov_trace_cmp4(i32 %t.1, i32 %43)
  %cmp198.not84 = icmp eq i32 %t.1, %43
  %or.cond785 = select i1 %cmp195.not83, i1 true, i1 %cmp198.not84
  br i1 %or.cond785, label %while.cond194.preheader.while.cond215.preheader_crit_edge, label %while.cond194.preheader.while.body201_crit_edge

while.cond194.preheader.while.body201_crit_edge:  ; preds = %while.cond194.preheader
  br label %while.body201

while.cond194.preheader.while.cond215.preheader_crit_edge: ; preds = %while.cond194.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond215.preheader

while.cond215.preheader:                          ; preds = %while.body201.while.cond215.preheader_crit_edge, %while.cond194.preheader.while.cond215.preheader_crit_edge
  %t.5.lcssa = phi i32 [ %t.1, %while.cond194.preheader.while.cond215.preheader_crit_edge ], [ %and211, %while.body201.while.cond215.preheader_crit_edge ]
  %o_r.0.lcssa = phi i32 [ %and189, %while.cond194.preheader.while.cond215.preheader_crit_edge ], [ %and213, %while.body201.while.cond215.preheader_crit_edge ]
  %d.6.lcssa = phi ptr [ %d.2, %while.cond194.preheader.while.cond215.preheader_crit_edge ], [ %incdec.ptr209, %while.body201.while.cond215.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %o_r.0.lcssa, i32 %and186)
  %cmp216.not92 = icmp eq i32 %o_r.0.lcssa, %and186
  br i1 %cmp216.not92, label %while.cond215.preheader.if.end279_crit_edge, label %while.cond215.preheader.while.body218_crit_edge

while.cond215.preheader.while.body218_crit_edge:  ; preds = %while.cond215.preheader
  br label %while.body218

while.cond215.preheader.if.end279_crit_edge:      ; preds = %while.cond215.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end279

while.body201:                                    ; preds = %while.body201.while.body201_crit_edge, %while.cond194.preheader.while.body201_crit_edge
  %d.688 = phi ptr [ %incdec.ptr209, %while.body201.while.body201_crit_edge ], [ %d.2, %while.cond194.preheader.while.body201_crit_edge ]
  %o_r.087 = phi i32 [ %and213, %while.body201.while.body201_crit_edge ], [ %and189, %while.cond194.preheader.while.body201_crit_edge ]
  %t.586 = phi i32 [ %and211, %while.body201.while.body201_crit_edge ], [ %t.1, %while.cond194.preheader.while.body201_crit_edge ]
  %arrayidx202 = getelementptr i8, ptr %tx_buff, i32 %t.586
  %93 = ptrtoint ptr %arrayidx202 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx202, align 1
  %conv203 = zext i8 %94 to i32
  %shl204 = shl nuw nsw i32 %conv203, 8
  %arrayidx205 = getelementptr i8, ptr %rx_buff182, i32 %o_r.087
  %95 = ptrtoint ptr %arrayidx205 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx205, align 1
  %conv206 = zext i8 %96 to i32
  %or207 = or i32 %shl204, %conv206
  %arrayidx208 = getelementptr [65536 x i8], ptr @dsp_audio_mix_law, i32 0, i32 %or207
  %97 = ptrtoint ptr %arrayidx208 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx208, align 1
  %incdec.ptr209 = getelementptr i8, ptr %d.688, i32 1
  %99 = ptrtoint ptr %d.688 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %98, ptr %d.688, align 1
  %add210 = add i32 %t.586, 1
  %and211 = and i32 %add210, 32767
  %add212 = add nuw nsw i32 %o_r.087, 1
  %and213 = and i32 %add212, 32767
  call void @__sanitizer_cov_trace_cmp4(i32 %and213, i32 %and186)
  %cmp195.not = icmp eq i32 %and213, %and186
  call void @__sanitizer_cov_trace_cmp4(i32 %and211, i32 %43)
  %cmp198.not = icmp eq i32 %and211, %43
  %or.cond7 = select i1 %cmp195.not, i1 true, i1 %cmp198.not
  br i1 %or.cond7, label %while.body201.while.cond215.preheader_crit_edge, label %while.body201.while.body201_crit_edge

while.body201.while.body201_crit_edge:            ; preds = %while.body201
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body201

while.body201.while.cond215.preheader_crit_edge:  ; preds = %while.body201
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond215.preheader

while.body218:                                    ; preds = %while.body218.while.body218_crit_edge, %while.cond215.preheader.while.body218_crit_edge
  %d.794 = phi ptr [ %incdec.ptr220, %while.body218.while.body218_crit_edge ], [ %d.6.lcssa, %while.cond215.preheader.while.body218_crit_edge ]
  %o_r.193 = phi i32 [ %and222, %while.body218.while.body218_crit_edge ], [ %o_r.0.lcssa, %while.cond215.preheader.while.body218_crit_edge ]
  %arrayidx219 = getelementptr i8, ptr %rx_buff182, i32 %o_r.193
  %100 = ptrtoint ptr %arrayidx219 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx219, align 1
  %incdec.ptr220 = getelementptr i8, ptr %d.794, i32 1
  %102 = ptrtoint ptr %d.794 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %101, ptr %d.794, align 1
  %add221 = add nsw i32 %o_r.193, 1
  %and222 = and i32 %add221, 32767
  %cmp216.not = icmp eq i32 %and222, %and186
  br i1 %cmp216.not, label %while.body218.if.end279_crit_edge, label %while.body218.while.body218_crit_edge

while.body218.while.body218_crit_edge:            ; preds = %while.body218
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body218

while.body218.if.end279_crit_edge:                ; preds = %while.body218
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end279

while.cond262.preheader:                          ; preds = %while.body232.while.cond262.preheader_crit_edge, %while.cond225.preheader.while.cond262.preheader_crit_edge
  %r.5.lcssa = phi i32 [ %r.1, %while.cond225.preheader.while.cond262.preheader_crit_edge ], [ %and258, %while.body232.while.cond262.preheader_crit_edge ]
  %t.6.lcssa = phi i32 [ %t.1, %while.cond225.preheader.while.cond262.preheader_crit_edge ], [ %and256, %while.body232.while.cond262.preheader_crit_edge ]
  %o_r.2.lcssa = phi i32 [ %and189, %while.cond225.preheader.while.cond262.preheader_crit_edge ], [ %and260, %while.body232.while.cond262.preheader_crit_edge ]
  %d.8.lcssa = phi ptr [ %d.2, %while.cond225.preheader.while.cond262.preheader_crit_edge ], [ %incdec.ptr254, %while.body232.while.cond262.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %r.5.lcssa, i32 %and)
  %cmp263.not79 = icmp eq i32 %r.5.lcssa, %and
  br i1 %cmp263.not79, label %while.cond262.preheader.if.end279_crit_edge, label %while.cond262.preheader.while.body265_crit_edge

while.cond262.preheader.while.body265_crit_edge:  ; preds = %while.cond262.preheader
  br label %while.body265

while.cond262.preheader.if.end279_crit_edge:      ; preds = %while.cond262.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end279

while.body232:                                    ; preds = %while.body232.while.body232_crit_edge, %while.cond225.preheader.while.body232_crit_edge
  %d.874 = phi ptr [ %incdec.ptr254, %while.body232.while.body232_crit_edge ], [ %d.2, %while.cond225.preheader.while.body232_crit_edge ]
  %o_r.273 = phi i32 [ %and260, %while.body232.while.body232_crit_edge ], [ %and189, %while.cond225.preheader.while.body232_crit_edge ]
  %t.672 = phi i32 [ %and256, %while.body232.while.body232_crit_edge ], [ %t.1, %while.cond225.preheader.while.body232_crit_edge ]
  %r.571 = phi i32 [ %and258, %while.body232.while.body232_crit_edge ], [ %r.1, %while.cond225.preheader.while.body232_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_audio_law_to_s32 to i32))
  %103 = load ptr, ptr @dsp_audio_law_to_s32, align 4
  %arrayidx233 = getelementptr i8, ptr %tx_buff, i32 %t.672
  %104 = ptrtoint ptr %arrayidx233 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx233, align 1
  %idxprom = zext i8 %105 to i32
  %arrayidx234 = getelementptr i32, ptr %103, i32 %idxprom
  %106 = ptrtoint ptr %arrayidx234 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx234, align 4
  %arrayidx235 = getelementptr i8, ptr %rx_buff, i32 %r.571
  %108 = ptrtoint ptr %arrayidx235 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx235, align 1
  %idxprom236 = zext i8 %109 to i32
  %arrayidx237 = getelementptr i32, ptr %103, i32 %idxprom236
  %110 = ptrtoint ptr %arrayidx237 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx237, align 4
  %add238 = add i32 %111, %107
  %arrayidx239 = getelementptr i8, ptr %rx_buff182, i32 %o_r.273
  %112 = ptrtoint ptr %arrayidx239 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx239, align 1
  %idxprom240 = zext i8 %113 to i32
  %arrayidx241 = getelementptr i32, ptr %103, i32 %idxprom240
  %114 = ptrtoint ptr %arrayidx241 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx241, align 4
  %add242 = add i32 %add238, %115
  %116 = tail call i32 @llvm.smin.i32(i32 %add242, i32 32767)
  %117 = tail call i32 @llvm.smax.i32(i32 %116, i32 -32768)
  %and252 = and i32 %117, 65535
  %arrayidx253 = getelementptr [65536 x i8], ptr @dsp_audio_s16_to_law, i32 0, i32 %and252
  %118 = ptrtoint ptr %arrayidx253 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx253, align 1
  %incdec.ptr254 = getelementptr i8, ptr %d.874, i32 1
  %120 = ptrtoint ptr %d.874 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %119, ptr %d.874, align 1
  %add255 = add i32 %t.672, 1
  %and256 = and i32 %add255, 32767
  %add257 = add i32 %r.571, 1
  %and258 = and i32 %add257, 32767
  %add259 = add nuw nsw i32 %o_r.273, 1
  %and260 = and i32 %add259, 32767
  call void @__sanitizer_cov_trace_cmp4(i32 %and258, i32 %and)
  %cmp226.not = icmp eq i32 %and258, %and
  call void @__sanitizer_cov_trace_cmp4(i32 %and256, i32 %43)
  %cmp229.not = icmp eq i32 %and256, %43
  %or.cond8 = select i1 %cmp226.not, i1 true, i1 %cmp229.not
  br i1 %or.cond8, label %while.body232.while.cond262.preheader_crit_edge, label %while.body232.while.body232_crit_edge

while.body232.while.body232_crit_edge:            ; preds = %while.body232
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body232

while.body232.while.cond262.preheader_crit_edge:  ; preds = %while.body232
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond262.preheader

while.body265:                                    ; preds = %while.body265.while.body265_crit_edge, %while.cond262.preheader.while.body265_crit_edge
  %d.982 = phi ptr [ %incdec.ptr273, %while.body265.while.body265_crit_edge ], [ %d.8.lcssa, %while.cond262.preheader.while.body265_crit_edge ]
  %o_r.381 = phi i32 [ %and277, %while.body265.while.body265_crit_edge ], [ %o_r.2.lcssa, %while.cond262.preheader.while.body265_crit_edge ]
  %r.680 = phi i32 [ %and275, %while.body265.while.body265_crit_edge ], [ %r.5.lcssa, %while.cond262.preheader.while.body265_crit_edge ]
  %arrayidx266 = getelementptr i8, ptr %rx_buff, i32 %r.680
  %121 = ptrtoint ptr %arrayidx266 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx266, align 1
  %conv267 = zext i8 %122 to i32
  %shl268 = shl nuw nsw i32 %conv267, 8
  %arrayidx269 = getelementptr i8, ptr %rx_buff182, i32 %o_r.381
  %123 = ptrtoint ptr %arrayidx269 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx269, align 1
  %conv270 = zext i8 %124 to i32
  %or271 = or i32 %shl268, %conv270
  %arrayidx272 = getelementptr [65536 x i8], ptr @dsp_audio_mix_law, i32 0, i32 %or271
  %125 = ptrtoint ptr %arrayidx272 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx272, align 1
  %incdec.ptr273 = getelementptr i8, ptr %d.982, i32 1
  %127 = ptrtoint ptr %d.982 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %126, ptr %d.982, align 1
  %add274 = add i32 %r.680, 1
  %and275 = and i32 %add274, 32767
  %add276 = add nsw i32 %o_r.381, 1
  %and277 = and i32 %add276, 32767
  %cmp263.not = icmp eq i32 %and275, %and
  br i1 %cmp263.not, label %while.body265.if.end279_crit_edge, label %while.body265.while.body265_crit_edge

while.body265.while.body265_crit_edge:            ; preds = %while.body265
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body265

while.body265.if.end279_crit_edge:                ; preds = %while.body265
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end279

if.end279:                                        ; preds = %while.body265.if.end279_crit_edge, %while.cond262.preheader.if.end279_crit_edge, %while.body218.if.end279_crit_edge, %while.cond215.preheader.if.end279_crit_edge
  %t.7 = phi i32 [ %t.5.lcssa, %while.cond215.preheader.if.end279_crit_edge ], [ %t.6.lcssa, %while.cond262.preheader.if.end279_crit_edge ], [ %t.5.lcssa, %while.body218.if.end279_crit_edge ], [ %t.6.lcssa, %while.body265.if.end279_crit_edge ]
  %128 = ptrtoint ptr %tx_R60 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %t.7, ptr %tx_R60, align 4
  br label %send_packet

if.end281:                                        ; preds = %if.end166
  %echo282 = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 5
  %129 = ptrtoint ptr %echo282 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %echo282, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %tobool284.not = icmp eq i32 %130, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %r.1, i32 %and)
  %cmp287.not53 = icmp eq i32 %r.1, %and
  call void @__sanitizer_cov_trace_cmp4(i32 %t.1, i32 %43)
  %cmp290.not54 = icmp eq i32 %t.1, %43
  %or.cond1055 = select i1 %cmp287.not53, i1 true, i1 %cmp290.not54
  br i1 %tobool284.not, label %while.cond286.preheader, label %while.cond345.preheader

while.cond345.preheader:                          ; preds = %if.end281
  br i1 %or.cond1055, label %while.cond345.preheader.while.cond375.preheader_crit_edge, label %while.cond345.preheader.while.body352_crit_edge

while.cond345.preheader.while.body352_crit_edge:  ; preds = %while.cond345.preheader
  br label %while.body352

while.cond345.preheader.while.cond375.preheader_crit_edge: ; preds = %while.cond345.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond375.preheader

while.cond286.preheader:                          ; preds = %if.end281
  br i1 %or.cond1055, label %while.cond286.preheader.while.cond320.preheader_crit_edge, label %while.cond286.preheader.while.body293_crit_edge

while.cond286.preheader.while.body293_crit_edge:  ; preds = %while.cond286.preheader
  br label %while.body293

while.cond286.preheader.while.cond320.preheader_crit_edge: ; preds = %while.cond286.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond320.preheader

while.cond320.preheader:                          ; preds = %while.body293.while.cond320.preheader_crit_edge, %while.cond286.preheader.while.cond320.preheader_crit_edge
  %r.7.lcssa = phi i32 [ %r.1, %while.cond286.preheader.while.cond320.preheader_crit_edge ], [ %and316, %while.body293.while.cond320.preheader_crit_edge ]
  %t.8.lcssa = phi i32 [ %t.1, %while.cond286.preheader.while.cond320.preheader_crit_edge ], [ %and318, %while.body293.while.cond320.preheader_crit_edge ]
  %d.10.lcssa = phi ptr [ %d.2, %while.cond286.preheader.while.cond320.preheader_crit_edge ], [ %incdec.ptr314, %while.body293.while.cond320.preheader_crit_edge ]
  %c.addr.0.lcssa = phi ptr [ @dsp_cmx_send.mixbuffer, %while.cond286.preheader.while.cond320.preheader_crit_edge ], [ %incdec.ptr297, %while.body293.while.cond320.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %r.7.lcssa, i32 %and)
  %cmp321.not64 = icmp eq i32 %r.7.lcssa, %and
  br i1 %cmp321.not64, label %while.cond320.preheader.if.end395_crit_edge, label %while.cond320.preheader.while.body323_crit_edge

while.cond320.preheader.while.body323_crit_edge:  ; preds = %while.cond320.preheader
  br label %while.body323

while.cond320.preheader.if.end395_crit_edge:      ; preds = %while.cond320.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end395

while.body293:                                    ; preds = %while.body293.while.body293_crit_edge, %while.cond286.preheader.while.body293_crit_edge
  %c.addr.059 = phi ptr [ %incdec.ptr297, %while.body293.while.body293_crit_edge ], [ @dsp_cmx_send.mixbuffer, %while.cond286.preheader.while.body293_crit_edge ]
  %d.1058 = phi ptr [ %incdec.ptr314, %while.body293.while.body293_crit_edge ], [ %d.2, %while.cond286.preheader.while.body293_crit_edge ]
  %t.857 = phi i32 [ %and318, %while.body293.while.body293_crit_edge ], [ %t.1, %while.cond286.preheader.while.body293_crit_edge ]
  %r.756 = phi i32 [ %and316, %while.body293.while.body293_crit_edge ], [ %r.1, %while.cond286.preheader.while.body293_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_audio_law_to_s32 to i32))
  %131 = load ptr, ptr @dsp_audio_law_to_s32, align 4
  %arrayidx294 = getelementptr i8, ptr %tx_buff, i32 %t.857
  %132 = ptrtoint ptr %arrayidx294 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %arrayidx294, align 1
  %idxprom295 = zext i8 %133 to i32
  %arrayidx296 = getelementptr i32, ptr %131, i32 %idxprom295
  %134 = ptrtoint ptr %arrayidx296 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx296, align 4
  %incdec.ptr297 = getelementptr i32, ptr %c.addr.059, i32 1
  %136 = ptrtoint ptr %c.addr.059 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %c.addr.059, align 4
  %add298 = add i32 %137, %135
  %arrayidx299 = getelementptr i8, ptr %rx_buff, i32 %r.756
  %138 = ptrtoint ptr %arrayidx299 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx299, align 1
  %idxprom300 = zext i8 %139 to i32
  %arrayidx301 = getelementptr i32, ptr %131, i32 %idxprom300
  %140 = ptrtoint ptr %arrayidx301 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx301, align 4
  %sub302 = sub i32 %add298, %141
  %142 = tail call i32 @llvm.smin.i32(i32 %sub302, i32 32767)
  %143 = tail call i32 @llvm.smax.i32(i32 %142, i32 -32768)
  %and312 = and i32 %143, 65535
  %arrayidx313 = getelementptr [65536 x i8], ptr @dsp_audio_s16_to_law, i32 0, i32 %and312
  %144 = ptrtoint ptr %arrayidx313 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx313, align 1
  %incdec.ptr314 = getelementptr i8, ptr %d.1058, i32 1
  %146 = ptrtoint ptr %d.1058 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %145, ptr %d.1058, align 1
  %add315 = add i32 %r.756, 1
  %and316 = and i32 %add315, 32767
  %add317 = add i32 %t.857, 1
  %and318 = and i32 %add317, 32767
  call void @__sanitizer_cov_trace_cmp4(i32 %and316, i32 %and)
  %cmp287.not = icmp eq i32 %and316, %and
  call void @__sanitizer_cov_trace_cmp4(i32 %and318, i32 %43)
  %cmp290.not = icmp eq i32 %and318, %43
  %or.cond10 = select i1 %cmp287.not, i1 true, i1 %cmp290.not
  br i1 %or.cond10, label %while.body293.while.cond320.preheader_crit_edge, label %while.body293.while.body293_crit_edge

while.body293.while.body293_crit_edge:            ; preds = %while.body293
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body293

while.body293.while.cond320.preheader_crit_edge:  ; preds = %while.body293
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond320.preheader

while.body323:                                    ; preds = %while.body323.while.body323_crit_edge, %while.cond320.preheader.while.body323_crit_edge
  %c.addr.167 = phi ptr [ %incdec.ptr324, %while.body323.while.body323_crit_edge ], [ %c.addr.0.lcssa, %while.cond320.preheader.while.body323_crit_edge ]
  %d.1166 = phi ptr [ %incdec.ptr340, %while.body323.while.body323_crit_edge ], [ %d.10.lcssa, %while.cond320.preheader.while.body323_crit_edge ]
  %r.865 = phi i32 [ %and342, %while.body323.while.body323_crit_edge ], [ %r.7.lcssa, %while.cond320.preheader.while.body323_crit_edge ]
  %incdec.ptr324 = getelementptr i32, ptr %c.addr.167, i32 1
  %147 = ptrtoint ptr %c.addr.167 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %c.addr.167, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_audio_law_to_s32 to i32))
  %149 = load ptr, ptr @dsp_audio_law_to_s32, align 4
  %arrayidx325 = getelementptr i8, ptr %rx_buff, i32 %r.865
  %150 = ptrtoint ptr %arrayidx325 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %arrayidx325, align 1
  %idxprom326 = zext i8 %151 to i32
  %arrayidx327 = getelementptr i32, ptr %149, i32 %idxprom326
  %152 = ptrtoint ptr %arrayidx327 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx327, align 4
  %sub328 = sub i32 %148, %153
  %154 = tail call i32 @llvm.smin.i32(i32 %sub328, i32 32767)
  %155 = tail call i32 @llvm.smax.i32(i32 %154, i32 -32768)
  %and338 = and i32 %155, 65535
  %arrayidx339 = getelementptr [65536 x i8], ptr @dsp_audio_s16_to_law, i32 0, i32 %and338
  %156 = ptrtoint ptr %arrayidx339 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %arrayidx339, align 1
  %incdec.ptr340 = getelementptr i8, ptr %d.1166, i32 1
  %158 = ptrtoint ptr %d.1166 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %157, ptr %d.1166, align 1
  %add341 = add i32 %r.865, 1
  %and342 = and i32 %add341, 32767
  %cmp321.not = icmp eq i32 %and342, %and
  br i1 %cmp321.not, label %while.body323.if.end395_crit_edge, label %while.body323.while.body323_crit_edge

while.body323.while.body323_crit_edge:            ; preds = %while.body323
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body323

while.body323.if.end395_crit_edge:                ; preds = %while.body323
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end395

while.cond375.preheader:                          ; preds = %while.body352.while.cond375.preheader_crit_edge, %while.cond345.preheader.while.cond375.preheader_crit_edge
  %r.9.lcssa = phi i32 [ %r.1, %while.cond345.preheader.while.cond375.preheader_crit_edge ], [ %and373, %while.body352.while.cond375.preheader_crit_edge ]
  %t.9.lcssa = phi i32 [ %t.1, %while.cond345.preheader.while.cond375.preheader_crit_edge ], [ %and371, %while.body352.while.cond375.preheader_crit_edge ]
  %d.12.lcssa = phi ptr [ %d.2, %while.cond345.preheader.while.cond375.preheader_crit_edge ], [ %incdec.ptr369, %while.body352.while.cond375.preheader_crit_edge ]
  %c.addr.2.lcssa = phi ptr [ @dsp_cmx_send.mixbuffer, %while.cond345.preheader.while.cond375.preheader_crit_edge ], [ %incdec.ptr356, %while.body352.while.cond375.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %r.9.lcssa, i32 %and)
  %cmp376.not49 = icmp eq i32 %r.9.lcssa, %and
  br i1 %cmp376.not49, label %while.cond375.preheader.if.end395_crit_edge, label %while.cond375.preheader.while.body378_crit_edge

while.cond375.preheader.while.body378_crit_edge:  ; preds = %while.cond375.preheader
  br label %while.body378

while.cond375.preheader.if.end395_crit_edge:      ; preds = %while.cond375.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end395

while.body352:                                    ; preds = %while.body352.while.body352_crit_edge, %while.cond345.preheader.while.body352_crit_edge
  %c.addr.244 = phi ptr [ %incdec.ptr356, %while.body352.while.body352_crit_edge ], [ @dsp_cmx_send.mixbuffer, %while.cond345.preheader.while.body352_crit_edge ]
  %d.1243 = phi ptr [ %incdec.ptr369, %while.body352.while.body352_crit_edge ], [ %d.2, %while.cond345.preheader.while.body352_crit_edge ]
  %t.942 = phi i32 [ %and371, %while.body352.while.body352_crit_edge ], [ %t.1, %while.cond345.preheader.while.body352_crit_edge ]
  %r.941 = phi i32 [ %and373, %while.body352.while.body352_crit_edge ], [ %r.1, %while.cond345.preheader.while.body352_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_audio_law_to_s32 to i32))
  %159 = load ptr, ptr @dsp_audio_law_to_s32, align 4
  %arrayidx353 = getelementptr i8, ptr %tx_buff, i32 %t.942
  %160 = ptrtoint ptr %arrayidx353 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %arrayidx353, align 1
  %idxprom354 = zext i8 %161 to i32
  %arrayidx355 = getelementptr i32, ptr %159, i32 %idxprom354
  %162 = ptrtoint ptr %arrayidx355 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %arrayidx355, align 4
  %incdec.ptr356 = getelementptr i32, ptr %c.addr.244, i32 1
  %164 = ptrtoint ptr %c.addr.244 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %c.addr.244, align 4
  %add357 = add i32 %165, %163
  %166 = tail call i32 @llvm.smin.i32(i32 %add357, i32 32767)
  %167 = tail call i32 @llvm.smax.i32(i32 %166, i32 -32768)
  %and367 = and i32 %167, 65535
  %arrayidx368 = getelementptr [65536 x i8], ptr @dsp_audio_s16_to_law, i32 0, i32 %and367
  %168 = ptrtoint ptr %arrayidx368 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %arrayidx368, align 1
  %incdec.ptr369 = getelementptr i8, ptr %d.1243, i32 1
  %170 = ptrtoint ptr %d.1243 to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 %169, ptr %d.1243, align 1
  %add370 = add i32 %t.942, 1
  %and371 = and i32 %add370, 32767
  %add372 = add i32 %r.941, 1
  %and373 = and i32 %add372, 32767
  call void @__sanitizer_cov_trace_cmp4(i32 %and373, i32 %and)
  %cmp346.not = icmp eq i32 %and373, %and
  call void @__sanitizer_cov_trace_cmp4(i32 %and371, i32 %43)
  %cmp349.not = icmp eq i32 %and371, %43
  %or.cond13 = select i1 %cmp346.not, i1 true, i1 %cmp349.not
  br i1 %or.cond13, label %while.body352.while.cond375.preheader_crit_edge, label %while.body352.while.body352_crit_edge

while.body352.while.body352_crit_edge:            ; preds = %while.body352
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body352

while.body352.while.cond375.preheader_crit_edge:  ; preds = %while.body352
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond375.preheader

while.body378:                                    ; preds = %while.body378.while.body378_crit_edge, %while.cond375.preheader.while.body378_crit_edge
  %c.addr.352 = phi ptr [ %incdec.ptr379, %while.body378.while.body378_crit_edge ], [ %c.addr.2.lcssa, %while.cond375.preheader.while.body378_crit_edge ]
  %d.1351 = phi ptr [ %incdec.ptr391, %while.body378.while.body378_crit_edge ], [ %d.12.lcssa, %while.cond375.preheader.while.body378_crit_edge ]
  %r.1050 = phi i32 [ %and393, %while.body378.while.body378_crit_edge ], [ %r.9.lcssa, %while.cond375.preheader.while.body378_crit_edge ]
  %incdec.ptr379 = getelementptr i32, ptr %c.addr.352, i32 1
  %171 = ptrtoint ptr %c.addr.352 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %c.addr.352, align 4
  %173 = tail call i32 @llvm.smin.i32(i32 %172, i32 32767)
  %174 = tail call i32 @llvm.smax.i32(i32 %173, i32 -32768)
  %and389 = and i32 %174, 65535
  %arrayidx390 = getelementptr [65536 x i8], ptr @dsp_audio_s16_to_law, i32 0, i32 %and389
  %175 = ptrtoint ptr %arrayidx390 to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %arrayidx390, align 1
  %incdec.ptr391 = getelementptr i8, ptr %d.1351, i32 1
  %177 = ptrtoint ptr %d.1351 to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 %176, ptr %d.1351, align 1
  %add392 = add i32 %r.1050, 1
  %and393 = and i32 %add392, 32767
  %cmp376.not = icmp eq i32 %and393, %and
  br i1 %cmp376.not, label %while.body378.if.end395_crit_edge, label %while.body378.while.body378_crit_edge

while.body378.while.body378_crit_edge:            ; preds = %while.body378
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body378

while.body378.if.end395_crit_edge:                ; preds = %while.body378
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end395

if.end395:                                        ; preds = %while.body378.if.end395_crit_edge, %while.cond375.preheader.if.end395_crit_edge, %while.body323.if.end395_crit_edge, %while.cond320.preheader.if.end395_crit_edge
  %t.10 = phi i32 [ %t.8.lcssa, %while.cond320.preheader.if.end395_crit_edge ], [ %t.9.lcssa, %while.cond375.preheader.if.end395_crit_edge ], [ %t.8.lcssa, %while.body323.if.end395_crit_edge ], [ %t.9.lcssa, %while.body378.if.end395_crit_edge ]
  %178 = ptrtoint ptr %tx_R60 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %t.10, ptr %tx_R60, align 4
  br label %send_packet

send_packet:                                      ; preds = %if.end395, %if.end279, %if.end164, %if.then93, %if.then73
  %tx_data397 = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 32
  %179 = ptrtoint ptr %tx_data397 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %tx_data397, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %tobool398.not = icmp eq i32 %180, 0
  br i1 %tobool398.not, label %send_packet.if.end424_crit_edge, label %if.then399

send_packet.if.end424_crit_edge:                  ; preds = %send_packet
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end424

if.then399:                                       ; preds = %send_packet
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_data_only.1)
  %tobool400.not = icmp eq i32 %tx_data_only.1, 0
  br i1 %tobool400.not, label %if.else405, label %if.then401

if.then401:                                       ; preds = %if.then399
  call void @__sanitizer_cov_trace_pc() #8
  %181 = ptrtoint ptr %cb to i32
  call void @__asan_storeN_noabort(i32 %181, i32 4)
  store i32 12292, ptr %cb, align 1
  %182 = ptrtoint ptr %id to i32
  call void @__asan_storeN_noabort(i32 %182, i32 4)
  store i32 0, ptr %id, align 1
  %sendq = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 14
  tail call void @skb_queue_tail(ptr noundef %sendq, ptr noundef nonnull %call.i.i) #6
  %workq = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %183 = load ptr, ptr @system_wq, align 4
  %call.i.i16 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %183, ptr noundef %workq) #6
  br label %cleanup

if.else405:                                       ; preds = %if.then399
  %add.i17 = add i32 %len, 8
  %call.i.i18 = tail call ptr @__alloc_skb(i32 noundef %add.i17, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #6
  %tobool.not.i19 = icmp eq ptr %call.i.i18, null
  br i1 %tobool.not.i19, label %do.end411, label %if.else414, !prof !318

do.end411:                                        ; preds = %if.else405
  call void @__sanitizer_cov_trace_pc() #8
  %call413 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.194, i32 noundef %len) #9
  br label %if.end424

if.else414:                                       ; preds = %if.else405
  call void @__sanitizer_cov_trace_pc() #8
  %data.i.i20 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i18, i32 0, i32 19
  %184 = ptrtoint ptr %data.i.i20 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %data.i.i20, align 4
  %add.ptr.i.i21 = getelementptr i8, ptr %185, i32 8
  store ptr %add.ptr.i.i21, ptr %data.i.i20, align 4
  %tail.i.i22 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i18, i32 0, i32 16
  %186 = ptrtoint ptr %tail.i.i22 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %tail.i.i22, align 8
  %add.ptr1.i.i23 = getelementptr i8, ptr %187, i32 8
  store ptr %add.ptr1.i.i23, ptr %tail.i.i22, align 8
  %cb415 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i18, i32 0, i32 3
  %188 = ptrtoint ptr %cb415 to i32
  call void @__asan_storeN_noabort(i32 %188, i32 4)
  store i32 12292, ptr %cb415, align 1
  %id418 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i18, i32 0, i32 3, i32 4
  %189 = ptrtoint ptr %id418 to i32
  call void @__asan_storeN_noabort(i32 %189, i32 4)
  store i32 0, ptr %id418, align 1
  %190 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %data.i.i, align 4
  %add.ptr419 = getelementptr i8, ptr %191, i32 %preload.0
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i18, i32 noundef %len) #6
  %192 = call ptr @memcpy(ptr %call.i, ptr %add.ptr419, i32 %len)
  %sendq421 = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 14
  tail call void @skb_queue_tail(ptr noundef %sendq421, ptr noundef nonnull %call.i.i18) #6
  br label %if.end424

if.end424:                                        ; preds = %if.else414, %do.end411, %send_packet.if.end424_crit_edge
  %tx_volume = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 11
  %193 = ptrtoint ptr %tx_volume to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %tx_volume, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %194)
  %tobool425.not = icmp eq i32 %194, 0
  br i1 %tobool425.not, label %if.end424.if.end428_crit_edge, label %if.then426

if.end424.if.end428_crit_edge:                    ; preds = %if.end424
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end428

if.then426:                                       ; preds = %if.end424
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dsp_change_volume(ptr noundef nonnull %call.i.i, i32 noundef %194) #6
  br label %if.end428

if.end428:                                        ; preds = %if.then426, %if.end424.if.end428_crit_edge
  %inuse = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 52, i32 2
  %195 = ptrtoint ptr %inuse to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %inuse, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %196)
  %tobool429.not = icmp eq i32 %196, 0
  br i1 %tobool429.not, label %if.end428.if.end434_crit_edge, label %if.then430

if.end428.if.end434_crit_edge:                    ; preds = %if.end428
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end434

if.then430:                                       ; preds = %if.end428
  call void @__sanitizer_cov_trace_pc() #8
  %pipeline = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 52
  %197 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %data.i.i, align 4
  %len433 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %199 = ptrtoint ptr %len433 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %len433, align 4
  tail call void @dsp_pipeline_process_tx(ptr noundef %pipeline, ptr noundef %198, i32 noundef %200) #6
  br label %if.end434

if.end434:                                        ; preds = %if.then430, %if.end428.if.end434_crit_edge
  %bf_enable = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 41
  %201 = ptrtoint ptr %bf_enable to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %bf_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %202)
  %tobool435.not = icmp eq i32 %202, 0
  br i1 %tobool435.not, label %if.end434.if.end439_crit_edge, label %if.then436

if.end434.if.end439_crit_edge:                    ; preds = %if.end434
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end439

if.then436:                                       ; preds = %if.end434
  call void @__sanitizer_cov_trace_pc() #8
  %203 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %data.i.i, align 4
  %len438 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %205 = ptrtoint ptr %len438 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %len438, align 4
  tail call void @dsp_bf_encrypt(ptr noundef %dsp, ptr noundef %204, i32 noundef %206) #6
  br label %if.end439

if.end439:                                        ; preds = %if.then436, %if.end434.if.end439_crit_edge
  %sendq440 = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 14
  tail call void @skb_queue_tail(ptr noundef %sendq440, ptr noundef nonnull %call.i.i) #6
  %workq441 = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %207 = load ptr, ptr @system_wq, align 4
  %call.i.i26 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %207, ptr noundef %workq441) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end439, %if.then401, %do.end, %if.then17, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dsp_cmx_transmit(ptr nocapture noundef %dsp, ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_W = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 23
  %0 = ptrtoint ptr %tx_W to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_W, align 4
  %tx_R = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 24
  %2 = ptrtoint ptr %tx_R to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_R, align 4
  %tx_buff = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 27
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = xor i32 %1, -1
  %sub1 = add i32 %3, %6
  %and = and i32 %sub1, 32767
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %8)
  %cmp = icmp ult i32 %and, %8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %sub2 = add i32 %3, 32767
  %and3 = and i32 %sub2, 32767
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dsp_debug to i32))
  %9 = load i32, ptr @dsp_debug, align 4
  %and4 = and i32 %9, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %if.then.if.end9_crit_edge, label %do.end

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.174, ptr noundef nonnull @.str.175, i32 noundef %and, i32 noundef %8, i32 noundef %1, i32 noundef %and3) #9
  br label %if.end9

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add = add i32 %8, %1
  %and8 = and i32 %add, 32767
  br label %if.end9

if.end9:                                          ; preds = %if.else, %do.end, %if.then.if.end9_crit_edge
  %ww.0 = phi i32 [ %and3, %do.end ], [ %and3, %if.then.if.end9_crit_edge ], [ %and8, %if.else ]
  %10 = ptrtoint ptr %tx_W to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %ww.0, ptr %tx_W, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %ww.0)
  %cmp11.not30 = icmp eq i32 %1, %ww.0
  br i1 %cmp11.not30, label %if.end9.while.end_crit_edge, label %if.end9.while.body_crit_edge

if.end9.while.body_crit_edge:                     ; preds = %if.end9
  br label %while.body

if.end9.while.end_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end9.while.body_crit_edge
  %w.032 = phi i32 [ %and13, %while.body.while.body_crit_edge ], [ %1, %if.end9.while.body_crit_edge ]
  %d.031 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %5, %if.end9.while.body_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %d.031, i32 1
  %11 = ptrtoint ptr %d.031 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %d.031, align 1
  %arrayidx = getelementptr i8, ptr %tx_buff, i32 %w.032
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %arrayidx, align 1
  %add12 = add i32 %w.032, 1
  %and13 = and i32 %add12, 32767
  %cmp11.not = icmp eq i32 %and13, %ww.0
  br i1 %cmp11.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end9.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dsp_cmx_hdlc(ptr noundef %dsp, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %b_active = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 4
  %0 = ptrtoint ptr %b_active to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %b_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %conf = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 18
  %4 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %conf, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.then4, label %if.end12

if.then4:                                         ; preds = %if.end2
  %echo = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 5
  %6 = ptrtoint ptr %echo to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %echo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5.not = icmp eq i32 %7, 0
  br i1 %tobool5.not, label %if.then4.cleanup_crit_edge, label %if.then6

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then6:                                         ; preds = %if.then4
  %call = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #6
  %tobool7.not = icmp eq ptr %call, null
  br i1 %tobool7.not, label %if.then6.cleanup_crit_edge, label %if.then8

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then8:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3
  %8 = ptrtoint ptr %cb to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 8193, ptr %cb, align 1
  %id = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3, i32 4
  %9 = ptrtoint ptr %id to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 0, ptr %id, align 1
  %sendq = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 14
  tail call void @skb_queue_tail(ptr noundef %sendq, ptr noundef nonnull %call) #6
  %workq = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %10 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %workq) #6
  br label %cleanup

if.end12:                                         ; preds = %if.end2
  %hardware = getelementptr inbounds %struct.dsp_conf, ptr %5, i32 0, i32 4
  %11 = ptrtoint ptr %hardware to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hardware, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool14.not = icmp eq i32 %12, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %mlist = getelementptr inbounds %struct.dsp_conf, ptr %5, i32 0, i32 2
  %13 = ptrtoint ptr %mlist to i32
  call void @__asan_load4_noabort(i32 %13)
  %member.072 = load ptr, ptr %mlist, align 4
  %14 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %conf, align 4
  %mlist1973 = getelementptr inbounds %struct.dsp_conf, ptr %15, i32 0, i32 2
  %cmp20.not74 = icmp eq ptr %member.072, %mlist1973
  br i1 %cmp20.not74, label %if.end16.cleanup_crit_edge, label %for.body.lr.ph

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end16
  %echo21 = getelementptr inbounds %struct.dsp, ptr %dsp, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %member.075 = phi ptr [ %member.072, %for.body.lr.ph ], [ %member.0, %for.inc.for.body_crit_edge ]
  %16 = ptrtoint ptr %echo21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %echo21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool23.not = icmp eq i32 %17, 0
  br i1 %tobool23.not, label %lor.lhs.false, label %for.body.if.then26_crit_edge

for.body.if.then26_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then26

lor.lhs.false:                                    ; preds = %for.body
  %dsp24 = getelementptr inbounds %struct.dsp_conf_member, ptr %member.075, i32 0, i32 1
  %18 = ptrtoint ptr %dsp24 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dsp24, align 4
  %cmp25.not = icmp eq ptr %19, %dsp
  br i1 %cmp25.not, label %lor.lhs.false.for.inc_crit_edge, label %lor.lhs.false.if.then26_crit_edge

lor.lhs.false.if.then26_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then26

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then26:                                        ; preds = %lor.lhs.false.if.then26_crit_edge, %for.body.if.then26_crit_edge
  %call27 = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #6
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %if.then26.for.inc_crit_edge, label %if.then29

if.then26.for.inc_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then29:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  %cb30 = getelementptr inbounds %struct.sk_buff, ptr %call27, i32 0, i32 3
  %20 = ptrtoint ptr %cb30 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 8193, ptr %cb30, align 1
  %id33 = getelementptr inbounds %struct.sk_buff, ptr %call27, i32 0, i32 3, i32 4
  %21 = ptrtoint ptr %id33 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 0, ptr %id33, align 1
  %dsp34 = getelementptr inbounds %struct.dsp_conf_member, ptr %member.075, i32 0, i32 1
  %22 = ptrtoint ptr %dsp34 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dsp34, align 4
  %sendq35 = getelementptr inbounds %struct.dsp, ptr %23, i32 0, i32 14
  tail call void @skb_queue_tail(ptr noundef %sendq35, ptr noundef nonnull %call27) #6
  %24 = ptrtoint ptr %dsp34 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dsp34, align 4
  %workq37 = getelementptr inbounds %struct.dsp, ptr %25, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %26 = load ptr, ptr @system_wq, align 4
  %call.i.i71 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %26, ptr noundef %workq37) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then29, %if.then26.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge
  %27 = ptrtoint ptr %member.075 to i32
  call void @__asan_load4_noabort(i32 %27)
  %member.0 = load ptr, ptr %member.075, align 4
  %28 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %conf, align 4
  %mlist19 = getelementptr inbounds %struct.dsp_conf, ptr %29, i32 0, i32 2
  %cmp20.not = icmp eq ptr %member.0, %mlist19
  br i1 %cmp20.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.then8, %if.then6.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsp_tone_copy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsp_change_volume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsp_pipeline_process_tx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsp_bf_encrypt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 159)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 159)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151, !152, !153, !155, !156, !158, !159, !160, !162, !163, !164, !166, !167, !168, !170, !171, !172, !174, !175, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !190, !192, !193, !194, !196, !197, !198, !200, !201, !202, !203, !205, !206, !207, !209, !210, !211, !213, !214, !215, !217, !218, !219, !221, !222, !223, !225, !226, !227, !229, !230, !231, !232, !234, !235, !236, !238, !239, !240, !242, !244, !245, !246, !247, !249, !250, !251, !253, !254, !255, !256, !258, !260, !262, !264, !266, !268, !269, !270, !271, !273, !274, !275, !276, !278, !279, !280, !282, !283, !284, !285, !287, !288, !289, !291, !292, !293, !295, !296, !297, !299, !300, !301, !302, !304, !305, !306, !308}
!llvm.module.flags = !{!309, !310, !311, !312, !313, !314, !315, !316}
!llvm.ident = !{!317}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 165, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @dsp_cmx_debug._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @dsp_cmx_debug._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 167, i32 3}
!8 = !{ptr @dsp_cmx_debug._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @dsp_cmx_debug._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 171, i32 4}
!12 = !{ptr @dsp_cmx_debug._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @dsp_cmx_debug._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 173, i32 4}
!16 = !{ptr @dsp_cmx_debug._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @dsp_cmx_debug._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 174, i32 3}
!20 = !{ptr @dsp_cmx_debug._entry.12, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @dsp_cmx_debug._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.16, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 176, i32 2}
!24 = !{ptr @dsp_cmx_debug._entry.15, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @dsp_cmx_debug._entry_ptr.17, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.19, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 178, i32 3}
!28 = !{ptr @dsp_cmx_debug._entry.18, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @dsp_cmx_debug._entry_ptr.20, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.22, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 180, i32 4}
!32 = !{ptr @dsp_cmx_debug._entry.21, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @dsp_cmx_debug._entry_ptr.23, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.24, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.26, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 191, i32 2}
!37 = !{ptr @dsp_cmx_debug._entry.25, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @dsp_cmx_debug._entry_ptr.27, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.28, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 270, i32 3}
!41 = !{ptr @.str.29, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @dsp_cmx_del_conf_member._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @dsp_cmx_del_conf_member._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.31, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 276, i32 3}
!46 = !{ptr @dsp_cmx_del_conf_member._entry.30, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @dsp_cmx_del_conf_member._entry_ptr.32, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.34, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 282, i32 3}
!50 = !{ptr @dsp_cmx_del_conf_member._entry.33, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @dsp_cmx_del_conf_member._entry_ptr.35, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.37, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 297, i32 2}
!54 = !{ptr @dsp_cmx_del_conf_member._entry.36, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @dsp_cmx_del_conf_member._entry_ptr.38, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.39, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 340, i32 3}
!58 = !{ptr @.str.40, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @dsp_cmx_del_conf._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @dsp_cmx_del_conf._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.42, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 346, i32 3}
!63 = !{ptr @dsp_cmx_del_conf._entry.41, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @dsp_cmx_del_conf._entry_ptr.43, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.44, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 399, i32 4}
!67 = !{ptr @.str.45, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @dsp_cmx_hardware._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @dsp_cmx_hardware._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.47, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 405, i32 5}
!72 = !{ptr @dsp_cmx_hardware._entry.46, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @dsp_cmx_hardware._entry_ptr.48, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.50, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 420, i32 6}
!76 = !{ptr @dsp_cmx_hardware._entry.49, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @dsp_cmx_hardware._entry_ptr.51, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.53, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 449, i32 5}
!80 = !{ptr @dsp_cmx_hardware._entry.52, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @dsp_cmx_hardware._entry_ptr.54, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.56, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 481, i32 5}
!84 = !{ptr @dsp_cmx_hardware._entry.55, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @dsp_cmx_hardware._entry_ptr.57, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.59, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 494, i32 4}
!88 = !{ptr @dsp_cmx_hardware._entry.58, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @dsp_cmx_hardware._entry_ptr.60, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.62, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 505, i32 3}
!92 = !{ptr @dsp_cmx_hardware._entry.61, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @dsp_cmx_hardware._entry_ptr.63, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.65, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 509, i32 3}
!96 = !{ptr @dsp_cmx_hardware._entry.64, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @dsp_cmx_hardware._entry_ptr.66, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.68, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 521, i32 5}
!100 = !{ptr @dsp_cmx_hardware._entry.67, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @dsp_cmx_hardware._entry_ptr.69, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.71, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 531, i32 7}
!104 = !{ptr @dsp_cmx_hardware._entry.70, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @dsp_cmx_hardware._entry_ptr.72, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.74, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 547, i32 7}
!108 = !{ptr @dsp_cmx_hardware._entry.73, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @dsp_cmx_hardware._entry_ptr.75, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.77, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 571, i32 5}
!112 = !{ptr @dsp_cmx_hardware._entry.76, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @dsp_cmx_hardware._entry_ptr.78, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @dsp_cmx_hardware._entry.79, !115, !"_entry", i1 false, i1 false}
!115 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 580, i32 5}
!116 = !{ptr @dsp_cmx_hardware._entry_ptr.80, !115, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.82, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 589, i32 5}
!119 = !{ptr @dsp_cmx_hardware._entry.81, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @dsp_cmx_hardware._entry_ptr.83, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.85, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 597, i32 5}
!123 = !{ptr @dsp_cmx_hardware._entry.84, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @dsp_cmx_hardware._entry_ptr.86, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.88, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 606, i32 5}
!127 = !{ptr @dsp_cmx_hardware._entry.87, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @dsp_cmx_hardware._entry_ptr.89, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.91, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 614, i32 5}
!131 = !{ptr @dsp_cmx_hardware._entry.90, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @dsp_cmx_hardware._entry_ptr.92, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.94, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 623, i32 5}
!135 = !{ptr @dsp_cmx_hardware._entry.93, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @dsp_cmx_hardware._entry_ptr.95, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.97, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 631, i32 5}
!139 = !{ptr @dsp_cmx_hardware._entry.96, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @dsp_cmx_hardware._entry_ptr.98, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.100, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 640, i32 5}
!143 = !{ptr @dsp_cmx_hardware._entry.99, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @dsp_cmx_hardware._entry_ptr.101, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.103, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 667, i32 4}
!147 = !{ptr @dsp_cmx_hardware._entry.102, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @dsp_cmx_hardware._entry_ptr.104, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.106, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 693, i32 5}
!151 = !{ptr @dsp_cmx_hardware._entry.105, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @dsp_cmx_hardware._entry_ptr.107, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @dsp_cmx_hardware._entry.108, !154, !"_entry", i1 false, i1 false}
!154 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 704, i32 5}
!155 = !{ptr @dsp_cmx_hardware._entry_ptr.109, !154, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.111, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 735, i32 6}
!158 = !{ptr @dsp_cmx_hardware._entry.110, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @dsp_cmx_hardware._entry_ptr.112, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.114, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 775, i32 6}
!162 = !{ptr @dsp_cmx_hardware._entry.113, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @dsp_cmx_hardware._entry_ptr.115, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.117, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 793, i32 5}
!166 = !{ptr @dsp_cmx_hardware._entry.116, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @dsp_cmx_hardware._entry_ptr.118, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.120, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 829, i32 6}
!170 = !{ptr @dsp_cmx_hardware._entry.119, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @dsp_cmx_hardware._entry_ptr.121, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @dsp_cmx_hardware._entry.122, !173, !"_entry", i1 false, i1 false}
!173 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 867, i32 6}
!174 = !{ptr @dsp_cmx_hardware._entry_ptr.123, !173, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @dsp_cmx_hardware._entry.124, !176, !"_entry", i1 false, i1 false}
!176 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 883, i32 6}
!177 = !{ptr @dsp_cmx_hardware._entry_ptr.125, !176, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.127, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 902, i32 5}
!180 = !{ptr @dsp_cmx_hardware._entry.126, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @dsp_cmx_hardware._entry_ptr.128, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.130, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 931, i32 4}
!184 = !{ptr @dsp_cmx_hardware._entry.129, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @dsp_cmx_hardware._entry_ptr.131, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.133, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 997, i32 6}
!188 = !{ptr @dsp_cmx_hardware._entry.132, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @dsp_cmx_hardware._entry_ptr.134, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.136, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 1004, i32 5}
!192 = !{ptr @dsp_cmx_hardware._entry.135, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @dsp_cmx_hardware._entry_ptr.137, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.139, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 1047, i32 4}
!196 = !{ptr @dsp_cmx_hardware._entry.138, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @dsp_cmx_hardware._entry_ptr.140, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.141, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 1077, i32 4}
!200 = !{ptr @.str.142, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @dsp_cmx_conf._entry, !199, !"_entry", i1 false, i1 false}
!202 = !{ptr @dsp_cmx_conf._entry_ptr, !199, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.144, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 1092, i32 5}
!205 = !{ptr @dsp_cmx_conf._entry.143, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @dsp_cmx_conf._entry_ptr.145, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.147, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 1109, i32 3}
!209 = !{ptr @dsp_cmx_conf._entry.146, !208, !"_entry", i1 false, i1 false}
!210 = !{ptr @dsp_cmx_conf._entry_ptr.148, !208, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.150, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 1114, i32 4}
!213 = !{ptr @dsp_cmx_conf._entry.149, !212, !"_entry", i1 false, i1 false}
!214 = !{ptr @dsp_cmx_conf._entry_ptr.151, !212, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.153, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 1125, i32 5}
!217 = !{ptr @dsp_cmx_conf._entry.152, !216, !"_entry", i1 false, i1 false}
!218 = !{ptr @dsp_cmx_conf._entry_ptr.154, !216, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.156, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 1131, i32 5}
!221 = !{ptr @dsp_cmx_conf._entry.155, !220, !"_entry", i1 false, i1 false}
!222 = !{ptr @dsp_cmx_conf._entry_ptr.157, !220, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.159, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 1145, i32 4}
!225 = !{ptr @dsp_cmx_conf._entry.158, !224, !"_entry", i1 false, i1 false}
!226 = !{ptr @dsp_cmx_conf._entry_ptr.160, !224, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.161, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 1195, i32 3}
!229 = !{ptr @.str.162, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @dsp_cmx_receive._entry, !228, !"_entry", i1 false, i1 false}
!231 = !{ptr @dsp_cmx_receive._entry_ptr, !228, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.164, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 1235, i32 4}
!234 = !{ptr @dsp_cmx_receive._entry.163, !233, !"_entry", i1 false, i1 false}
!235 = !{ptr @dsp_cmx_receive._entry_ptr.165, !233, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.167, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 1262, i32 5}
!238 = !{ptr @dsp_cmx_receive._entry.166, !237, !"_entry", i1 false, i1 false}
!239 = !{ptr @dsp_cmx_receive._entry_ptr.168, !237, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @dsp_cmx_send.mixbuffer, !241, !"mixbuffer", i1 false, i1 false}
!241 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 1634, i32 13}
!242 = !{ptr @.str.169, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 1783, i32 6}
!244 = !{ptr @.str.170, !243, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @dsp_cmx_send._entry, !243, !"_entry", i1 false, i1 false}
!246 = !{ptr @dsp_cmx_send._entry_ptr, !243, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.172, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 1814, i32 6}
!249 = !{ptr @dsp_cmx_send._entry.171, !248, !"_entry", i1 false, i1 false}
!250 = !{ptr @dsp_cmx_send._entry_ptr.173, !248, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.174, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 1880, i32 4}
!253 = !{ptr @.str.175, !252, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @dsp_cmx_transmit._entry, !252, !"_entry", i1 false, i1 false}
!255 = !{ptr @dsp_cmx_transmit._entry_ptr, !252, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @jittercount, !257, !"jittercount", i1 false, i1 false}
!257 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 1621, i32 12}
!258 = !{ptr @dsp_spl_tl, !259, !"dsp_spl_tl", i1 false, i1 false}
!259 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 1622, i32 19}
!260 = !{ptr @dsp_spl_jiffies, !261, !"dsp_spl_jiffies", i1 false, i1 false}
!261 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 1623, i32 15}
!262 = !{ptr @dsp_count, !263, !"dsp_count", i1 false, i1 false}
!263 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 1624, i32 12}
!264 = distinct !{null, !265, !"dsp_count_valid", i1 false, i1 false}
!265 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 1625, i32 12}
!266 = !{ptr @.str.176, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 203, i32 3}
!268 = !{ptr @.str.177, !267, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @dsp_cmx_search_conf._entry, !267, !"_entry", i1 false, i1 false}
!270 = !{ptr @dsp_cmx_search_conf._entry_ptr, !267, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.178, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 314, i32 3}
!273 = !{ptr @.str.179, !272, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @dsp_cmx_new_conf._entry, !272, !"_entry", i1 false, i1 false}
!275 = !{ptr @dsp_cmx_new_conf._entry_ptr, !272, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.181, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 321, i32 3}
!278 = !{ptr @dsp_cmx_new_conf._entry.180, !277, !"_entry", i1 false, i1 false}
!279 = !{ptr @dsp_cmx_new_conf._entry_ptr.182, !277, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.183, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 225, i32 3}
!282 = !{ptr @.str.184, !281, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @dsp_cmx_add_conf_member._entry, !281, !"_entry", i1 false, i1 false}
!284 = !{ptr @dsp_cmx_add_conf_member._entry_ptr, !281, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.186, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 229, i32 3}
!287 = !{ptr @dsp_cmx_add_conf_member._entry.185, !286, !"_entry", i1 false, i1 false}
!288 = !{ptr @dsp_cmx_add_conf_member._entry_ptr.187, !286, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.189, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 235, i32 3}
!291 = !{ptr @dsp_cmx_add_conf_member._entry.188, !290, !"_entry", i1 false, i1 false}
!292 = !{ptr @dsp_cmx_add_conf_member._entry_ptr.190, !290, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @.str.192, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 242, i32 3}
!295 = !{ptr @dsp_cmx_add_conf_member._entry.191, !294, !"_entry", i1 false, i1 false}
!296 = !{ptr @dsp_cmx_add_conf_member._entry_ptr.193, !294, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @.str.194, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 1356, i32 3}
!299 = !{ptr @.str.195, !298, !"<string literal>", i1 false, i1 false}
!300 = !{ptr @dsp_cmx_send_member._entry, !298, !"_entry", i1 false, i1 false}
!301 = !{ptr @dsp_cmx_send_member._entry_ptr, !298, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @.str.197, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 1430, i32 6}
!304 = !{ptr @dsp_cmx_send_member._entry.196, !303, !"_entry", i1 false, i1 false}
!305 = !{ptr @dsp_cmx_send_member._entry_ptr.198, !303, !"_entry_ptr", i1 false, i1 false}
!306 = !{ptr @dsp_cmx_send_member._entry.199, !307, !"_entry", i1 false, i1 false}
!307 = !{!"../drivers/isdn/mISDN/dsp_cmx.c", i32 1591, i32 5}
!308 = !{ptr @dsp_cmx_send_member._entry_ptr.200, !307, !"_entry_ptr", i1 false, i1 false}
!309 = !{i32 1, !"wchar_size", i32 2}
!310 = !{i32 1, !"min_enum_size", i32 4}
!311 = !{i32 8, !"branch-target-enforcement", i32 0}
!312 = !{i32 8, !"sign-return-address", i32 0}
!313 = !{i32 8, !"sign-return-address-all", i32 0}
!314 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!315 = !{i32 7, !"uwtable", i32 1}
!316 = !{i32 7, !"frame-pointer", i32 2}
!317 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!318 = !{!"branch_weights", i32 1, i32 2000}
