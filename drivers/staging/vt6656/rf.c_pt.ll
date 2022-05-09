; ModuleID = '/llk/IR_all_yes/drivers/staging/vt6656/rf.c_pt.bc'
source_filename = "../drivers/staging/vt6656/rf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vnt_table_info = type { ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.vnt_private = type { ptr, ptr, i8, ptr, ptr, i64, i32, i32, %struct.spinlock, %struct.mutex, i32, ptr, i32, [128 x ptr], i32, [128 x ptr], %struct.usb_anchor, i32, %struct.vnt_interrupt_buffer, i16, i8, i8, i8, %struct.vnt_cmd_card_init, %struct.vnt_rsp_card_init, i8, [6 x i8], [6 x i8], i8, i64, i32, i32, i32, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i8, i8, [256 x i8], i8, i8, i8, i8, i8, [14 x i8], [14 x i8], [42 x i8], i16, i16, i32, i32, i16, i16, i32, i32, [32 x i32], i32, i32, i32, i32, i32, i8, [4 x i8], i8, i8, %struct.delayed_work, %struct.ieee80211_low_level_stats }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.vnt_interrupt_buffer = type { ptr }
%struct.vnt_cmd_card_init = type { i8, i8, [6 x i8], i8, i8 }
%struct.vnt_rsp_card_init = type { i8, [6 x i8], i8, i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }

