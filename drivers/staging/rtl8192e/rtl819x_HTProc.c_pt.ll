; ModuleID = '/llk/IR_all_yes/drivers/staging/rtl8192e/rtl819x_HTProc.c_pt.bc'
source_filename = "../drivers/staging/rtl8192e/rtl819x_HTProc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+HT_update_self_and_peer_setting\22, \22a\22\09"
module asm "\09.weak\09__crc_HT_update_self_and_peer_setting\09\09\09\09"
module asm "\09.long\09__crc_HT_update_self_and_peer_setting\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_HT_update_self_and_peer_setting:\09\09\09\09\09"
module asm "\09.asciz \09\22HT_update_self_and_peer_setting\22\09\09\09\09\09"
module asm "__kstrtabns_HT_update_self_and_peer_setting:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rtllib_device = type { ptr, ptr, %struct.rtllib_security, i8, i32, i8, i32, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, ptr, %struct.spinlock, [16 x i8], [16 x i8], [16 x i8], [16 x i8], i8, i8, i8, i8, i8, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.list_head, [16 x %struct.tx_ts_record], %struct.list_head, %struct.list_head, %struct.list_head, [16 x %struct.rx_ts_record], [128 x %struct.rx_reorder_entry], %struct.list_head, %struct.net_device_stats, %struct.rtllib_softmac_stats, %struct.list_head, %struct.list_head, ptr, i32, i32, i32, i8, %struct.rt_intel_promisc_mode, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, ptr, i32, ptr, [6 x i8], i16, i16, %struct.lib80211_crypt_info, [32 x %struct.sw_cam_table], [16 x %struct.rt_pmkid_list], [17 x [4 x %struct.rtllib_frag_entry]], [17 x i32], i16, i16, [6 x i8], %struct.rtllib_network, i32, i32, i32, i32, i16, i16, ptr, i8, [162 x i8], i8, i8, i32, i32, i16, i16, [5 x i16], i16, i16, i8, i16, i16, i32, i32, %struct.tasklet_struct, i64, i8, i16, i16, i16, i16, i16, %struct.mutex, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.spinlock, i16, i16, i16, i32, [31 x %struct.list_head], [17 x i16], [17 x i16], [17 x i32], i32, i8, i8, [5 x ptr], i32, i32, i8, [16 x %struct.sk_buff_head], [16 x %struct.sk_buff_head], i8, i8, i32, i32, i8, i8, i8, i32, i32, i32, i8, %struct.bandwidth_autoswitch, i8, %struct.rt_link_detect, i8, %struct.rt_pwr_save_ctrl, %struct.tx_pending, %struct.timer_list, %struct.timer_list, i8, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %union.anon.119, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [0 x i8] }
%struct.rtllib_security = type <{ i16, [4 x i8], [4 x [32 x i8]], i8, i16 }>
%struct.tx_ts_record = type { %struct.ts_common_info, i16, %struct.ba_record, %struct.ba_record, i8, i8, i8, i8, %struct.timer_list, i8 }
%struct.ts_common_info = type { %struct.list_head, %struct.timer_list, %struct.timer_list, [6 x i8], %union.tspec_body, [4 x %union.qos_tclas], i8, i8 }
%union.tspec_body = type { %struct.anon.114 }
%struct.anon.114 = type { %union.qos_tsinfo, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16 }
%union.qos_tsinfo = type { %struct.anon.115 }
%struct.anon.115 = type { i8, i8, i8, i8 }
%union.qos_tclas = type { %struct._TYPE1_IPV6 }
%struct._TYPE1_IPV6 = type { i8, i8, i8, i8, [16 x i8], [16 x i8], i16, i16, [3 x i8] }
%struct.ba_record = type { %struct.timer_list, i8, i8, %union.ba_param_set, i16, %union.sequence_control }
%union.ba_param_set = type { i16 }
%union.sequence_control = type { i16 }
%struct.rx_ts_record = type { %struct.ts_common_info, i16, i16, %struct.list_head, %struct.timer_list, %struct.ba_record, i16, i8, i8 }
%struct.rx_reorder_entry = type { %struct.list_head, i16, ptr }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtllib_softmac_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32 }
%struct.list_head = type { ptr, ptr }
%struct.rt_intel_promisc_mode = type { i8, i8 }
%struct.lib80211_crypt_info = type { ptr, ptr, [4 x ptr], i32, %struct.list_head, %struct.timer_list, i32 }
%struct.sw_cam_table = type { [6 x i8], i8, [16 x i8], i16, i8, i8 }
%struct.rt_pmkid_list = type { [6 x i8], [16 x i8], [33 x i8], i8 }
%struct.rtllib_frag_entry = type { i32, i32, i32, ptr, [6 x i8], [6 x i8] }
%struct.rtllib_network = type { [6 x i8], i8, [33 x i8], i8, [33 x i8], i8, %struct.rtllib_qos_data, i8, i8, i8, [2 x i8], i8, i8, [6 x i8], i8, i8, %struct.rtllib_rx_stats, i16, [12 x i8], i8, [16 x i8], i8, i32, i8, i32, [2 x i32], i16, i16, i16, i8, [64 x i8], i32, [64 x i8], i32, [256 x i8], i32, %struct.rtllib_tim_parameters, i8, i8, i64, i8, [4 x %struct.rtllib_wmm_ac_param], i8, i16, [255 x i8], %struct.bss_ht, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.list_head }
%struct.rtllib_qos_data = type { %struct.rtllib_qos_parameters, i32, i32, i32, i8, i8 }
%struct.rtllib_qos_parameters = type { [4 x i16], [4 x i16], [4 x i8], [4 x i8], [4 x i16] }
%struct.rtllib_rx_stats = type { i64, i8, i8, i8, i16, i8, i8, i8, i8, i16, i64, i32, i8, i16, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, [4 x i8], [2 x i8], i8, i8, i8, i16, i16, i16, i16, i8, i8, i16 }
%struct.rtllib_tim_parameters = type { i8, i8 }
%struct.rtllib_wmm_ac_param = type { i8, i8, i16 }
%struct.bss_ht = type { i8, [32 x i8], i16, [32 x i8], i16, i32, i32, i8, i8, i8, i8 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.118, i32 }
%union.anon.118 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.sk_buff_head = type { %union.anon.68, i32, %struct.spinlock }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, ptr }
%struct.bandwidth_autoswitch = type { i32, i32, i8, i8 }
%struct.rt_link_detect = type { i32, i32, [10 x i32], [10 x i32], i16, i16, i32, i32, i32, i8, i8, i8 }
%struct.rt_pwr_save_ctrl = type { i8, i8, i8, i32, i32, i8, i8, i8, i8, i32, i32, i8 }
%struct.tx_pending = type { i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.119 = type { %struct.anon.120 }
%struct.anon.120 = type { [16 x %struct.sw_chnl_cmd], [16 x %struct.sw_chnl_cmd], [16 x %struct.sw_chnl_cmd] }
%struct.sw_chnl_cmd = type { i32, i32, i32, i32 }
%struct.rt_hi_throughput = type <{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.ht_capab_ele, %struct.ht_info_ele, [32 x i8], [32 x i8], i8, i16, i8, i16, i8, i8, i8, i8, i8, i8, i32, i8, i8, i32, i16, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, [10 x i8], i8, i8, i8, i8, i16, i8, i8, i32, i8, i8, i8, i8 }>
%struct.ht_capab_ele = type <{ [3 x i8], [16 x i8], i16, [4 x i8], i8 }>
%struct.ht_info_ele = type { i8, [5 x i8], [16 x i8] }

@MCS_FILTER_ALL = dso_local global { [16 x i8], [16 x i8] } { [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\1F\00\00\00\00\00\00", [16 x i8] zeroinitializer }, align 32
@MCS_FILTER_1SS = dso_local global { <{ i8, i8, i8, i8, [12 x i8] }>, [16 x i8] } { <{ i8, i8, i8, i8, [12 x i8] }> <{ i8 -1, i8 0, i8 0, i8 1, [12 x i8] zeroinitializer }>, [16 x i8] zeroinitializer }, align 32
@MCS_DATA_RATE = dso_local global { [2 x [2 x [77 x i16]]], [152 x i8] } { [2 x [2 x [77 x i16]]] [[2 x [77 x i16]] [[77 x i16] [i16 13, i16 26, i16 39, i16 52, i16 78, i16 104, i16 117, i16 130, i16 26, i16 52, i16 78, i16 104, i16 156, i16 208, i16 234, i16 260, i16 39, i16 78, i16 117, i16 234, i16 312, i16 351, i16 390, i16 52, i16 104, i16 156, i16 208, i16 312, i16 416, i16 468, i16 520, i16 0, i16 78, i16 104, i16 130, i16 117, i16 156, i16 195, i16 104, i16 130, i16 130, i16 156, i16 182, i16 182, i16 208, i16 156, i16 195, i16 195, i16 234, i16 273, i16 273, i16 312, i16 130, i16 156, i16 181, i16 156, i16 181, i16 208, i16 234, i16 208, i16 234, i16 260, i16 260, i16 286, i16 195, i16 234, i16 273, i16 234, i16 273, i16 312, i16 351, i16 312, i16 351, i16 390, i16 390, i16 429, i16 0], [77 x i16] [i16 14, i16 29, i16 43, i16 58, i16 87, i16 116, i16 130, i16 144, i16 29, i16 58, i16 87, i16 116, i16 173, i16 231, i16 260, i16 289, i16 43, i16 87, i16 130, i16 173, i16 260, i16 347, i16 390, i16 433, i16 58, i16 116, i16 173, i16 231, i16 347, i16 462, i16 520, i16 578, i16 0, i16 87, i16 116, i16 144, i16 130, i16 173, i16 217, i16 116, i16 144, i16 144, i16 173, i16 202, i16 202, i16 231, i16 173, i16 217, i16 217, i16 260, i16 303, i16 303, i16 347, i16 144, i16 173, i16 202, i16 173, i16 202, i16 231, i16 260, i16 231, i16 260, i16 289, i16 289, i16 318, i16 217, i16 260, i16 303, i16 260, i16 303, i16 347, i16 390, i16 347, i16 390, i16 433, i16 433, i16 477]], [2 x [77 x i16]] [[77 x i16] [i16 27, i16 54, i16 81, i16 108, i16 162, i16 216, i16 243, i16 270, i16 54, i16 108, i16 162, i16 216, i16 324, i16 432, i16 486, i16 540, i16 81, i16 162, i16 243, i16 324, i16 486, i16 648, i16 729, i16 810, i16 108, i16 216, i16 324, i16 432, i16 648, i16 864, i16 972, i16 1080, i16 12, i16 162, i16 216, i16 270, i16 243, i16 324, i16 405, i16 216, i16 270, i16 270, i16 324, i16 378, i16 378, i16 432, i16 324, i16 405, i16 405, i16 486, i16 567, i16 567, i16 648, i16 270, i16 324, i16 378, i16 324, i16 378, i16 432, i16 486, i16 432, i16 486, i16 540, i16 540, i16 594, i16 405, i16 486, i16 567, i16 486, i16 567, i16 648, i16 729, i16 648, i16 729, i16 810, i16 810, i16 891], [77 x i16] [i16 30, i16 60, i16 90, i16 120, i16 180, i16 240, i16 270, i16 300, i16 60, i16 120, i16 180, i16 240, i16 360, i16 480, i16 540, i16 600, i16 90, i16 180, i16 270, i16 360, i16 540, i16 720, i16 810, i16 900, i16 120, i16 240, i16 360, i16 480, i16 720, i16 960, i16 1080, i16 1200, i16 13, i16 180, i16 240, i16 300, i16 270, i16 360, i16 450, i16 240, i16 300, i16 300, i16 360, i16 420, i16 420, i16 480, i16 360, i16 450, i16 450, i16 540, i16 630, i16 630, i16 720, i16 300, i16 360, i16 420, i16 360, i16 420, i16 480, i16 540, i16 480, i16 540, i16 600, i16 600, i16 660, i16 450, i16 540, i16 630, i16 540, i16 630, i16 720, i16 810, i16 720, i16 810, i16 900, i16 900, i16 990]]], [152 x i8] zeroinitializer }, align 32
@__const.TxCountToDataRate.CCKOFDMRate = private unnamed_addr constant [12 x i16] [i16 2, i16 4, i16 11, i16 22, i16 12, i16 18, i16 24, i16 36, i16 48, i16 72, i16 96, i16 108], align 2
@BELKINF5D8233V1_RALINK = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\00\17?", [29 x i8] zeroinitializer }, align 32
@BELKINF5D82334V3_RALINK = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\00\1C\DF", [29 x i8] zeroinitializer }, align 32
@PCI_RALINK = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\00\90\CC", [29 x i8] zeroinitializer }, align 32
@EDIMAX_RALINK = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\00\0E.", [29 x i8] zeroinitializer }, align 32
@AIRLINK_RALINK = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\00\18\02", [29 x i8] zeroinitializer }, align 32
@UNKNOWN_BORADCOM = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\00\14\BF", [29 x i8] zeroinitializer }, align 32
@LINKSYSWRT330_LINKSYSWRT300_BROADCOM = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\00\1Ap", [29 x i8] zeroinitializer }, align 32
@LINKSYSWRT350_LINKSYSWRT150_BROADCOM = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\00\1D~", [29 x i8] zeroinitializer }, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s(): posHTCap and pHTInfo are null\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.HTConstructCapabilityElement = private unnamed_addr constant [29 x i8] c"HTConstructCapabilityElement\00", align 1
@HTConstructCapabilityElement.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.HTConstructCapabilityElement, ptr @.str.2, ptr @.str.3, i8 0, i8 79, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rtllib\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/staging/rtl8192e/rtl819x_HTProc.c\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"TX HT cap/info ele BW=%d MaxAMSDUSize:%d DssCCk:%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s(): posHTInfo and pHTInfoEle are null\0A\00", [55 x i8] zeroinitializer }, align 32
@__func__.HTConstructInfoElement = private unnamed_addr constant [23 x i8] c"HTConstructInfoElement\00", align 1
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s(): posRT2RTAgg is null\0A\00", [37 x i8] zeroinitializer }, align 32
@__func__.HTConstructRT2RTAggElement = private unnamed_addr constant [27 x i8] c"HTConstructRT2RTAggElement\00", align 1
@.str.6 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s(): pMCSRateSet and pMCSFilter are null\0A\00", [53 x i8] zeroinitializer }, align 32
@__func__.HTGetHighestMCSRate = private unnamed_addr constant [20 x i8] c"HTGetHighestMCSRate\00", align 1
@HTOnAssocRsp.EWC11NHTCap = internal global { [4 x i8], [28 x i8] } { [4 x i8] c"\00\90L3", [28 x i8] zeroinitializer }, align 32
@HTOnAssocRsp.EWC11NHTInfo = internal global { [4 x i8], [28 x i8] } { [4 x i8] c"\00\90L4", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s(): HT_DISABLE\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.HTOnAssocRsp = private unnamed_addr constant [13 x i8] c"HTOnAssocRsp\00", align 1
@HTOnAssocRsp.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @__func__.HTOnAssocRsp, ptr @.str.2, ptr @.str.8, i8 0, i8 -125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s(): HT_ENABLE\0A\00", [47 x i8] zeroinitializer }, align 32
@__kstrtab_HT_update_self_and_peer_setting = external dso_local constant [0 x i8], align 1
@__kstrtabns_HT_update_self_and_peer_setting = external dso_local constant [0 x i8], align 1
@__ksymtab_HT_update_self_and_peer_setting = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @HT_update_self_and_peer_setting to i32), ptr @__kstrtab_HT_update_self_and_peer_setting, ptr @__kstrtabns_HT_update_self_and_peer_setting }, section "___ksymtab+HT_update_self_and_peer_setting", align 4
@HTCCheck.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 -51, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HTCCheck\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HT CONTROL FILED EXIST!!\0A\00", [38 x i8] zeroinitializer }, align 32
@HTSetConnectBwMode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 869, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016%s: bSwBwInProgress!!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"HTSetConnectBwMode\00", [45 x i8] zeroinitializer }, align 32
@HTSetConnectBwMode._entry_ptr = internal global ptr @HTSetConnectBwMode._entry, section ".printk_index", align 4
@HTSetConnectBwMode.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 -34, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s():pHTInfo->bCurBW40MHz:%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s(): pOperateMCS is null\0A\00", [37 x i8] zeroinitializer }, align 32
@__func__.HT_PickMCSRate = private unnamed_addr constant [15 x i8] c"HT_PickMCSRate\00", align 1
@DLINK_ATHEROS_1 = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\00\1C\F0", [29 x i8] zeroinitializer }, align 32
@DLINK_ATHEROS_2 = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\00!\91", [29 x i8] zeroinitializer }, align 32
@CISCO_BROADCOM = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\00\17\94", [29 x i8] zeroinitializer }, align 32
@LINKSYS_MARVELL_4400N = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\00\14\A4", [29 x i8] zeroinitializer }, align 32
@HTIOTPeerDetermine.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 52, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"HTIOTPeerDetermine\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"IOTPEER: %x\0A\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 16, i64 32, i64 48]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 5]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.21 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 4, i64 16, i64 32]
@___asan_gen_.22 = private unnamed_addr constant [15 x i8] c"MCS_FILTER_ALL\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 9, i32 4 }
@___asan_gen_.25 = private unnamed_addr constant [15 x i8] c"MCS_FILTER_1SS\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 14, i32 4 }
@___asan_gen_.28 = private unnamed_addr constant [14 x i8] c"MCS_DATA_RATE\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 19, i32 5 }
@___asan_gen_.31 = private unnamed_addr constant [23 x i8] c"BELKINF5D8233V1_RALINK\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 52, i32 11 }
@___asan_gen_.34 = private unnamed_addr constant [24 x i8] c"BELKINF5D82334V3_RALINK\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 54, i32 11 }
@___asan_gen_.37 = private unnamed_addr constant [11 x i8] c"PCI_RALINK\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 56, i32 11 }
@___asan_gen_.40 = private unnamed_addr constant [14 x i8] c"EDIMAX_RALINK\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 58, i32 11 }
@___asan_gen_.43 = private unnamed_addr constant [15 x i8] c"AIRLINK_RALINK\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 60, i32 11 }
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"UNKNOWN_BORADCOM\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 46, i32 11 }
@___asan_gen_.49 = private unnamed_addr constant [37 x i8] c"LINKSYSWRT330_LINKSYSWRT300_BROADCOM\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 48, i32 11 }
@___asan_gen_.52 = private unnamed_addr constant [37 x i8] c"LINKSYSWRT350_LINKSYSWRT150_BROADCOM\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 50, i32 11 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 281, i32 8 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 316, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 362, i32 8 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 401, i32 26 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 458, i32 8 }
@___asan_gen_.76 = private unnamed_addr constant [12 x i8] c"EWC11NHTCap\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 520, i32 12 }
@___asan_gen_.79 = private unnamed_addr constant [13 x i8] c"EWC11NHTInfo\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 521, i32 12 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 524, i32 26 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 527, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 822, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 869, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 889, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 424, i32 26 }
@___asan_gen_.109 = private unnamed_addr constant [16 x i8] c"DLINK_ATHEROS_1\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 62, i32 11 }
@___asan_gen_.112 = private unnamed_addr constant [16 x i8] c"DLINK_ATHEROS_2\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 64, i32 11 }
@___asan_gen_.115 = private unnamed_addr constant [15 x i8] c"CISCO_BROADCOM\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 66, i32 11 }
@___asan_gen_.118 = private unnamed_addr constant [22 x i8] c"LINKSYS_MARVELL_4400N\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 68, i32 11 }
@___asan_gen_.124 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.125 = private constant [45 x i8] c"../drivers/staging/rtl8192e/rtl819x_HTProc.c\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 209, i32 2 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @HTSetConnectBwMode._entry, ptr @HTSetConnectBwMode._entry_ptr, ptr @__ksymtab_HT_update_self_and_peer_setting, ptr @MCS_FILTER_ALL, ptr @MCS_FILTER_1SS, ptr @MCS_DATA_RATE, ptr @BELKINF5D8233V1_RALINK, ptr @BELKINF5D82334V3_RALINK, ptr @PCI_RALINK, ptr @EDIMAX_RALINK, ptr @AIRLINK_RALINK, ptr @UNKNOWN_BORADCOM, ptr @LINKSYSWRT330_LINKSYSWRT300_BROADCOM, ptr @LINKSYSWRT350_LINKSYSWRT150_BROADCOM, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @HTOnAssocRsp.EWC11NHTCap, ptr @HTOnAssocRsp.EWC11NHTInfo, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @DLINK_ATHEROS_1, ptr @DLINK_ATHEROS_2, ptr @CISCO_BROADCOM, ptr @LINKSYS_MARVELL_4400N, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @MCS_FILTER_ALL to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @MCS_FILTER_1SS to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @MCS_DATA_RATE to i32), i32 616, i32 768, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BELKINF5D8233V1_RALINK to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BELKINF5D82334V3_RALINK to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @PCI_RALINK to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @EDIMAX_RALINK to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @AIRLINK_RALINK to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @UNKNOWN_BORADCOM to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @LINKSYSWRT330_LINKSYSWRT300_BROADCOM to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @LINKSYSWRT350_LINKSYSWRT150_BROADCOM to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HTOnAssocRsp.EWC11NHTCap to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HTOnAssocRsp.EWC11NHTInfo to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @HTSetConnectBwMode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DLINK_ATHEROS_1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DLINK_ATHEROS_2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @CISCO_BROADCOM to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @LINKSYS_MARVELL_4400N to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @HTUpdateDefaultSetting(ptr nocapture noundef %ieee) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pHTInfo1 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 27
  %0 = ptrtoint ptr %pHTInfo1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pHTInfo1, align 8
  %bAcceptAddbaReq = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 55
  %2 = ptrtoint ptr %bAcceptAddbaReq to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %bAcceptAddbaReq, align 1
  %bRegShortGI20MHz = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %bRegShortGI20MHz to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %bRegShortGI20MHz, align 1
  %bRegShortGI40MHz = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %bRegShortGI40MHz to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %bRegShortGI40MHz, align 1
  %bRegBW40MHz = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %bRegBW40MHz to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %bRegBW40MHz, align 1
  %bRegSuppCCK = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %bRegSuppCCK to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %bRegSuppCCK, align 1
  %nAMSDU_MaxSize = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 16
  %7 = ptrtoint ptr %nAMSDU_MaxSize to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 7935, ptr %nAMSDU_MaxSize, align 1
  %bAMSDU_Support = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 15
  %8 = ptrtoint ptr %bAMSDU_Support to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %bAMSDU_Support, align 1
  %bAMPDUEnable = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 19
  %9 = ptrtoint ptr %bAMPDUEnable to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %bAMPDUEnable, align 1
  %AMPDU_Factor = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 21
  %10 = ptrtoint ptr %AMPDU_Factor to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 2, ptr %AMPDU_Factor, align 1
  %MPDU_Density = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 23
  %11 = ptrtoint ptr %MPDU_Density to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %MPDU_Density, align 1
  %SelfMimoPs = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 32
  %12 = ptrtoint ptr %SelfMimoPs to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 3, ptr %SelfMimoPs, align 1
  %bTxDisableRateFallBack = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 35
  %13 = ptrtoint ptr %bTxDisableRateFallBack to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %bTxDisableRateFallBack, align 2
  %bTxUseDriverAssingedRate = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 36
  %14 = ptrtoint ptr %bTxUseDriverAssingedRate to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %bTxUseDriverAssingedRate, align 1
  %bTxEnableFwCalcDur = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 37
  %15 = ptrtoint ptr %bTxEnableFwCalcDur to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %bTxEnableFwCalcDur, align 4
  %bRegRT2RTAggregation = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 39
  %16 = ptrtoint ptr %bRegRT2RTAggregation to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %bRegRT2RTAggregation, align 1
  %bRegRxReorderEnable = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 44
  %17 = ptrtoint ptr %bRegRxReorderEnable to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %bRegRxReorderEnable, align 1
  %RxReorderWinSize = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 46
  %18 = ptrtoint ptr %RxReorderWinSize to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 64, ptr %RxReorderWinSize, align 1
  %RxReorderPendingTime = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 47
  %19 = ptrtoint ptr %RxReorderPendingTime to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 30, ptr %RxReorderPendingTime, align 1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @TxCountToDataRate(ptr nocapture noundef readnone %ieee, i8 noundef zeroext %nDataRate) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %nDataRate to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %nDataRate)
  %cmp = icmp ult i8 %nDataRate, 12
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr [12 x i16], ptr @__const.TxCountToDataRate.CCKOFDMRate, i32 0, i32 %conv
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = and i8 %nDataRate, -16
  %1 = zext i8 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i8 %0, label %if.else26 [
    i8 16, label %if.end.if.end38_crit_edge
    i8 32, label %if.end38.fold.split
    i8 48, label %if.end38.fold.split61
  ]

