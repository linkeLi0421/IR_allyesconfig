; ModuleID = '/llk/IR_all_yes/net/sctp/sm_statetable.c_pt.bc'
source_filename = "../net/sctp/sm_statetable.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sctp_sm_table_entry = type { ptr, ptr }

@sctp_sm_lookup_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014sctp: table %p possible attack: event %d exceeds max %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sctp_sm_lookup_event\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"net/sctp/sm_statetable.c\00", [39 x i8] zeroinitializer }, align 32
@sctp_sm_lookup_event._entry_ptr = internal global ptr @sctp_sm_lookup_event._entry, section ".printk_index", align 4
@timeout_event_table = internal constant { [12 x [8 x %struct.sctp_sm_table_entry]], [192 x i8] } { [12 x [8 x %struct.sctp_sm_table_entry]] [[8 x %struct.sctp_sm_table_entry] [%struct.sctp_sm_table_entry { ptr @sctp_sf_bug, ptr @.str.7 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_bug, ptr @.str.7 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_bug, ptr @.str.7 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_bug, ptr @.str.7 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_bug, ptr @.str.7 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_bug, ptr @.str.7 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_bug, ptr @.str.7 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_bug, ptr @.str.7 }], [8 x %struct.sctp_sm_table_entry] [%struct.sctp_sm_table_entry { ptr @sctp_sf_timer_ignore, ptr @.str.31 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_bug, ptr @.str.7 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_t1_cookie_timer_expire, ptr @.str.32 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_timer_ignore, ptr @.str.31 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_timer_ignore, ptr @.str.31 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_timer_ignore, ptr @.str.31 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_timer_ignore, ptr @.str.31 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_timer_ignore, ptr @.str.31 }], [8 x %struct.sctp_sm_table_entry] [%struct.sctp_sm_table_entry { ptr @sctp_sf_timer_ignore, ptr @.str.31 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_t1_init_timer_expire, ptr @.str.33 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_timer_ignore, ptr @.str.31 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_timer_ignore, ptr @.str.31 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_timer_ignore, ptr @.str.31 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_timer_ignore, ptr @.str.31 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_timer_ignore, ptr @.str.31 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_timer_ignore, ptr @.str.31 }], [8 x %struct.sctp_sm_table_entry] [%struct.sctp_sm_table_entry { ptr @sctp_sf_timer_ignore, ptr @.str.31 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_timer_ignore, ptr @.str.31 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_timer_ignore, ptr @.str.31 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_timer_ignore, ptr @.str.31 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_timer_ignore, ptr @.str.31 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_t2_timer_expire, ptr @.str.34 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_timer_ignore, ptr @.str.31 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_t2_timer_expire, ptr @.str.34 }], [8 x %struct.sctp_sm_table_entry] [%struct.sctp_sm_table_entry { ptr @sctp_sf_timer_ignore, ptr @.str.31 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_timer_ignore, ptr @.str.31 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_6_3_3_rtx, ptr @.str.35 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_6_3_3_rtx, ptr @.str.35 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_6_3_3_rtx, ptr @.str.35 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_timer_ignore, ptr @.str.31 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_6_3_3_rtx, ptr @.str.35 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_timer_ignore, ptr @.str.31 }], [8 x %struct.sctp_sm_table_entry] [%struct.sctp_sm_table_entry { ptr @sctp_sf_timer_ignore, ptr @.str.31 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_timer_ignore, ptr @.str.31 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_timer_ignore, ptr @.str.31 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_t4_timer_expire, ptr @.str.36 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_timer_ignore, ptr @.str.31 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_timer_ignore, ptr @.str.31 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_timer_ignore, ptr @.str.31 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_timer_ignore, ptr @.str.31 }], [8 x %struct.sctp_sm_table_entry] [%struct.sctp_sm_table_entry { ptr @sctp_sf_timer_ignore, ptr @.str.31 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_timer_ignore, ptr @.str.31 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_timer_ignore, ptr @.str.31 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_timer_ignore, ptr @.str.31 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_t5_timer_expire, ptr @.str.37 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_t5_timer_expire, ptr @.str.37 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_timer_ignore, ptr @.str.31 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_timer_ignore, ptr @.str.31 }], [8 x %struct.sctp_sm_table_entry] [%struct.sctp_sm_table_entry { ptr @sctp_sf_timer_ignore, ptr @.str.31 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_timer_ignore, ptr @.str.31 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_timer_ignore, ptr @.str.31 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_sendbeat_8_3, ptr @.str.38 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_sendbeat_8_3, ptr @.str.38 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_timer_ignore, ptr @.str.31 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_sendbeat_8_3, ptr @.str.38 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_timer_ignore, ptr @.str.31 }], [8 x %struct.sctp_sm_table_entry] [%struct.sctp_sm_table_entry { ptr @sctp_sf_timer_ignore, ptr @.str.31 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_timer_ignore, ptr @.str.31 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_timer_ignore, ptr @.str.31 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_send_reconf, ptr @.str.39 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_timer_ignore, ptr @.str.31 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_timer_ignore, ptr @.str.31 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_timer_ignore, ptr @.str.31 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_timer_ignore, ptr @.str.31 }], [8 x %struct.sctp_sm_table_entry] [%struct.sctp_sm_table_entry { ptr @sctp_sf_timer_ignore, ptr @.str.31 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_timer_ignore, ptr @.str.31 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_timer_ignore, ptr @.str.31 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_send_probe, ptr @.str.40 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_timer_ignore, ptr @.str.31 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_timer_ignore, ptr @.str.31 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_timer_ignore, ptr @.str.31 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_timer_ignore, ptr @.str.31 }], [8 x %struct.sctp_sm_table_entry] [%struct.sctp_sm_table_entry { ptr @sctp_sf_timer_ignore, ptr @.str.31 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_timer_ignore, ptr @.str.31 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_timer_ignore, ptr @.str.31 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_6_2_sack, ptr @.str.41 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_6_2_sack, ptr @.str.41 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_6_2_sack, ptr @.str.41 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_timer_ignore, ptr @.str.31 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_timer_ignore, ptr @.str.31 }], [8 x %struct.sctp_sm_table_entry] [%struct.sctp_sm_table_entry { ptr @sctp_sf_timer_ignore, ptr @.str.31 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_timer_ignore, ptr @.str.31 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_timer_ignore, ptr @.str.31 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_autoclose_timer_expire, ptr @.str.42 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_timer_ignore, ptr @.str.31 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_timer_ignore, ptr @.str.31 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_timer_ignore, ptr @.str.31 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_timer_ignore, ptr @.str.31 }]], [192 x i8] zeroinitializer }, align 32
@bug = internal constant { %struct.sctp_sm_table_entry, [24 x i8] } { %struct.sctp_sm_table_entry { ptr @sctp_sf_bug, ptr @.str.7 }, [24 x i8] zeroinitializer }, align 32
@sctp_sm_lookup_event._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 79, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sctp_sm_lookup_event._entry_ptr.4 = internal global ptr @sctp_sm_lookup_event._entry.3, section ".printk_index", align 4
@other_event_table = internal constant { [2 x [8 x %struct.sctp_sm_table_entry]], [32 x i8] } { [2 x [8 x %struct.sctp_sm_table_entry]] [[8 x %struct.sctp_sm_table_entry] [%struct.sctp_sm_table_entry { ptr @sctp_sf_ignore_other, ptr @.str.26 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_ignore_other, ptr @.str.26 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_ignore_other, ptr @.str.26 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_no_pending_tsn, ptr @.str.27 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_9_2_start_shutdown, ptr @.str.28 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_ignore_other, ptr @.str.26 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_9_2_shutdown_ack, ptr @.str.29 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_ignore_other, ptr @.str.26 }], [8 x %struct.sctp_sm_table_entry] [%struct.sctp_sm_table_entry { ptr @sctp_sf_ignore_other, ptr @.str.26 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_cookie_wait_icmp_abort, ptr @.str.30 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_ignore_other, ptr @.str.26 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_ignore_other, ptr @.str.26 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_ignore_other, ptr @.str.26 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_ignore_other, ptr @.str.26 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_ignore_other, ptr @.str.26 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_ignore_other, ptr @.str.26 }]], [32 x i8] zeroinitializer }, align 32
@sctp_sm_lookup_event._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 82, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sctp_sm_lookup_event._entry_ptr.6 = internal global ptr @sctp_sm_lookup_event._entry.5, section ".printk_index", align 4
@primitive_event_table = internal constant { [7 x [8 x %struct.sctp_sm_table_entry]], [96 x i8] } { [7 x [8 x %struct.sctp_sm_table_entry]] [[8 x %struct.sctp_sm_table_entry] [%struct.sctp_sm_table_entry { ptr @sctp_sf_do_prm_asoc, ptr @.str.8 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_not_impl, ptr @.str.9 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_not_impl, ptr @.str.9 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_not_impl, ptr @.str.9 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_not_impl, ptr @.str.9 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_not_impl, ptr @.str.9 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_not_impl, ptr @.str.9 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_not_impl, ptr @.str.9 }], [8 x %struct.sctp_sm_table_entry] [%struct.sctp_sm_table_entry { ptr @sctp_sf_error_closed, ptr @.str.10 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_cookie_wait_prm_shutdown, ptr @.str.11 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_cookie_echoed_prm_shutdown, ptr @.str.12 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_9_2_prm_shutdown, ptr @.str.13 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_ignore_primitive, ptr @.str.14 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_ignore_primitive, ptr @.str.14 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_ignore_primitive, ptr @.str.14 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_ignore_primitive, ptr @.str.14 }], [8 x %struct.sctp_sm_table_entry] [%struct.sctp_sm_table_entry { ptr @sctp_sf_error_closed, ptr @.str.10 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_cookie_wait_prm_abort, ptr @.str.15 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_cookie_echoed_prm_abort, ptr @.str.16 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_9_1_prm_abort, ptr @.str.17 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_shutdown_pending_prm_abort, ptr @.str.18 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_shutdown_sent_prm_abort, ptr @.str.19 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_9_1_prm_abort, ptr @.str.17 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_shutdown_ack_sent_prm_abort, ptr @.str.20 }], [8 x %struct.sctp_sm_table_entry] [%struct.sctp_sm_table_entry { ptr @sctp_sf_error_closed, ptr @.str.10 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_prm_send, ptr @.str.21 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_prm_send, ptr @.str.21 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_prm_send, ptr @.str.21 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_error_shutdown, ptr @.str.22 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_error_shutdown, ptr @.str.22 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_error_shutdown, ptr @.str.22 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_error_shutdown, ptr @.str.22 }], [8 x %struct.sctp_sm_table_entry] [%struct.sctp_sm_table_entry { ptr @sctp_sf_error_closed, ptr @.str.10 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_prm_requestheartbeat, ptr @.str.23 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_prm_requestheartbeat, ptr @.str.23 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_prm_requestheartbeat, ptr @.str.23 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_prm_requestheartbeat, ptr @.str.23 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_prm_requestheartbeat, ptr @.str.23 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_prm_requestheartbeat, ptr @.str.23 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_prm_requestheartbeat, ptr @.str.23 }], [8 x %struct.sctp_sm_table_entry] [%struct.sctp_sm_table_entry { ptr @sctp_sf_error_closed, ptr @.str.10 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_error_closed, ptr @.str.10 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_error_closed, ptr @.str.10 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_prm_asconf, ptr @.str.24 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_prm_asconf, ptr @.str.24 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_prm_asconf, ptr @.str.24 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_prm_asconf, ptr @.str.24 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_error_shutdown, ptr @.str.22 }], [8 x %struct.sctp_sm_table_entry] [%struct.sctp_sm_table_entry { ptr @sctp_sf_error_closed, ptr @.str.10 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_error_closed, ptr @.str.10 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_error_closed, ptr @.str.10 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_prm_reconf, ptr @.str.25 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_prm_reconf, ptr @.str.25 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_prm_reconf, ptr @.str.25 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_prm_reconf, ptr @.str.25 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_error_shutdown, ptr @.str.22 }]], [96 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sctp_sf_bug\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sctp_sf_do_prm_asoc\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sctp_sf_not_impl\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sctp_sf_error_closed\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"sctp_sf_cookie_wait_prm_shutdown\00", [63 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"sctp_sf_cookie_echoed_prm_shutdown\00", [61 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sctp_sf_do_9_2_prm_shutdown\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sctp_sf_ignore_primitive\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sctp_sf_cookie_wait_prm_abort\00", [34 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sctp_sf_cookie_echoed_prm_abort\00", [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sctp_sf_do_9_1_prm_abort\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"sctp_sf_shutdown_pending_prm_abort\00", [61 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sctp_sf_shutdown_sent_prm_abort\00", [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"sctp_sf_shutdown_ack_sent_prm_abort\00", [60 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sctp_sf_do_prm_send\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sctp_sf_error_shutdown\00", [41 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sctp_sf_do_prm_requestheartbeat\00", [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sctp_sf_do_prm_asconf\00", [42 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sctp_sf_do_prm_reconf\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sctp_sf_ignore_other\00", [43 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sctp_sf_do_no_pending_tsn\00", [38 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sctp_sf_do_9_2_start_shutdown\00", [34 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sctp_sf_do_9_2_shutdown_ack\00", [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sctp_sf_cookie_wait_icmp_abort\00", [33 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sctp_sf_timer_ignore\00", [43 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sctp_sf_t1_cookie_timer_expire\00", [33 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sctp_sf_t1_init_timer_expire\00", [35 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sctp_sf_t2_timer_expire\00", [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sctp_sf_do_6_3_3_rtx\00", [43 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sctp_sf_t4_timer_expire\00", [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sctp_sf_t5_timer_expire\00", [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sctp_sf_sendbeat_8_3\00", [43 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sctp_sf_send_reconf\00", [44 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sctp_sf_send_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sctp_sf_do_6_2_sack\00", [44 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sctp_sf_autoclose_timer_expire\00", [33 x i8] zeroinitializer }, align 32
@chunk_event_table = internal constant { [15 x [8 x %struct.sctp_sm_table_entry]], [224 x i8] } { [15 x [8 x %struct.sctp_sm_table_entry]] [[8 x %struct.sctp_sm_table_entry] [%struct.sctp_sm_table_entry { ptr @sctp_sf_ootb, ptr @.str.43 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_eat_data_6_2, ptr @.str.45 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_eat_data_6_2, ptr @.str.45 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_eat_data_fast_4_4, ptr @.str.46 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }], [8 x %struct.sctp_sm_table_entry] [%struct.sctp_sm_table_entry { ptr @sctp_sf_do_5_1B_init, ptr @.str.47 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_5_2_1_siminit, ptr @.str.48 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_5_2_1_siminit, ptr @.str.48 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_5_2_2_dupinit, ptr @.str.49 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_5_2_2_dupinit, ptr @.str.49 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_5_2_2_dupinit, ptr @.str.49 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_5_2_2_dupinit, ptr @.str.49 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_9_2_reshutack, ptr @.str.50 }], [8 x %struct.sctp_sm_table_entry] [%struct.sctp_sm_table_entry { ptr @sctp_sf_do_5_2_3_initack, ptr @.str.51 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_5_1C_ack, ptr @.str.52 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }], [8 x %struct.sctp_sm_table_entry] [%struct.sctp_sm_table_entry { ptr @sctp_sf_ootb, ptr @.str.43 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_eat_sack_6_2, ptr @.str.53 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_eat_sack_6_2, ptr @.str.53 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_eat_sack_6_2, ptr @.str.53 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_eat_sack_6_2, ptr @.str.53 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }], [8 x %struct.sctp_sm_table_entry] [%struct.sctp_sm_table_entry { ptr @sctp_sf_ootb, ptr @.str.43 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_beat_8_3, ptr @.str.54 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_beat_8_3, ptr @.str.54 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_beat_8_3, ptr @.str.54 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_beat_8_3, ptr @.str.54 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_beat_8_3, ptr @.str.54 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_beat_8_3, ptr @.str.54 }], [8 x %struct.sctp_sm_table_entry] [%struct.sctp_sm_table_entry { ptr @sctp_sf_ootb, ptr @.str.43 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_violation, ptr @.str.55 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_backbeat_8_3, ptr @.str.56 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_backbeat_8_3, ptr @.str.56 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_backbeat_8_3, ptr @.str.56 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_backbeat_8_3, ptr @.str.56 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }], [8 x %struct.sctp_sm_table_entry] [%struct.sctp_sm_table_entry { ptr @sctp_sf_pdiscard, ptr @.str.57 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_cookie_wait_abort, ptr @.str.58 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_cookie_echoed_abort, ptr @.str.59 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_9_1_abort, ptr @.str.60 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_shutdown_pending_abort, ptr @.str.61 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_shutdown_sent_abort, ptr @.str.62 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_9_1_abort, ptr @.str.60 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_shutdown_ack_sent_abort, ptr @.str.63 }], [8 x %struct.sctp_sm_table_entry] [%struct.sctp_sm_table_entry { ptr @sctp_sf_ootb, ptr @.str.43 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_9_2_shutdown, ptr @.str.64 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_9_2_shutdown, ptr @.str.64 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_9_2_shutdown_ack, ptr @.str.29 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_9_2_shut_ctsn, ptr @.str.65 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }], [8 x %struct.sctp_sm_table_entry] [%struct.sctp_sm_table_entry { ptr @sctp_sf_ootb, ptr @.str.43 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_8_5_1_E_sa, ptr @.str.66 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_8_5_1_E_sa, ptr @.str.66 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_violation, ptr @.str.55 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_violation, ptr @.str.55 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_9_2_final, ptr @.str.67 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_violation, ptr @.str.55 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_9_2_final, ptr @.str.67 }], [8 x %struct.sctp_sm_table_entry] [%struct.sctp_sm_table_entry { ptr @sctp_sf_ootb, ptr @.str.43 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_cookie_echoed_err, ptr @.str.68 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_operr_notify, ptr @.str.69 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_operr_notify, ptr @.str.69 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_operr_notify, ptr @.str.69 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }], [8 x %struct.sctp_sm_table_entry] [%struct.sctp_sm_table_entry { ptr @sctp_sf_do_5_1D_ce, ptr @.str.70 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_5_2_4_dupcook, ptr @.str.71 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_5_2_4_dupcook, ptr @.str.71 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_5_2_4_dupcook, ptr @.str.71 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_5_2_4_dupcook, ptr @.str.71 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_5_2_4_dupcook, ptr @.str.71 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_5_2_4_dupcook, ptr @.str.71 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_5_2_4_dupcook, ptr @.str.71 }], [8 x %struct.sctp_sm_table_entry] [%struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_5_1E_ca, ptr @.str.72 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }], [8 x %struct.sctp_sm_table_entry] [%struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_ecne, ptr @.str.73 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_ecne, ptr @.str.73 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_ecne, ptr @.str.73 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_ecne, ptr @.str.73 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_ecne, ptr @.str.73 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }], [8 x %struct.sctp_sm_table_entry] [%struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_ecn_cwr, ptr @.str.74 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_ecn_cwr, ptr @.str.74 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_ecn_cwr, ptr @.str.74 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }], [8 x %struct.sctp_sm_table_entry] [%struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_4_C, ptr @.str.75 }]], [224 x i8] zeroinitializer }, align 32
@prsctp_chunk_event_table = internal constant { [1 x [8 x %struct.sctp_sm_table_entry]], [32 x i8] } { [1 x [8 x %struct.sctp_sm_table_entry]] [[8 x %struct.sctp_sm_table_entry] [%struct.sctp_sm_table_entry { ptr @sctp_sf_ootb, ptr @.str.43 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_eat_fwd_tsn, ptr @.str.76 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_eat_fwd_tsn, ptr @.str.76 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_eat_fwd_tsn_fast, ptr @.str.77 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }]], [32 x i8] zeroinitializer }, align 32
@addip_chunk_event_table = internal constant { [2 x [8 x %struct.sctp_sm_table_entry]], [32 x i8] } { [2 x [8 x %struct.sctp_sm_table_entry]] [[8 x %struct.sctp_sm_table_entry] [%struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_asconf, ptr @.str.78 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_asconf, ptr @.str.78 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_asconf, ptr @.str.78 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_asconf, ptr @.str.78 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }], [8 x %struct.sctp_sm_table_entry] [%struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_asconf_ack, ptr @.str.79 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_asconf_ack, ptr @.str.79 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_asconf_ack, ptr @.str.79 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_asconf_ack, ptr @.str.79 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }]], [32 x i8] zeroinitializer }, align 32
@reconf_chunk_event_table = internal constant { [1 x [8 x %struct.sctp_sm_table_entry]], [32 x i8] } { [1 x [8 x %struct.sctp_sm_table_entry]] [[8 x %struct.sctp_sm_table_entry] [%struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_reconf, ptr @.str.80 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_do_reconf, ptr @.str.80 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }]], [32 x i8] zeroinitializer }, align 32
@auth_chunk_event_table = internal constant { [1 x [8 x %struct.sctp_sm_table_entry]], [32 x i8] } { [1 x [8 x %struct.sctp_sm_table_entry]] [[8 x %struct.sctp_sm_table_entry] [%struct.sctp_sm_table_entry { ptr @sctp_sf_ootb, ptr @.str.43 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_eat_auth, ptr @.str.81 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_eat_auth, ptr @.str.81 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_eat_auth, ptr @.str.81 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_eat_auth, ptr @.str.81 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_eat_auth, ptr @.str.81 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_eat_auth, ptr @.str.81 }]], [32 x i8] zeroinitializer }, align 32
@pad_chunk_event_table = internal constant { [8 x %struct.sctp_sm_table_entry], [32 x i8] } { [8 x %struct.sctp_sm_table_entry] [%struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_discard_chunk, ptr @.str.44 }], [32 x i8] zeroinitializer }, align 32
@chunk_event_table_unknown = internal constant { [8 x %struct.sctp_sm_table_entry], [32 x i8] } { [8 x %struct.sctp_sm_table_entry] [%struct.sctp_sm_table_entry { ptr @sctp_sf_ootb, ptr @.str.43 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_unk_chunk, ptr @.str.82 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_unk_chunk, ptr @.str.82 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_unk_chunk, ptr @.str.82 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_unk_chunk, ptr @.str.82 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_unk_chunk, ptr @.str.82 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_unk_chunk, ptr @.str.82 }, %struct.sctp_sm_table_entry { ptr @sctp_sf_unk_chunk, ptr @.str.82 }], [32 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sctp_sf_ootb\00", [19 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sctp_sf_discard_chunk\00", [42 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sctp_sf_eat_data_6_2\00", [43 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sctp_sf_eat_data_fast_4_4\00", [38 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sctp_sf_do_5_1B_init\00", [43 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sctp_sf_do_5_2_1_siminit\00", [39 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sctp_sf_do_5_2_2_dupinit\00", [39 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sctp_sf_do_9_2_reshutack\00", [39 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sctp_sf_do_5_2_3_initack\00", [39 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sctp_sf_do_5_1C_ack\00", [44 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sctp_sf_eat_sack_6_2\00", [43 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sctp_sf_beat_8_3\00", [47 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sctp_sf_violation\00", [46 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sctp_sf_backbeat_8_3\00", [43 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sctp_sf_pdiscard\00", [47 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sctp_sf_cookie_wait_abort\00", [38 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sctp_sf_cookie_echoed_abort\00", [36 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sctp_sf_do_9_1_abort\00", [43 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sctp_sf_shutdown_pending_abort\00", [33 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sctp_sf_shutdown_sent_abort\00", [36 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sctp_sf_shutdown_ack_sent_abort\00", [32 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sctp_sf_do_9_2_shutdown\00", [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sctp_sf_do_9_2_shut_ctsn\00", [39 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sctp_sf_do_8_5_1_E_sa\00", [42 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sctp_sf_do_9_2_final\00", [43 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sctp_sf_cookie_echoed_err\00", [38 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sctp_sf_operr_notify\00", [43 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sctp_sf_do_5_1D_ce\00", [45 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sctp_sf_do_5_2_4_dupcook\00", [39 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sctp_sf_do_5_1E_ca\00", [45 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sctp_sf_do_ecne\00", [16 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sctp_sf_do_ecn_cwr\00", [45 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sctp_sf_do_4_C\00", [17 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sctp_sf_eat_fwd_tsn\00", [44 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sctp_sf_eat_fwd_tsn_fast\00", [39 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sctp_sf_do_asconf\00", [46 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sctp_sf_do_asconf_ack\00", [42 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sctp_sf_do_reconf\00", [46 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sctp_sf_eat_auth\00", [47 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sctp_sf_unk_chunk\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.83 = internal global [9 x i64] [i64 7, i64 16, i64 15, i64 128, i64 130, i64 132, i64 192, i64 193, i64 194]
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 75, i32 10 }
@___asan_gen_.96 = private unnamed_addr constant [20 x i8] c"timeout_event_table\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 990, i32 1 }
@___asan_gen_.99 = private unnamed_addr constant [4 x i8] c"bug\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 46, i32 41 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 78, i32 10 }
@___asan_gen_.105 = private unnamed_addr constant [18 x i8] c"other_event_table\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 756, i32 1 }
@___asan_gen_.108 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 81, i32 10 }
@___asan_gen_.111 = private unnamed_addr constant [22 x i8] c"primitive_event_table\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 707, i32 1 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 48, i32 10 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 708, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 709, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 710, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 711, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 712, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 713, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 714, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 757, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 758, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 992, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 993, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 994, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 995, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 996, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 997, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 998, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 999, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1000, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1001, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 1002, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant [18 x i8] c"chunk_event_table\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 383, i32 1 }
@___asan_gen_.225 = private unnamed_addr constant [25 x i8] c"prsctp_chunk_event_table\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 471, i32 1 }
@___asan_gen_.228 = private unnamed_addr constant [24 x i8] c"addip_chunk_event_table\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 443, i32 1 }
@___asan_gen_.231 = private unnamed_addr constant [25 x i8] c"reconf_chunk_event_table\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 498, i32 1 }
@___asan_gen_.234 = private unnamed_addr constant [23 x i8] c"auth_chunk_event_table\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 525, i32 1 }
@___asan_gen_.237 = private unnamed_addr constant [22 x i8] c"pad_chunk_event_table\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 530, i32 1 }
@___asan_gen_.240 = private unnamed_addr constant [26 x i8] c"chunk_event_table_unknown\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 550, i32 1 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 384, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 385, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 386, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 387, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 388, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 389, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 390, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 391, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 392, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 393, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 394, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 395, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 396, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 397, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 398, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 472, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 444, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 445, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 499, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 526, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.361 = private constant [28 x i8] c"../net/sctp/sm_statetable.c\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 554, i32 2 }
@llvm.compiler.used = appending global [96 x ptr] [ptr @sctp_sm_lookup_event._entry, ptr @sctp_sm_lookup_event._entry.3, ptr @sctp_sm_lookup_event._entry.5, ptr @sctp_sm_lookup_event._entry_ptr, ptr @sctp_sm_lookup_event._entry_ptr.4, ptr @sctp_sm_lookup_event._entry_ptr.6, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @timeout_event_table, ptr @bug, ptr @other_event_table, ptr @primitive_event_table, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @chunk_event_table, ptr @prsctp_chunk_event_table, ptr @addip_chunk_event_table, ptr @reconf_chunk_event_table, ptr @auth_chunk_event_table, ptr @pad_chunk_event_table, ptr @chunk_event_table_unknown, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82], section "llvm.metadata"
@0 = internal global [93 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_sm_lookup_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timeout_event_table to i32), i32 768, i32 960, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bug to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_sm_lookup_event._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @other_event_table to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_sm_lookup_event._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @primitive_event_table to i32), i32 448, i32 544, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chunk_event_table to i32), i32 960, i32 1184, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prsctp_chunk_event_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @addip_chunk_event_table to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reconf_chunk_event_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auth_chunk_event_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pad_chunk_event_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chunk_event_table_unknown to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local nonnull ptr @sctp_sm_lookup_event(ptr nocapture noundef readnone %net, i32 noundef %event_type, i32 noundef %state, [1 x i32] %event_subtype.coerce) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %event_subtype.coerce.fca.0.extract = extractvalue [1 x i32] %event_subtype.coerce, 0
  %0 = zext i32 %event_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event_type, label %entry.return_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb5
    i32 4, label %sw.bb19
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %state)
  %cmp.i = icmp ugt i32 %state, 7
  br i1 %cmp.i, label %sw.bb.return_crit_edge, label %if.end.i

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %event_subtype.coerce.fca.0.extract)
  %cmp1.i = icmp eq i32 %event_subtype.coerce.fca.0.extract, 64
  %spec.store.select.i = select i1 %cmp1.i, i32 0, i32 %event_subtype.coerce.fca.0.extract
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %spec.store.select.i)
  %cmp4.i = icmp ult i32 %spec.store.select.i, 15
  br i1 %cmp4.i, label %if.then5.i, label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx6.i = getelementptr [15 x [8 x %struct.sctp_sm_table_entry]], ptr @chunk_event_table, i32 0, i32 %spec.store.select.i, i32 %state
  br label %return

if.end7.i:                                        ; preds = %if.end.i
  %trunc.i = trunc i32 %spec.store.select.i to i16
  %1 = zext i16 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.83)
  switch i16 %trunc.i, label %sw.epilog.i [
    i16 192, label %if.end7.i.sw.bb.i_crit_edge
    i16 194, label %if.end7.i.sw.bb.i_crit_edge45
    i16 193, label %sw.bb10.i
    i16 128, label %sw.bb12.i
    i16 130, label %sw.bb14.i
    i16 15, label %sw.bb16.i
    i16 132, label %sw.bb18.i
  ]

if.end7.i.sw.bb.i_crit_edge45:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb.i

if.end7.i.sw.bb.i_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end7.i.sw.bb.i_crit_edge, %if.end7.i.sw.bb.i_crit_edge45
  %arrayidx9.i = getelementptr [8 x %struct.sctp_sm_table_entry], ptr @prsctp_chunk_event_table, i32 0, i32 %state
  br label %return

sw.bb10.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx11.i = getelementptr [8 x %struct.sctp_sm_table_entry], ptr @addip_chunk_event_table, i32 0, i32 %state
  br label %return

sw.bb12.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx13.i = getelementptr [2 x [8 x %struct.sctp_sm_table_entry]], ptr @addip_chunk_event_table, i32 0, i32 1, i32 %state
  br label %return

sw.bb14.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx15.i = getelementptr [8 x %struct.sctp_sm_table_entry], ptr @reconf_chunk_event_table, i32 0, i32 %state
  br label %return

sw.bb16.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx17.i = getelementptr [8 x %struct.sctp_sm_table_entry], ptr @auth_chunk_event_table, i32 0, i32 %state
  br label %return

sw.bb18.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx19.i = getelementptr [8 x %struct.sctp_sm_table_entry], ptr @pad_chunk_event_table, i32 0, i32 %state
  br label %return

sw.epilog.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx20.i = getelementptr [8 x %struct.sctp_sm_table_entry], ptr @chunk_event_table_unknown, i32 0, i32 %state
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %event_subtype.coerce.fca.0.extract)
  %cmp = icmp ugt i32 %event_subtype.coerce.fca.0.extract, 11
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #5
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @timeout_event_table, i32 noundef %event_subtype.coerce.fca.0.extract, i32 noundef 11) #6
  br label %return

if.else:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx3 = getelementptr [12 x [8 x %struct.sctp_sm_table_entry]], ptr @timeout_event_table, i32 0, i32 %event_subtype.coerce.fca.0.extract, i32 %state
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %event_subtype.coerce.fca.0.extract)
  %cmp7 = icmp ugt i32 %event_subtype.coerce.fca.0.extract, 1
  br i1 %cmp7, label %do.end11, label %if.else14

do.end11:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #5
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @other_event_table, i32 noundef %event_subtype.coerce.fca.0.extract, i32 noundef 1) #6
  br label %return

if.else14:                                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx16 = getelementptr [2 x [8 x %struct.sctp_sm_table_entry]], ptr @other_event_table, i32 0, i32 %event_subtype.coerce.fca.0.extract, i32 %state
  br label %return

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %event_subtype.coerce.fca.0.extract)
  %cmp21 = icmp ugt i32 %event_subtype.coerce.fca.0.extract, 6
  br i1 %cmp21, label %do.end25, label %if.else28

do.end25:                                         ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #5
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @primitive_event_table, i32 noundef %event_subtype.coerce.fca.0.extract, i32 noundef 6) #6
  br label %return

if.else28:                                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx30 = getelementptr [7 x [8 x %struct.sctp_sm_table_entry]], ptr @primitive_event_table, i32 0, i32 %event_subtype.coerce.fca.0.extract, i32 %state
  br label %return

return:                                           ; preds = %if.else28, %do.end25, %if.else14, %do.end11, %if.else, %do.end, %sw.epilog.i, %sw.bb18.i, %sw.bb16.i, %sw.bb14.i, %sw.bb12.i, %sw.bb10.i, %sw.bb.i, %if.then5.i, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi ptr [ @bug, %do.end ], [ %arrayidx3, %if.else ], [ @bug, %do.end11 ], [ %arrayidx16, %if.else14 ], [ @bug, %do.end25 ], [ %arrayidx30, %if.else28 ], [ @bug, %entry.return_crit_edge ], [ %arrayidx6.i, %if.then5.i ], [ %arrayidx20.i, %sw.epilog.i ], [ %arrayidx19.i, %sw.bb18.i ], [ %arrayidx17.i, %sw.bb16.i ], [ %arrayidx15.i, %sw.bb14.i ], [ %arrayidx13.i, %sw.bb12.i ], [ %arrayidx11.i, %sw.bb10.i ], [ %arrayidx9.i, %sw.bb.i ], [ @bug, %sw.bb.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_bug(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_do_prm_asoc(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_not_impl(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_error_closed(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_cookie_wait_prm_shutdown(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_cookie_echoed_prm_shutdown(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_do_9_2_prm_shutdown(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_ignore_primitive(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_cookie_wait_prm_abort(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_cookie_echoed_prm_abort(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_do_9_1_prm_abort(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_shutdown_pending_prm_abort(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_shutdown_sent_prm_abort(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_shutdown_ack_sent_prm_abort(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_do_prm_send(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_error_shutdown(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_do_prm_requestheartbeat(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_do_prm_asconf(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_do_prm_reconf(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_ignore_other(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_do_no_pending_tsn(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_do_9_2_start_shutdown(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_do_9_2_shutdown_ack(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_cookie_wait_icmp_abort(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_timer_ignore(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_t1_cookie_timer_expire(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_t1_init_timer_expire(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_t2_timer_expire(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_do_6_3_3_rtx(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_t4_timer_expire(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_t5_timer_expire(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_sendbeat_8_3(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_send_reconf(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_send_probe(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_do_6_2_sack(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_autoclose_timer_expire(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_ootb(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_discard_chunk(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_eat_data_6_2(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_eat_data_fast_4_4(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_do_5_1B_init(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_do_5_2_1_siminit(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_do_5_2_2_dupinit(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_do_9_2_reshutack(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_do_5_2_3_initack(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_do_5_1C_ack(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_eat_sack_6_2(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_beat_8_3(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_violation(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_backbeat_8_3(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_pdiscard(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_cookie_wait_abort(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_cookie_echoed_abort(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_do_9_1_abort(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_shutdown_pending_abort(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_shutdown_sent_abort(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_shutdown_ack_sent_abort(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_do_9_2_shutdown(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_do_9_2_shut_ctsn(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_do_8_5_1_E_sa(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_do_9_2_final(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_cookie_echoed_err(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_operr_notify(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_do_5_1D_ce(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_do_5_2_4_dupcook(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_do_5_1E_ca(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_do_ecne(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_do_ecn_cwr(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_do_4_C(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_eat_fwd_tsn(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_eat_fwd_tsn_fast(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_do_asconf(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_do_asconf_ack(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_do_reconf(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_eat_auth(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sctp_sf_unk_chunk(ptr noundef, ptr noundef, ptr noundef, [1 x i32], ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 93)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 93)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !27, !28, !29, !30, !31, !32, !34, !35, !37, !39, !41, !43, !45, !46, !47, !48, !50, !52, !54, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !80, !81, !82, !84, !85, !86, !87, !89, !90, !92, !94, !96, !97, !99, !100, !101, !102, !103, !104, !105, !107, !108, !110, !111, !113, !114, !116, !117, !119, !121, !123, !125, !127, !129, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150}
!llvm.module.flags = !{!152, !153, !154, !155, !156, !157, !158, !159}
!llvm.ident = !{!160}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/sctp/sm_statetable.c", i32 75, i32 10}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @sctp_sm_lookup_event._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @sctp_sm_lookup_event._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @sctp_sm_lookup_event._entry.3, !7, !"_entry", i1 false, i1 false}
!7 = !{!"../net/sctp/sm_statetable.c", i32 78, i32 10}
!8 = !{ptr @sctp_sm_lookup_event._entry_ptr.4, !7, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @sctp_sm_lookup_event._entry.5, !10, !"_entry", i1 false, i1 false}
!10 = !{!"../net/sctp/sm_statetable.c", i32 81, i32 10}
!11 = !{ptr @sctp_sm_lookup_event._entry_ptr.6, !10, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/sctp/sm_statetable.c", i32 48, i32 10}
!14 = !{ptr @bug, !15, !"bug", i1 false, i1 false}
!15 = !{!"../net/sctp/sm_statetable.c", i32 46, i32 41}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/sctp/sm_statetable.c", i32 708, i32 2}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/sctp/sm_statetable.c", i32 709, i32 2}
!21 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.13, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.14, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/sctp/sm_statetable.c", i32 710, i32 2}
!27 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.17, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.18, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.19, !26, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.20, !26, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.21, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/sctp/sm_statetable.c", i32 711, i32 2}
!34 = !{ptr @.str.22, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.23, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/sctp/sm_statetable.c", i32 712, i32 2}
!37 = !{ptr @.str.24, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../net/sctp/sm_statetable.c", i32 713, i32 2}
!39 = !{ptr @.str.25, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/sctp/sm_statetable.c", i32 714, i32 2}
!41 = !{ptr @primitive_event_table, !42, !"primitive_event_table", i1 false, i1 false}
!42 = !{!"../net/sctp/sm_statetable.c", i32 707, i32 1}
!43 = !{ptr @.str.26, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../net/sctp/sm_statetable.c", i32 757, i32 2}
!45 = !{ptr @.str.27, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.28, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.29, !44, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.30, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../net/sctp/sm_statetable.c", i32 758, i32 2}
!50 = !{ptr @other_event_table, !51, !"other_event_table", i1 false, i1 false}
!51 = !{!"../net/sctp/sm_statetable.c", i32 756, i32 1}
!52 = !{ptr @.str.31, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../net/sctp/sm_statetable.c", i32 992, i32 2}
!54 = !{ptr @.str.32, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.33, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../net/sctp/sm_statetable.c", i32 993, i32 2}
!57 = !{ptr @.str.34, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../net/sctp/sm_statetable.c", i32 994, i32 2}
!59 = !{ptr @.str.35, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../net/sctp/sm_statetable.c", i32 995, i32 2}
!61 = !{ptr @.str.36, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../net/sctp/sm_statetable.c", i32 996, i32 2}
!63 = !{ptr @.str.37, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../net/sctp/sm_statetable.c", i32 997, i32 2}
!65 = !{ptr @.str.38, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../net/sctp/sm_statetable.c", i32 998, i32 2}
!67 = !{ptr @.str.39, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../net/sctp/sm_statetable.c", i32 999, i32 2}
!69 = !{ptr @.str.40, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../net/sctp/sm_statetable.c", i32 1000, i32 2}
!71 = !{ptr @.str.41, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../net/sctp/sm_statetable.c", i32 1001, i32 2}
!73 = !{ptr @.str.42, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../net/sctp/sm_statetable.c", i32 1002, i32 2}
!75 = !{ptr @timeout_event_table, !76, !"timeout_event_table", i1 false, i1 false}
!76 = !{!"../net/sctp/sm_statetable.c", i32 990, i32 1}
!77 = !{ptr @.str.43, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../net/sctp/sm_statetable.c", i32 384, i32 2}
!79 = !{ptr @.str.44, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.45, !78, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.46, !78, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.47, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../net/sctp/sm_statetable.c", i32 385, i32 2}
!84 = !{ptr @.str.48, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.49, !83, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.50, !83, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.51, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../net/sctp/sm_statetable.c", i32 386, i32 2}
!89 = !{ptr @.str.52, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.53, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../net/sctp/sm_statetable.c", i32 387, i32 2}
!92 = !{ptr @.str.54, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../net/sctp/sm_statetable.c", i32 388, i32 2}
!94 = !{ptr @.str.55, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../net/sctp/sm_statetable.c", i32 389, i32 2}
!96 = !{ptr @.str.56, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.57, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../net/sctp/sm_statetable.c", i32 390, i32 2}
!99 = !{ptr @.str.58, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.59, !98, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.60, !98, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.61, !98, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.62, !98, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.63, !98, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.64, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../net/sctp/sm_statetable.c", i32 391, i32 2}
!107 = !{ptr @.str.65, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.66, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../net/sctp/sm_statetable.c", i32 392, i32 2}
!110 = !{ptr @.str.67, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.68, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../net/sctp/sm_statetable.c", i32 393, i32 2}
!113 = !{ptr @.str.69, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.70, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../net/sctp/sm_statetable.c", i32 394, i32 2}
!116 = !{ptr @.str.71, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.72, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../net/sctp/sm_statetable.c", i32 395, i32 2}
!119 = !{ptr @.str.73, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../net/sctp/sm_statetable.c", i32 396, i32 2}
!121 = !{ptr @.str.74, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../net/sctp/sm_statetable.c", i32 397, i32 2}
!123 = !{ptr @.str.75, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../net/sctp/sm_statetable.c", i32 398, i32 2}
!125 = !{ptr @chunk_event_table, !126, !"chunk_event_table", i1 false, i1 false}
!126 = !{!"../net/sctp/sm_statetable.c", i32 383, i32 1}
!127 = !{ptr @.str.76, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../net/sctp/sm_statetable.c", i32 472, i32 2}
!129 = !{ptr @.str.77, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @prsctp_chunk_event_table, !131, !"prsctp_chunk_event_table", i1 false, i1 false}
!131 = !{!"../net/sctp/sm_statetable.c", i32 471, i32 1}
!132 = !{ptr @.str.78, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../net/sctp/sm_statetable.c", i32 444, i32 2}
!134 = !{ptr @.str.79, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../net/sctp/sm_statetable.c", i32 445, i32 2}
!136 = !{ptr @addip_chunk_event_table, !137, !"addip_chunk_event_table", i1 false, i1 false}
!137 = !{!"../net/sctp/sm_statetable.c", i32 443, i32 1}
!138 = !{ptr @.str.80, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../net/sctp/sm_statetable.c", i32 499, i32 2}
!140 = !{ptr @reconf_chunk_event_table, !141, !"reconf_chunk_event_table", i1 false, i1 false}
!141 = !{!"../net/sctp/sm_statetable.c", i32 498, i32 1}
!142 = !{ptr @.str.81, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../net/sctp/sm_statetable.c", i32 526, i32 2}
!144 = !{ptr @auth_chunk_event_table, !145, !"auth_chunk_event_table", i1 false, i1 false}
!145 = !{!"../net/sctp/sm_statetable.c", i32 525, i32 1}
!146 = !{ptr @pad_chunk_event_table, !147, !"pad_chunk_event_table", i1 false, i1 false}
!147 = !{!"../net/sctp/sm_statetable.c", i32 530, i32 1}
!148 = !{ptr @.str.82, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../net/sctp/sm_statetable.c", i32 554, i32 2}
!150 = !{ptr @chunk_event_table_unknown, !151, !"chunk_event_table_unknown", i1 false, i1 false}
!151 = !{!"../net/sctp/sm_statetable.c", i32 550, i32 1}
!152 = !{i32 1, !"wchar_size", i32 2}
!153 = !{i32 1, !"min_enum_size", i32 4}
!154 = !{i32 8, !"branch-target-enforcement", i32 0}
!155 = !{i32 8, !"sign-return-address", i32 0}
!156 = !{i32 8, !"sign-return-address-all", i32 0}
!157 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!158 = !{i32 7, !"uwtable", i32 1}
!159 = !{i32 7, !"frame-pointer", i32 2}
!160 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