@__const.vnt_rf_rssi_to_dbm.airoharf = private unnamed_addr constant [4 x i8] c"\00\12\00(", align 1
@vnt_table_seq = internal constant { [6 x [3 x %struct.vnt_table_info]], [48 x i8] } { [6 x [3 x %struct.vnt_table_info]] [[3 x %struct.vnt_table_info] [%struct.vnt_table_info { ptr @al2230_init_table, i32 45 }, %struct.vnt_table_info { ptr @al2230_channel_table0, i32 42 }, %struct.vnt_table_info { ptr @al2230_channel_table1, i32 42 }], [3 x %struct.vnt_table_info] [%struct.vnt_table_info { ptr @al7230_init_table, i32 48 }, %struct.vnt_table_info { ptr @al7230_channel_table0, i32 168 }, %struct.vnt_table_info { ptr @al7230_channel_table1, i32 168 }], [3 x %struct.vnt_table_info] [%struct.vnt_table_info { ptr @vt3226_init_table, i32 33 }, %struct.vnt_table_info { ptr @vt3226_channel_table0, i32 42 }, %struct.vnt_table_info { ptr @vt3226_channel_table1, i32 42 }], [3 x %struct.vnt_table_info] [%struct.vnt_table_info { ptr @vt3226d0_init_table, i32 33 }, %struct.vnt_table_info { ptr @vt3226_channel_table0, i32 42 }, %struct.vnt_table_info { ptr @vt3226_channel_table1, i32 42 }], [3 x %struct.vnt_table_info] [%struct.vnt_table_info { ptr @vt3342a0_init_table, i32 39 }, %struct.vnt_table_info { ptr @vt3342_channel_table0, i32 168 }, %struct.vnt_table_info { ptr @vt3342_channel_table1, i32 168 }], [3 x %struct.vnt_table_info] [%struct.vnt_table_info { ptr @al7230_init_table_amode, i32 48 }, %struct.vnt_table_info { ptr @al7230_channel_table2, i32 168 }, %struct.vnt_table_info zeroinitializer]], [48 x i8] zeroinitializer }, align 32
@vnt_rf_set_txpower.__UNIQUE_ID_ddebug383 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -86, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vt6656_stage\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vnt_rf_set_txpower\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/staging/vt6656/rf.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s 11b channel [%d]\0A\00", [43 x i8] zeroinitializer }, align 32
@vt3226d0_lo_current_table = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 20301312, i32 20301312, i32 37078528, i32 37078528, i32 37078528, i32 53855744, i32 53855744, i32 53855744, i32 53855744, i32 53855744, i32 53855744, i32 53855744, i32 53855744, i32 20301312], [40 x i8] zeroinitializer }, align 32
@vnt_rf_set_txpower.__UNIQUE_ID_ddebug384 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 -82, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"@@@@ %s> 11G mode\0A\00", [45 x i8] zeroinitializer }, align 32
@al2230_init_table = internal global { [15 x [3 x i8]], [51 x i8] } { [15 x [3 x i8]] [[3 x i8] c"\03\F7\90", [3 x i8] c"\0331", [3 x i8] c"\01\B8\02", [3 x i8] c"\00\FF\F3", [3 x i8] c"\00\05\A4", [3 x i8] c"\0FM\C5", [3 x i8] c"\08\05\B6", [3 x i8] c"\01G\C7", [3 x i8] c"\00\06\88", [3 x i8] c"\04\03\B9", [3 x i8] c"\00\DB\BA", [3 x i8] c"\00\09\9B", [3 x i8] c"\0B\DF\FC", [3 x i8] c"\00\00\0D", [3 x i8] c"\00X\0F"], [51 x i8] zeroinitializer }, align 32
@al2230_channel_table0 = internal global { [14 x [3 x i8]], [54 x i8] } { [14 x [3 x i8]] [[3 x i8] c"\03\F7\90", [3 x i8] c"\03\F7\90", [3 x i8] c"\03\E7\90", [3 x i8] c"\03\E7\90", [3 x i8] c"\03\F7\A0", [3 x i8] c"\03\F7\A0", [3 x i8] c"\03\E7\A0", [3 x i8] c"\03\E7\A0", [3 x i8] c"\03\F7\B0", [3 x i8] c"\03\F7\B0", [3 x i8] c"\03\E7\B0", [3 x i8] c"\03\E7\B0", [3 x i8] c"\03\F7\C0", [3 x i8] c"\03\E7\C0"], [54 x i8] zeroinitializer }, align 32
@al2230_channel_table1 = internal global { [14 x [3 x i8]], [54 x i8] } { [14 x [3 x i8]] [[3 x i8] c"\0331", [3 x i8] c"\0B31", [3 x i8] c"\0331", [3 x i8] c"\0B31", [3 x i8] c"\0331", [3 x i8] c"\0B31", [3 x i8] c"\0331", [3 x i8] c"\0B31", [3 x i8] c"\0331", [3 x i8] c"\0B31", [3 x i8] c"\0331", [3 x i8] c"\0B31", [3 x i8] c"\0331", [3 x i8] c"\06fa"], [54 x i8] zeroinitializer }, align 32
@al7230_init_table = internal global { [16 x [3 x i8]], [48 x i8] } { [16 x [3 x i8]] [[3 x i8] c" 7\90", [3 x i8] c"\1331", [3 x i8] c"\84\1F\F2", [3 x i8] c"?\DF\A3", [3 x i8] c"\7F\D7\84", [3 x i8] c"\80+U", [3 x i8] c"V\AF6", [3 x i8] c"\CE\02\07", [3 x i8] c"n\BC\98", [3 x i8] c"\22\1B\B9", [3 x i8] c"\E0\00\0A", [3 x i8] c"\08\03\1B", [3 x i8] c"\00\0A<", [3 x i8] c"\FF\FF\FD", [3 x i8] c"\00\00\0E", [3 x i8] c"\1A\BA\8F"], [48 x i8] zeroinitializer }, align 32
@al7230_channel_table0 = internal global { [56 x [3 x i8]], [56 x i8] } { [56 x [3 x i8]] [[3 x i8] c" 7\90", [3 x i8] c" 7\90", [3 x i8] c" 7\90", [3 x i8] c" 7\90", [3 x i8] c" 7\A0", [3 x i8] c" 7\A0", [3 x i8] c" 7\A0", [3 x i8] c" 7\A0", [3 x i8] c" 7\B0", [3 x i8] c" 7\B0", [3 x i8] c" 7\B0", [3 x i8] c" 7\B0", [3 x i8] c" 7\C0", [3 x i8] c" 7\C0", [3 x i8] c"\0F\F5 ", [3 x i8] c"/\F5 ", [3 x i8] c"\0F\F5 ", [3 x i8] c"\0F\F5 ", [3 x i8] c"/\F5 ", [3 x i8] c"\0F\F5 ", [3 x i8] c"/\F50", [3 x i8] c"/\F50", [3 x i8] c"\0F\F5@", [3 x i8] c"/\F5@", [3 x i8] c"\0F\F5@", [3 x i8] c"\0F\F5@", [3 x i8] c"/\F5@", [3 x i8] c"/\F5P", [3 x i8] c"/\F5`", [3 x i8] c"/\F5`", [3 x i8] c"/\F5p", [3 x i8] c"/\F5p", [3 x i8] c"/\F5p", [3 x i8] c"/\F5p", [3 x i8] c"/\F5p", [3 x i8] c"/\F5p", [3 x i8] c"/\F5\80", [3 x i8] c"/\F5\80", [3 x i8] c"/\F5\80", [3 x i8] c"/\F5\90", [3 x i8] c"/\F5\C0", [3 x i8] c"/\F5\C0", [3 x i8] c"/\F5\C0", [3 x i8] c"/\F5\D0", [3 x i8] c"/\F5\D0", [3 x i8] c"/\F5\D0", [3 x i8] c"/\F5\E0", [3 x i8] c"/\F5\E0", [3 x i8] c"/\F5\E0", [3 x i8] c"/\F5\F0", [3 x i8] c"/\F5\F0", [3 x i8] c"/\F6\00", [3 x i8] c"/\F6\00", [3 x i8] c"/\F6\00", [3 x i8] c"/\F6\10", [3 x i8] c"/\F6\10"], [56 x i8] zeroinitializer }, align 32
@al7230_channel_table1 = internal global { [56 x [3 x i8]], [56 x i8] } { [56 x [3 x i8]] [[3 x i8] c"\1331", [3 x i8] c"\1B31", [3 x i8] c"\0331", [3 x i8] c"\0B31", [3 x i8] c"\1331", [3 x i8] c"\1B31", [3 x i8] c"\0331", [3 x i8] c"\0B31", [3 x i8] c"\1331", [3 x i8] c"\1B31", [3 x i8] c"\0331", [3 x i8] c"\0B31", [3 x i8] c"\1331", [3 x i8] c"\06fa", [3 x i8] c"\1DUQ", [3 x i8] c"\00\00\01", [3 x i8] c"\02\AA\A1", [3 x i8] c"\08\00\01", [3 x i8] c"\0A\AA\A1", [3 x i8] c"\0DUQ", [3 x i8] c"\15UQ", [3 x i8] c"\00\00\01", [3 x i8] c"\1DUQ", [3 x i8] c"\00\00\01", [3 x i8] c"\02\AA\A1", [3 x i8] c"\08\00\01", [3 x i8] c"\0A\AA\A1", [3 x i8] c"\15UQ", [3 x i8] c"\05UQ", [3 x i8] c"\0A\AA\A1", [3 x i8] c"\10\00\01", [3 x i8] c"\15UQ", [3 x i8] c"\1A\AA\A1", [3 x i8] c"\00\00\01", [3 x i8] c"\05UQ", [3 x i8] c"\0A\AA\A1", [3 x i8] c"\15UQ", [3 x i8] c"\00\00\01", [3 x i8] c"\0A\AA\A1", [3 x i8] c"\15UQ", [3 x i8] c"\15UQ", [3 x i8] c"\00\00\01", [3 x i8] c"\0A\AA\A1", [3 x i8] c"\15UQ", [3 x i8] c"\00\00\01", [3 x i8] c"\0A\AA\A1", [3 x i8] c"\15UQ", [3 x i8] c"\00\00\01", [3 x i8] c"\0A\AA\A1", [3 x i8] c"\15UQ", [3 x i8] c"\00\00\01", [3 x i8] c"\18\00\01", [3 x i8] c"\02\AA\A1", [3 x i8] c"\0DUQ", [3 x i8] c"\18\00\01", [3 x i8] c"\02\AA\B1"], [56 x i8] zeroinitializer }, align 32
@vt3226_init_table = internal global { [11 x [3 x i8]], [63 x i8] } { [11 x [3 x i8]] [[3 x i8] c"\03\FF\80", [3 x i8] c"\02\82\A1", [3 x i8] c"\03\C6\A2", [3 x i8] c"\01\97\93", [3 x i8] c"\03fd", [3 x i8] c"\00a\A5", [3 x i8] c"\01{\D6", [3 x i8] c"\00\80\17", [3 x i8] c"\03\F8\08", [3 x i8] c"\00\029", [3 x i8] c"\02\00*"], [63 x i8] zeroinitializer }, align 32
@vt3226_channel_table0 = internal global { [14 x [3 x i8]], [54 x i8] } { [14 x [3 x i8]] [[3 x i8] c"\01\97\83", [3 x i8] c"\01\97\83", [3 x i8] c"\01\97\93", [3 x i8] c"\01\97\93", [3 x i8] c"\01\97\93", [3 x i8] c"\01\97\93", [3 x i8] c"\01\97\A3", [3 x i8] c"\01\97\A3", [3 x i8] c"\01\97\A3", [3 x i8] c"\01\97\A3", [3 x i8] c"\01\97\B3", [3 x i8] c"\01\97\B3", [3 x i8] c"\01\97\B3", [3 x i8] c"\037\C3"], [54 x i8] zeroinitializer }, align 32
@vt3226_channel_table1 = internal global { [14 x [3 x i8]], [54 x i8] } { [14 x [3 x i8]] [[3 x i8] c"\02fd", [3 x i8] c"\03fd", [3 x i8] c"\00fd", [3 x i8] c"\01fd", [3 x i8] c"\02fd", [3 x i8] c"\03fd", [3 x i8] c"\00fd", [3 x i8] c"\01fd", [3 x i8] c"\02fd", [3 x i8] c"\03fd", [3 x i8] c"\00fd", [3 x i8] c"\01fd", [3 x i8] c"\02fd", [3 x i8] c"\00\CC\C4"], [54 x i8] zeroinitializer }, align 32
@vt3226d0_init_table = internal global { [11 x [3 x i8]], [63 x i8] } { [11 x [3 x i8]] [[3 x i8] c"\03\FF\80", [3 x i8] c"\03\02!", [3 x i8] c"\03\C6\A2", [3 x i8] c"\01\97\93", [3 x i8] c"\03fd", [3 x i8] c"\00q\A5", [3 x i8] c"\01\15\C6", [3 x i8] c"\01.\07", [3 x i8] c"\00X\08", [3 x i8] c"\00\02y", [3 x i8] c"\02\01\AA"], [63 x i8] zeroinitializer }, align 32
@vt3342a0_init_table = internal global { [13 x [3 x i8]], [57 x i8] } { [13 x [3 x i8]] [[3 x i8] c"\03\FF\80", [3 x i8] c"\02\08\81", [3 x i8] c"\00\C6\02", [3 x i8] c"\03\C5\13", [3 x i8] c"\00\EE\E4", [3 x i8] c"\00q\A5", [3 x i8] c"\01uF", [3 x i8] c"\01@'", [3 x i8] c"\01T\08", [3 x i8] c"\00\01i", [3 x i8] c"\02\00\AA", [3 x i8] c"\00\08\CB", [3 x i8] c"\01p\0C"], [57 x i8] zeroinitializer }, align 32
@vt3342_channel_table0 = internal global { [56 x [3 x i8]], [56 x i8] } { [56 x [3 x i8]] [[3 x i8] c"\02\05\03", [3 x i8] c"\01\15\03", [3 x i8] c"\03\C5\03", [3 x i8] c"\02e\03", [3 x i8] c"\01\15\13", [3 x i8] c"\03\C5\13", [3 x i8] c"\02\05\13", [3 x i8] c"\01\15\13", [3 x i8] c"\03\C5\13", [3 x i8] c"\02e\13", [3 x i8] c"\01\15#", [3 x i8] c"\03\C5#", [3 x i8] c"\02\05#", [3 x i8] c"\00\D5#", [3 x i8] c"\01\15\13", [3 x i8] c"\01\15\13", [3 x i8] c"\01\15\13", [3 x i8] c"\01\15\13", [3 x i8] c"\01\15\13", [3 x i8] c"\01\15\13", [3 x i8] c"\01\15\13", [3 x i8] c"\01\15\13", [3 x i8] c"\01\15\13", [3 x i8] c"\01\15\13", [3 x i8] c"\01\15\13", [3 x i8] c"\01\15\13", [3 x i8] c"\01\15\13", [3 x i8] c"\01\15\13", [3 x i8] c"\01\15\13", [3 x i8] c"\01Uc", [3 x i8] c"\01Uc", [3 x i8] c"\02\A5c", [3 x i8] c"\02\A5c", [3 x i8] c"\00\05s", [3 x i8] c"\00\05s", [3 x i8] c"\01Us", [3 x i8] c"\02\A5s", [3 x i8] c"\00\05\83", [3 x i8] c"\01U\83", [3 x i8] c"\02\A5\83", [3 x i8] c"\02\A5\83", [3 x i8] c"\02\A5\83", [3 x i8] c"\02\A5\83", [3 x i8] c"\02\A5\83", [3 x i8] c"\02\A5\83", [3 x i8] c"\02\A5\83", [3 x i8] c"\02\A5\83", [3 x i8] c"\02\A5\83", [3 x i8] c"\02\A5\83", [3 x i8] c"\02\A5\83", [3 x i8] c"\02\A5\83", [3 x i8] c"\00\05\F3", [3 x i8] c"\01V\03", [3 x i8] c"\02\A6\03", [3 x i8] c"\00\06\03", [3 x i8] c"\00\06\03"], [56 x i8] zeroinitializer }, align 32
@vt3342_channel_table1 = internal global { [56 x [3 x i8]], [56 x i8] } { [56 x [3 x i8]] [[3 x i8] c"\01\99\94", [3 x i8] c"\02DD", [3 x i8] c"\02\EE\E4", [3 x i8] c"\03\99\94", [3 x i8] c"\00DD", [3 x i8] c"\00\EE\E4", [3 x i8] c"\01\99\94", [3 x i8] c"\02DD", [3 x i8] c"\02\EE\E4", [3 x i8] c"\03\99\94", [3 x i8] c"\00DD", [3 x i8] c"\00\EE\E4", [3 x i8] c"\01\99\94", [3 x i8] c"\0334", [3 x i8] c"\00DD", [3 x i8] c"\00DD", [3 x i8] c"\00DD", [3 x i8] c"\00DD", [3 x i8] c"\00DD", [3 x i8] c"\00DD", [3 x i8] c"\00DD", [3 x i8] c"\00DD", [3 x i8] c"\00DD", [3 x i8] c"\00DD", [3 x i8] c"\00DD", [3 x i8] c"\00DD", [3 x i8] c"\00DD", [3 x i8] c"\00DD", [3 x i8] c"\00DD", [3 x i8] c"\01UT", [3 x i8] c"\01UT", [3 x i8] c"\02\AA\A4", [3 x i8] c"\02\AA\A4", [3 x i8] c"\00\00\04", [3 x i8] c"\00\00\04", [3 x i8] c"\01UT", [3 x i8] c"\02\AA\A4", [3 x i8] c"\00\00\04", [3 x i8] c"\01UT", [3 x i8] c"\02\AA\A4", [3 x i8] c"\02\AA\A4", [3 x i8] c"\02\AA\A4", [3 x i8] c"\02\AA\A4", [3 x i8] c"\02\AA\A4", [3 x i8] c"\02\AA\A4", [3 x i8] c"\02\AA\A4", [3 x i8] c"\02\AA\A4", [3 x i8] c"\02\AA\A4", [3 x i8] c"\02\AA\A4", [3 x i8] c"\02\AA\A4", [3 x i8] c"\02\AA\A4", [3 x i8] c"\03\00\04", [3 x i8] c"\00UT", [3 x i8] c"\01\AA\A4", [3 x i8] c"\03\00\04", [3 x i8] c"\03\00\04"], [56 x i8] zeroinitializer }, align 32
@al7230_init_table_amode = internal global { [16 x [3 x i8]], [48 x i8] } { [16 x [3 x i8]] [[3 x i8] c"/\F5 ", [3 x i8] c"\00\00\01", [3 x i8] c"E\1F\E2", [3 x i8] c"_\DF\A3", [3 x i8] c"o\D7\84", [3 x i8] c"\85?U", [3 x i8] c"V\AF6", [3 x i8] c"\CE\02\07", [3 x i8] c"n\BC\98", [3 x i8] c"\22\1B\B9", [3 x i8] c"\E0`\0A", [3 x i8] c"\08\03\1B", [3 x i8] c"\00\14|", [3 x i8] c"\FF\FF\FD", [3 x i8] c"\00\00\0E", [3 x i8] c"\12\BA\CF"], [48 x i8] zeroinitializer }, align 32
@al7230_channel_table2 = internal global { [56 x [3 x i8]], [56 x i8] } { [56 x [3 x i8]] [[3 x i8] c"\7F\D7\84", [3 x i8] c"\7F\D7\84", [3 x i8] c"\7F\D7\84", [3 x i8] c"\7F\D7\84", [3 x i8] c"\7F\D7\84", [3 x i8] c"\7F\D7\84", [3 x i8] c"\7F\D7\84", [3 x i8] c"\7F\D7\84", [3 x i8] c"\7F\D7\84", [3 x i8] c"\7F\D7\84", [3 x i8] c"\7F\D7\84", [3 x i8] c"\7F\D7\84", [3 x i8] c"\7F\D7\84", [3 x i8] c"\7F\D7\84", [3 x i8] c"\7F\D7\84", [3 x i8] c"o\D7\84", [3 x i8] c"\7F\D7\84", [3 x i8] c"\7F\D7\84", [3 x i8] c"\7F\D7\84", [3 x i8] c"\7F\D7\84", [3 x i8] c"\7F\D7\84", [3 x i8] c"o\D7\84", [3 x i8] c"\7F\D7\84", [3 x i8] c"o\D7\84", [3 x i8] c"\7F\D7\84", [3 x i8] c"\7F\D7\84", [3 x i8] c"\7F\D7\84", [3 x i8] c"\7F\D7\84", [3 x i8] c"\7F\D7\84", [3 x i8] c"\7F\D7\84", [3 x i8] c"\7F\D7\84", [3 x i8] c"\7F\D7\84", [3 x i8] c"\7F\D7\84", [3 x i8] c"o\D7\84", [3 x i8] c"\7F\D7\84", [3 x i8] c"\7F\D7\84", [3 x i8] c"\7F\D7\84", [3 x i8] c"o\D7\84", [3 x i8] c"\7F\D7\84", [3 x i8] c"\7F\D7\84", [3 x i8] c"\7F\D7\84", [3 x i8] c"o\D7\84", [3 x i8] c"\7F\D7\84", [3 x i8] c"\7F\D7\84", [3 x i8] c"o\D7\84", [3 x i8] c"\7F\D7\84", [3 x i8] c"\7F\D7\84", [3 x i8] c"o\D7\84", [3 x i8] c"\7F\D7\84", [3 x i8] c"\7F\D7\84", [3 x i8] c"o\D7\84", [3 x i8] c"\7F\D7\84", [3 x i8] c"\7F\D7\84", [3 x i8] c"\7F\D7\84", [3 x i8] c"\7F\D7\84", [3 x i8] c"\7F\D7\84"], [56 x i8] zeroinitializer }, align 32
@switch.table.vnt_rf_table_download = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 1, i32 0, i32 3, i32 4, i32 0], [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 3, i64 9, i64 10, i64 12, i64 13, i64 14]
@__sancov_gen_cov_switch_values.5 = internal global [8 x i64] [i64 6, i64 8, i64 3, i64 9, i64 10, i64 12, i64 13, i64 14]
@___asan_gen_.6 = private unnamed_addr constant [14 x i8] c"vnt_table_seq\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 526, i32 36 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 681, i32 4 }
@___asan_gen_.21 = private unnamed_addr constant [26 x i8] c"vt3226d0_lo_current_table\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 362, i32 18 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 695, i32 4 }
@___asan_gen_.27 = private unnamed_addr constant [18 x i8] c"al2230_init_table\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 33, i32 11 }
@___asan_gen_.30 = private unnamed_addr constant [22 x i8] c"al2230_channel_table0\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 51, i32 11 }
@___asan_gen_.33 = private unnamed_addr constant [22 x i8] c"al2230_channel_table1\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 68, i32 11 }
@___asan_gen_.36 = private unnamed_addr constant [18 x i8] c"al7230_init_table\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 85, i32 11 }
@___asan_gen_.39 = private unnamed_addr constant [22 x i8] c"al7230_channel_table0\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 123, i32 11 }
@___asan_gen_.42 = private unnamed_addr constant [22 x i8] c"al7230_channel_table1\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 182, i32 11 }
@___asan_gen_.45 = private unnamed_addr constant [18 x i8] c"vt3226_init_table\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 300, i32 11 }
@___asan_gen_.48 = private unnamed_addr constant [22 x i8] c"vt3226_channel_table0\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 328, i32 11 }
@___asan_gen_.51 = private unnamed_addr constant [22 x i8] c"vt3226_channel_table1\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 345, i32 11 }
@___asan_gen_.54 = private unnamed_addr constant [20 x i8] c"vt3226d0_init_table\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 314, i32 11 }
@___asan_gen_.57 = private unnamed_addr constant [20 x i8] c"vt3342a0_init_table\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 379, i32 11 }
@___asan_gen_.60 = private unnamed_addr constant [22 x i8] c"vt3342_channel_table0\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 395, i32 11 }
@___asan_gen_.63 = private unnamed_addr constant [22 x i8] c"vt3342_channel_table1\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 454, i32 11 }
@___asan_gen_.66 = private unnamed_addr constant [24 x i8] c"al7230_init_table_amode\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 104, i32 11 }
@___asan_gen_.69 = private unnamed_addr constant [22 x i8] c"al7230_channel_table2\00", align 1
@___asan_gen_.70 = private constant [31 x i8] c"../drivers/staging/vt6656/rf.c\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 241, i32 11 }
@___asan_gen_.72 = private unnamed_addr constant [35 x i8] c"switch.table.vnt_rf_table_download\00", align 1
@llvm.compiler.used = appending global [23 x ptr] [ptr @vnt_table_seq, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @vt3226d0_lo_current_table, ptr @.str.4, ptr @al2230_init_table, ptr @al2230_channel_table0, ptr @al2230_channel_table1, ptr @al7230_init_table, ptr @al7230_channel_table0, ptr @al7230_channel_table1, ptr @vt3226_init_table, ptr @vt3226_channel_table0, ptr @vt3226_channel_table1, ptr @vt3226d0_init_table, ptr @vt3342a0_init_table, ptr @vt3342_channel_table0, ptr @vt3342_channel_table1, ptr @al7230_init_table_amode, ptr @al7230_channel_table2, ptr @switch.table.vnt_rf_table_download], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vnt_table_seq to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt3226d0_lo_current_table to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @al2230_init_table to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @al2230_channel_table0 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @al2230_channel_table1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @al7230_init_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @al7230_channel_table0 to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @al7230_channel_table1 to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt3226_init_table to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt3226_channel_table0 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt3226_channel_table1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt3226d0_init_table to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt3342a0_init_table to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt3342_channel_table0 to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt3342_channel_table1 to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @al7230_init_table_amode to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @al7230_channel_table2 to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vnt_rf_table_download to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnt_rf_write_embedded(ptr noundef %priv, i32 noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %reg_data = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_data) #5
  %0 = getelementptr inbounds [4 x i8], ptr %reg_data, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i8], ptr %reg_data, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i8], ptr %reg_data, i32 0, i32 3
  %3 = trunc i32 %data to i8
  %conv = or i8 %3, -71
  %4 = ptrtoint ptr %reg_data to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %reg_data, align 1
  %shr = lshr i32 %data, 8
  %conv1 = trunc i32 %shr to i8
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv1, ptr %0, align 1
  %shr3 = lshr i32 %data, 16
  %conv4 = trunc i32 %shr3 to i8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv4, ptr %1, align 1
  %shr6 = lshr i32 %data, 24
  %conv7 = trunc i32 %shr6 to i8
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv7, ptr %2, align 1
  %call = call i32 @vnt_control_out(ptr noundef %priv, i8 noundef zeroext 17, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 4, ptr noundef nonnull %reg_data) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_data) #5
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_control_out(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnt_rf_setpower(ptr noundef %priv, ptr noundef readonly %ch) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cck_pwr = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 47
  %0 = ptrtoint ptr %cck_pwr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cck_pwr, align 1
  %tobool.not = icmp eq ptr %ch, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %ch, i32 0, i32 3
  %2 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hw_value, align 2
  %sub = add i16 %3, -1
  %flags = getelementptr inbounds %struct.ieee80211_channel, ptr %ch, i32 0, i32 4
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %sub)
  %cmp = icmp ult i16 %sub, 14
  br i1 %cmp, label %if.then6, label %if.then3.if.end30_crit_edge