if.end.if.end38_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.else26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %0)
  %2 = icmp eq i8 %0, 64
  %spec.select = zext i1 %2 to i32
  br label %if.end38

if.end38.fold.split:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.end38.fold.split61:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.end38:                                         ; preds = %if.end38.fold.split61, %if.end38.fold.split, %if.else26, %if.end.if.end38_crit_edge
  %is40MHz.0 = phi i32 [ 0, %if.end.if.end38_crit_edge ], [ %spec.select, %if.else26 ], [ 1, %if.end38.fold.split ], [ 0, %if.end38.fold.split61 ]
  %isShortGI.0 = phi i32 [ 0, %if.end.if.end38_crit_edge ], [ %spec.select, %if.else26 ], [ 0, %if.end38.fold.split ], [ 1, %if.end38.fold.split61 ]
  %and = and i32 %conv, 15
  %arrayidx44 = getelementptr [2 x [2 x [77 x i16]]], ptr @MCS_DATA_RATE, i32 0, i32 %is40MHz.0, i32 %isShortGI.0, i32 %and
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.then
  %retval.0.in = phi ptr [ %arrayidx, %if.then ], [ %arrayidx44, %if.end38 ]
  %3 = ptrtoint ptr %retval.0.in to i32
  call void @__asan_load2_noabort(i32 %3)
  %retval.0 = load i16, ptr %retval.0.in, align 2
  ret i16 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @IsHTHalfNmodeAPs(ptr nocapture noundef readonly %ieee) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %current_network = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 89
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(3) %current_network, ptr noundef nonnull dereferenceable(3) @BELKINF5D8233V1_RALINK, i32 3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp = icmp eq i32 %bcmp, 0
  br i1 %cmp, label %entry.if.end43_crit_edge, label %lor.lhs.false

entry.if.end43_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

lor.lhs.false:                                    ; preds = %entry
  %bcmp55 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %current_network, ptr noundef nonnull dereferenceable(3) @BELKINF5D82334V3_RALINK, i32 3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp55)
  %cmp4 = icmp eq i32 %bcmp55, 0
  br i1 %cmp4, label %lor.lhs.false.if.end43_crit_edge, label %lor.lhs.false5

lor.lhs.false.if.end43_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %bcmp56 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %current_network, ptr noundef nonnull dereferenceable(3) @PCI_RALINK, i32 3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp56)
  %cmp9 = icmp eq i32 %bcmp56, 0
  br i1 %cmp9, label %lor.lhs.false5.if.end43_crit_edge, label %lor.lhs.false10

lor.lhs.false5.if.end43_crit_edge:                ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

lor.lhs.false10:                                  ; preds = %lor.lhs.false5
  %bcmp57 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %current_network, ptr noundef nonnull dereferenceable(3) @EDIMAX_RALINK, i32 3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp57)
  %cmp14 = icmp eq i32 %bcmp57, 0
  br i1 %cmp14, label %lor.lhs.false10.if.end43_crit_edge, label %lor.lhs.false15

lor.lhs.false10.if.end43_crit_edge:               ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

lor.lhs.false15:                                  ; preds = %lor.lhs.false10
  %bcmp58 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %current_network, ptr noundef nonnull dereferenceable(3) @AIRLINK_RALINK, i32 3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp58)
  %cmp19 = icmp eq i32 %bcmp58, 0
  br i1 %cmp19, label %lor.lhs.false15.if.end43_crit_edge, label %lor.lhs.false20

lor.lhs.false15.if.end43_crit_edge:               ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

lor.lhs.false20:                                  ; preds = %lor.lhs.false15
  %ralink_cap_exist = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 89, i32 49
  %0 = ptrtoint ptr %ralink_cap_exist to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ralink_cap_exist, align 1, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %lor.lhs.false20.if.end43_crit_edge

lor.lhs.false20.if.end43_crit_edge:               ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.else:                                          ; preds = %lor.lhs.false20
  %bcmp59 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %current_network, ptr noundef nonnull dereferenceable(3) @UNKNOWN_BORADCOM, i32 3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp59)
  %tobool24.not = icmp eq i32 %bcmp59, 0
  br i1 %tobool24.not, label %if.else.if.end43_crit_edge, label %lor.lhs.false25

if.else.if.end43_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

lor.lhs.false25:                                  ; preds = %if.else
  %bcmp60 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %current_network, ptr noundef nonnull dereferenceable(3) @LINKSYSWRT330_LINKSYSWRT300_BROADCOM, i32 3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp60)
  %tobool29.not = icmp eq i32 %bcmp60, 0
  br i1 %tobool29.not, label %lor.lhs.false25.if.end43_crit_edge, label %lor.lhs.false30

lor.lhs.false25.if.end43_crit_edge:               ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

lor.lhs.false30:                                  ; preds = %lor.lhs.false25
  %bcmp61 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %current_network, ptr noundef nonnull dereferenceable(3) @LINKSYSWRT350_LINKSYSWRT150_BROADCOM, i32 3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp61)
  %tobool34.not = icmp eq i32 %bcmp61, 0
  br i1 %tobool34.not, label %lor.lhs.false30.if.end43_crit_edge, label %lor.lhs.false35

lor.lhs.false30.if.end43_crit_edge:               ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

lor.lhs.false35:                                  ; preds = %lor.lhs.false30
  %broadcom_cap_exist = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 89, i32 46
  %2 = ptrtoint ptr %broadcom_cap_exist to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %broadcom_cap_exist, align 4, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool36.not = icmp eq i8 %3, 0
  br i1 %tobool36.not, label %if.else38, label %lor.lhs.false35.if.end43_crit_edge

lor.lhs.false35.if.end43_crit_edge:               ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.else38:                                        ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #14
  %bd_rt2rt_aggregation = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 89, i32 45, i32 7
  %4 = ptrtoint ptr %bd_rt2rt_aggregation to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bd_rt2rt_aggregation, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool39.not = icmp ne i8 %5, 0
  br label %if.end43

if.end43:                                         ; preds = %if.else38, %lor.lhs.false35.if.end43_crit_edge, %lor.lhs.false30.if.end43_crit_edge, %lor.lhs.false25.if.end43_crit_edge, %if.else.if.end43_crit_edge, %lor.lhs.false20.if.end43_crit_edge, %lor.lhs.false15.if.end43_crit_edge, %lor.lhs.false10.if.end43_crit_edge, %lor.lhs.false5.if.end43_crit_edge, %lor.lhs.false.if.end43_crit_edge, %entry.if.end43_crit_edge
  %retValue.0.off0 = phi i1 [ true, %lor.lhs.false20.if.end43_crit_edge ], [ true, %lor.lhs.false15.if.end43_crit_edge ], [ true, %lor.lhs.false10.if.end43_crit_edge ], [ true, %lor.lhs.false5.if.end43_crit_edge ], [ true, %lor.lhs.false.if.end43_crit_edge ], [ true, %entry.if.end43_crit_edge ], [ true, %lor.lhs.false35.if.end43_crit_edge ], [ true, %lor.lhs.false30.if.end43_crit_edge ], [ true, %lor.lhs.false25.if.end43_crit_edge ], [ true, %if.else.if.end43_crit_edge ], [ %tobool39.not, %if.else38 ]
  ret i1 %retValue.0.off0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @HTResetIOTSetting(ptr nocapture noundef writeonly %pHTInfo) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %IOTAction = getelementptr inbounds %struct.rt_hi_throughput, ptr %pHTInfo, i32 0, i32 51
  %0 = ptrtoint ptr %IOTAction to i32
  call void @__asan_storeN_noabort(i32 %0, i32 4)
  store i32 0, ptr %IOTAction, align 1
  %IOTPeer = getelementptr inbounds %struct.rt_hi_throughput, ptr %pHTInfo, i32 0, i32 50
  %1 = ptrtoint ptr %IOTPeer to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %IOTPeer, align 1
  %IOTRaFunc = getelementptr inbounds %struct.rt_hi_throughput, ptr %pHTInfo, i32 0, i32 52
  %2 = ptrtoint ptr %IOTRaFunc to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %IOTRaFunc, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @HTConstructCapabilityElement(ptr nocapture noundef readonly %ieee, ptr noundef %posHTCap, ptr nocapture noundef %len, i8 noundef zeroext %IsEncrypt, i1 noundef zeroext %bAssoc) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pHTInfo = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 27
  %0 = ptrtoint ptr %pHTInfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pHTInfo, align 8
  %tobool.not = icmp eq ptr %posHTCap, null
  %tobool1.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.HTConstructCapabilityElement) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %len, align 1
  %conv = zext i8 %5 to i32
  %6 = call ptr @memset(ptr %posHTCap, i32 0, i32 %conv)
  br i1 %bAssoc, label %land.lhs.true, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %ePeerHTSpecVer = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %ePeerHTSpecVer to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %ePeerHTSpecVer, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp eq i32 %8, 1
  br i1 %cmp, label %if.then5, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %posHTCap to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 9456691, ptr %posHTCap, align 1
  %arrayidx = getelementptr i8, ptr %posHTCap, i32 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %storemerge = phi i8 [ 32, %if.then5 ], [ 28, %land.lhs.true.if.end6_crit_edge ], [ 28, %if.end.if.end6_crit_edge ]
  %pCapELE.0 = phi ptr [ %arrayidx, %if.then5 ], [ %posHTCap, %land.lhs.true.if.end6_crit_edge ], [ %posHTCap, %if.end.if.end6_crit_edge ]
  %10 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %storemerge, ptr %len, align 1
  %11 = ptrtoint ptr %pCapELE.0 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 3)
  %bf.load = load i24, ptr %pCapELE.0, align 1
  %bf.clear = and i24 %bf.load, 8388607
  store i24 %bf.clear, ptr %pCapELE.0, align 1
  %GetHalfNmodeSupportByAPsHandler = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 196
  %12 = ptrtoint ptr %GetHalfNmodeSupportByAPsHandler to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %GetHalfNmodeSupportByAPsHandler, align 4
  %dev7 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %14 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev7, align 4
  %call = tail call zeroext i1 %13(ptr noundef %15) #12
  br i1 %call, label %if.then8, label %if.else12

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %pCapELE.0 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 3)
  %bf.load9 = load i24, ptr %pCapELE.0, align 1
  %bf.clear10 = and i24 %bf.load9, -4194305
  br label %if.end19

if.else12:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %bRegBW40MHz = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %bRegBW40MHz to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bRegBW40MHz, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool14.not.not = icmp eq i8 %18, 0
  %19 = ptrtoint ptr %pCapELE.0 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 3)
  %bf.load16 = load i24, ptr %pCapELE.0, align 1
  %bf.shl = select i1 %tobool14.not.not, i24 0, i24 4194304
  %bf.clear17 = and i24 %bf.load16, -4194305
  %bf.set18 = or i24 %bf.clear17, %bf.shl
  br label %if.end19

if.end19:                                         ; preds = %if.else12, %if.then8
  %storemerge214 = phi i24 [ %bf.set18, %if.else12 ], [ %bf.clear10, %if.then8 ]
  %20 = ptrtoint ptr %pCapELE.0 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 3)
  store i24 %storemerge214, ptr %pCapELE.0, align 1
  %SelfMimoPs = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 32
  %21 = ptrtoint ptr %SelfMimoPs to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %SelfMimoPs, align 1
  %23 = and i8 %22, 3
  %bf.value21 = zext i8 %23 to i24
  %bf.shl22 = shl nuw nsw i24 %bf.value21, 20
  %bf.clear23 = and i24 %storemerge214, -4190209
  %bf.set24 = or i24 %bf.shl22, %bf.clear23
  %bf.set46 = or i24 %bf.set24, 462848
  store i24 %bf.set46, ptr %pCapELE.0, align 1
  %bRegBW40MHz47 = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %bRegBW40MHz47 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bRegBW40MHz47, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool49.not = icmp eq i8 %25, 0
  br i1 %tobool49.not, label %if.end19.cond.end_crit_edge, label %cond.true

if.end19.cond.end_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  %bRegSuppCCK = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 8
  %26 = ptrtoint ptr %bRegSuppCCK to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bRegSuppCCK, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool51 = icmp ne i8 %27, 0
  %phi.cast = zext i1 %tobool51 to i8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end19.cond.end_crit_edge
  %cond53 = phi i8 [ %phi.cast, %cond.true ], [ 0, %if.end19.cond.end_crit_edge ]
  %28 = zext i8 %cond53 to i24
  %bf.shl57 = shl nuw nsw i24 %28, 11
  %bf.clear58 = and i24 %bf.set46, -584961
  %bf.set59 = or i24 %bf.shl57, %bf.clear58
  %29 = ptrtoint ptr %pCapELE.0 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 3)
  store i24 %bf.set59, ptr %pCapELE.0, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @HTConstructCapabilityElement.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@HTConstructCapabilityElement, %if.then73)) #12
          to label %do.end90 [label %if.then73], !srcloc !94