if.then3.if.end30_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.then6:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  %conv4 = zext i16 %sub to i32
  %arrayidx = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 51, i32 %conv4
  br label %if.end30.sink.split

if.else:                                          ; preds = %if.end
  %6 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp8 = icmp eq i32 %7, 1
  br i1 %cmp8, label %if.then10, label %if.else21

if.then10:                                        ; preds = %if.else
  %sub12 = add i16 %3, -15
  call void @__sanitizer_cov_trace_const_cmp2(i16 42, i16 %sub12)
  %cmp15 = icmp ult i16 %sub12, 42
  br i1 %cmp15, label %if.then17, label %if.then10.if.end30_crit_edge

if.then10.if.end30_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.then17:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  %conv14 = zext i16 %sub12 to i32
  %arrayidx19 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 53, i32 %conv14
  br label %if.end30.sink.split

if.else21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %sub)
  %cmp23 = icmp ult i16 %sub, 14
  br i1 %cmp23, label %if.then25, label %if.else21.if.end30_crit_edge

if.else21.if.end30_crit_edge:                     ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.then25:                                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #7
  %conv22 = zext i16 %sub to i32
  %arrayidx27 = getelementptr %struct.vnt_private, ptr %priv, i32 0, i32 52, i32 %conv22
  br label %if.end30.sink.split