if.then73:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev7, align 4
  %32 = ptrtoint ptr %pCapELE.0 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 3)
  %bf.load75 = load i24, ptr %pCapELE.0, align 1
  %bf.lshr = lshr i24 %bf.load75, 22
  %33 = and i24 %bf.lshr, 1
  %bf.cast = zext i24 %33 to i32
  %bf.lshr79 = lshr i24 %bf.load75, 12
  %34 = and i24 %bf.lshr79, 1
  %bf.cast81 = zext i24 %34 to i32
  %bf.lshr84 = lshr i24 %bf.load75, 11
  %35 = and i24 %bf.lshr84, 1
  %bf.cast86 = zext i24 %35 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @HTConstructCapabilityElement.__UNIQUE_ID_ddebug340, ptr noundef %31, ptr noundef nonnull @.str.3, i32 noundef %bf.cast, i32 noundef %bf.cast81, i32 noundef %bf.cast86) #12
  br label %do.end90

do.end90:                                         ; preds = %if.then73, %cond.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %IsEncrypt)
  %tobool91.not = icmp eq i8 %IsEncrypt, 0
  %36 = ptrtoint ptr %pCapELE.0 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 3)
  %bf.load100 = load i24, ptr %pCapELE.0, align 1
  %bf.set102 = and i24 %bf.load100, -249
  %. = select i1 %tobool91.not, i24 192, i24 184
  %bf.clear104 = or i24 %bf.set102, %.
  store i24 %bf.clear104, ptr %pCapELE.0, align 1
  %MCS = getelementptr inbounds %struct.ht_capab_ele, ptr %pCapELE.0, i32 0, i32 1
  %Regdot11HTOperationalRateSet = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 29
  %37 = call ptr @memcpy(ptr %MCS, ptr %Regdot11HTOperationalRateSet, i32 16)
  %ExtHTCapInfo = getelementptr inbounds %struct.ht_capab_ele, ptr %pCapELE.0, i32 0, i32 2
  %38 = ptrtoint ptr %ExtHTCapInfo to i32
  call void @__asan_storeN_noabort(i32 %38, i32 2)
  store i16 0, ptr %ExtHTCapInfo, align 1
  %TxBFCap = getelementptr inbounds %struct.ht_capab_ele, ptr %pCapELE.0, i32 0, i32 3
  %39 = ptrtoint ptr %TxBFCap to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store i32 0, ptr %TxBFCap, align 1
  %ASCap = getelementptr inbounds %struct.ht_capab_ele, ptr %pCapELE.0, i32 0, i32 4
  %40 = ptrtoint ptr %ASCap to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %ASCap, align 1
  br i1 %bAssoc, label %if.then111, label %do.end90.cleanup_crit_edge

do.end90.cleanup_crit_edge:                       ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then111:                                       ; preds = %do.end90
  %IOTAction = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 51
  %41 = ptrtoint ptr %IOTAction to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %IOTAction, align 1
  %and = and i32 %42, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool112.not = icmp eq i32 %and, 0
  br i1 %tobool112.not, label %if.then111.if.end119_crit_edge, label %if.then113

if.then111.if.end119_crit_edge:                   ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end119

if.then113:                                       ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx115 = getelementptr %struct.ht_capab_ele, ptr %pCapELE.0, i32 0, i32 1, i32 1
  %43 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx115, align 1
  %45 = and i8 %44, 127
  store i8 %45, ptr %arrayidx115, align 1
  br label %if.end119

if.end119:                                        ; preds = %if.then113, %if.then111.if.end119_crit_edge
  %46 = ptrtoint ptr %IOTAction to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %IOTAction, align 1
  %and121 = and i32 %47, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121)
  %tobool122.not = icmp eq i32 %and121, 0
  br i1 %tobool122.not, label %if.end119.if.end129_crit_edge, label %if.then123

if.end119.if.end129_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end129

if.then123:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx125 = getelementptr %struct.ht_capab_ele, ptr %pCapELE.0, i32 0, i32 1, i32 1
  %48 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx125, align 1
  %50 = and i8 %49, -65
  store i8 %50, ptr %arrayidx125, align 1
  br label %if.end129

if.end129:                                        ; preds = %if.then123, %if.end119.if.end129_crit_edge
  %51 = ptrtoint ptr %IOTAction to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %IOTAction, align 1
  %and131 = and i32 %52, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131)
  %tobool132.not = icmp eq i32 %and131, 0
  br i1 %tobool132.not, label %if.end129.if.end139_crit_edge, label %if.then133

if.end129.if.end139_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end139

if.then133:                                       ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx135 = getelementptr %struct.ht_capab_ele, ptr %pCapELE.0, i32 0, i32 1, i32 1
  %53 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %arrayidx135, align 1
  br label %if.end139

if.end139:                                        ; preds = %if.then133, %if.end129.if.end139_crit_edge
  %54 = ptrtoint ptr %IOTAction to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %IOTAction, align 1
  %and141 = and i32 %55, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and141)
  %tobool142.not = icmp eq i32 %and141, 0
  br i1 %tobool142.not, label %if.end139.if.end147_crit_edge, label %if.then143

if.end139.if.end147_crit_edge:                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end147

if.then143:                                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #14
  %56 = ptrtoint ptr %pCapELE.0 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 3)
  %bf.load144 = load i24, ptr %pCapELE.0, align 1
  %bf.clear145 = and i24 %bf.load144, -131073
  store i24 %bf.clear145, ptr %pCapELE.0, align 1
  br label %if.end147

if.end147:                                        ; preds = %if.then143, %if.end139.if.end147_crit_edge
  %57 = ptrtoint ptr %GetHalfNmodeSupportByAPsHandler to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %GetHalfNmodeSupportByAPsHandler, align 4
  %59 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev7, align 4
  %call150 = tail call zeroext i1 %58(ptr noundef %60) #12
  br i1 %call150, label %if.then151, label %if.end147.cleanup_crit_edge

if.end147.cleanup_crit_edge:                      ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then151:                                       ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #14
  %61 = ptrtoint ptr %pCapELE.0 to i32
  call void @__asan_loadN_noabort(i32 %61, i32 3)
  %bf.load152 = load i24, ptr %pCapELE.0, align 1
  %bf.clear153 = and i24 %bf.load152, -4194305
  store i24 %bf.clear153, ptr %pCapELE.0, align 1
  %arrayidx156 = getelementptr %struct.ht_capab_ele, ptr %pCapELE.0, i32 0, i32 1, i32 1
  %62 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %arrayidx156, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then151, %if.end147.cleanup_crit_edge, %do.end90.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @HTConstructInfoElement(ptr nocapture noundef readonly %ieee, ptr noundef %posHTInfo, ptr nocapture noundef %len, i8 noundef zeroext %IsEncrypt) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pHTInfo = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 27
  %0 = ptrtoint ptr %pHTInfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pHTInfo, align 8
  %tobool.not = icmp eq ptr %posHTInfo, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %3, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.HTConstructInfoElement) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %len, align 1
  %conv = zext i8 %5 to i32
  %6 = call ptr @memset(ptr %posHTInfo, i32 0, i32 %conv)
  %iw_mode = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 56
  %7 = ptrtoint ptr %iw_mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iw_mode, align 8
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %8, label %if.end.if.end56_crit_edge [
    i32 1, label %if.end.if.then7_crit_edge
    i32 3, label %if.end.if.then7_crit_edge83
  ]

if.end.if.then7_crit_edge83:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then7

if.end.if.end56_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

if.then7:                                         ; preds = %if.end.if.then7_crit_edge, %if.end.if.then7_crit_edge83
  %channel = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 89, i32 1
  %10 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %channel, align 2
  %12 = ptrtoint ptr %posHTInfo to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %posHTInfo, align 1
  %bRegBW40MHz = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %bRegBW40MHz to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bRegBW40MHz, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool8.not = icmp eq i8 %14, 0
  br i1 %tobool8.not, label %if.then7.cond.end_crit_edge, label %cond.false

if.then7.cond.end_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %channel, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %16)
  %cmp12 = icmp ult i8 %16, 7
  %phi.cast = select i1 %cmp12, i8 1, i8 3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then7.cond.end_crit_edge
  %cond14 = phi i8 [ %phi.cast, %cond.false ], [ 0, %if.then7.cond.end_crit_edge ]
  %ExtChlOffset = getelementptr inbounds %struct.ht_info_ele, ptr %posHTInfo, i32 0, i32 1
  %17 = zext i8 %cond14 to i40
  %18 = ptrtoint ptr %ExtChlOffset to i32
  call void @__asan_loadN_noabort(i32 %18, i32 5)
  %bf.load = load i40, ptr %ExtChlOffset, align 1
  %bf.shl = shl nuw i40 %17, 38
  %bf.clear = and i40 %bf.load, 274877906943
  %bf.set = or i40 %bf.clear, %bf.shl
  store i40 %bf.set, ptr %ExtChlOffset, align 1
  %19 = ptrtoint ptr %bRegBW40MHz to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bRegBW40MHz, align 1
  %21 = and i8 %20, 1
  %bf.value18 = zext i8 %21 to i40
  %bf.shl19 = shl nuw nsw i40 %bf.value18, 37
  %bf.clear20 = and i40 %bf.set, -270582939649
  %bf.set21 = or i40 %bf.shl19, %bf.clear20
  store i40 %bf.set21, ptr %ExtChlOffset, align 1
  %CurrentOpMode = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 31
  %22 = ptrtoint ptr %CurrentOpMode to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %CurrentOpMode, align 1
  %24 = and i8 %23, 3
  %bf.value33 = zext i8 %24 to i40
  %bf.shl34 = shl nuw nsw i40 %bf.value33, 30
  %bf.clear35 = and i40 %bf.set21, -136902083313
  %bf.set36 = or i40 %bf.clear35, %bf.shl34
  store i40 %bf.set36, ptr %ExtChlOffset, align 1
  %BasicMSC = getelementptr inbounds %struct.ht_info_ele, ptr %posHTInfo, i32 0, i32 2
  %25 = call ptr @memset(ptr %BasicMSC, i32 0, i32 16)
  br label %if.end56

if.end56:                                         ; preds = %cond.end, %if.end.if.end56_crit_edge
  %storemerge = phi i8 [ 24, %cond.end ], [ 0, %if.end.if.end56_crit_edge ]
  %26 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %storemerge, ptr %len, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @HTConstructRT2RTAggElement(ptr nocapture noundef readonly %ieee, ptr noundef writeonly %posRT2RTAgg, ptr nocapture noundef %len) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %posRT2RTAgg, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.HTConstructRT2RTAggElement) #16
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %len, align 1
  %conv = zext i8 %3 to i32
  %4 = call ptr @memset(ptr %posRT2RTAgg, i32 0, i32 %conv)
  %incdec.ptr = getelementptr i8, ptr %posRT2RTAgg, i32 1
  %5 = ptrtoint ptr %posRT2RTAgg to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %posRT2RTAgg, align 1
  %incdec.ptr1 = getelementptr i8, ptr %posRT2RTAgg, i32 2
  %6 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -32, ptr %incdec.ptr, align 1
  %incdec.ptr2 = getelementptr i8, ptr %posRT2RTAgg, i32 3
  %7 = ptrtoint ptr %incdec.ptr1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 76, ptr %incdec.ptr1, align 1
  %incdec.ptr3 = getelementptr i8, ptr %posRT2RTAgg, i32 4
  %8 = ptrtoint ptr %incdec.ptr2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 2, ptr %incdec.ptr2, align 1
  %incdec.ptr4 = getelementptr i8, ptr %posRT2RTAgg, i32 5
  %9 = ptrtoint ptr %incdec.ptr3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %incdec.ptr3, align 1
  %10 = ptrtoint ptr %incdec.ptr4 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 48, ptr %incdec.ptr4, align 1
  %bSupportRemoteWakeUp = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 18
  %11 = ptrtoint ptr %bSupportRemoteWakeUp to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bSupportRemoteWakeUp, align 1, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool5.not = icmp eq i8 %12, 0
  %spec.store.select = select i1 %tobool5.not, i8 48, i8 56
  %13 = ptrtoint ptr %incdec.ptr4 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %spec.store.select, ptr %incdec.ptr4, align 1
  %14 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 8, ptr %len, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @HTGetHighestMCSRate(ptr nocapture noundef readonly %ieee, ptr noundef readonly %pMCSRateSet, ptr noundef readonly %pMCSFilter) local_unnamed_addr #5 align 64 {
entry:
  %availableMcsRate = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %availableMcsRate) #12
  %0 = getelementptr inbounds [16 x i8], ptr %availableMcsRate, i32 0, i32 1
  %1 = getelementptr inbounds [16 x i8], ptr %availableMcsRate, i32 0, i32 2
  %2 = getelementptr inbounds [16 x i8], ptr %availableMcsRate, i32 0, i32 3
  %3 = getelementptr inbounds [16 x i8], ptr %availableMcsRate, i32 0, i32 4
  %4 = getelementptr inbounds [16 x i8], ptr %availableMcsRate, i32 0, i32 5
  %5 = getelementptr inbounds [16 x i8], ptr %availableMcsRate, i32 0, i32 6
  %6 = getelementptr inbounds [16 x i8], ptr %availableMcsRate, i32 0, i32 7
  %7 = getelementptr inbounds [16 x i8], ptr %availableMcsRate, i32 0, i32 8
  %8 = getelementptr inbounds [16 x i8], ptr %availableMcsRate, i32 0, i32 9
  %9 = getelementptr inbounds [16 x i8], ptr %availableMcsRate, i32 0, i32 10
  %10 = getelementptr inbounds [16 x i8], ptr %availableMcsRate, i32 0, i32 11
  %11 = getelementptr inbounds [16 x i8], ptr %availableMcsRate, i32 0, i32 12
  %12 = getelementptr inbounds [16 x i8], ptr %availableMcsRate, i32 0, i32 13
  %13 = getelementptr inbounds [16 x i8], ptr %availableMcsRate, i32 0, i32 14
  %14 = getelementptr inbounds [16 x i8], ptr %availableMcsRate, i32 0, i32 15
  %tobool.not = icmp eq ptr %pMCSRateSet, null
  %tobool1.not = icmp eq ptr %pMCSFilter, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %if.then, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %15 = ptrtoint ptr %pMCSRateSet to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %pMCSRateSet, align 1
  %17 = ptrtoint ptr %pMCSFilter to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %pMCSFilter, align 1
  %and106 = and i8 %18, %16
  %19 = ptrtoint ptr %availableMcsRate to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %and106, ptr %availableMcsRate, align 1
  %arrayidx.1 = getelementptr i8, ptr %pMCSRateSet, i32 1
  %20 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.1, align 1
  %arrayidx5.1 = getelementptr i8, ptr %pMCSFilter, i32 1
  %22 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx5.1, align 1
  %and106.1 = and i8 %23, %21
  %24 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %and106.1, ptr %0, align 1
  %arrayidx.2 = getelementptr i8, ptr %pMCSRateSet, i32 2
  %25 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.2, align 1
  %arrayidx5.2 = getelementptr i8, ptr %pMCSFilter, i32 2
  %27 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx5.2, align 1
  %and106.2 = and i8 %28, %26
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %and106.2, ptr %1, align 1
  %arrayidx.3 = getelementptr i8, ptr %pMCSRateSet, i32 3
  %30 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.3, align 1
  %arrayidx5.3 = getelementptr i8, ptr %pMCSFilter, i32 3
  %32 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx5.3, align 1
  %and106.3 = and i8 %33, %31
  %34 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %and106.3, ptr %2, align 1
  %arrayidx.4 = getelementptr i8, ptr %pMCSRateSet, i32 4
  %35 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.4, align 1
  %arrayidx5.4 = getelementptr i8, ptr %pMCSFilter, i32 4
  %37 = ptrtoint ptr %arrayidx5.4 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx5.4, align 1
  %and106.4 = and i8 %38, %36
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %and106.4, ptr %3, align 1
  %arrayidx.5 = getelementptr i8, ptr %pMCSRateSet, i32 5
  %40 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.5, align 1
  %arrayidx5.5 = getelementptr i8, ptr %pMCSFilter, i32 5
  %42 = ptrtoint ptr %arrayidx5.5 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx5.5, align 1
  %and106.5 = and i8 %43, %41
  %44 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %and106.5, ptr %4, align 1
  %arrayidx.6 = getelementptr i8, ptr %pMCSRateSet, i32 6
  %45 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.6, align 1
  %arrayidx5.6 = getelementptr i8, ptr %pMCSFilter, i32 6
  %47 = ptrtoint ptr %arrayidx5.6 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx5.6, align 1
  %and106.6 = and i8 %48, %46
  %49 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %and106.6, ptr %5, align 1
  %arrayidx.7 = getelementptr i8, ptr %pMCSRateSet, i32 7
  %50 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.7, align 1
  %arrayidx5.7 = getelementptr i8, ptr %pMCSFilter, i32 7
  %52 = ptrtoint ptr %arrayidx5.7 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx5.7, align 1
  %and106.7 = and i8 %53, %51
  %54 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %and106.7, ptr %6, align 1
  %arrayidx.8 = getelementptr i8, ptr %pMCSRateSet, i32 8
  %55 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx.8, align 1
  %arrayidx5.8 = getelementptr i8, ptr %pMCSFilter, i32 8
  %57 = ptrtoint ptr %arrayidx5.8 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx5.8, align 1
  %and106.8 = and i8 %58, %56
  %59 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %and106.8, ptr %7, align 1
  %arrayidx.9 = getelementptr i8, ptr %pMCSRateSet, i32 9
  %60 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx.9, align 1
  %arrayidx5.9 = getelementptr i8, ptr %pMCSFilter, i32 9
  %62 = ptrtoint ptr %arrayidx5.9 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx5.9, align 1
  %and106.9 = and i8 %63, %61
  %64 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %and106.9, ptr %8, align 1
  %arrayidx.10 = getelementptr i8, ptr %pMCSRateSet, i32 10
  %65 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx.10, align 1
  %arrayidx5.10 = getelementptr i8, ptr %pMCSFilter, i32 10
  %67 = ptrtoint ptr %arrayidx5.10 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx5.10, align 1
  %and106.10 = and i8 %68, %66
  %69 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %and106.10, ptr %9, align 1
  %arrayidx.11 = getelementptr i8, ptr %pMCSRateSet, i32 11
  %70 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx.11, align 1
  %arrayidx5.11 = getelementptr i8, ptr %pMCSFilter, i32 11
  %72 = ptrtoint ptr %arrayidx5.11 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx5.11, align 1
  %and106.11 = and i8 %73, %71
  %74 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %and106.11, ptr %10, align 1
  %arrayidx.12 = getelementptr i8, ptr %pMCSRateSet, i32 12
  %75 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx.12, align 1
  %arrayidx5.12 = getelementptr i8, ptr %pMCSFilter, i32 12
  %77 = ptrtoint ptr %arrayidx5.12 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx5.12, align 1
  %and106.12 = and i8 %78, %76
  %79 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %and106.12, ptr %11, align 1
  %arrayidx.13 = getelementptr i8, ptr %pMCSRateSet, i32 13
  %80 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx.13, align 1
  %arrayidx5.13 = getelementptr i8, ptr %pMCSFilter, i32 13
  %82 = ptrtoint ptr %arrayidx5.13 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx5.13, align 1
  %and106.13 = and i8 %83, %81
  %84 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %and106.13, ptr %12, align 1
  %arrayidx.14 = getelementptr i8, ptr %pMCSRateSet, i32 14
  %85 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx.14, align 1
  %arrayidx5.14 = getelementptr i8, ptr %pMCSFilter, i32 14
  %87 = ptrtoint ptr %arrayidx5.14 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx5.14, align 1
  %and106.14 = and i8 %88, %86
  %89 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %and106.14, ptr %13, align 1
  %arrayidx.15 = getelementptr i8, ptr %pMCSRateSet, i32 15
  %90 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx.15, align 1
  %arrayidx5.15 = getelementptr i8, ptr %pMCSFilter, i32 15
  %92 = ptrtoint ptr %arrayidx5.15 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx5.15, align 1
  %and106.15 = and i8 %93, %91
  %94 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %and106.15, ptr %14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and106)
  %cmp18.not = icmp eq i8 %and106, 0
  br i1 %cmp18.not, label %for.inc22, label %for.body.preheader.for.cond30.preheader_crit_edge

for.body.preheader.for.cond30.preheader_crit_edge: ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond30.preheader

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %95 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %96, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.HTGetHighestMCSRate) #16
  br label %cleanup

for.inc22:                                        ; preds = %for.body.preheader
  %97 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %cmp18.not.1 = icmp eq i8 %98, 0
  br i1 %cmp18.not.1, label %for.inc22.1, label %for.inc22.for.cond30.preheader_crit_edge

for.inc22.for.cond30.preheader_crit_edge:         ; preds = %for.inc22
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond30.preheader

for.inc22.1:                                      ; preds = %for.inc22
  %99 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %cmp18.not.2 = icmp eq i8 %100, 0
  br i1 %cmp18.not.2, label %for.inc22.2, label %for.inc22.1.for.cond30.preheader_crit_edge

for.inc22.1.for.cond30.preheader_crit_edge:       ; preds = %for.inc22.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond30.preheader

for.inc22.2:                                      ; preds = %for.inc22.1
  %101 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %cmp18.not.3 = icmp eq i8 %102, 0
  br i1 %cmp18.not.3, label %for.inc22.3, label %for.inc22.2.for.cond30.preheader_crit_edge

for.inc22.2.for.cond30.preheader_crit_edge:       ; preds = %for.inc22.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond30.preheader

for.inc22.3:                                      ; preds = %for.inc22.2
  %103 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %cmp18.not.4 = icmp eq i8 %104, 0
  br i1 %cmp18.not.4, label %for.inc22.4, label %for.inc22.3.for.cond30.preheader_crit_edge

for.inc22.3.for.cond30.preheader_crit_edge:       ; preds = %for.inc22.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond30.preheader

for.inc22.4:                                      ; preds = %for.inc22.3
  %105 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %cmp18.not.5 = icmp eq i8 %106, 0
  br i1 %cmp18.not.5, label %for.inc22.5, label %for.inc22.4.for.cond30.preheader_crit_edge

for.inc22.4.for.cond30.preheader_crit_edge:       ; preds = %for.inc22.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond30.preheader

for.inc22.5:                                      ; preds = %for.inc22.4
  %107 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %cmp18.not.6 = icmp eq i8 %108, 0
  br i1 %cmp18.not.6, label %for.inc22.6, label %for.inc22.5.for.cond30.preheader_crit_edge

for.inc22.5.for.cond30.preheader_crit_edge:       ; preds = %for.inc22.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond30.preheader

for.inc22.6:                                      ; preds = %for.inc22.5
  %109 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %cmp18.not.7 = icmp eq i8 %110, 0
  br i1 %cmp18.not.7, label %for.inc22.7, label %for.inc22.6.for.cond30.preheader_crit_edge

for.inc22.6.for.cond30.preheader_crit_edge:       ; preds = %for.inc22.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond30.preheader

for.inc22.7:                                      ; preds = %for.inc22.6
  %111 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %cmp18.not.8 = icmp eq i8 %112, 0
  br i1 %cmp18.not.8, label %for.inc22.8, label %for.inc22.7.for.cond30.preheader_crit_edge

for.inc22.7.for.cond30.preheader_crit_edge:       ; preds = %for.inc22.7
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond30.preheader

for.inc22.8:                                      ; preds = %for.inc22.7
  %113 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %cmp18.not.9 = icmp eq i8 %114, 0
  br i1 %cmp18.not.9, label %for.inc22.9, label %for.inc22.8.for.cond30.preheader_crit_edge

for.inc22.8.for.cond30.preheader_crit_edge:       ; preds = %for.inc22.8
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond30.preheader

for.inc22.9:                                      ; preds = %for.inc22.8
  %115 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %cmp18.not.10 = icmp eq i8 %116, 0
  br i1 %cmp18.not.10, label %for.inc22.10, label %for.inc22.9.for.cond30.preheader_crit_edge

for.inc22.9.for.cond30.preheader_crit_edge:       ; preds = %for.inc22.9
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond30.preheader

for.inc22.10:                                     ; preds = %for.inc22.9
  %117 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %cmp18.not.11 = icmp eq i8 %118, 0
  br i1 %cmp18.not.11, label %for.inc22.11, label %for.inc22.10.for.cond30.preheader_crit_edge

for.inc22.10.for.cond30.preheader_crit_edge:      ; preds = %for.inc22.10
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond30.preheader

for.inc22.11:                                     ; preds = %for.inc22.10
  %119 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %cmp18.not.12 = icmp eq i8 %120, 0
  br i1 %cmp18.not.12, label %for.inc22.12, label %for.inc22.11.for.cond30.preheader_crit_edge

for.inc22.11.for.cond30.preheader_crit_edge:      ; preds = %for.inc22.11
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond30.preheader

for.inc22.12:                                     ; preds = %for.inc22.11
  %121 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %cmp18.not.13 = icmp eq i8 %122, 0
  br i1 %cmp18.not.13, label %for.inc22.13, label %for.inc22.12.for.cond30.preheader_crit_edge

for.inc22.12.for.cond30.preheader_crit_edge:      ; preds = %for.inc22.12
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond30.preheader

for.inc22.13:                                     ; preds = %for.inc22.12
  %123 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %cmp18.not.14 = icmp eq i8 %124, 0
  br i1 %cmp18.not.14, label %for.inc22.14, label %for.inc22.13.for.cond30.preheader_crit_edge

for.inc22.13.for.cond30.preheader_crit_edge:      ; preds = %for.inc22.13
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond30.preheader

for.inc22.14:                                     ; preds = %for.inc22.13
  %125 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %cmp18.not.15 = icmp eq i8 %126, 0
  br i1 %cmp18.not.15, label %for.inc22.14.cleanup_crit_edge, label %for.inc22.14.for.cond30.preheader_crit_edge

for.inc22.14.for.cond30.preheader_crit_edge:      ; preds = %for.inc22.14
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond30.preheader

for.inc22.14.cleanup_crit_edge:                   ; preds = %for.inc22.14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond30.preheader:                             ; preds = %for.inc22.14.for.cond30.preheader_crit_edge, %for.inc22.13.for.cond30.preheader_crit_edge, %for.inc22.12.for.cond30.preheader_crit_edge, %for.inc22.11.for.cond30.preheader_crit_edge, %for.inc22.10.for.cond30.preheader_crit_edge, %for.inc22.9.for.cond30.preheader_crit_edge, %for.inc22.8.for.cond30.preheader_crit_edge, %for.inc22.7.for.cond30.preheader_crit_edge, %for.inc22.6.for.cond30.preheader_crit_edge, %for.inc22.5.for.cond30.preheader_crit_edge, %for.inc22.4.for.cond30.preheader_crit_edge, %for.inc22.3.for.cond30.preheader_crit_edge, %for.inc22.2.for.cond30.preheader_crit_edge, %for.inc22.1.for.cond30.preheader_crit_edge, %for.inc22.for.cond30.preheader_crit_edge, %for.body.preheader.for.cond30.preheader_crit_edge
  %pHTInfo1.i = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 27
  br label %for.body34

for.body34:                                       ; preds = %for.inc74.for.body34_crit_edge, %for.cond30.preheader
  %indvars.iv130 = phi i32 [ 0, %for.cond30.preheader ], [ %indvars.iv.next131, %for.inc74.for.body34_crit_edge ]
  %mcsRate.0128 = phi i8 [ 0, %for.cond30.preheader ], [ %mcsRate.3, %for.inc74.for.body34_crit_edge ]
  %arrayidx36 = getelementptr [16 x i8], ptr %availableMcsRate, i32 0, i32 %indvars.iv130
  %127 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %arrayidx36, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %cmp38.not = icmp eq i8 %128, 0
  br i1 %cmp38.not, label %for.body34.for.inc74_crit_edge, label %for.cond43.preheader

for.body34.for.inc74_crit_edge:                   ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc74

for.cond43.preheader:                             ; preds = %for.body34
  %129 = shl i32 %indvars.iv130, 3
  br label %for.body47

for.body47:                                       ; preds = %if.end67.for.body47_crit_edge, %for.cond43.preheader
  %indvars.iv = phi i32 [ 0, %for.cond43.preheader ], [ %indvars.iv.next, %if.end67.for.body47_crit_edge ]
  %mcsRate.1125 = phi i8 [ %mcsRate.0128, %for.cond43.preheader ], [ %mcsRate.2, %if.end67.for.body47_crit_edge ]
  %bitMap.0124 = phi i8 [ %128, %for.cond43.preheader ], [ %143, %if.end67.for.body47_crit_edge ]
  %130 = and i8 %bitMap.0124, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %cmp49.not = icmp eq i8 %130, 0
  br i1 %cmp49.not, label %for.body47.if.end67_crit_edge, label %if.then51

for.body47.if.end67_crit_edge:                    ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67

if.then51:                                        ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #14
  %131 = add nuw nsw i32 %indvars.iv, %129
  %132 = ptrtoint ptr %pHTInfo1.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %pHTInfo1.i, align 8
  %bCurBW40MHz.i = getelementptr inbounds %struct.rt_hi_throughput, ptr %133, i32 0, i32 3
  %134 = ptrtoint ptr %bCurBW40MHz.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %bCurBW40MHz.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %tobool.not.i = icmp eq i8 %135, 0
  %bCurShortGI40MHz.i = getelementptr inbounds %struct.rt_hi_throughput, ptr %133, i32 0, i32 5
  %bCurShortGI20MHz.i = getelementptr inbounds %struct.rt_hi_throughput, ptr %133, i32 0, i32 7
  %cond12.in.in.in.i = select i1 %tobool.not.i, ptr %bCurShortGI20MHz.i, ptr %bCurShortGI40MHz.i
  %136 = ptrtoint ptr %cond12.in.in.in.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %cond12.in.in.i = load i8, ptr %cond12.in.in.in.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cond12.in.in.i)
  %cond12.in.i = icmp ne i8 %cond12.in.in.i, 0
  %not.tobool.not.i = xor i1 %tobool.not.i, true
  %idxprom.i = zext i1 %not.tobool.not.i to i32
  %idxprom14.i = zext i1 %cond12.in.i to i32
  %arrayidx17.i = getelementptr [2 x [2 x [77 x i16]]], ptr @MCS_DATA_RATE, i32 0, i32 %idxprom.i, i32 %idxprom14.i, i32 %131
  %137 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %arrayidx17.i, align 2
  %139 = and i8 %mcsRate.1125, 127
  %and.i118 = zext i8 %139 to i32
  %arrayidx17.i119 = getelementptr [2 x [2 x [77 x i16]]], ptr @MCS_DATA_RATE, i32 0, i32 %idxprom.i, i32 %idxprom14.i, i32 %and.i118
  %140 = ptrtoint ptr %arrayidx17.i119 to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %arrayidx17.i119, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %138, i16 %141)
  %cmp58 = icmp ugt i16 %138, %141
  %142 = trunc i32 %131 to i8
  %spec.select = select i1 %cmp58, i8 %142, i8 %mcsRate.1125
  br label %if.end67

if.end67:                                         ; preds = %if.then51, %for.body47.if.end67_crit_edge
  %mcsRate.2 = phi i8 [ %mcsRate.1125, %for.body47.if.end67_crit_edge ], [ %spec.select, %if.then51 ]
  %143 = lshr i8 %bitMap.0124, 1
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 8
  br i1 %exitcond.not, label %if.end67.for.inc74_crit_edge, label %if.end67.for.body47_crit_edge

if.end67.for.body47_crit_edge:                    ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body47

if.end67.for.inc74_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc74

for.inc74:                                        ; preds = %if.end67.for.inc74_crit_edge, %for.body34.for.inc74_crit_edge
  %mcsRate.3 = phi i8 [ %mcsRate.0128, %for.body34.for.inc74_crit_edge ], [ %mcsRate.2, %if.end67.for.inc74_crit_edge ]
  %indvars.iv.next131 = add nuw nsw i32 %indvars.iv130, 1
  %exitcond133.not = icmp eq i32 %indvars.iv.next131, 16
  br i1 %exitcond133.not, label %for.end76, label %for.inc74.for.body34_crit_edge

for.inc74.for.body34_crit_edge:                   ; preds = %for.inc74
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body34

for.end76:                                        ; preds = %for.inc74
  call void @__sanitizer_cov_trace_pc() #14
  %144 = or i8 %mcsRate.3, -128
  br label %cleanup

cleanup:                                          ; preds = %for.end76, %for.inc22.14.cleanup_crit_edge, %if.then
  %retval.0 = phi i8 [ %144, %for.end76 ], [ 0, %if.then ], [ 0, %for.inc22.14.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %availableMcsRate) #12
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @HTOnAssocRsp(ptr noundef %ieee) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pHTInfo1 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 27
  %0 = ptrtoint ptr %pHTInfo1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pHTInfo1, align 8
  %bCurrentHTSupport = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bCurrentHTSupport to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bCurrentHTSupport, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %do.body2

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %5, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.HTOnAssocRsp) #16
  br label %cleanup

do.body2:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @HTOnAssocRsp.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@HTOnAssocRsp, %if.then6)) #12
          to label %do.end10 [label %if.then6], !srcloc !94

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  %dev7 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %6 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev7, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @HTOnAssocRsp.__UNIQUE_ID_ddebug341, ptr noundef %7, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.HTOnAssocRsp) #12
  br label %do.end10

do.end10:                                         ; preds = %if.then6, %do.body2
  %PeerHTCapBuf = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 13
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(4) %PeerHTCapBuf, ptr noundef nonnull dereferenceable(4) @HTOnAssocRsp.EWC11NHTCap, i32 4) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool12.not = icmp eq i32 %bcmp, 0
  %arrayidx = getelementptr %struct.rt_hi_throughput, ptr %1, i32 0, i32 13, i32 4
  %pPeerHTCap.0 = select i1 %tobool12.not, ptr %arrayidx, ptr %PeerHTCapBuf
  %PeerHTInfoBuf = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 14
  %bcmp312 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %PeerHTInfoBuf, ptr noundef nonnull dereferenceable(4) @HTOnAssocRsp.EWC11NHTInfo, i32 4) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp312)
  %tobool20.not = icmp eq i32 %bcmp312, 0
  %arrayidx23 = getelementptr %struct.rt_hi_throughput, ptr %1, i32 0, i32 14, i32 4
  %pPeerHTInfo.0 = select i1 %tobool20.not, ptr %arrayidx23, ptr %PeerHTInfoBuf
  %8 = ptrtoint ptr %pPeerHTCap.0 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 3)
  %bf.load = load i24, ptr %pPeerHTCap.0, align 1
  %bf.lshr = lshr i24 %bf.load, 22
  %9 = and i24 %bf.lshr, 1
  %bf.cast = zext i24 %9 to i32
  %ExtChlOffset = getelementptr inbounds %struct.ht_info_ele, ptr %pPeerHTInfo.0, i32 0, i32 1
  %10 = ptrtoint ptr %ExtChlOffset to i32
  call void @__asan_loadN_noabort(i32 %10, i32 5)
  %bf.load28 = load i40, ptr %ExtChlOffset, align 1
  %bf.lshr29 = lshr i40 %bf.load28, 38
  %bf.cast30 = trunc i40 %bf.lshr29 to i32
  tail call void @HTSetConnectBwMode(ptr noundef %ieee, i32 noundef %bf.cast, i32 noundef %bf.cast30)
  %11 = ptrtoint ptr %ExtChlOffset to i32
  call void @__asan_loadN_noabort(i32 %11, i32 5)
  %bf.load32 = load i40, ptr %ExtChlOffset, align 1
  %12 = lshr i40 %bf.load32, 37
  %13 = trunc i40 %12 to i8
  %14 = and i8 %13, 1
  %bCurTxBW40MHz = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 35
  %15 = ptrtoint ptr %bCurTxBW40MHz to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %bCurTxBW40MHz, align 1
  %bRegShortGI20MHz = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %bRegShortGI20MHz to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bRegShortGI20MHz, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool40.not = icmp eq i8 %17, 0
  br i1 %tobool40.not, label %do.end10.cond.end_crit_edge, label %cond.true

do.end10.cond.end_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %pPeerHTCap.0 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 3)
  %bf.load41 = load i24, ptr %pPeerHTCap.0, align 1
  %bf.lshr42 = lshr i24 %bf.load41, 18
  %19 = trunc i24 %bf.lshr42 to i8
  %bf.cast44 = and i8 %19, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end10.cond.end_crit_edge
  %cond49 = phi i8 [ %bf.cast44, %cond.true ], [ 0, %do.end10.cond.end_crit_edge ]
  %bCurShortGI20MHz = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 7
  %20 = ptrtoint ptr %bCurShortGI20MHz to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %cond49, ptr %bCurShortGI20MHz, align 1
  %bRegShortGI40MHz = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %bRegShortGI40MHz to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bRegShortGI40MHz, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool52.not = icmp eq i8 %22, 0
  br i1 %tobool52.not, label %cond.end.cond.end63_crit_edge, label %cond.true53