if.end30.sink.split:                              ; preds = %if.then25, %if.then17, %if.then6
  %arrayidx19.sink = phi ptr [ %arrayidx19, %if.then17 ], [ %arrayidx27, %if.then25 ], [ %arrayidx, %if.then6 ]
  %8 = ptrtoint ptr %arrayidx19.sink to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx19.sink, align 1
  br label %if.end30

if.end30:                                         ; preds = %if.end30.sink.split, %if.else21.if.end30_crit_edge, %if.then10.if.end30_crit_edge, %if.then3.if.end30_crit_edge
  %power.0 = phi i8 [ %1, %if.then3.if.end30_crit_edge ], [ %1, %if.then10.if.end30_crit_edge ], [ %1, %if.else21.if.end30_crit_edge ], [ %9, %if.end30.sink.split ]
  %call = tail call fastcc i32 @vnt_rf_set_txpower(ptr noundef %priv, i8 noundef zeroext %power.0, ptr noundef nonnull %ch)
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end30 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vnt_rf_set_txpower(ptr noundef %priv, i8 noundef zeroext %power, ptr nocapture noundef readonly %ch) unnamed_addr #0 align 64 {
entry:
  %reg_data.i272 = alloca [4 x i8], align 1
  %reg_data.i263 = alloca [4 x i8], align 1
  %reg_data.i254 = alloca [4 x i8], align 1
  %reg_data.i245 = alloca [4 x i8], align 1
  %reg_data.i236 = alloca [4 x i8], align 1
  %reg_data.i234 = alloca [4 x i8], align 1
  %reg_data.i232 = alloca [4 x i8], align 1
  %reg_data.i223 = alloca [4 x i8], align 1
  %reg_data.i = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %current_rssi.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 30
  %0 = ptrtoint ptr %current_rssi.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %current_rssi.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %entry.vnt_rf_addpower.exit_crit_edge, label %if.end.i