cond.end.cond.end63_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end63

cond.true53:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %pPeerHTCap.0 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 3)
  %bf.load54 = load i24, ptr %pPeerHTCap.0, align 1
  %bf.lshr55 = lshr i24 %bf.load54, 17
  %24 = trunc i24 %bf.lshr55 to i8
  %bf.cast57 = and i8 %24, 1
  br label %cond.end63

cond.end63:                                       ; preds = %cond.true53, %cond.end.cond.end63_crit_edge
  %cond64 = phi i8 [ %bf.cast57, %cond.true53 ], [ 0, %cond.end.cond.end63_crit_edge ]
  %bCurShortGI40MHz = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 5
  %25 = ptrtoint ptr %bCurShortGI40MHz to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %cond64, ptr %bCurShortGI40MHz, align 1
  %bRegSuppCCK = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 8
  %26 = ptrtoint ptr %bRegSuppCCK to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bRegSuppCCK, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool67.not = icmp eq i8 %27, 0
  br i1 %tobool67.not, label %cond.end63.cond.end78_crit_edge, label %cond.true68

cond.end63.cond.end78_crit_edge:                  ; preds = %cond.end63
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end78

cond.true68:                                      ; preds = %cond.end63
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %pPeerHTCap.0 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 3)
  %bf.load69 = load i24, ptr %pPeerHTCap.0, align 1
  %bf.lshr70 = lshr i24 %bf.load69, 11
  %29 = trunc i24 %bf.lshr70 to i8
  %bf.cast72 = and i8 %29, 1
  br label %cond.end78

cond.end78:                                       ; preds = %cond.true68, %cond.end63.cond.end78_crit_edge
  %cond79 = phi i8 [ %bf.cast72, %cond.true68 ], [ 0, %cond.end63.cond.end78_crit_edge ]
  %bCurSuppCCK = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 9
  %30 = ptrtoint ptr %bCurSuppCCK to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %cond79, ptr %bCurSuppCCK, align 1
  %bAMSDU_Support = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 15
  %31 = ptrtoint ptr %bAMSDU_Support to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %bAMSDU_Support, align 1
  %bCurrent_AMSDU_Support = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 17
  %33 = ptrtoint ptr %bCurrent_AMSDU_Support to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %bCurrent_AMSDU_Support, align 1
  %34 = ptrtoint ptr %pPeerHTCap.0 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 3)
  %bf.load81 = load i24, ptr %pPeerHTCap.0, align 1
  %35 = and i24 %bf.load81, 4096
  %cmp86 = icmp eq i24 %35, 0
  %conv89 = select i1 %cmp86, i16 3839, i16 7935
  %nAMSDU_MaxSize = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 16
  %36 = ptrtoint ptr %nAMSDU_MaxSize to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %nAMSDU_MaxSize, align 1
  %38 = call i16 @llvm.umin.i16(i16 %37, i16 %conv89)
  %39 = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 18
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 2)
  store i16 %38, ptr %39, align 1
  %bAMPDUEnable = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 19
  %41 = ptrtoint ptr %bAMPDUEnable to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %bAMPDUEnable, align 1
  %bCurrentAMPDUEnable = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 20
  %43 = ptrtoint ptr %bCurrentAMPDUEnable to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %bCurrentAMPDUEnable, align 1
  %rtllib_ap_sec_type = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 197
  %44 = ptrtoint ptr %rtllib_ap_sec_type to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rtllib_ap_sec_type, align 8
  %tobool99.not = icmp eq ptr %45, null
  br i1 %tobool99.not, label %cond.end78.if.end115_crit_edge, label %land.lhs.true

cond.end78.if.end115_crit_edge:                   ; preds = %cond.end78
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end115

land.lhs.true:                                    ; preds = %cond.end78
  %call101 = tail call zeroext i8 %45(ptr noundef %ieee) #12
  %46 = and i8 %call101, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool103.not = icmp eq i8 %46, 0
  br i1 %tobool103.not, label %land.lhs.true.if.end115_crit_edge, label %if.then104

land.lhs.true.if.end115_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end115

if.then104:                                       ; preds = %land.lhs.true
  %IOTPeer = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 50
  %47 = ptrtoint ptr %IOTPeer to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %IOTPeer, align 1
  %49 = zext i8 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.18)
  switch i8 %48, label %if.then104.if.end115_crit_edge [
    i8 5, label %if.then104.if.then112_crit_edge
    i8 0, label %if.then104.if.then112_crit_edge316
  ]

if.then104.if.then112_crit_edge316:               ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then112

if.then104.if.then112_crit_edge:                  ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then112

if.then104.if.end115_crit_edge:                   ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end115

if.then112:                                       ; preds = %if.then104.if.then112_crit_edge, %if.then104.if.then112_crit_edge316
  %50 = ptrtoint ptr %bCurrentAMPDUEnable to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %bCurrentAMPDUEnable, align 1
  br label %if.end115

if.end115:                                        ; preds = %if.then112, %if.then104.if.end115_crit_edge, %land.lhs.true.if.end115_crit_edge, %cond.end78.if.end115_crit_edge
  %bRegRT2RTAggregation = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 39
  %51 = ptrtoint ptr %bRegRT2RTAggregation to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %bRegRT2RTAggregation, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool116.not = icmp eq i8 %52, 0
  br i1 %tobool116.not, label %if.then117, label %if.else135

if.then117:                                       ; preds = %if.end115
  %AMPDU_Factor = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 21
  %53 = ptrtoint ptr %AMPDU_Factor to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %AMPDU_Factor, align 1
  %55 = ptrtoint ptr %pPeerHTCap.0 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 3)
  %bf.load119 = load i24, ptr %pPeerHTCap.0, align 1
  %56 = trunc i24 %bf.load119 to i8
  %57 = lshr i8 %56, 6
  call void @__sanitizer_cov_trace_cmp1(i8 %54, i8 %57)
  %cmp124 = icmp ugt i8 %54, %57
  %CurrentAMPDUFactor = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 22
  br i1 %cmp124, label %if.then126, label %if.else131

if.then126:                                       ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #14
  %58 = ptrtoint ptr %CurrentAMPDUFactor to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %CurrentAMPDUFactor, align 1
  br label %if.end168

if.else131:                                       ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #14
  %59 = ptrtoint ptr %CurrentAMPDUFactor to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %54, ptr %CurrentAMPDUFactor, align 1
  br label %if.end168

if.else135:                                       ; preds = %if.end115
  %bd_rt2rt_aggregation = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 89, i32 45, i32 7
  %60 = ptrtoint ptr %bd_rt2rt_aggregation to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %bd_rt2rt_aggregation, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool136.not = icmp eq i8 %61, 0
  br i1 %tobool136.not, label %if.else150, label %if.then137

if.then137:                                       ; preds = %if.else135
  %pairwise_key_type = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 79
  %62 = ptrtoint ptr %pairwise_key_type to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %pairwise_key_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %cmp139.not = icmp eq i16 %63, 0
  br i1 %cmp139.not, label %if.else147, label %if.then141

if.then141:                                       ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #14
  %64 = ptrtoint ptr %pPeerHTCap.0 to i32
  call void @__asan_loadN_noabort(i32 %64, i32 3)
  %bf.load142 = load i24, ptr %pPeerHTCap.0, align 1
  %65 = trunc i24 %bf.load142 to i8
  %66 = lshr i8 %65, 6
  %CurrentAMPDUFactor146 = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 22
  %67 = ptrtoint ptr %CurrentAMPDUFactor146 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %CurrentAMPDUFactor146, align 1
  br label %if.end168

if.else147:                                       ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #14
  %CurrentAMPDUFactor148 = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 22
  %68 = ptrtoint ptr %CurrentAMPDUFactor148 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 3, ptr %CurrentAMPDUFactor148, align 1
  br label %if.end168

if.else150:                                       ; preds = %if.else135
  %69 = ptrtoint ptr %pPeerHTCap.0 to i32
  call void @__asan_loadN_noabort(i32 %69, i32 3)
  %bf.load151 = load i24, ptr %pPeerHTCap.0, align 1
  %70 = trunc i24 %bf.load151 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %70)
  %cmp156 = icmp sgt i8 %70, -1
  br i1 %cmp156, label %if.then158, label %if.else164

if.then158:                                       ; preds = %if.else150
  call void @__sanitizer_cov_trace_pc() #14
  %71 = lshr i8 %70, 6
  %CurrentAMPDUFactor163 = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 22
  %72 = ptrtoint ptr %CurrentAMPDUFactor163 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %CurrentAMPDUFactor163, align 1
  br label %if.end168

if.else164:                                       ; preds = %if.else150
  call void @__sanitizer_cov_trace_pc() #14
  %CurrentAMPDUFactor165 = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 22
  %73 = ptrtoint ptr %CurrentAMPDUFactor165 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 2, ptr %CurrentAMPDUFactor165, align 1
  br label %if.end168

if.end168:                                        ; preds = %if.else164, %if.then158, %if.else147, %if.then141, %if.else131, %if.then126
  %MPDU_Density = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 23
  %74 = ptrtoint ptr %MPDU_Density to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %MPDU_Density, align 1
  %76 = ptrtoint ptr %pPeerHTCap.0 to i32
  call void @__asan_loadN_noabort(i32 %76, i32 3)
  %bf.load170 = load i24, ptr %pPeerHTCap.0, align 1
  %77 = trunc i24 %bf.load170 to i8
  %78 = lshr i8 %77, 3
  %bf.cast173 = and i8 %78, 7
  %79 = call i8 @llvm.umax.i8(i8 %75, i8 %bf.cast173)
  %80 = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 24
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %79, ptr %80, align 1
  %IOTAction = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 51
  %82 = ptrtoint ptr %IOTAction to i32
  call void @__asan_loadN_noabort(i32 %82, i32 4)
  %83 = load i32, ptr %IOTAction, align 1
  %and186 = and i32 %83, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and186)
  %tobool187.not = icmp eq i32 %and186, 0
  br i1 %tobool187.not, label %if.end168.if.end190_crit_edge, label %if.then188

if.end168.if.end190_crit_edge:                    ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end190

if.then188:                                       ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #14
  %84 = ptrtoint ptr %bCurrentAMPDUEnable to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %bCurrentAMPDUEnable, align 1
  %ForcedAMSDUMode = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 28
  %85 = ptrtoint ptr %ForcedAMSDUMode to i32
  call void @__asan_storeN_noabort(i32 %85, i32 4)
  store i32 1, ptr %ForcedAMSDUMode, align 1
  %ForcedAMSDUMaxSize = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 29
  %86 = ptrtoint ptr %ForcedAMSDUMaxSize to i32
  call void @__asan_storeN_noabort(i32 %86, i32 2)
  store i16 7935, ptr %ForcedAMSDUMaxSize, align 1
  br label %if.end190

if.end190:                                        ; preds = %if.then188, %if.end168.if.end190_crit_edge
  %bRegRxReorderEnable = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 44
  %87 = ptrtoint ptr %bRegRxReorderEnable to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %bRegRxReorderEnable, align 1
  %bCurRxReorderEnable = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 45
  %89 = ptrtoint ptr %bCurRxReorderEnable to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %88, ptr %bCurRxReorderEnable, align 1
  %MCS = getelementptr inbounds %struct.ht_capab_ele, ptr %pPeerHTCap.0, i32 0, i32 1
  %90 = ptrtoint ptr %MCS to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %MCS, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %cmp193 = icmp eq i8 %91, 0
  br i1 %cmp193, label %if.then195, label %if.end190.if.end198_crit_edge

if.end190.if.end198_crit_edge:                    ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end198

if.then195:                                       ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #14
  %92 = ptrtoint ptr %MCS to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 -1, ptr %MCS, align 1
  br label %if.end198

if.end198:                                        ; preds = %if.then195, %if.end190.if.end198_crit_edge
  %arrayidx200 = getelementptr %struct.ht_capab_ele, ptr %pPeerHTCap.0, i32 0, i32 1, i32 1
  %93 = ptrtoint ptr %arrayidx200 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx200, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %cmp202 = icmp eq i8 %94, 0
  %95 = ptrtoint ptr %pHTInfo1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %pHTInfo1, align 8
  %IOTRaFunc.i = getelementptr inbounds %struct.rt_hi_throughput, ptr %96, i32 0, i32 52
  %IOTPeer.i = getelementptr inbounds %struct.rt_hi_throughput, ptr %96, i32 0, i32 50
  %97 = ptrtoint ptr %IOTPeer.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %IOTPeer.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %98)
  %cmp.i = icmp eq i8 %98, 4
  %not.brmerge.i = and i1 %cmp202, %cmp.i
  %spec.store.select.i = zext i1 %not.brmerge.i to i8
  %99 = ptrtoint ptr %IOTRaFunc.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %spec.store.select.i, ptr %IOTRaFunc.i, align 1
  %IOTAction.i = getelementptr inbounds %struct.rt_hi_throughput, ptr %96, i32 0, i32 51
  %100 = ptrtoint ptr %IOTAction.i to i32
  call void @__asan_loadN_noabort(i32 %100, i32 4)
  %101 = load i32, ptr %IOTAction.i, align 1
  %and8.i = and i32 %101, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %if.end198.HTIOTActDetermineRaFunc.exit_crit_edge, label %if.then10.i

if.end198.HTIOTActDetermineRaFunc.exit_crit_edge: ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #14
  br label %HTIOTActDetermineRaFunc.exit

if.then10.i:                                      ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #14
  %102 = or i8 %spec.store.select.i, 2
  %103 = ptrtoint ptr %IOTRaFunc.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %102, ptr %IOTRaFunc.i, align 1
  br label %HTIOTActDetermineRaFunc.exit

HTIOTActDetermineRaFunc.exit:                     ; preds = %if.then10.i, %if.end198.HTIOTActDetermineRaFunc.exit_crit_edge
  %dot11HTOperationalRateSet = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 31
  tail call fastcc void @HTFilterMCSRate(ptr noundef %ieee, ptr noundef %MCS, ptr noundef %dot11HTOperationalRateSet)
  %104 = ptrtoint ptr %pPeerHTCap.0 to i32
  call void @__asan_loadN_noabort(i32 %104, i32 3)
  %bf.load208 = load i24, ptr %pPeerHTCap.0, align 1
  %bf.lshr209 = lshr i24 %bf.load208, 20
  %105 = trunc i24 %bf.lshr209 to i8
  %bf.cast211 = and i8 %105, 3
  %PeerMimoPs = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 33
  %106 = ptrtoint ptr %PeerMimoPs to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %bf.cast211, ptr %PeerMimoPs, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.cast211)
  %cmp214 = icmp eq i8 %bf.cast211, 0
  %MCS_FILTER_1SS.MCS_FILTER_ALL = select i1 %cmp214, ptr @MCS_FILTER_1SS, ptr @MCS_FILTER_ALL
  %call221 = tail call zeroext i8 @HTGetHighestMCSRate(ptr noundef %ieee, ptr noundef %dot11HTOperationalRateSet, ptr noundef nonnull %MCS_FILTER_1SS.MCS_FILTER_ALL)
  %HTHighestOperaRate = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 34
  %107 = ptrtoint ptr %HTHighestOperaRate to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %call221, ptr %HTHighestOperaRate, align 1
  %HTCurrentOperaRate = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 33
  %108 = ptrtoint ptr %HTCurrentOperaRate to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %call221, ptr %HTCurrentOperaRate, align 8
  %109 = ptrtoint ptr %ExtChlOffset to i32
  call void @__asan_loadN_noabort(i32 %109, i32 5)
  %bf.load223 = load i40, ptr %ExtChlOffset, align 1
  %bf.lshr224 = lshr i40 %bf.load223, 30
  %110 = trunc i40 %bf.lshr224 to i8
  %bf.cast226 = and i8 %110, 3
  %CurrentOpMode = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 31
  %111 = ptrtoint ptr %CurrentOpMode to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %bf.cast226, ptr %CurrentOpMode, align 1
  br label %cleanup

cleanup:                                          ; preds = %HTIOTActDetermineRaFunc.exit, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @HTSetConnectBwMode(ptr nocapture noundef readonly %ieee, i32 noundef %Bandwidth, i32 noundef %Offset) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pHTInfo1 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 27
  %0 = ptrtoint ptr %pHTInfo1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pHTInfo1, align 8
  %bRegBW40MHz = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bRegBW40MHz to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bRegBW40MHz, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %GetHalfNmodeSupportByAPsHandler = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 196
  %4 = ptrtoint ptr %GetHalfNmodeSupportByAPsHandler to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %GetHalfNmodeSupportByAPsHandler, align 4
  %dev = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %call = tail call zeroext i1 %5(ptr noundef %7) #12
  %bSwBwInProgress = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 37
  %8 = ptrtoint ptr %bSwBwInProgress to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bSwBwInProgress, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool4.not = icmp eq i8 %9, 0
  br i1 %tobool4.not, label %if.end7, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #16
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %Bandwidth)
  %cmp62 = icmp ne i32 %Bandwidth, 1
  %10 = or i1 %cmp62, %call
  br i1 %10, label %if.end7.do.body28_crit_edge, label %if.then8

if.end7.do.body28_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body28

if.then8:                                         ; preds = %if.end7
  %channel = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 89, i32 1
  %11 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %channel, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %12)
  %cmp9 = icmp ult i8 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %Offset)
  %cmp11 = icmp eq i32 %Offset, 3
  %13 = and i1 %cmp11, %cmp9
  %Offset.addr.0 = select i1 %13, i32 0, i32 %Offset
  %14 = zext i32 %Offset.addr.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %Offset.addr.0, label %if.else [
    i32 1, label %if.then8.do.body28_crit_edge
    i32 3, label %if.then8.do.body28_crit_edge63
  ]

if.then8.do.body28_crit_edge63:                   ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body28

if.then8.do.body28_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body28

if.else:                                          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body28