entry.vnt_rf_addpower.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %vnt_rf_addpower.exit

if.end.i:                                         ; preds = %entry
  %sub.i = sub i32 0, %1
  %rf_type.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 21
  %2 = ptrtoint ptr %rf_type.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rf_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %3)
  %cmp.i = icmp eq i8 %3, 12
  %..i = select i1 %cmp.i, i32 -60, i32 -70
  call void @__sanitizer_cov_trace_cmp4(i32 %..i, i32 %sub.i)
  %cmp4.i = icmp sgt i32 %..i, %sub.i
  br i1 %cmp4.i, label %if.then6.i, label %if.end.i.vnt_rf_addpower.exit_crit_edge

if.end.i.vnt_rf_addpower.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vnt_rf_addpower.exit

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %..neg16.i = select i1 %cmp.i, i32 60, i32 70
  %sub7.i = sub i32 1, %1
  %add.i = add i32 %sub7.i, %..neg16.i
  %div.i = sdiv i32 %add.i, -5
  %div.tr.i = trunc i32 %div.i to i8
  %4 = shl i8 %div.tr.i, 1
  %conv9.i = add i8 %4, 5
  br label %vnt_rf_addpower.exit

vnt_rf_addpower.exit:                             ; preds = %if.then6.i, %if.end.i.vnt_rf_addpower.exit_crit_edge, %entry.vnt_rf_addpower.exit_crit_edge
  %retval.0.i222 = phi i8 [ %conv9.i, %if.then6.i ], [ 7, %entry.vnt_rf_addpower.exit_crit_edge ], [ 0, %if.end.i.vnt_rf_addpower.exit_crit_edge ]
  %add = add i8 %retval.0.i222, %power
  %5 = tail call i8 @llvm.umin.i8(i8 %add, i8 63)
  %power5 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 50
  %6 = ptrtoint ptr %power5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %power5, align 2
  %conv7 = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %5)
  %cmp8 = icmp eq i8 %7, %5
  br i1 %cmp8, label %vnt_rf_addpower.exit.cleanup146_crit_edge, label %if.end11

vnt_rf_addpower.exit.cleanup146_crit_edge:        ; preds = %vnt_rf_addpower.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup146

if.end11:                                         ; preds = %vnt_rf_addpower.exit
  %8 = ptrtoint ptr %power5 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %5, ptr %power5, align 2
  %rf_type = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 21
  %9 = ptrtoint ptr %rf_type to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %rf_type, align 1
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i8 %10, label %if.end11.cleanup146_crit_edge [
    i8 3, label %sw.bb
    i8 14, label %sw.bb23
    i8 10, label %sw.bb47
    i8 9, label %sw.bb63
    i8 12, label %sw.bb68
    i8 13, label %sw.bb140
  ]

if.end11.cleanup146_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup146

sw.bb:                                            ; preds = %if.end11
  %shl = shl nuw nsw i32 %conv7, 12
  %or = or i32 %shl, 4210832
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_data.i) #5
  %12 = getelementptr inbounds [4 x i8], ptr %reg_data.i, i32 0, i32 1
  %13 = getelementptr inbounds [4 x i8], ptr %reg_data.i, i32 0, i32 2
  %14 = getelementptr inbounds [4 x i8], ptr %reg_data.i, i32 0, i32 3
  %15 = ptrtoint ptr %reg_data.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -71, ptr %reg_data.i, align 1
  %shr.i = lshr i32 %or, 8
  %conv1.i = trunc i32 %shr.i to i8
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv1.i, ptr %12, align 1
  %shr3.i = lshr i32 %or, 16
  %conv4.i = trunc i32 %shr3.i to i8
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv4.i, ptr %13, align 1
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %14, align 1
  %call.i = call i32 @vnt_control_out(ptr noundef %priv, i8 noundef zeroext 17, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 4, ptr noundef nonnull %reg_data.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_data.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end17, label %sw.bb.cleanup146_crit_edge

sw.bb.cleanup146_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup146

if.end17:                                         ; preds = %sw.bb
  %flags = getelementptr inbounds %struct.ieee80211_channel, ptr %ch, i32 0, i32 4
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 4
  %and = and i32 %20, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %call20 = call i32 @vnt_rf_write_embedded(ptr noundef %priv, i32 noundef 111616)
  br label %cleanup146

if.else:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %call21 = call i32 @vnt_rf_write_embedded(ptr noundef %priv, i32 noundef 369664)
  br label %cleanup146

sw.bb23:                                          ; preds = %if.end11
  %shl25 = shl nuw nsw i32 %conv7, 12
  %or26 = or i32 %shl25, 4210832
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_data.i223) #5
  %21 = getelementptr inbounds [4 x i8], ptr %reg_data.i223, i32 0, i32 1
  %22 = getelementptr inbounds [4 x i8], ptr %reg_data.i223, i32 0, i32 2
  %23 = getelementptr inbounds [4 x i8], ptr %reg_data.i223, i32 0, i32 3
  %24 = ptrtoint ptr %reg_data.i223 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -71, ptr %reg_data.i223, align 1
  %shr.i225 = lshr i32 %or26, 8
  %conv1.i226 = trunc i32 %shr.i225 to i8
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv1.i226, ptr %21, align 1
  %shr3.i227 = lshr i32 %or26, 16
  %conv4.i228 = trunc i32 %shr3.i227 to i8
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv4.i228, ptr %22, align 1
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %23, align 1
  %call.i231 = call i32 @vnt_control_out(ptr noundef %priv, i8 noundef zeroext 17, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 4, ptr noundef nonnull %reg_data.i223) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_data.i223) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i231)
  %tobool28.not = icmp eq i32 %call.i231, 0
  br i1 %tobool28.not, label %if.end30, label %sw.bb23.cleanup146_crit_edge

sw.bb23.cleanup146_crit_edge:                     ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup146

if.end30:                                         ; preds = %sw.bb23
  %flags31 = getelementptr inbounds %struct.ieee80211_channel, ptr %ch, i32 0, i32 4
  %28 = ptrtoint ptr %flags31 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags31, align 4
  %and32 = and i32 %29, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.else40, label %if.then34

if.then34:                                        ; preds = %if.end30
  %call35 = call i32 @vnt_rf_write_embedded(ptr noundef %priv, i32 noundef 67900416)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.then34.cleanup146_crit_edge

if.then34.cleanup146_crit_edge:                   ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup146

if.end38:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #7
  %call39 = call i32 @vnt_rf_write_embedded(ptr noundef %priv, i32 noundef 2726656)
  br label %cleanup146

if.else40:                                        ; preds = %if.end30
  %call41 = call i32 @vnt_rf_write_embedded(ptr noundef %priv, i32 noundef 369664)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %if.else40.cleanup146_crit_edge

if.else40.cleanup146_crit_edge:                   ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup146

if.end44:                                         ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #7
  %call45 = call i32 @vnt_rf_write_embedded(ptr noundef %priv, i32 noundef 629504)
  br label %cleanup146

sw.bb47:                                          ; preds = %if.end11
  %flags48 = getelementptr inbounds %struct.ieee80211_channel, ptr %ch, i32 0, i32 4
  %30 = ptrtoint ptr %flags48 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags48, align 4
  %and49 = and i32 %31, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.else53, label %if.then51

if.then51:                                        ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_data.i232) #5
  %32 = getelementptr inbounds [4 x i8], ptr %reg_data.i232, i32 0, i32 1
  %33 = getelementptr inbounds [4 x i8], ptr %reg_data.i232, i32 0, i32 2
  %34 = getelementptr inbounds [4 x i8], ptr %reg_data.i232, i32 0, i32 3
  %35 = ptrtoint ptr %reg_data.i232 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -71, ptr %reg_data.i232, align 1
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -71, ptr %32, align 1
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 27, ptr %33, align 1
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 17, ptr %34, align 1
  %call.i233 = call i32 @vnt_control_out(ptr noundef %priv, i8 noundef zeroext 17, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 4, ptr noundef nonnull %reg_data.i232) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_data.i232) #5
  br label %if.end55

if.else53:                                        ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_data.i234) #5
  %39 = getelementptr inbounds [4 x i8], ptr %reg_data.i234, i32 0, i32 1
  %40 = getelementptr inbounds [4 x i8], ptr %reg_data.i234, i32 0, i32 2
  %41 = getelementptr inbounds [4 x i8], ptr %reg_data.i234, i32 0, i32 3
  %42 = ptrtoint ptr %reg_data.i234 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -71, ptr %reg_data.i234, align 1
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 -71, ptr %39, align 1
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 27, ptr %40, align 1
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 34, ptr %41, align 1
  %call.i235 = call i32 @vnt_control_out(ptr noundef %priv, i8 noundef zeroext 17, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 4, ptr noundef nonnull %reg_data.i234) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_data.i234) #5
  br label %if.end55

if.end55:                                         ; preds = %if.else53, %if.then51
  %ret.0 = phi i32 [ %call.i233, %if.then51 ], [ %call.i235, %if.else53 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool56.not = icmp eq i32 %ret.0, 0
  br i1 %tobool56.not, label %if.end58, label %if.end55.cleanup146_crit_edge

if.end55.cleanup146_crit_edge:                    ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup146

if.end58:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  %shl60 = shl nuw nsw i32 %conv7, 12
  %or61 = or i32 %shl60, 135006976
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_data.i236) #5
  %46 = getelementptr inbounds [4 x i8], ptr %reg_data.i236, i32 0, i32 1
  %47 = getelementptr inbounds [4 x i8], ptr %reg_data.i236, i32 0, i32 2
  %48 = getelementptr inbounds [4 x i8], ptr %reg_data.i236, i32 0, i32 3
  %49 = ptrtoint ptr %reg_data.i236 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 -71, ptr %reg_data.i236, align 1
  %shr.i238 = lshr exact i32 %or61, 8
  %conv1.i239 = trunc i32 %shr.i238 to i8
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv1.i239, ptr %46, align 1
  %shr3.i240 = lshr i32 %or61, 16
  %conv4.i241 = trunc i32 %shr3.i240 to i8
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv4.i241, ptr %47, align 1
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 8, ptr %48, align 1
  %call.i244 = call i32 @vnt_control_out(ptr noundef %priv, i8 noundef zeroext 17, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 4, ptr noundef nonnull %reg_data.i236) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_data.i236) #5
  br label %cleanup146

sw.bb63:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %sub = shl nuw nsw i32 %conv7, 20
  %or66 = xor i32 %sub, 66066176
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_data.i245) #5
  %53 = getelementptr inbounds [4 x i8], ptr %reg_data.i245, i32 0, i32 1
  %54 = getelementptr inbounds [4 x i8], ptr %reg_data.i245, i32 0, i32 2
  %55 = getelementptr inbounds [4 x i8], ptr %reg_data.i245, i32 0, i32 3
  %56 = ptrtoint ptr %reg_data.i245 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 -71, ptr %reg_data.i245, align 1
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 23, ptr %53, align 1
  %shr3.i249 = lshr i32 %or66, 16
  %conv4.i250 = trunc i32 %shr3.i249 to i8
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv4.i250, ptr %54, align 1
  %shr6.i251 = lshr i32 %or66, 24
  %conv7.i252 = trunc i32 %shr6.i251 to i8
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv7.i252, ptr %55, align 1
  %call.i253 = call i32 @vnt_control_out(ptr noundef %priv, i8 noundef zeroext 17, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 4, ptr noundef nonnull %reg_data.i245) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_data.i245) #5
  br label %cleanup146

sw.bb68:                                          ; preds = %if.end11
  %flags69 = getelementptr inbounds %struct.ieee80211_channel, ptr %ch, i32 0, i32 4
  %60 = ptrtoint ptr %flags69 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %flags69, align 4
  %and70 = and i32 %61, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %do.body104, label %if.then72

if.then72:                                        ; preds = %sw.bb68
  %hw_value73 = getelementptr inbounds %struct.ieee80211_channel, ptr %ch, i32 0, i32 3
  %62 = ptrtoint ptr %hw_value73 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %hw_value73, align 2
  %sub75 = shl nuw nsw i32 %conv7, 20
  %or77 = xor i32 %sub75, 66979584
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_data.i254) #5
  %64 = getelementptr inbounds [4 x i8], ptr %reg_data.i254, i32 0, i32 1
  %65 = getelementptr inbounds [4 x i8], ptr %reg_data.i254, i32 0, i32 2
  %66 = getelementptr inbounds [4 x i8], ptr %reg_data.i254, i32 0, i32 3
  %67 = ptrtoint ptr %reg_data.i254 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 -71, ptr %reg_data.i254, align 1
  %68 = ptrtoint ptr %64 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 7, ptr %64, align 1
  %shr3.i258 = lshr i32 %or77, 16
  %conv4.i259 = trunc i32 %shr3.i258 to i8
  %69 = ptrtoint ptr %65 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv4.i259, ptr %65, align 1
  %shr6.i260 = lshr i32 %or77, 24
  %conv7.i261 = trunc i32 %shr6.i260 to i8
  %70 = ptrtoint ptr %66 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv7.i261, ptr %66, align 1
  %call.i262 = call i32 @vnt_control_out(ptr noundef %priv, i8 noundef zeroext 17, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 4, ptr noundef nonnull %reg_data.i254) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_data.i254) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i262)
  %tobool79.not = icmp eq i32 %call.i262, 0
  br i1 %tobool79.not, label %if.end81, label %if.then72.cleanup146_crit_edge

if.then72.cleanup146_crit_edge:                   ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup146

if.end81:                                         ; preds = %if.then72
  %call82 = call i32 @vnt_rf_write_embedded(ptr noundef %priv, i32 noundef 63349248)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %do.body, label %if.end81.cleanup146_crit_edge

if.end81.cleanup146_crit_edge:                    ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup146

do.body:                                          ; preds = %if.end81
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vnt_rf_set_txpower.__UNIQUE_ID_ddebug383, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vnt_rf_set_txpower, %if.then90)) #5
          to label %do.end [label %if.then90], !srcloc !52

if.then90:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %usb = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 3
  %71 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %usb, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %72, i32 0, i32 15
  %conv91 = zext i16 %63 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vnt_rf_set_txpower.__UNIQUE_ID_ddebug383, ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %conv91) #5
  br label %do.end