do.body28:                                        ; preds = %if.else, %if.then8.do.body28_crit_edge, %if.then8.do.body28_crit_edge63, %if.end7.do.body28_crit_edge
  %.sink = phi i8 [ 0, %if.else ], [ 1, %if.then8.do.body28_crit_edge ], [ 1, %if.then8.do.body28_crit_edge63 ], [ 0, %if.end7.do.body28_crit_edge ]
  %Offset.addr.0.sink = phi i32 [ 0, %if.else ], [ %Offset.addr.0, %if.then8.do.body28_crit_edge ], [ %Offset.addr.0, %if.then8.do.body28_crit_edge63 ], [ 0, %if.end7.do.body28_crit_edge ]
  %bCurBW40MHz = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %bCurBW40MHz to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %.sink, ptr %bCurBW40MHz, align 1
  %CurSTAExtChnlOffset = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 34
  %16 = ptrtoint ptr %CurSTAExtChnlOffset to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %Offset.addr.0.sink, ptr %CurSTAExtChnlOffset, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @HTSetConnectBwMode.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@HTSetConnectBwMode, %if.then34)) #12
          to label %do.end42 [label %if.then34], !srcloc !94

if.then34:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %bCurBW40MHz36 = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %bCurBW40MHz36 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bCurBW40MHz36, align 1
  %conv37 = zext i8 %20 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @HTSetConnectBwMode.__UNIQUE_ID_ddebug343, ptr noundef %18, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.12, i32 noundef %conv37) #12
  br label %do.end42

do.end42:                                         ; preds = %if.then34, %do.body28
  %21 = ptrtoint ptr %bSwBwInProgress to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %bSwBwInProgress, align 1
  %22 = ptrtoint ptr %pHTInfo1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pHTInfo1, align 8
  %bCurBW40MHz.i = getelementptr inbounds %struct.rt_hi_throughput, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %bCurBW40MHz.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bCurBW40MHz.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i = icmp eq i8 %25, 0
  br i1 %tobool.not.i, label %if.else23.i, label %if.then.i

if.then.i:                                        ; preds = %do.end42
  %CurSTAExtChnlOffset.i = getelementptr inbounds %struct.rt_hi_throughput, ptr %23, i32 0, i32 34
  %26 = ptrtoint ptr %CurSTAExtChnlOffset.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %CurSTAExtChnlOffset.i, align 1
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %27, label %if.else14.i [
    i32 1, label %if.then2.i
    i32 3, label %if.then7.i
  ]

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %set_chan.i = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 181
  %29 = ptrtoint ptr %set_chan.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %set_chan.i, align 8
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  %channel.i = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 89, i32 1
  %33 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %channel.i, align 2
  %conv.i = zext i8 %34 to i16
  %add.i = add nuw nsw i16 %conv.i, 2
  tail call void %30(ptr noundef %32, i16 noundef signext %add.i) #12
  br label %if.end20.i

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %set_chan8.i = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 181
  %35 = ptrtoint ptr %set_chan8.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %set_chan8.i, align 8
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 4
  %channel11.i = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 89, i32 1
  %39 = ptrtoint ptr %channel11.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %channel11.i, align 2
  %conv12.i = zext i8 %40 to i16
  %sub.i = add nsw i16 %conv12.i, -2
  tail call void %36(ptr noundef %38, i16 noundef signext %sub.i) #12
  br label %if.end20.i

if.else14.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %set_chan15.i = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 181
  %41 = ptrtoint ptr %set_chan15.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %set_chan15.i, align 8
  %43 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev, align 4
  %channel18.i = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 89, i32 1
  %45 = ptrtoint ptr %channel18.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %channel18.i, align 2
  %conv19.i = zext i8 %46 to i16
  tail call void %42(ptr noundef %44, i16 noundef signext %conv19.i) #12
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.else14.i, %if.then7.i, %if.then2.i
  %SetBWModeHandler.i = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 193
  %47 = ptrtoint ptr %SetBWModeHandler.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %SetBWModeHandler.i, align 8
  %49 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev, align 4
  %51 = ptrtoint ptr %CurSTAExtChnlOffset.i to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %CurSTAExtChnlOffset.i, align 1
  tail call void %48(ptr noundef %50, i32 noundef 1, i32 noundef %52) #12
  br label %HTSetConnectBwModeCallback.exit

if.else23.i:                                      ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #14
  %set_chan24.i = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 181
  %53 = ptrtoint ptr %set_chan24.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %set_chan24.i, align 8
  %55 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev, align 4
  %channel27.i = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 89, i32 1
  %57 = ptrtoint ptr %channel27.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %channel27.i, align 2
  %conv28.i = zext i8 %58 to i16
  tail call void %54(ptr noundef %56, i16 noundef signext %conv28.i) #12
  %SetBWModeHandler29.i = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 193
  %59 = ptrtoint ptr %SetBWModeHandler29.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %SetBWModeHandler29.i, align 8
  %61 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev, align 4
  tail call void %60(ptr noundef %62, i32 noundef 0, i32 noundef 0) #12
  br label %HTSetConnectBwModeCallback.exit

HTSetConnectBwModeCallback.exit:                  ; preds = %if.else23.i, %if.end20.i
  %bSwBwInProgress.i = getelementptr inbounds %struct.rt_hi_throughput, ptr %23, i32 0, i32 37
  %63 = ptrtoint ptr %bSwBwInProgress.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %bSwBwInProgress.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %HTSetConnectBwModeCallback.exit, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @HTFilterMCSRate(ptr nocapture noundef readonly %ieee, ptr nocapture noundef readonly %pSupportMCS, ptr noundef %pOperateMCS) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.rtllib_device, ptr %ieee, i32 0, i32 30, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %2 = ptrtoint ptr %pSupportMCS to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pSupportMCS, align 1
  %and1 = and i8 %3, %1
  %4 = ptrtoint ptr %pOperateMCS to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %and1, ptr %pOperateMCS, align 1
  %arrayidx.1 = getelementptr %struct.rtllib_device, ptr %ieee, i32 0, i32 30, i32 1
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.1, align 1
  %arrayidx4.1 = getelementptr i8, ptr %pSupportMCS, i32 1
  %7 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx4.1, align 1
  %and1.1 = and i8 %8, %6
  %arrayidx8.1 = getelementptr i8, ptr %pOperateMCS, i32 1
  %9 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %and1.1, ptr %arrayidx8.1, align 1
  %arrayidx.2 = getelementptr %struct.rtllib_device, ptr %ieee, i32 0, i32 30, i32 2
  %10 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.2, align 1
  %arrayidx4.2 = getelementptr i8, ptr %pSupportMCS, i32 2
  %12 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx4.2, align 1
  %and1.2 = and i8 %13, %11
  %arrayidx8.2 = getelementptr i8, ptr %pOperateMCS, i32 2
  %14 = ptrtoint ptr %arrayidx8.2 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %and1.2, ptr %arrayidx8.2, align 1
  %arrayidx.3 = getelementptr %struct.rtllib_device, ptr %ieee, i32 0, i32 30, i32 3
  %15 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.3, align 1
  %arrayidx4.3 = getelementptr i8, ptr %pSupportMCS, i32 3
  %17 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx4.3, align 1
  %and1.3 = and i8 %18, %16
  %arrayidx8.3 = getelementptr i8, ptr %pOperateMCS, i32 3
  %19 = ptrtoint ptr %arrayidx8.3 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %and1.3, ptr %arrayidx8.3, align 1
  %arrayidx.4 = getelementptr %struct.rtllib_device, ptr %ieee, i32 0, i32 30, i32 4
  %20 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.4, align 1
  %arrayidx4.4 = getelementptr i8, ptr %pSupportMCS, i32 4
  %22 = ptrtoint ptr %arrayidx4.4 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx4.4, align 1
  %and1.4 = and i8 %23, %21
  %arrayidx8.4 = getelementptr i8, ptr %pOperateMCS, i32 4
  %24 = ptrtoint ptr %arrayidx8.4 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %and1.4, ptr %arrayidx8.4, align 1
  %arrayidx.5 = getelementptr %struct.rtllib_device, ptr %ieee, i32 0, i32 30, i32 5
  %25 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.5, align 1
  %arrayidx4.5 = getelementptr i8, ptr %pSupportMCS, i32 5
  %27 = ptrtoint ptr %arrayidx4.5 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx4.5, align 1
  %and1.5 = and i8 %28, %26
  %arrayidx8.5 = getelementptr i8, ptr %pOperateMCS, i32 5
  %29 = ptrtoint ptr %arrayidx8.5 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %and1.5, ptr %arrayidx8.5, align 1
  %arrayidx.6 = getelementptr %struct.rtllib_device, ptr %ieee, i32 0, i32 30, i32 6
  %30 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.6, align 1
  %arrayidx4.6 = getelementptr i8, ptr %pSupportMCS, i32 6
  %32 = ptrtoint ptr %arrayidx4.6 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx4.6, align 1
  %and1.6 = and i8 %33, %31
  %arrayidx8.6 = getelementptr i8, ptr %pOperateMCS, i32 6
  %34 = ptrtoint ptr %arrayidx8.6 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %and1.6, ptr %arrayidx8.6, align 1
  %arrayidx.7 = getelementptr %struct.rtllib_device, ptr %ieee, i32 0, i32 30, i32 7
  %35 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.7, align 1
  %arrayidx4.7 = getelementptr i8, ptr %pSupportMCS, i32 7
  %37 = ptrtoint ptr %arrayidx4.7 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx4.7, align 1
  %and1.7 = and i8 %38, %36
  %arrayidx8.7 = getelementptr i8, ptr %pOperateMCS, i32 7
  %39 = ptrtoint ptr %arrayidx8.7 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %and1.7, ptr %arrayidx8.7, align 1
  %arrayidx.8 = getelementptr %struct.rtllib_device, ptr %ieee, i32 0, i32 30, i32 8
  %40 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.8, align 1
  %arrayidx4.8 = getelementptr i8, ptr %pSupportMCS, i32 8
  %42 = ptrtoint ptr %arrayidx4.8 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx4.8, align 1
  %and1.8 = and i8 %43, %41
  %arrayidx8.8 = getelementptr i8, ptr %pOperateMCS, i32 8
  %44 = ptrtoint ptr %arrayidx8.8 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %and1.8, ptr %arrayidx8.8, align 1
  %arrayidx.9 = getelementptr %struct.rtllib_device, ptr %ieee, i32 0, i32 30, i32 9
  %45 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.9, align 1
  %arrayidx4.9 = getelementptr i8, ptr %pSupportMCS, i32 9
  %47 = ptrtoint ptr %arrayidx4.9 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx4.9, align 1
  %and1.9 = and i8 %48, %46
  %arrayidx8.9 = getelementptr i8, ptr %pOperateMCS, i32 9
  %49 = ptrtoint ptr %arrayidx8.9 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %and1.9, ptr %arrayidx8.9, align 1
  %arrayidx.10 = getelementptr %struct.rtllib_device, ptr %ieee, i32 0, i32 30, i32 10
  %50 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.10, align 1
  %arrayidx4.10 = getelementptr i8, ptr %pSupportMCS, i32 10
  %52 = ptrtoint ptr %arrayidx4.10 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx4.10, align 1
  %and1.10 = and i8 %53, %51
  %arrayidx8.10 = getelementptr i8, ptr %pOperateMCS, i32 10
  %54 = ptrtoint ptr %arrayidx8.10 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %and1.10, ptr %arrayidx8.10, align 1
  %arrayidx.11 = getelementptr %struct.rtllib_device, ptr %ieee, i32 0, i32 30, i32 11
  %55 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx.11, align 1
  %arrayidx4.11 = getelementptr i8, ptr %pSupportMCS, i32 11
  %57 = ptrtoint ptr %arrayidx4.11 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx4.11, align 1
  %and1.11 = and i8 %58, %56
  %arrayidx8.11 = getelementptr i8, ptr %pOperateMCS, i32 11
  %59 = ptrtoint ptr %arrayidx8.11 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %and1.11, ptr %arrayidx8.11, align 1
  %arrayidx.12 = getelementptr %struct.rtllib_device, ptr %ieee, i32 0, i32 30, i32 12
  %60 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx.12, align 1
  %arrayidx4.12 = getelementptr i8, ptr %pSupportMCS, i32 12
  %62 = ptrtoint ptr %arrayidx4.12 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx4.12, align 1
  %and1.12 = and i8 %63, %61
  %arrayidx8.12 = getelementptr i8, ptr %pOperateMCS, i32 12
  %64 = ptrtoint ptr %arrayidx8.12 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %and1.12, ptr %arrayidx8.12, align 1
  %arrayidx.13 = getelementptr %struct.rtllib_device, ptr %ieee, i32 0, i32 30, i32 13
  %65 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx.13, align 1
  %arrayidx4.13 = getelementptr i8, ptr %pSupportMCS, i32 13
  %67 = ptrtoint ptr %arrayidx4.13 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx4.13, align 1
  %and1.13 = and i8 %68, %66
  %arrayidx8.13 = getelementptr i8, ptr %pOperateMCS, i32 13
  %69 = ptrtoint ptr %arrayidx8.13 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %and1.13, ptr %arrayidx8.13, align 1
  %arrayidx.14 = getelementptr %struct.rtllib_device, ptr %ieee, i32 0, i32 30, i32 14
  %70 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx.14, align 1
  %arrayidx4.14 = getelementptr i8, ptr %pSupportMCS, i32 14
  %72 = ptrtoint ptr %arrayidx4.14 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx4.14, align 1
  %and1.14 = and i8 %73, %71
  %arrayidx8.14 = getelementptr i8, ptr %pOperateMCS, i32 14
  %74 = ptrtoint ptr %arrayidx8.14 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %and1.14, ptr %arrayidx8.14, align 1
  %arrayidx.15 = getelementptr %struct.rtllib_device, ptr %ieee, i32 0, i32 30, i32 15
  %75 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx.15, align 1
  %arrayidx4.15 = getelementptr i8, ptr %pSupportMCS, i32 15
  %77 = ptrtoint ptr %arrayidx4.15 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx4.15, align 1
  %and1.15 = and i8 %78, %76
  %arrayidx8.15 = getelementptr i8, ptr %pOperateMCS, i32 15
  %79 = ptrtoint ptr %arrayidx8.15 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %and1.15, ptr %arrayidx8.15, align 1
  %tobool.not.i = icmp eq ptr %pOperateMCS, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %80 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %81, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.HT_PickMCSRate) #16
  br label %HT_PickMCSRate.exit

if.end.i:                                         ; preds = %entry
  %mode.i = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 92
  %82 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %mode.i, align 8
  %84 = zext i32 %83 to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %83, label %if.end.i.HT_PickMCSRate.exit_crit_edge [
    i32 1, label %if.end.i.sw.bb.i_crit_edge
    i32 2, label %if.end.i.sw.bb.i_crit_edge4
    i32 4, label %if.end.i.sw.bb.i_crit_edge5
    i32 16, label %if.end.i.sw.bb2.i_crit_edge
    i32 32, label %if.end.i.sw.bb2.i_crit_edge6
  ]

if.end.i.sw.bb2.i_crit_edge6:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2.i

if.end.i.sw.bb2.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2.i

if.end.i.sw.bb.i_crit_edge5:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge4:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb.i

if.end.i.HT_PickMCSRate.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %HT_PickMCSRate.exit

sw.bb.i:                                          ; preds = %if.end.i.sw.bb.i_crit_edge, %if.end.i.sw.bb.i_crit_edge4, %if.end.i.sw.bb.i_crit_edge5
  %85 = call ptr @memset(ptr %pOperateMCS, i32 0, i32 16)
  br label %HT_PickMCSRate.exit

sw.bb2.i:                                         ; preds = %if.end.i.sw.bb2.i_crit_edge, %if.end.i.sw.bb2.i_crit_edge6
  %86 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx8.1, align 1
  %88 = and i8 %87, -16
  store i8 %88, ptr %arrayidx8.1, align 1
  %89 = ptrtoint ptr %arrayidx8.3 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx8.3, align 1
  %91 = and i8 %90, 1
  store i8 %91, ptr %arrayidx8.3, align 1
  br label %HT_PickMCSRate.exit

HT_PickMCSRate.exit:                              ; preds = %sw.bb2.i, %sw.bb.i, %if.end.i.HT_PickMCSRate.exit_crit_edge, %if.then.i
  %GetHalfNmodeSupportByAPsHandler = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 196
  %92 = ptrtoint ptr %GetHalfNmodeSupportByAPsHandler to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %GetHalfNmodeSupportByAPsHandler, align 4
  %dev = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %94 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev, align 4
  %call9 = tail call zeroext i1 %93(ptr noundef %95) #12
  br i1 %call9, label %if.then, label %HT_PickMCSRate.exit.if.end_crit_edge