do.end:                                           ; preds = %if.then90, %do.body
  %dec = add i16 %63, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %dec)
  %cmp94 = icmp ult i16 %dec, 14
  br i1 %cmp94, label %if.then96, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then96:                                        ; preds = %do.end
  %conv93 = zext i16 %dec to i32
  %arrayidx = getelementptr [14 x i32], ptr @vt3226d0_lo_current_table, i32 0, i32 %conv93
  %73 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx, align 4
  %call97 = call i32 @vnt_rf_write_embedded(ptr noundef %priv, i32 noundef %74)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.then96.cleanup_crit_edge, label %if.then96.cleanup146_crit_edge

if.then96.cleanup146_crit_edge:                   ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup146

if.then96.cleanup_crit_edge:                      ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %if.then96.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %call102 = call i32 @vnt_rf_write_embedded(ptr noundef %priv, i32 noundef 22808576)
  br label %cleanup146

do.body104:                                       ; preds = %sw.bb68
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vnt_rf_set_txpower.__UNIQUE_ID_ddebug384, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vnt_rf_set_txpower, %if.then116)) #5
          to label %do.end121 [label %if.then116], !srcloc !52

if.then116:                                       ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #7
  %usb117 = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 3
  %75 = ptrtoint ptr %usb117 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %usb117, align 4
  %dev118 = getelementptr inbounds %struct.usb_device, ptr %76, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vnt_rf_set_txpower.__UNIQUE_ID_ddebug384, ptr noundef %dev118, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #5
  br label %do.end121

do.end121:                                        ; preds = %if.then116, %do.body104
  %sub123 = shl nuw nsw i32 %conv7, 20
  %or125 = xor i32 %sub123, 66062080
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_data.i263) #5
  %77 = getelementptr inbounds [4 x i8], ptr %reg_data.i263, i32 0, i32 1
  %78 = getelementptr inbounds [4 x i8], ptr %reg_data.i263, i32 0, i32 2
  %79 = getelementptr inbounds [4 x i8], ptr %reg_data.i263, i32 0, i32 3
  %80 = ptrtoint ptr %reg_data.i263 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 -71, ptr %reg_data.i263, align 1
  %81 = ptrtoint ptr %77 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 7, ptr %77, align 1
  %shr3.i267 = lshr i32 %or125, 16
  %conv4.i268 = trunc i32 %shr3.i267 to i8
  %82 = ptrtoint ptr %78 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv4.i268, ptr %78, align 1
  %shr6.i269 = lshr i32 %or125, 24
  %conv7.i270 = trunc i32 %shr6.i269 to i8
  %83 = ptrtoint ptr %79 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv7.i270, ptr %79, align 1
  %call.i271 = call i32 @vnt_control_out(ptr noundef %priv, i8 noundef zeroext 17, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 4, ptr noundef nonnull %reg_data.i263) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_data.i263) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i271)
  %tobool127.not = icmp eq i32 %call.i271, 0
  br i1 %tobool127.not, label %if.end129, label %do.end121.cleanup146_crit_edge

do.end121.cleanup146_crit_edge:                   ; preds = %do.end121
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup146

if.end129:                                        ; preds = %do.end121
  %call130 = call i32 @vnt_rf_write_embedded(ptr noundef %priv, i32 noundef 13017600)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %if.end133, label %if.end129.cleanup146_crit_edge

if.end129.cleanup146_crit_edge:                   ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup146

if.end133:                                        ; preds = %if.end129
  %call134 = call i32 @vnt_rf_write_embedded(ptr noundef %priv, i32 noundef 23840256)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %if.end137, label %if.end133.cleanup146_crit_edge

if.end133.cleanup146_crit_edge:                   ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup146

if.end137:                                        ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #7
  %call138 = call i32 @vnt_rf_write_embedded(ptr noundef %priv, i32 noundef 9439232)
  br label %cleanup146

sw.bb140:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %sub142 = shl nuw nsw i32 %conv7, 20
  %or144 = xor i32 %sub142, 66070272
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_data.i272) #5
  %84 = getelementptr inbounds [4 x i8], ptr %reg_data.i272, i32 0, i32 1
  %85 = getelementptr inbounds [4 x i8], ptr %reg_data.i272, i32 0, i32 2
  %86 = getelementptr inbounds [4 x i8], ptr %reg_data.i272, i32 0, i32 3
  %87 = ptrtoint ptr %reg_data.i272 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 -71, ptr %reg_data.i272, align 1
  %88 = ptrtoint ptr %84 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 39, ptr %84, align 1
  %shr3.i276 = lshr i32 %or144, 16
  %conv4.i277 = trunc i32 %shr3.i276 to i8
  %89 = ptrtoint ptr %85 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %conv4.i277, ptr %85, align 1
  %shr6.i278 = lshr i32 %or144, 24
  %conv7.i279 = trunc i32 %shr6.i278 to i8
  %90 = ptrtoint ptr %86 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %conv7.i279, ptr %86, align 1
  %call.i280 = call i32 @vnt_control_out(ptr noundef %priv, i8 noundef zeroext 17, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 4, ptr noundef nonnull %reg_data.i272) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_data.i272) #5
  br label %cleanup146

cleanup146:                                       ; preds = %sw.bb140, %if.end137, %if.end133.cleanup146_crit_edge, %if.end129.cleanup146_crit_edge, %do.end121.cleanup146_crit_edge, %cleanup, %if.then96.cleanup146_crit_edge, %if.end81.cleanup146_crit_edge, %if.then72.cleanup146_crit_edge, %sw.bb63, %if.end58, %if.end55.cleanup146_crit_edge, %if.end44, %if.else40.cleanup146_crit_edge, %if.end38, %if.then34.cleanup146_crit_edge, %sw.bb23.cleanup146_crit_edge, %if.else, %if.then19, %sw.bb.cleanup146_crit_edge, %if.end11.cleanup146_crit_edge, %vnt_rf_addpower.exit.cleanup146_crit_edge
  %retval.1 = phi i32 [ 0, %vnt_rf_addpower.exit.cleanup146_crit_edge ], [ %call.i, %sw.bb.cleanup146_crit_edge ], [ %call.i231, %sw.bb23.cleanup146_crit_edge ], [ %call35, %if.then34.cleanup146_crit_edge ], [ %call41, %if.else40.cleanup146_crit_edge ], [ %ret.0, %if.end55.cleanup146_crit_edge ], [ %call.i271, %do.end121.cleanup146_crit_edge ], [ %call130, %if.end129.cleanup146_crit_edge ], [ %call134, %if.end133.cleanup146_crit_edge ], [ 0, %if.end11.cleanup146_crit_edge ], [ %call.i280, %sw.bb140 ], [ %call102, %cleanup ], [ %call138, %if.end137 ], [ %call.i253, %sw.bb63 ], [ %call.i244, %if.end58 ], [ %call39, %if.end38 ], [ %call45, %if.end44 ], [ %call20, %if.then19 ], [ %call21, %if.else ], [ %call97, %if.then96.cleanup146_crit_edge ], [ %call82, %if.end81.cleanup146_crit_edge ], [ %call.i262, %if.then72.cleanup146_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @vnt_rf_rssi_to_dbm(ptr nocapture noundef readonly %priv, i8 noundef zeroext %rssi, ptr nocapture noundef writeonly %dbm) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rf_type = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %rf_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rf_type, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.5)
  switch i8 %1, label %entry.sw.epilog_crit_edge [
    i8 3, label %entry.sw.bb_crit_edge
    i8 14, label %entry.sw.bb_crit_edge9
    i8 10, label %entry.sw.bb_crit_edge10
    i8 9, label %entry.sw.bb_crit_edge11
    i8 12, label %entry.sw.bb_crit_edge12
    i8 13, label %entry.sw.bb_crit_edge13
  ]

entry.sw.bb_crit_edge13:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge12:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge11:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge10:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge9:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge9, %entry.sw.bb_crit_edge10, %entry.sw.bb_crit_edge11, %entry.sw.bb_crit_edge12, %entry.sw.bb_crit_edge13
  %3 = lshr i8 %rssi, 6
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr [4 x i8], ptr @__const.vnt_rf_rssi_to_dbm.airoharf, i32 0, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv6 = zext i8 %5 to i32
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %a.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %conv6, %sw.bb ]
  %6 = shl i8 %rssi, 1
  %7 = and i8 %6, 126
  %mul = zext i8 %7 to i32
  %add = add nuw nsw i32 %a.0, %mul
  %mul7 = sub nsw i32 0, %add
  %8 = ptrtoint ptr %dbm to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %mul7, ptr %dbm, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vnt_rf_table_download(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rf_type = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %rf_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rf_type, align 1
  %switch.tableidx = add i8 %1, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %switch.tableidx)
  %2 = icmp ult i8 %switch.tableidx, 12
  br i1 %2, label %switch.hole_check, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = zext i8 %switch.tableidx to i16
  %switch.shifted = lshr i16 3777, %switch.maskindex
  %3 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %switch.lobit.not = icmp eq i16 %3, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %4 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [12 x i32], ptr @switch.table.vnt_rf_table_download, i32 0, i32 %4
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  %arrayidx = getelementptr [6 x [3 x %struct.vnt_table_info]], ptr @vnt_table_seq, i32 0, i32 %switch.load
  %length = getelementptr inbounds %struct.vnt_table_info, ptr %arrayidx, i32 0, i32 1
  %6 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length, align 4
  %conv8 = trunc i32 %7 to i16
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @vnt_control_out(ptr noundef %priv, i8 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 9, i16 noundef zeroext %conv8, ptr noundef %9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end11, label %switch.lookup.cleanup_crit_edge

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %switch.lookup
  %arrayidx12 = getelementptr %struct.vnt_table_info, ptr %arrayidx, i32 1
  %length13 = getelementptr %struct.vnt_table_info, ptr %arrayidx, i32 1, i32 1
  %10 = ptrtoint ptr %length13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length13, align 4
  %conv14 = trunc i32 %11 to i16
  %12 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx12, align 4
  %call17 = tail call i32 @vnt_control_out_blocks(ptr noundef %priv, i16 noundef zeroext 64, i8 noundef zeroext 11, i16 noundef zeroext %conv14, ptr noundef %13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end20:                                         ; preds = %if.end11
  %arrayidx21 = getelementptr %struct.vnt_table_info, ptr %arrayidx, i32 2
  %length22 = getelementptr %struct.vnt_table_info, ptr %arrayidx, i32 2, i32 1
  %14 = ptrtoint ptr %length22 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length22, align 4
  %conv23 = trunc i32 %15 to i16
  %16 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx21, align 4
  %call26 = tail call i32 @vnt_control_out_blocks(ptr noundef %priv, i16 noundef zeroext 64, i8 noundef zeroext 12, i16 noundef zeroext %conv23, ptr noundef %17) #5
  %18 = ptrtoint ptr %rf_type to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %rf_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %19)
  %cmp29 = icmp eq i8 %19, 10
  br i1 %cmp29, label %if.then31, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then31:                                        ; preds = %if.end20
  %call37 = tail call i32 @vnt_control_out(ptr noundef %priv, i8 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 10, i16 noundef zeroext 48, ptr noundef nonnull @al7230_init_table_amode) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.then31.cleanup_crit_edge

if.then31.cleanup_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end40:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #7
  %call46 = tail call i32 @vnt_control_out_blocks(ptr noundef %priv, i16 noundef zeroext 64, i8 noundef zeroext 13, i16 noundef zeroext 168, ptr noundef nonnull @al7230_channel_table2) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then31.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %switch.hole_check.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %switch.lookup.cleanup_crit_edge ], [ %call17, %if.end11.cleanup_crit_edge ], [ %call37, %if.then31.cleanup_crit_edge ], [ %call46, %if.end40 ], [ %call26, %if.end20.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnt_control_out_blocks(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/vt6656/rf.c", i32 681, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @vnt_rf_set_txpower.__UNIQUE_ID_ddebug383, !1, !"__UNIQUE_ID_ddebug383", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/vt6656/rf.c", i32 695, i32 4}
!8 = !{ptr @vnt_rf_set_txpower.__UNIQUE_ID_ddebug384, !7, !"__UNIQUE_ID_ddebug384", i1 false, i1 false}
!9 = !{ptr @vt3226d0_lo_current_table, !10, !"vt3226d0_lo_current_table", i1 false, i1 false}
!10 = !{!"../drivers/staging/vt6656/rf.c", i32 362, i32 18}
!11 = !{ptr @vnt_table_seq, !12, !"vnt_table_seq", i1 false, i1 false}
!12 = !{!"../drivers/staging/vt6656/rf.c", i32 526, i32 36}
!13 = !{ptr @al2230_init_table, !14, !"al2230_init_table", i1 false, i1 false}
!14 = !{!"../drivers/staging/vt6656/rf.c", i32 33, i32 11}
!15 = !{ptr @al2230_channel_table0, !16, !"al2230_channel_table0", i1 false, i1 false}
!16 = !{!"../drivers/staging/vt6656/rf.c", i32 51, i32 11}
!17 = !{ptr @al2230_channel_table1, !18, !"al2230_channel_table1", i1 false, i1 false}
!18 = !{!"../drivers/staging/vt6656/rf.c", i32 68, i32 11}
!19 = !{ptr @al7230_init_table, !20, !"al7230_init_table", i1 false, i1 false}
!20 = !{!"../drivers/staging/vt6656/rf.c", i32 85, i32 11}
!21 = !{ptr @al7230_channel_table0, !22, !"al7230_channel_table0", i1 false, i1 false}
!22 = !{!"../drivers/staging/vt6656/rf.c", i32 123, i32 11}
!23 = !{ptr @al7230_channel_table1, !24, !"al7230_channel_table1", i1 false, i1 false}
!24 = !{!"../drivers/staging/vt6656/rf.c", i32 182, i32 11}
!25 = !{ptr @vt3226_init_table, !26, !"vt3226_init_table", i1 false, i1 false}
!26 = !{!"../drivers/staging/vt6656/rf.c", i32 300, i32 11}
!27 = !{ptr @vt3226_channel_table0, !28, !"vt3226_channel_table0", i1 false, i1 false}
!28 = !{!"../drivers/staging/vt6656/rf.c", i32 328, i32 11}
!29 = !{ptr @vt3226_channel_table1, !30, !"vt3226_channel_table1", i1 false, i1 false}
!30 = !{!"../drivers/staging/vt6656/rf.c", i32 345, i32 11}
!31 = !{ptr @vt3226d0_init_table, !32, !"vt3226d0_init_table", i1 false, i1 false}
!32 = !{!"../drivers/staging/vt6656/rf.c", i32 314, i32 11}
!33 = !{ptr @vt3342a0_init_table, !34, !"vt3342a0_init_table", i1 false, i1 false}
!34 = !{!"../drivers/staging/vt6656/rf.c", i32 379, i32 11}
!35 = !{ptr @vt3342_channel_table0, !36, !"vt3342_channel_table0", i1 false, i1 false}
!36 = !{!"../drivers/staging/vt6656/rf.c", i32 395, i32 11}
!37 = !{ptr @vt3342_channel_table1, !38, !"vt3342_channel_table1", i1 false, i1 false}
!38 = !{!"../drivers/staging/vt6656/rf.c", i32 454, i32 11}
!39 = !{ptr @al7230_init_table_amode, !40, !"al7230_init_table_amode", i1 false, i1 false}
!40 = !{!"../drivers/staging/vt6656/rf.c", i32 104, i32 11}
!41 = !{ptr @al7230_channel_table2, !42, !"al7230_channel_table2", i1 false, i1 false}
!42 = !{!"../drivers/staging/vt6656/rf.c", i32 241, i32 11}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{i64 2148989800, i64 2148989805, i64 2148989818, i64 2148989862, i64 2148989896, i64 2148989917}