HT_PickMCSRate.exit.if.end_crit_edge:             ; preds = %HT_PickMCSRate.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %HT_PickMCSRate.exit
  call void @__sanitizer_cov_trace_pc() #14
  %96 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 0, ptr %arrayidx8.1, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %HT_PickMCSRate.exit.if.end_crit_edge
  %97 = call ptr @memset(ptr %arrayidx8.2, i32 0, i32 14)
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @HTInitializeHTInfo(ptr nocapture noundef %ieee) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pHTInfo1 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 27
  %0 = ptrtoint ptr %pHTInfo1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pHTInfo1, align 8
  %bCurrentHTSupport = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bCurrentHTSupport to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %bCurrentHTSupport, align 1
  %bCurBW40MHz = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %bCurBW40MHz to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %bCurBW40MHz, align 1
  %bCurTxBW40MHz = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 35
  %4 = ptrtoint ptr %bCurTxBW40MHz to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %bCurTxBW40MHz, align 1
  %bCurShortGI20MHz = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %bCurShortGI20MHz to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %bCurShortGI20MHz, align 1
  %bCurShortGI40MHz = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %bCurShortGI40MHz to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %bCurShortGI40MHz, align 1
  %bForcedShortGI = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 30
  %7 = ptrtoint ptr %bForcedShortGI to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %bForcedShortGI, align 1
  %bCurSuppCCK = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %bCurSuppCCK to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %bCurSuppCCK, align 1
  %bCurrent_AMSDU_Support = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 17
  %9 = ptrtoint ptr %bCurrent_AMSDU_Support to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %bCurrent_AMSDU_Support, align 1
  %nAMSDU_MaxSize = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 16
  %10 = ptrtoint ptr %nAMSDU_MaxSize to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %nAMSDU_MaxSize, align 1
  %nCurrent_AMSDU_MaxSize = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 18
  %12 = ptrtoint ptr %nCurrent_AMSDU_MaxSize to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 %11, ptr %nCurrent_AMSDU_MaxSize, align 1
  %MPDU_Density = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 23
  %13 = ptrtoint ptr %MPDU_Density to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %MPDU_Density, align 1
  %CurrentMPDUDensity = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 24
  %15 = ptrtoint ptr %CurrentMPDUDensity to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %CurrentMPDUDensity, align 1
  %AMPDU_Factor = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 21
  %16 = ptrtoint ptr %AMPDU_Factor to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %AMPDU_Factor, align 1
  %CurrentAMPDUFactor = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 22
  %18 = ptrtoint ptr %CurrentAMPDUFactor to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %CurrentAMPDUFactor, align 1
  %bSwBwInProgress = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 37
  %19 = ptrtoint ptr %bSwBwInProgress to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %bSwBwInProgress, align 1
  %ePeerHTSpecVer = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 10
  %bCurrentRT2RTAggregation = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 41
  %20 = ptrtoint ptr %bCurrentRT2RTAggregation to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %bCurrentRT2RTAggregation, align 1
  %bCurrentRT2RTLongSlotTime = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 42
  %21 = ptrtoint ptr %bCurrentRT2RTLongSlotTime to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %bCurrentRT2RTLongSlotTime, align 1
  %RT2RT_HT_Mode = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 40
  %22 = ptrtoint ptr %RT2RT_HT_Mode to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %RT2RT_HT_Mode, align 1
  %IOTPeer = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 50
  %23 = ptrtoint ptr %IOTPeer to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %IOTPeer, align 1
  %IOTAction = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 51
  %24 = ptrtoint ptr %IOTAction to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 0, ptr %IOTAction, align 1
  %IOTRaFunc = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 52
  %25 = ptrtoint ptr %IOTRaFunc to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %IOTRaFunc, align 1
  %RegHTSuppRateSet = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 32
  %26 = call ptr @memset(ptr %ePeerHTSpecVer, i32 0, i32 116)
  %27 = ptrtoint ptr %RegHTSuppRateSet to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -1, ptr %RegHTSuppRateSet, align 1
  %arrayidx3 = getelementptr %struct.rtllib_device, ptr %ieee, i32 0, i32 32, i32 1
  %28 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -1, ptr %arrayidx3, align 1
  %arrayidx4 = getelementptr %struct.rtllib_device, ptr %ieee, i32 0, i32 32, i32 4
  %29 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %arrayidx4, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @HTInitializeBssDesc(ptr nocapture noundef writeonly %pBssHT) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_ht_cap_len = getelementptr inbounds %struct.bss_ht, ptr %pBssHT, i32 0, i32 2
  %bd_ht_spec_ver = getelementptr inbounds %struct.bss_ht, ptr %pBssHT, i32 0, i32 5
  %0 = ptrtoint ptr %bd_ht_spec_ver to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %bd_ht_spec_ver, align 4
  %bd_rt2rt_aggregation = getelementptr inbounds %struct.bss_ht, ptr %pBssHT, i32 0, i32 7
  %1 = ptrtoint ptr %bd_rt2rt_aggregation to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %bd_rt2rt_aggregation, align 4
  %bd_rt2rt_long_slot_time = getelementptr inbounds %struct.bss_ht, ptr %pBssHT, i32 0, i32 8
  %2 = ptrtoint ptr %bd_rt2rt_long_slot_time to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %bd_rt2rt_long_slot_time, align 1
  %rt2rt_ht_mode = getelementptr inbounds %struct.bss_ht, ptr %pBssHT, i32 0, i32 9
  %3 = ptrtoint ptr %rt2rt_ht_mode to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %rt2rt_ht_mode, align 2
  %4 = call ptr @memset(ptr %pBssHT, i32 0, i32 33)
  %5 = call ptr @memset(ptr %bd_ht_cap_len, i32 0, i32 36)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @HTResetSelfAndSavePeerSetting(ptr nocapture noundef readonly %ieee, ptr nocapture noundef readonly %pNetwork) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pHTInfo1 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 27
  %0 = ptrtoint ptr %pHTInfo1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pHTInfo1, align 8
  %bssht = getelementptr inbounds %struct.rtllib_network, ptr %pNetwork, i32 0, i32 45
  %2 = ptrtoint ptr %bssht to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bssht, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %bCurrentHTSupport83 = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 1
  br i1 %tobool.not, label %if.else82, label %if.then

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %bCurrentHTSupport83 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %bCurrentHTSupport83, align 1
  %bd_ht_spec_ver = getelementptr inbounds %struct.rtllib_network, ptr %pNetwork, i32 0, i32 45, i32 5
  %5 = ptrtoint ptr %bd_ht_spec_ver to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bd_ht_spec_ver, align 8
  %ePeerHTSpecVer = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %ePeerHTSpecVer to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %6, ptr %ePeerHTSpecVer, align 1
  %bd_ht_cap_len = getelementptr inbounds %struct.rtllib_network, ptr %pNetwork, i32 0, i32 45, i32 2
  %8 = ptrtoint ptr %bd_ht_cap_len to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %bd_ht_cap_len, align 2
  %10 = add i16 %9, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %10)
  %11 = icmp ult i16 %10, 32
  br i1 %11, label %if.then10, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i16 %9 to i32
  %PeerHTCapBuf = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 13
  %bd_ht_cap_buf = getelementptr inbounds %struct.rtllib_network, ptr %pNetwork, i32 0, i32 45, i32 1
  %12 = call ptr @memcpy(ptr %PeerHTCapBuf, ptr %bd_ht_cap_buf, i32 %conv)
  br label %if.end

if.end:                                           ; preds = %if.then10, %if.then.if.end_crit_edge
  %bd_ht_info_len = getelementptr inbounds %struct.rtllib_network, ptr %pNetwork, i32 0, i32 45, i32 4
  %13 = ptrtoint ptr %bd_ht_info_len to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %bd_ht_info_len, align 4
  %15 = add i16 %14, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %15)
  %16 = icmp ult i16 %15, 32
  br i1 %16, label %if.then26, label %if.end.if.end33_crit_edge

if.end.if.end33_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %conv17 = zext i16 %14 to i32
  %PeerHTInfoBuf = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 14
  %bd_ht_info_buf = getelementptr inbounds %struct.rtllib_network, ptr %pNetwork, i32 0, i32 45, i32 3
  %17 = call ptr @memcpy(ptr %PeerHTInfoBuf, ptr %bd_ht_info_buf, i32 %conv17)
  br label %if.end33

if.end33:                                         ; preds = %if.then26, %if.end.if.end33_crit_edge
  %bRegRT2RTAggregation = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 39
  %18 = ptrtoint ptr %bRegRT2RTAggregation to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bRegRT2RTAggregation, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool34.not = icmp eq i8 %19, 0
  br i1 %tobool34.not, label %if.else, label %if.then35

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  %bd_rt2rt_aggregation = getelementptr inbounds %struct.rtllib_network, ptr %pNetwork, i32 0, i32 45, i32 7
  %20 = ptrtoint ptr %bd_rt2rt_aggregation to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bd_rt2rt_aggregation, align 8
  %bCurrentRT2RTAggregation = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 41
  %22 = ptrtoint ptr %bCurrentRT2RTAggregation to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %bCurrentRT2RTAggregation, align 1
  %bd_rt2rt_long_slot_time = getelementptr inbounds %struct.rtllib_network, ptr %pNetwork, i32 0, i32 45, i32 8
  %23 = ptrtoint ptr %bd_rt2rt_long_slot_time to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bd_rt2rt_long_slot_time, align 1
  %bCurrentRT2RTLongSlotTime = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 42
  %25 = ptrtoint ptr %bCurrentRT2RTLongSlotTime to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %bCurrentRT2RTLongSlotTime, align 1
  %rt2rt_ht_mode = getelementptr inbounds %struct.rtllib_network, ptr %pNetwork, i32 0, i32 45, i32 9
  %26 = ptrtoint ptr %rt2rt_ht_mode to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %rt2rt_ht_mode, align 2
  br label %if.end42

if.else:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  %bCurrentRT2RTAggregation39 = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 41
  %28 = ptrtoint ptr %bCurrentRT2RTAggregation39 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %bCurrentRT2RTAggregation39, align 1
  %bCurrentRT2RTLongSlotTime40 = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 42
  %29 = ptrtoint ptr %bCurrentRT2RTLongSlotTime40 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %bCurrentRT2RTLongSlotTime40, align 1
  br label %if.end42

if.end42:                                         ; preds = %if.else, %if.then35
  %.sink = phi i8 [ 0, %if.else ], [ %27, %if.then35 ]
  %30 = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 40
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %.sink, ptr %30, align 1
  tail call fastcc void @HTIOTPeerDetermine(ptr noundef %ieee)
  %IOTAction = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 51
  %32 = ptrtoint ptr %IOTAction to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 0, ptr %IOTAction, align 1
  %33 = ptrtoint ptr %pHTInfo1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pHTInfo1, align 8
  %IOTPeer.i = getelementptr inbounds %struct.rt_hi_throughput, ptr %34, i32 0, i32 50
  %35 = ptrtoint ptr %IOTPeer.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %IOTPeer.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %36)
  %cmp.i.not = icmp eq i8 %36, 3
  %spec.store.select = select i1 %cmp.i.not, i32 64, i32 0
  %37 = ptrtoint ptr %IOTAction to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %spec.store.select, ptr %IOTAction, align 1
  %38 = ptrtoint ptr %pHTInfo1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pHTInfo1, align 8
  %IOTPeer.i141 = getelementptr inbounds %struct.rt_hi_throughput, ptr %39, i32 0, i32 50
  %40 = ptrtoint ptr %IOTPeer.i141 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %IOTPeer.i141, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %41)
  %cmp.i142.not = icmp eq i8 %41, 3
  br i1 %cmp.i142.not, label %if.then78, label %if.end42.if.end88_crit_edge

if.end42.if.end88_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88

if.then78:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  %42 = ptrtoint ptr %IOTAction to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %IOTAction, align 1
  %or80 = or i32 %43, 128
  store i32 %or80, ptr %IOTAction, align 1
  br label %if.end88

if.else82:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %bCurrentHTSupport83 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %bCurrentHTSupport83, align 1
  %bCurrentRT2RTAggregation84 = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 41
  %45 = ptrtoint ptr %bCurrentRT2RTAggregation84 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %bCurrentRT2RTAggregation84, align 1
  %bCurrentRT2RTLongSlotTime85 = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 42
  %46 = ptrtoint ptr %bCurrentRT2RTLongSlotTime85 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %bCurrentRT2RTLongSlotTime85, align 1
  %RT2RT_HT_Mode86 = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 40
  %47 = ptrtoint ptr %RT2RT_HT_Mode86 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %RT2RT_HT_Mode86, align 1
  %IOTAction87 = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 51
  %48 = ptrtoint ptr %IOTAction87 to i32
  call void @__asan_storeN_noabort(i32 %48, i32 4)
  store i32 0, ptr %IOTAction87, align 1
  %IOTRaFunc = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 52
  %49 = ptrtoint ptr %IOTRaFunc to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %IOTRaFunc, align 1
  br label %if.end88

if.end88:                                         ; preds = %if.else82, %if.then78, %if.end42.if.end88_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @HTIOTPeerDetermine(ptr nocapture noundef readonly %ieee) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pHTInfo1 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 27
  %0 = ptrtoint ptr %pHTInfo1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pHTInfo1, align 8
  %current_network = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 89
  %bd_rt2rt_aggregation = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 89, i32 45, i32 7
  %2 = ptrtoint ptr %bd_rt2rt_aggregation to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bd_rt2rt_aggregation, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %IOTPeer = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 50
  %4 = ptrtoint ptr %IOTPeer to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %IOTPeer, align 1
  %rt2rt_ht_mode = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 89, i32 45, i32 9
  %5 = ptrtoint ptr %rt2rt_ht_mode to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %rt2rt_ht_mode, align 2
  %7 = and i8 %6, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  %spec.store.select = select i1 %tobool3.not, i8 1, i8 2
  %8 = ptrtoint ptr %IOTPeer to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %spec.store.select, ptr %IOTPeer, align 1
  %9 = ptrtoint ptr %rt2rt_ht_mode to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %rt2rt_ht_mode, align 2
  %11 = and i8 %10, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool10.not = icmp eq i8 %11, 0
  %spec.store.select172 = select i1 %tobool10.not, i8 %spec.store.select, i8 8
  %12 = ptrtoint ptr %IOTPeer to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %spec.store.select172, ptr %IOTPeer, align 1
  br label %do.body117

if.else:                                          ; preds = %entry
  %broadcom_cap_exist = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 89, i32 46
  %13 = ptrtoint ptr %broadcom_cap_exist to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %broadcom_cap_exist, align 4, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool14.not = icmp eq i8 %14, 0
  br i1 %tobool14.not, label %if.else17, label %if.then15

if.then15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %IOTPeer16 = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 50
  %15 = ptrtoint ptr %IOTPeer16 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 3, ptr %IOTPeer16, align 1
  br label %do.body117

if.else17:                                        ; preds = %if.else
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(3) %current_network, ptr noundef nonnull dereferenceable(3) @UNKNOWN_BORADCOM, i32 3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool18.not = icmp eq i32 %bcmp, 0
  br i1 %tobool18.not, label %if.else17.if.then28_crit_edge, label %lor.lhs.false

if.else17.if.then28_crit_edge:                    ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then28

lor.lhs.false:                                    ; preds = %if.else17
  %bcmp161 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %current_network, ptr noundef nonnull dereferenceable(3) @LINKSYSWRT330_LINKSYSWRT300_BROADCOM, i32 3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp161)
  %tobool22.not = icmp eq i32 %bcmp161, 0
  br i1 %tobool22.not, label %lor.lhs.false.if.then28_crit_edge, label %lor.lhs.false23

lor.lhs.false.if.then28_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then28

lor.lhs.false23:                                  ; preds = %lor.lhs.false
  %bcmp162 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %current_network, ptr noundef nonnull dereferenceable(3) @LINKSYSWRT350_LINKSYSWRT150_BROADCOM, i32 3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp162)
  %tobool27.not = icmp eq i32 %bcmp162, 0
  br i1 %tobool27.not, label %lor.lhs.false23.if.then28_crit_edge, label %if.else30

lor.lhs.false23.if.then28_crit_edge:              ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then28

if.then28:                                        ; preds = %lor.lhs.false23.if.then28_crit_edge, %lor.lhs.false.if.then28_crit_edge, %if.else17.if.then28_crit_edge
  %IOTPeer29 = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 50
  %16 = ptrtoint ptr %IOTPeer29 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 3, ptr %IOTPeer29, align 1
  br label %do.body117

if.else30:                                        ; preds = %lor.lhs.false23
  %bcmp163 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %current_network, ptr noundef nonnull dereferenceable(3) @BELKINF5D8233V1_RALINK, i32 3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp163)
  %cmp = icmp eq i32 %bcmp163, 0
  br i1 %cmp, label %if.else30.if.then62_crit_edge, label %lor.lhs.false35

if.else30.if.then62_crit_edge:                    ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then62

lor.lhs.false35:                                  ; preds = %if.else30
  %bcmp164 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %current_network, ptr noundef nonnull dereferenceable(3) @BELKINF5D82334V3_RALINK, i32 3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp164)
  %cmp39 = icmp eq i32 %bcmp164, 0
  br i1 %cmp39, label %lor.lhs.false35.if.then62_crit_edge, label %lor.lhs.false41

lor.lhs.false35.if.then62_crit_edge:              ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then62

lor.lhs.false41:                                  ; preds = %lor.lhs.false35
  %bcmp165 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %current_network, ptr noundef nonnull dereferenceable(3) @PCI_RALINK, i32 3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp165)
  %cmp45 = icmp eq i32 %bcmp165, 0
  br i1 %cmp45, label %lor.lhs.false41.if.then62_crit_edge, label %lor.lhs.false47

lor.lhs.false41.if.then62_crit_edge:              ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then62

lor.lhs.false47:                                  ; preds = %lor.lhs.false41
  %bcmp166 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %current_network, ptr noundef nonnull dereferenceable(3) @EDIMAX_RALINK, i32 3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp166)
  %cmp51 = icmp eq i32 %bcmp166, 0
  br i1 %cmp51, label %lor.lhs.false47.if.then62_crit_edge, label %lor.lhs.false53

lor.lhs.false47.if.then62_crit_edge:              ; preds = %lor.lhs.false47
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then62

lor.lhs.false53:                                  ; preds = %lor.lhs.false47
  %bcmp167 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %current_network, ptr noundef nonnull dereferenceable(3) @AIRLINK_RALINK, i32 3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp167)
  %cmp57 = icmp eq i32 %bcmp167, 0
  br i1 %cmp57, label %lor.lhs.false53.if.then62_crit_edge, label %lor.lhs.false59

lor.lhs.false53.if.then62_crit_edge:              ; preds = %lor.lhs.false53
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then62

lor.lhs.false59:                                  ; preds = %lor.lhs.false53
  %ralink_cap_exist = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 89, i32 49
  %17 = ptrtoint ptr %ralink_cap_exist to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ralink_cap_exist, align 1, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool60.not = icmp eq i8 %18, 0
  br i1 %tobool60.not, label %if.else64, label %lor.lhs.false59.if.then62_crit_edge

lor.lhs.false59.if.then62_crit_edge:              ; preds = %lor.lhs.false59
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then62

if.then62:                                        ; preds = %lor.lhs.false59.if.then62_crit_edge, %lor.lhs.false53.if.then62_crit_edge, %lor.lhs.false47.if.then62_crit_edge, %lor.lhs.false41.if.then62_crit_edge, %lor.lhs.false35.if.then62_crit_edge, %if.else30.if.then62_crit_edge
  %IOTPeer63 = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 50
  %19 = ptrtoint ptr %IOTPeer63 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 4, ptr %IOTPeer63, align 1
  br label %do.body117

if.else64:                                        ; preds = %lor.lhs.false59
  %atheros_cap_exist = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 89, i32 50
  %20 = ptrtoint ptr %atheros_cap_exist to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %atheros_cap_exist, align 8, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool65.not = icmp eq i8 %21, 0
  br i1 %tobool65.not, label %lor.lhs.false67, label %if.else64.if.then79_crit_edge

if.else64.if.then79_crit_edge:                    ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then79

lor.lhs.false67:                                  ; preds = %if.else64
  %bcmp168 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %current_network, ptr noundef nonnull dereferenceable(3) @DLINK_ATHEROS_1, i32 3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp168)
  %cmp71 = icmp eq i32 %bcmp168, 0
  br i1 %cmp71, label %lor.lhs.false67.if.then79_crit_edge, label %lor.lhs.false73

lor.lhs.false67.if.then79_crit_edge:              ; preds = %lor.lhs.false67
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then79

lor.lhs.false73:                                  ; preds = %lor.lhs.false67
  %bcmp169 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %current_network, ptr noundef nonnull dereferenceable(3) @DLINK_ATHEROS_2, i32 3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp169)
  %cmp77 = icmp eq i32 %bcmp169, 0
  br i1 %cmp77, label %lor.lhs.false73.if.then79_crit_edge, label %if.else81

lor.lhs.false73.if.then79_crit_edge:              ; preds = %lor.lhs.false73
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then79

if.then79:                                        ; preds = %lor.lhs.false73.if.then79_crit_edge, %lor.lhs.false67.if.then79_crit_edge, %if.else64.if.then79_crit_edge
  %IOTPeer80 = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 50
  %22 = ptrtoint ptr %IOTPeer80 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 5, ptr %IOTPeer80, align 1
  br label %do.body117

if.else81:                                        ; preds = %lor.lhs.false73
  %bcmp170 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %current_network, ptr noundef nonnull dereferenceable(3) @CISCO_BROADCOM, i32 3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp170)
  %cmp85 = icmp eq i32 %bcmp170, 0
  br i1 %cmp85, label %if.else81.if.then90_crit_edge, label %lor.lhs.false87

if.else81.if.then90_crit_edge:                    ; preds = %if.else81
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then90

lor.lhs.false87:                                  ; preds = %if.else81
  %cisco_cap_exist = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 89, i32 51
  %23 = ptrtoint ptr %cisco_cap_exist to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %cisco_cap_exist, align 1, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool88.not = icmp eq i8 %24, 0
  br i1 %tobool88.not, label %if.else92, label %lor.lhs.false87.if.then90_crit_edge

lor.lhs.false87.if.then90_crit_edge:              ; preds = %lor.lhs.false87
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then90

if.then90:                                        ; preds = %lor.lhs.false87.if.then90_crit_edge, %if.else81.if.then90_crit_edge
  %IOTPeer91 = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 50
  %25 = ptrtoint ptr %IOTPeer91 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 6, ptr %IOTPeer91, align 1
  br label %do.body117

if.else92:                                        ; preds = %lor.lhs.false87
  %bcmp171 = tail call i32 @bcmp(ptr noundef dereferenceable(3) %current_network, ptr noundef nonnull dereferenceable(3) @LINKSYS_MARVELL_4400N, i32 3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp171)
  %cmp96 = icmp eq i32 %bcmp171, 0
  br i1 %cmp96, label %if.else92.if.then101_crit_edge, label %lor.lhs.false98

if.else92.if.then101_crit_edge:                   ; preds = %if.else92
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then101

lor.lhs.false98:                                  ; preds = %if.else92
  %marvell_cap_exist = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 89, i32 48
  %26 = ptrtoint ptr %marvell_cap_exist to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %marvell_cap_exist, align 2, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool99.not = icmp eq i8 %27, 0
  br i1 %tobool99.not, label %if.else103, label %lor.lhs.false98.if.then101_crit_edge

lor.lhs.false98.if.then101_crit_edge:             ; preds = %lor.lhs.false98
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then101

if.then101:                                       ; preds = %lor.lhs.false98.if.then101_crit_edge, %if.else92.if.then101_crit_edge
  %IOTPeer102 = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 50
  %28 = ptrtoint ptr %IOTPeer102 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 7, ptr %IOTPeer102, align 1
  br label %do.body117

if.else103:                                       ; preds = %lor.lhs.false98
  %airgo_cap_exist = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 89, i32 52
  %29 = ptrtoint ptr %airgo_cap_exist to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %airgo_cap_exist, align 2, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool104.not = icmp eq i8 %30, 0
  %IOTPeer108 = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 50
  br i1 %tobool104.not, label %if.else107, label %if.then105

if.then105:                                       ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %IOTPeer108 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 10, ptr %IOTPeer108, align 1
  br label %do.body117

if.else107:                                       ; preds = %if.else103
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %IOTPeer108 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %IOTPeer108, align 1
  br label %do.body117

do.body117:                                       ; preds = %if.else107, %if.then105, %if.then101, %if.then90, %if.then79, %if.then62, %if.then28, %if.then15, %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @HTIOTPeerDetermine.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@HTIOTPeerDetermine, %if.then122)) #12
          to label %do.end127 [label %if.then122], !srcloc !94

if.then122:                                       ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  %IOTPeer123 = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 50
  %35 = ptrtoint ptr %IOTPeer123 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %IOTPeer123, align 1
  %conv124 = zext i8 %36 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @HTIOTPeerDetermine.__UNIQUE_ID_ddebug339, ptr noundef %34, ptr noundef nonnull @.str.16, i32 noundef %conv124) #12
  br label %do.end127

do.end127:                                        ; preds = %if.then122, %do.body117
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @HT_update_self_and_peer_setting(ptr nocapture noundef readonly %ieee, ptr nocapture noundef readonly %pNetwork) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pHTInfo1 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 27
  %0 = ptrtoint ptr %pHTInfo1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pHTInfo1, align 8
  %bCurrentHTSupport = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bCurrentHTSupport to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bCurrentHTSupport, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then:                                          ; preds = %entry
  %bd_ht_info_len = getelementptr inbounds %struct.rtllib_network, ptr %pNetwork, i32 0, i32 45, i32 4
  %4 = ptrtoint ptr %bd_ht_info_len to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %bd_ht_info_len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp.not = icmp eq i16 %5, 0
  br i1 %cmp.not, label %if.then.if.end5_crit_edge, label %if.then4

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %OptMode = getelementptr inbounds %struct.rtllib_network, ptr %pNetwork, i32 0, i32 45, i32 3, i32 1
  %6 = ptrtoint ptr %OptMode to i32
  call void @__asan_loadN_noabort(i32 %6, i32 5)
  %bf.load = load i40, ptr %OptMode, align 1
  %bf.lshr = lshr i40 %bf.load, 30
  %7 = trunc i40 %bf.lshr to i8
  %bf.cast = and i8 %7, 3
  %CurrentOpMode = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 31
  %8 = ptrtoint ptr %CurrentOpMode to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %bf.cast, ptr %CurrentOpMode, align 1
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @HTUseDefaultSetting(ptr noundef %ieee) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pHTInfo1 = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 27
  %0 = ptrtoint ptr %pHTInfo1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pHTInfo1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %bCurrentHTSupport11 = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %bCurrentHTSupport11 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %bCurrentHTSupport11, align 1
  %bRegSuppCCK = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %bRegSuppCCK to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bRegSuppCCK, align 1
  %bCurSuppCCK = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %bCurSuppCCK to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %bCurSuppCCK, align 1
  %bRegBW40MHz = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %bRegBW40MHz to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bRegBW40MHz, align 1
  %bCurBW40MHz = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %bCurBW40MHz to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %bCurBW40MHz, align 1
  %bRegShortGI20MHz = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %bRegShortGI20MHz to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bRegShortGI20MHz, align 1
  %bCurShortGI20MHz = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %bCurShortGI20MHz to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %bCurShortGI20MHz, align 1
  %bRegShortGI40MHz = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %bRegShortGI40MHz to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bRegShortGI40MHz, align 1
  %bCurShortGI40MHz = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %bCurShortGI40MHz to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %bCurShortGI40MHz, align 1
  %iw_mode = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 56
  %17 = ptrtoint ptr %iw_mode to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %iw_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp = icmp eq i32 %18, 1
  br i1 %cmp, label %if.then2, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %supported = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 89, i32 6, i32 3
  %19 = ptrtoint ptr %supported to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %supported, align 4
  %active = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 89, i32 6, i32 2
  %21 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %active, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %bAMSDU_Support = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 15
  %22 = ptrtoint ptr %bAMSDU_Support to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bAMSDU_Support, align 1
  %bCurrent_AMSDU_Support = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 17
  %24 = ptrtoint ptr %bCurrent_AMSDU_Support to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %bCurrent_AMSDU_Support, align 1
  %nAMSDU_MaxSize = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 16
  %25 = ptrtoint ptr %nAMSDU_MaxSize to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %nAMSDU_MaxSize, align 1
  %nCurrent_AMSDU_MaxSize = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 18
  %27 = ptrtoint ptr %nCurrent_AMSDU_MaxSize to i32
  call void @__asan_storeN_noabort(i32 %27, i32 2)
  store i16 %26, ptr %nCurrent_AMSDU_MaxSize, align 1
  %bAMPDUEnable = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 19
  %28 = ptrtoint ptr %bAMPDUEnable to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bAMPDUEnable, align 1
  %bCurrentAMPDUEnable = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 20
  %30 = ptrtoint ptr %bCurrentAMPDUEnable to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %bCurrentAMPDUEnable, align 1
  %AMPDU_Factor = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 21
  %31 = ptrtoint ptr %AMPDU_Factor to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %AMPDU_Factor, align 1
  %CurrentAMPDUFactor = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 22
  %33 = ptrtoint ptr %CurrentAMPDUFactor to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %CurrentAMPDUFactor, align 1
  %Regdot11TxHTOperationalRateSet = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 30
  %dot11HTOperationalRateSet = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 31
  tail call fastcc void @HTFilterMCSRate(ptr noundef %ieee, ptr noundef %Regdot11TxHTOperationalRateSet, ptr noundef %dot11HTOperationalRateSet)
  %call9 = tail call zeroext i8 @HTGetHighestMCSRate(ptr noundef %ieee, ptr noundef %dot11HTOperationalRateSet, ptr noundef nonnull @MCS_FILTER_ALL)
  %HTHighestOperaRate = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 34
  %34 = ptrtoint ptr %HTHighestOperaRate to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %call9, ptr %HTHighestOperaRate, align 1
  %HTCurrentOperaRate = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 33
  %35 = ptrtoint ptr %HTCurrentOperaRate to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %call9, ptr %HTCurrentOperaRate, align 8
  br label %if.end12

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %bCurrentHTSupport11 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %bCurrentHTSupport11, align 1
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @HTCCheck(ptr nocapture noundef readonly %ieee, ptr nocapture noundef readonly %pFrame) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pHTInfo = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 27
  %0 = ptrtoint ptr %pHTInfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pHTInfo, align 8
  %bCurrentHTSupport = getelementptr inbounds %struct.rt_hi_throughput, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bCurrentHTSupport to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bCurrentHTSupport, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %pFrame to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %pFrame, align 2
  %6 = and i16 %5, -32632
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32632, i16 %6)
  %7 = icmp eq i16 %6, -32632
  br i1 %7, label %do.body8, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

do.body8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @HTCCheck.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@HTCCheck, %if.then12)) #12
          to label %return [label %if.then12], !srcloc !94

if.then12:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.rtllib_device, ptr %ieee, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @HTCCheck.__UNIQUE_ID_ddebug342, ptr noundef %9, ptr noundef nonnull @.str.10) #12
  br label %return

return:                                           ; preds = %if.then12, %do.body8, %if.then.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i8 [ 1, %if.then12 ], [ 0, %if.then.return_crit_edge ], [ 0, %entry.return_crit_edge ], [ 1, %do.body8 ]
  ret i8 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nobuiltin }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !38, !40, !42, !43, !44, !46, !47, !48, !49, !51, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !75, !76, !78, !80, !82}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !{ptr @MCS_FILTER_ALL, !1, !"MCS_FILTER_ALL", i1 false, i1 false}
!1 = !{!"../drivers/staging/rtl8192e/rtl819x_HTProc.c", i32 9, i32 4}
!2 = !{ptr @MCS_FILTER_1SS, !3, !"MCS_FILTER_1SS", i1 false, i1 false}
!3 = !{!"../drivers/staging/rtl8192e/rtl819x_HTProc.c", i32 14, i32 4}
!4 = !{ptr @MCS_DATA_RATE, !5, !"MCS_DATA_RATE", i1 false, i1 false}
!5 = !{!"../drivers/staging/rtl8192e/rtl819x_HTProc.c", i32 19, i32 5}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/rtl8192e/rtl819x_HTProc.c", i32 281, i32 8}
!8 = !{ptr @__func__.HTConstructCapabilityElement, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/staging/rtl8192e/rtl819x_HTProc.c", i32 281, i32 49}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/rtl8192e/rtl819x_HTProc.c", i32 316, i32 2}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @HTConstructCapabilityElement.__UNIQUE_ID_ddebug340, !11, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/staging/rtl8192e/rtl819x_HTProc.c", i32 362, i32 8}
!17 = !{ptr @__func__.HTConstructInfoElement, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/staging/rtl8192e/rtl819x_HTProc.c", i32 363, i32 8}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/staging/rtl8192e/rtl819x_HTProc.c", i32 401, i32 26}
!21 = !{ptr @__func__.HTConstructRT2RTAggElement, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/staging/rtl8192e/rtl819x_HTProc.c", i32 401, i32 57}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/staging/rtl8192e/rtl819x_HTProc.c", i32 458, i32 8}
!25 = !{ptr @__func__.HTGetHighestMCSRate, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/staging/rtl8192e/rtl819x_HTProc.c", i32 459, i32 8}
!27 = !{ptr @HTOnAssocRsp.EWC11NHTCap, !28, !"EWC11NHTCap", i1 false, i1 false}
!28 = !{!"../drivers/staging/rtl8192e/rtl819x_HTProc.c", i32 520, i32 12}
!29 = !{ptr @HTOnAssocRsp.EWC11NHTInfo, !30, !"EWC11NHTInfo", i1 false, i1 false}
!30 = !{!"../drivers/staging/rtl8192e/rtl819x_HTProc.c", i32 521, i32 12}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/staging/rtl8192e/rtl819x_HTProc.c", i32 524, i32 26}
!33 = !{ptr @__func__.HTOnAssocRsp, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/staging/rtl8192e/rtl819x_HTProc.c", i32 524, i32 48}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/staging/rtl8192e/rtl819x_HTProc.c", i32 527, i32 2}
!37 = !{ptr @HTOnAssocRsp.__UNIQUE_ID_ddebug341, !36, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!38 = !{ptr @__ksymtab_HT_update_self_and_peer_setting, !39, !"__ksymtab_HT_update_self_and_peer_setting", i1 false, i1 false}
!39 = !{!"../drivers/staging/rtl8192e/rtl819x_HTProc.c", i32 780, i32 1}
!40 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/staging/rtl8192e/rtl819x_HTProc.c", i32 822, i32 4}
!42 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @HTCCheck.__UNIQUE_ID_ddebug342, !41, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!44 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/staging/rtl8192e/rtl819x_HTProc.c", i32 869, i32 3}
!46 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @HTSetConnectBwMode._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @HTSetConnectBwMode._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.13, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/staging/rtl8192e/rtl819x_HTProc.c", i32 889, i32 2}
!51 = !{ptr @HTSetConnectBwMode.__UNIQUE_ID_ddebug343, !50, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!52 = !{ptr @BELKINF5D8233V1_RALINK, !53, !"BELKINF5D8233V1_RALINK", i1 false, i1 false}
!53 = !{!"../drivers/staging/rtl8192e/rtl819x_HTProc.c", i32 52, i32 11}
!54 = !{ptr @BELKINF5D82334V3_RALINK, !55, !"BELKINF5D82334V3_RALINK", i1 false, i1 false}
!55 = !{!"../drivers/staging/rtl8192e/rtl819x_HTProc.c", i32 54, i32 11}
!56 = !{ptr @PCI_RALINK, !57, !"PCI_RALINK", i1 false, i1 false}
!57 = !{!"../drivers/staging/rtl8192e/rtl819x_HTProc.c", i32 56, i32 11}
!58 = !{ptr @EDIMAX_RALINK, !59, !"EDIMAX_RALINK", i1 false, i1 false}
!59 = !{!"../drivers/staging/rtl8192e/rtl819x_HTProc.c", i32 58, i32 11}
!60 = !{ptr @AIRLINK_RALINK, !61, !"AIRLINK_RALINK", i1 false, i1 false}
!61 = !{!"../drivers/staging/rtl8192e/rtl819x_HTProc.c", i32 60, i32 11}
!62 = !{ptr @UNKNOWN_BORADCOM, !63, !"UNKNOWN_BORADCOM", i1 false, i1 false}
!63 = !{!"../drivers/staging/rtl8192e/rtl819x_HTProc.c", i32 46, i32 11}
!64 = !{ptr @LINKSYSWRT330_LINKSYSWRT300_BROADCOM, !65, !"LINKSYSWRT330_LINKSYSWRT300_BROADCOM", i1 false, i1 false}
!65 = !{!"../drivers/staging/rtl8192e/rtl819x_HTProc.c", i32 48, i32 11}
!66 = !{ptr @LINKSYSWRT350_LINKSYSWRT150_BROADCOM, !67, !"LINKSYSWRT350_LINKSYSWRT150_BROADCOM", i1 false, i1 false}
!67 = !{!"../drivers/staging/rtl8192e/rtl819x_HTProc.c", i32 50, i32 11}
!68 = !{ptr @.str.14, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/staging/rtl8192e/rtl819x_HTProc.c", i32 424, i32 26}
!70 = !{ptr @__func__.HT_PickMCSRate, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/staging/rtl8192e/rtl819x_HTProc.c", i32 424, i32 57}
!72 = !{ptr @.str.15, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/staging/rtl8192e/rtl819x_HTProc.c", i32 209, i32 2}
!74 = !{ptr @.str.16, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @HTIOTPeerDetermine.__UNIQUE_ID_ddebug339, !73, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!76 = !{ptr @DLINK_ATHEROS_1, !77, !"DLINK_ATHEROS_1", i1 false, i1 false}
!77 = !{!"../drivers/staging/rtl8192e/rtl819x_HTProc.c", i32 62, i32 11}
!78 = !{ptr @DLINK_ATHEROS_2, !79, !"DLINK_ATHEROS_2", i1 false, i1 false}
!79 = !{!"../drivers/staging/rtl8192e/rtl819x_HTProc.c", i32 64, i32 11}
!80 = !{ptr @CISCO_BROADCOM, !81, !"CISCO_BROADCOM", i1 false, i1 false}
!81 = !{!"../drivers/staging/rtl8192e/rtl819x_HTProc.c", i32 66, i32 11}
!82 = !{ptr @LINKSYS_MARVELL_4400N, !83, !"LINKSYS_MARVELL_4400N", i1 false, i1 false}
!83 = !{!"../drivers/staging/rtl8192e/rtl819x_HTProc.c", i32 68, i32 11}
!84 = !{i32 1, !"wchar_size", i32 2}
!85 = !{i32 1, !"min_enum_size", i32 4}
!86 = !{i32 8, !"branch-target-enforcement", i32 0}
!87 = !{i32 8, !"sign-return-address", i32 0}
!88 = !{i32 8, !"sign-return-address-all", i32 0}
!89 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!90 = !{i32 7, !"uwtable", i32 1}
!91 = !{i32 7, !"frame-pointer", i32 2}
!92 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!93 = !{i8 0, i8 2}
!94 = !{i64 2148911732, i64 2148911737, i64 2148911750, i64 2148911794, i64 2148911828, i64 2148911849}
