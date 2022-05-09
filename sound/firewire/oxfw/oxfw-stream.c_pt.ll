; ModuleID = '/llk/IR_all_yes/sound/firewire/oxfw/oxfw-stream.c_pt.bc'
source_filename = "../sound/firewire/oxfw/oxfw-stream.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_oxfw = type { ptr, ptr, %struct.mutex, %struct.spinlock, i32, i8, i8, [10 x ptr], [10 x ptr], i8, %struct.cmp_connection, %struct.cmp_connection, %struct.amdtp_stream, %struct.amdtp_stream, i32, i32, i32, i32, i8, %struct.wait_queue_head, ptr, %struct.amdtp_domain }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.cmp_connection = type { i32, i8, %struct.mutex, %struct.fw_iso_resources, i32, i32, i32, i32 }
%struct.fw_iso_resources = type { i64, ptr, %struct.mutex, i32, i32, i32, i32, i8 }
%struct.amdtp_stream = type { ptr, i32, i32, %struct.mutex, ptr, %struct.iso_packets_buffer, i32, i32, ptr, i32, %union.anon.77, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i8, %struct.wait_queue_head, i32, ptr, ptr, i32, i32, %struct.list_head, ptr }
%struct.iso_packets_buffer = type { %struct.fw_iso_buffer, ptr }
%struct.fw_iso_buffer = type { i32, ptr, i32, i32 }
%union.anon.77 = type { %struct.anon.80 }
%struct.anon.80 = type { i32, i32, %struct.anon.81, i32, i32, i32, ptr, i32 }
%struct.anon.81 = type { ptr, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.amdtp_domain = type { %struct.list_head, i32, i32, ptr, %struct.anon.92, %struct.anon.93 }
%struct.anon.92 = type { i32, i32, i32 }
%struct.anon.93 = type { i8 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.snd_oxfw_stream_formation = type { i32, i32, i32 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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

@snd_oxfw_stream_reserve_duplex._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 301, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"fail to set stream format: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"snd_oxfw_stream_reserve_duplex\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"sound/firewire/oxfw/oxfw-stream.c\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_oxfw_stream_reserve_duplex._entry_ptr = internal global ptr @snd_oxfw_stream_reserve_duplex._entry, section ".printk_index", align 4
@snd_oxfw_stream_start_duplex._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 353, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"fail to prepare rx stream: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"snd_oxfw_stream_start_duplex\00", [35 x i8] zeroinitializer }, align 32
@snd_oxfw_stream_start_duplex._entry_ptr = internal global ptr @snd_oxfw_stream_start_duplex._entry, section ".printk_index", align 4
@snd_oxfw_stream_start_duplex._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 362, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"fail to prepare tx stream: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@snd_oxfw_stream_start_duplex._entry_ptr.9 = internal global ptr @snd_oxfw_stream_start_duplex._entry.7, section ".printk_index", align 4
@avc_stream_rate_table = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 2, i32 3, i32 4, i32 10, i32 5, i32 7], [40 x i8] zeroinitializer }, align 32
@oxfw_rate_table = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 32000, i32 44100, i32 48000, i32 88200, i32 96000, i32 192000], [40 x i8] zeroinitializer }, align 32
@snd_oxfw_stream_discover._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 743, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"fail to get info for isoc/external in/out plugs: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"snd_oxfw_stream_discover\00", [39 x i8] zeroinitializer }, align 32
@snd_oxfw_stream_discover._entry_ptr = internal global ptr @snd_oxfw_stream_discover._entry, section ".printk_index", align 4
@check_connection_used_by_others._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 144, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Connection established by others: %cPCR[%d]\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"check_connection_used_by_others\00", [32 x i8] zeroinitializer }, align 32
@check_connection_used_by_others._entry_ptr = internal global ptr @check_connection_used_by_others._entry, section ".printk_index", align 4
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"sound/firewire/oxfw/../amdtp-stream.h\00", [58 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@fill_stream_formats._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 684, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"fail to get stream format %d for isoc %s plug %d:%d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fill_stream_formats\00", [44 x i8] zeroinitializer }, align 32
@fill_stream_formats._entry_ptr = internal global ptr @fill_stream_formats._entry, section ".printk_index", align 4
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"in\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"out\00", [28 x i8] zeroinitializer }, align 32
@fill_stream_formats._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 721, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@fill_stream_formats._entry_ptr.20 = internal global ptr @fill_stream_formats._entry.19, section ".printk_index", align 4
@assume_stream_formats._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 609, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"fail to get current stream format for isoc %s plug %d:%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"assume_stream_formats\00", [42 x i8] zeroinitializer }, align 32
@assume_stream_formats._entry_ptr = internal global ptr @assume_stream_formats._entry, section ".printk_index", align 4
@switch.table.snd_oxfw_stream_reserve_duplex = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 0, i32 1, i32 2, i32 4, i32 0, i32 5, i32 0, i32 0, i32 3], [60 x i8] zeroinitializer }, align 32
@switch.table.snd_oxfw_stream_reserve_duplex.23 = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 0, i32 1, i32 2, i32 4, i32 0, i32 5, i32 0, i32 0, i32 3], [60 x i8] zeroinitializer }, align 32
@switch.table.keep_resources = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 0, i32 1, i32 2, i32 4, i32 0, i32 5, i32 0, i32 0, i32 3], [60 x i8] zeroinitializer }, align 32
@switch.table.keep_resources.24 = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 0, i32 1, i32 2, i32 4, i32 0, i32 5, i32 0, i32 0, i32 3], [60 x i8] zeroinitializer }, align 32
@switch.table.snd_oxfw_stream_parse_format = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 0, i32 1, i32 2, i32 4, i32 0, i32 5, i32 0, i32 0, i32 3], [60 x i8] zeroinitializer }, align 32
@switch.table.fill_stream_formats = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 0, i32 1, i32 2, i32 4, i32 0, i32 5, i32 0, i32 0, i32 3], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 6, i64 13]
@__sancov_gen_cov_switch_values.25 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 6, i64 13]
@__sancov_gen_cov_switch_values.26 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 6, i64 13]
@__sancov_gen_cov_switch_values.27 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 6, i64 13]
@__sancov_gen_cov_switch_values.28 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 6, i64 13]
@__sancov_gen_cov_switch_values.29 = internal global [8 x i64] [i64 6, i64 8, i64 2, i64 3, i64 4, i64 5, i64 7, i64 10]
@__sancov_gen_cov_switch_values.30 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 6, i64 13]
@__sancov_gen_cov_switch_values.31 = internal global [8 x i64] [i64 6, i64 8, i64 2, i64 3, i64 4, i64 5, i64 7, i64 10]
@__sancov_gen_cov_switch_values.32 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 6, i64 13]
@__sancov_gen_cov_switch_values.33 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 6, i64 13]
@__sancov_gen_cov_switch_values.34 = internal global [8 x i64] [i64 6, i64 8, i64 2, i64 3, i64 4, i64 5, i64 7, i64 10]
@__sancov_gen_cov_switch_values.35 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 6, i64 13]
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 300, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 352, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 361, i32 5 }
@___asan_gen_.69 = private unnamed_addr constant [22 x i8] c"avc_stream_rate_table\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 32, i32 27 }
@___asan_gen_.72 = private unnamed_addr constant [16 x i8] c"oxfw_rate_table\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 19, i32 27 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 741, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 141, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant [41 x i8] c"../sound/firewire/oxfw/../amdtp-stream.h\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 348, i32 7 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 681, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 717, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.120 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.121 = private constant [37 x i8] c"../sound/firewire/oxfw/oxfw-stream.c\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 606, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant [44 x i8] c"switch.table.snd_oxfw_stream_reserve_duplex\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [47 x i8] c"switch.table.snd_oxfw_stream_reserve_duplex.23\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [28 x i8] c"switch.table.keep_resources\00", align 1
@___asan_gen_.126 = private unnamed_addr constant [31 x i8] c"switch.table.keep_resources.24\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [42 x i8] c"switch.table.snd_oxfw_stream_parse_format\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [33 x i8] c"switch.table.fill_stream_formats\00", align 1
@llvm.compiler.used = appending global [43 x ptr] [ptr @assume_stream_formats._entry, ptr @assume_stream_formats._entry_ptr, ptr @check_connection_used_by_others._entry, ptr @check_connection_used_by_others._entry_ptr, ptr @fill_stream_formats._entry, ptr @fill_stream_formats._entry.19, ptr @fill_stream_formats._entry_ptr, ptr @fill_stream_formats._entry_ptr.20, ptr @snd_oxfw_stream_discover._entry, ptr @snd_oxfw_stream_discover._entry_ptr, ptr @snd_oxfw_stream_reserve_duplex._entry, ptr @snd_oxfw_stream_reserve_duplex._entry_ptr, ptr @snd_oxfw_stream_start_duplex._entry, ptr @snd_oxfw_stream_start_duplex._entry.7, ptr @snd_oxfw_stream_start_duplex._entry_ptr, ptr @snd_oxfw_stream_start_duplex._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @avc_stream_rate_table, ptr @oxfw_rate_table, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.21, ptr @.str.22, ptr @switch.table.snd_oxfw_stream_reserve_duplex, ptr @switch.table.snd_oxfw_stream_reserve_duplex.23, ptr @switch.table.keep_resources, ptr @switch.table.keep_resources.24, ptr @switch.table.snd_oxfw_stream_parse_format, ptr @switch.table.fill_stream_formats], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_oxfw_stream_reserve_duplex._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_oxfw_stream_start_duplex._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_oxfw_stream_start_duplex._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avc_stream_rate_table to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxfw_rate_table to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_oxfw_stream_discover._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_connection_used_by_others._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fill_stream_formats._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fill_stream_formats._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @assume_stream_formats._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_oxfw_stream_reserve_duplex to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_oxfw_stream_reserve_duplex.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.keep_resources to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.keep_resources.24 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_oxfw_stream_parse_format to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.fill_stream_formats to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_oxfw_stream_reserve_duplex(ptr noundef %oxfw, ptr noundef readnone %stream, i32 noundef %rate, i32 noundef %pcm_channels, i32 noundef %frames_per_period, i32 noundef %frames_per_buffer) local_unnamed_addr #0 align 64 {
entry:
  %len.i = alloca i32, align 4
  %used.i117 = alloca i8, align 1
  %used.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_stream = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %used.i) #6
  %0 = ptrtoint ptr %used.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %used.i, align 1, !annotation !57
  %in_conn.i = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 11
  %call.i = call i32 @cmp_connection_check_used(ptr noundef %in_conn.i, ptr noundef nonnull %used.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp1.i = icmp sgt i32 %call.i, -1
  br i1 %cmp1.i, label %land.lhs.true.i, label %entry.check_connection_used_by_others.exit.thread_crit_edge

entry.check_connection_used_by_others.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %check_connection_used_by_others.exit.thread

land.lhs.true.i:                                  ; preds = %entry
  %1 = ptrtoint ptr %used.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %used.i, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.end_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %context.i.i = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 13, i32 4
  %3 = ptrtoint ptr %context.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %context.i.i, align 4
  %cmp.i.i.not.i = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.not.i, label %do.end.i, label %land.lhs.true2.i.if.end_crit_edge

land.lhs.true2.i.if.end_crit_edge:                ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end.i:                                         ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  %unit.i = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 1
  %5 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %unit.i, align 4
  %direction.i = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 11, i32 7
  %7 = ptrtoint ptr %direction.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %direction.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp5.i = icmp eq i32 %8, 1
  %cond.i = select i1 %cmp5.i, i32 111, i32 105
  %pcr_index.i = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 11, i32 5
  %9 = ptrtoint ptr %pcr_index.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pcr_index.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.12, i32 noundef %cond.i, i32 noundef %10) #9
  br label %check_connection_used_by_others.exit.thread

check_connection_used_by_others.exit.thread:      ; preds = %do.end.i, %entry.check_connection_used_by_others.exit.thread_crit_edge
  %err.0.i.ph = phi i32 [ %call.i, %entry.check_connection_used_by_others.exit.thread_crit_edge ], [ -16, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %used.i) #6
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true2.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %used.i) #6
  %has_output = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 5
  %11 = ptrtoint ptr %has_output to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %has_output, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %if.then1

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then1:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %used.i117) #6
  %13 = ptrtoint ptr %used.i117 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %used.i117, align 1, !annotation !57
  %out_conn.i119 = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 10
  %call.i121 = call i32 @cmp_connection_check_used(ptr noundef %out_conn.i119, ptr noundef nonnull %used.i117) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i121)
  %cmp1.i122 = icmp sgt i32 %call.i121, -1
  br i1 %cmp1.i122, label %land.lhs.true.i124, label %if.then1.check_connection_used_by_others.exit135.thread_crit_edge

if.then1.check_connection_used_by_others.exit135.thread_crit_edge: ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #8
  br label %check_connection_used_by_others.exit135.thread

land.lhs.true.i124:                               ; preds = %if.then1
  %14 = ptrtoint ptr %used.i117 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %used.i117, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i123 = icmp eq i8 %15, 0
  br i1 %tobool.not.i123, label %land.lhs.true.i124.check_connection_used_by_others.exit135_crit_edge, label %land.lhs.true2.i127

land.lhs.true.i124.check_connection_used_by_others.exit135_crit_edge: ; preds = %land.lhs.true.i124
  call void @__sanitizer_cov_trace_pc() #8
  br label %check_connection_used_by_others.exit135

land.lhs.true2.i127:                              ; preds = %land.lhs.true.i124
  %context.i.i125 = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 12, i32 4
  %16 = ptrtoint ptr %context.i.i125 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %context.i.i125, align 4
  %cmp.i.i.not.i126 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.not.i126, label %do.end.i133, label %land.lhs.true2.i127.check_connection_used_by_others.exit135_crit_edge

land.lhs.true2.i127.check_connection_used_by_others.exit135_crit_edge: ; preds = %land.lhs.true2.i127
  call void @__sanitizer_cov_trace_pc() #8
  br label %check_connection_used_by_others.exit135

do.end.i133:                                      ; preds = %land.lhs.true2.i127
  call void @__sanitizer_cov_trace_pc() #8
  %unit.i128 = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 1
  %18 = ptrtoint ptr %unit.i128 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %unit.i128, align 4
  %direction.i129 = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 10, i32 7
  %20 = ptrtoint ptr %direction.i129 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %direction.i129, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp5.i130 = icmp eq i32 %21, 1
  %cond.i131 = select i1 %cmp5.i130, i32 111, i32 105
  %pcr_index.i132 = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 10, i32 5
  %22 = ptrtoint ptr %pcr_index.i132 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pcr_index.i132, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.12, i32 noundef %cond.i131, i32 noundef %23) #9
  br label %check_connection_used_by_others.exit135.thread

check_connection_used_by_others.exit135.thread:   ; preds = %do.end.i133, %if.then1.check_connection_used_by_others.exit135.thread_crit_edge
  %err.0.i134.ph = phi i32 [ %call.i121, %if.then1.check_connection_used_by_others.exit135.thread_crit_edge ], [ -16, %do.end.i133 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %used.i117) #6
  br label %cleanup

check_connection_used_by_others.exit135:          ; preds = %land.lhs.true2.i127.check_connection_used_by_others.exit135_crit_edge, %land.lhs.true.i124.check_connection_used_by_others.exit135_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %used.i117) #6
  br label %if.end6

if.end6:                                          ; preds = %check_connection_used_by_others.exit135, %if.end.if.end6_crit_edge
  %tx_stream7 = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 12
  %cmp8 = icmp eq ptr %tx_stream7, %stream
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i) #6
  %24 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 512, ptr %len.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3264, i32 noundef 512) #10
  %cmp.i = icmp eq ptr %call7.i.i, null
  br i1 %cmp.i, label %snd_oxfw_stream_get_current_formation.exit.thread, label %if.end.i

snd_oxfw_stream_get_current_formation.exit.thread: ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #6
  br label %cleanup

if.end.i:                                         ; preds = %if.end6
  %. = zext i1 %cmp8 to i32
  %unit.i136 = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 1
  %26 = ptrtoint ptr %unit.i136 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %unit.i136, align 4
  %call.i.i = call i32 @avc_stream_get_format(ptr noundef %27, i32 noundef %., i32 noundef 0, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %len.i, i32 noundef 255) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp2.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp2.i, label %if.end.i.snd_oxfw_stream_get_current_formation.exit.thread181_crit_edge, label %if.end4.i

if.end.i.snd_oxfw_stream_get_current_formation.exit.thread181_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_oxfw_stream_get_current_formation.exit.thread181

if.end4.i:                                        ; preds = %if.end.i
  %28 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %29)
  %cmp5.i137 = icmp ult i32 %29, 3
  br i1 %cmp5.i137, label %if.end4.i.snd_oxfw_stream_get_current_formation.exit.thread181_crit_edge, label %if.end7.i

if.end4.i.snd_oxfw_stream_get_current_formation.exit.thread181_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_oxfw_stream_get_current_formation.exit.thread181

if.end7.i:                                        ; preds = %if.end4.i
  %30 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -112, i8 %31)
  %cmp.not.i = icmp eq i8 %31, -112
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end7.i.snd_oxfw_stream_get_current_formation.exit.thread181_crit_edge

if.end7.i.snd_oxfw_stream_get_current_formation.exit.thread181_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_oxfw_stream_get_current_formation.exit.thread181

lor.lhs.false.i:                                  ; preds = %if.end7.i
  %arrayidx2.i = getelementptr i8, ptr %call7.i.i, i32 1
  %32 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %33)
  %cmp4.not.i = icmp eq i8 %33, 64
  br i1 %cmp4.not.i, label %for.cond.preheader.i, label %lor.lhs.false.i.snd_oxfw_stream_get_current_formation.exit.thread181_crit_edge

lor.lhs.false.i.snd_oxfw_stream_get_current_formation.exit.thread181_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_oxfw_stream_get_current_formation.exit.thread181

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %arrayidx8.i = getelementptr i8, ptr %call7.i.i, i32 2
  %34 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx8.i, align 2
  %switch.tableidx = add i8 %35, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %switch.tableidx)
  %36 = icmp ult i8 %switch.tableidx, 9
  br i1 %36, label %switch.hole_check, label %for.cond.preheader.i.snd_oxfw_stream_get_current_formation.exit.thread181_crit_edge

for.cond.preheader.i.snd_oxfw_stream_get_current_formation.exit.thread181_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_oxfw_stream_get_current_formation.exit.thread181

switch.hole_check:                                ; preds = %for.cond.preheader.i
  %switch.maskindex = zext i8 %switch.tableidx to i16
  %switch.shifted = lshr i16 303, %switch.maskindex
  %37 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %switch.lobit.not = icmp eq i16 %37, 0
  br i1 %switch.lobit.not, label %switch.hole_check.snd_oxfw_stream_get_current_formation.exit.thread181_crit_edge, label %switch.lookup

switch.hole_check.snd_oxfw_stream_get_current_formation.exit.thread181_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_oxfw_stream_get_current_formation.exit.thread181

switch.lookup:                                    ; preds = %switch.hole_check
  %38 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.snd_oxfw_stream_reserve_duplex, i32 0, i32 %38
  %39 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %39)
  %switch.load = load i32, ptr %switch.gep, align 4
  %arrayidx19.i = getelementptr [6 x i32], ptr @oxfw_rate_table, i32 0, i32 %switch.load
  %40 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx19.i, align 4
  %arrayidx21.i = getelementptr i8, ptr %call7.i.i, i32 4
  %42 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx21.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %cmp2373.not.i = icmp eq i8 %43, 0
  br i1 %cmp2373.not.i, label %switch.lookup.if.end14_crit_edge, label %for.body25.i.preheader

switch.lookup.if.end14_crit_edge:                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

for.body25.i.preheader:                           ; preds = %switch.lookup
  %conv22.i = zext i8 %43 to i32
  br label %for.body25.i

for.body25.i:                                     ; preds = %for.inc35.i.for.body25.i_crit_edge, %for.body25.i.preheader
  %formation.sroa.8.0 = phi i32 [ %formation.sroa.8.1, %for.inc35.i.for.body25.i_crit_edge ], [ 0, %for.body25.i.preheader ]
  %formation.sroa.15.0 = phi i32 [ %formation.sroa.15.1, %for.inc35.i.for.body25.i_crit_edge ], [ 0, %for.body25.i.preheader ]
  %e.074.i = phi i32 [ %inc36.i, %for.inc35.i.for.body25.i_crit_edge ], [ 0, %for.body25.i.preheader ]
  %mul.i145 = shl nuw i32 %e.074.i, 1
  %add.i146 = add nuw nsw i32 %mul.i145, 5
  %arrayidx26.i = getelementptr i8, ptr %call7.i.i, i32 %add.i146
  %44 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx26.i, align 1
  %conv27.i = zext i8 %45 to i32
  %add29.i = add nuw nsw i32 %mul.i145, 6
  %arrayidx30.i = getelementptr i8, ptr %call7.i.i, i32 %add29.i
  %46 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx30.i, align 2
  %48 = zext i8 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values)
  switch i8 %47, label %for.body25.i.snd_oxfw_stream_get_current_formation.exit.thread181_crit_edge [
    i8 0, label %for.body25.i.sw.bb.i_crit_edge
    i8 6, label %for.body25.i.sw.bb.i_crit_edge290
    i8 13, label %for.body25.i.for.inc35.i_crit_edge
  ]

for.body25.i.for.inc35.i_crit_edge:               ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc35.i

for.body25.i.sw.bb.i_crit_edge290:                ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

for.body25.i.sw.bb.i_crit_edge:                   ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

for.body25.i.snd_oxfw_stream_get_current_formation.exit.thread181_crit_edge: ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_oxfw_stream_get_current_formation.exit.thread181

sw.bb.i:                                          ; preds = %for.body25.i.sw.bb.i_crit_edge, %for.body25.i.sw.bb.i_crit_edge290
  %add32.i = add i32 %formation.sroa.8.0, %conv27.i
  br label %for.inc35.i

for.inc35.i:                                      ; preds = %sw.bb.i, %for.body25.i.for.inc35.i_crit_edge
  %formation.sroa.8.1 = phi i32 [ %add32.i, %sw.bb.i ], [ %formation.sroa.8.0, %for.body25.i.for.inc35.i_crit_edge ]
  %formation.sroa.15.1 = phi i32 [ %formation.sroa.15.0, %sw.bb.i ], [ %conv27.i, %for.body25.i.for.inc35.i_crit_edge ]
  %inc36.i = add nuw nsw i32 %e.074.i, 1
  %exitcond.not = icmp eq i32 %inc36.i, %conv22.i
  br i1 %exitcond.not, label %for.end37.i, label %for.inc35.i.for.body25.i_crit_edge

for.inc35.i.for.body25.i_crit_edge:               ; preds = %for.inc35.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body25.i

for.end37.i:                                      ; preds = %for.inc35.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %formation.sroa.8.1)
  %cmp39.i = icmp ugt i32 %formation.sroa.8.1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %formation.sroa.15.1)
  %cmp43.i = icmp ugt i32 %formation.sroa.15.1, 1
  %or.cond = select i1 %cmp39.i, i1 true, i1 %cmp43.i
  br i1 %or.cond, label %for.end37.i.snd_oxfw_stream_get_current_formation.exit.thread181_crit_edge, label %for.end37.i.if.end14_crit_edge

for.end37.i.if.end14_crit_edge:                   ; preds = %for.end37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

for.end37.i.snd_oxfw_stream_get_current_formation.exit.thread181_crit_edge: ; preds = %for.end37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_oxfw_stream_get_current_formation.exit.thread181

snd_oxfw_stream_get_current_formation.exit.thread181: ; preds = %for.end37.i.snd_oxfw_stream_get_current_formation.exit.thread181_crit_edge, %for.body25.i.snd_oxfw_stream_get_current_formation.exit.thread181_crit_edge, %switch.hole_check.snd_oxfw_stream_get_current_formation.exit.thread181_crit_edge, %for.cond.preheader.i.snd_oxfw_stream_get_current_formation.exit.thread181_crit_edge, %lor.lhs.false.i.snd_oxfw_stream_get_current_formation.exit.thread181_crit_edge, %if.end7.i.snd_oxfw_stream_get_current_formation.exit.thread181_crit_edge, %if.end4.i.snd_oxfw_stream_get_current_formation.exit.thread181_crit_edge, %if.end.i.snd_oxfw_stream_get_current_formation.exit.thread181_crit_edge
  %err.0.i138.ph = phi i32 [ -6, %for.cond.preheader.i.snd_oxfw_stream_get_current_formation.exit.thread181_crit_edge ], [ -6, %for.end37.i.snd_oxfw_stream_get_current_formation.exit.thread181_crit_edge ], [ -6, %if.end7.i.snd_oxfw_stream_get_current_formation.exit.thread181_crit_edge ], [ -6, %lor.lhs.false.i.snd_oxfw_stream_get_current_formation.exit.thread181_crit_edge ], [ -5, %if.end4.i.snd_oxfw_stream_get_current_formation.exit.thread181_crit_edge ], [ %call.i.i, %if.end.i.snd_oxfw_stream_get_current_formation.exit.thread181_crit_edge ], [ -6, %switch.hole_check.snd_oxfw_stream_get_current_formation.exit.thread181_crit_edge ], [ -6, %for.body25.i.snd_oxfw_stream_get_current_formation.exit.thread181_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #6
  br label %cleanup

if.end14:                                         ; preds = %for.end37.i.if.end14_crit_edge, %switch.lookup.if.end14_crit_edge
  %formation.sroa.8.4 = phi i32 [ 0, %switch.lookup.if.end14_crit_edge ], [ %formation.sroa.8.1, %for.end37.i.if.end14_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %cmp15 = icmp eq i32 %rate, 0
  br i1 %cmp15, label %if.end30.thread, label %if.end18

if.end18:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %rate)
  %cmp20.not = icmp eq i32 %41, %rate
  call void @__sanitizer_cov_trace_cmp4(i32 %formation.sroa.8.4, i32 %pcm_channels)
  %cmp22.not = icmp eq i32 %formation.sroa.8.4, %pcm_channels
  %or.cond239 = select i1 %cmp20.not, i1 %cmp22.not, i1 false
  br i1 %or.cond239, label %if.end18.if.end30_crit_edge, label %if.then23

if.end18.if.end30_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then23:                                        ; preds = %if.end18
  %domain = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 21
  call void @amdtp_domain_stop(ptr noundef %domain) #6
  call void @cmp_connection_break(ptr noundef %in_conn.i) #6
  call void @cmp_connection_release(ptr noundef %in_conn.i) #6
  %49 = ptrtoint ptr %has_output to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %has_output, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool26.not = icmp eq i8 %50, 0
  br i1 %tobool26.not, label %if.then23.if.end30_crit_edge, label %if.then27

if.then23.if.end30_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then27:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  %out_conn = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 10
  call void @cmp_connection_break(ptr noundef %out_conn) #6
  call void @cmp_connection_release(ptr noundef %out_conn) #6
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.then23.if.end30_crit_edge, %if.end18.if.end30_crit_edge
  %cmp20.not200 = phi i1 [ %cmp20.not, %if.then23.if.end30_crit_edge ], [ %cmp20.not, %if.then27 ], [ true, %if.end18.if.end30_crit_edge ]
  %substreams_count = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 14
  %51 = ptrtoint ptr %substreams_count to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %substreams_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp31 = icmp ne i32 %52, 0
  %53 = and i1 %cmp20.not200, %cmp31
  %or.cond237 = select i1 %53, i1 %cmp22.not, i1 false
  br i1 %or.cond237, label %if.end30.cleanup_crit_edge, label %if.end30.if.then38_crit_edge

if.end30.if.then38_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then38

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end30.thread:                                  ; preds = %if.end14
  %substreams_count211 = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 14
  %54 = ptrtoint ptr %substreams_count211 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %substreams_count211, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp31212 = icmp eq i32 %55, 0
  br i1 %cmp31212, label %if.end30.thread.if.then38_crit_edge, label %if.end30.thread.cleanup_crit_edge

if.end30.thread.cleanup_crit_edge:                ; preds = %if.end30.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end30.thread.if.then38_crit_edge:              ; preds = %if.end30.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then38

if.then38:                                        ; preds = %if.end30.thread.if.then38_crit_edge, %if.end30.if.then38_crit_edge
  %rate.addr.0197215 = phi i32 [ %rate, %if.end30.if.then38_crit_edge ], [ %41, %if.end30.thread.if.then38_crit_edge ]
  %pcm_channels.addr.0195 = phi i32 [ %pcm_channels, %if.end30.if.then38_crit_edge ], [ %formation.sroa.8.4, %if.end30.thread.if.then38_crit_edge ]
  %tx_stream_formats.i = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 7
  %rx_stream_formats.i = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 8
  %formats.0.i = select i1 %cmp8, ptr %tx_stream_formats.i, ptr %rx_stream_formats.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then38
  %i.067.i = phi i32 [ 0, %if.then38 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %formats.0.i, i32 %i.067.i
  %56 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %57, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -112, i8 %59)
  %cmp.not.i.i = icmp eq i8 %59, -112
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %for.body.i.do.end_crit_edge

for.body.i.do.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false.i.i:                                ; preds = %for.body.i
  %arrayidx2.i.i = getelementptr i8, ptr %57, i32 1
  %60 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %61)
  %cmp4.not.i.i = icmp eq i8 %61, 64
  br i1 %cmp4.not.i.i, label %for.cond.preheader.i.i, label %lor.lhs.false.i.i.do.end_crit_edge

lor.lhs.false.i.i.do.end_crit_edge:               ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.cond.preheader.i.i:                           ; preds = %lor.lhs.false.i.i
  %arrayidx8.i.i = getelementptr i8, ptr %57, i32 2
  %62 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx8.i.i, align 1
  %switch.tableidx269 = add i8 %63, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %switch.tableidx269)
  %64 = icmp ult i8 %switch.tableidx269, 9
  br i1 %64, label %switch.hole_check270, label %for.cond.preheader.i.i.do.end_crit_edge

for.cond.preheader.i.i.do.end_crit_edge:          ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

switch.hole_check270:                             ; preds = %for.cond.preheader.i.i
  %switch.maskindex272 = zext i8 %switch.tableidx269 to i16
  %switch.shifted273 = lshr i16 303, %switch.maskindex272
  %65 = and i16 %switch.shifted273, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %65)
  %switch.lobit274.not = icmp eq i16 %65, 0
  br i1 %switch.lobit274.not, label %switch.hole_check270.do.end_crit_edge, label %switch.lookup271

switch.hole_check270.do.end_crit_edge:            ; preds = %switch.hole_check270
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

switch.lookup271:                                 ; preds = %switch.hole_check270
  %66 = sext i8 %switch.tableidx269 to i32
  %switch.gep275 = getelementptr inbounds [9 x i32], ptr @switch.table.snd_oxfw_stream_reserve_duplex.23, i32 0, i32 %66
  %67 = ptrtoint ptr %switch.gep275 to i32
  call void @__asan_load4_noabort(i32 %67)
  %switch.load276 = load i32, ptr %switch.gep275, align 4
  %arrayidx19.i.i = getelementptr [6 x i32], ptr @oxfw_rate_table, i32 0, i32 %switch.load276
  %68 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx19.i.i, align 4
  %arrayidx21.i.i = getelementptr i8, ptr %57, i32 4
  %70 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx21.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %cmp2373.not.i.i = icmp eq i8 %71, 0
  br i1 %cmp2373.not.i.i, label %switch.lookup271.if.end5.i_crit_edge, label %for.body25.i.preheader.i

switch.lookup271.if.end5.i_crit_edge:             ; preds = %switch.lookup271
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i

for.body25.i.preheader.i:                         ; preds = %switch.lookup271
  %conv22.i.i = zext i8 %71 to i32
  br label %for.body25.i.i

for.body25.i.i:                                   ; preds = %for.inc35.i.i.for.body25.i.i_crit_edge, %for.body25.i.preheader.i
  %formation.sroa.6.1.i = phi i32 [ %formation.sroa.6.2.i, %for.inc35.i.i.for.body25.i.i_crit_edge ], [ 0, %for.body25.i.preheader.i ]
  %formation.sroa.11.1.i = phi i32 [ %formation.sroa.11.2.i, %for.inc35.i.i.for.body25.i.i_crit_edge ], [ 0, %for.body25.i.preheader.i ]
  %e.074.i.i = phi i32 [ %inc36.i.i, %for.inc35.i.i.for.body25.i.i_crit_edge ], [ 0, %for.body25.i.preheader.i ]
  %mul.i.i = shl nuw i32 %e.074.i.i, 1
  %add.i.i = add nuw nsw i32 %mul.i.i, 5
  %arrayidx26.i.i = getelementptr i8, ptr %57, i32 %add.i.i
  %72 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx26.i.i, align 1
  %conv27.i.i = zext i8 %73 to i32
  %add29.i.i = add nuw nsw i32 %mul.i.i, 6
  %arrayidx30.i.i = getelementptr i8, ptr %57, i32 %add29.i.i
  %74 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx30.i.i, align 1
  %76 = zext i8 %75 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.25)
  switch i8 %75, label %for.body25.i.i.do.end_crit_edge [
    i8 0, label %for.body25.i.i.sw.bb.i.i_crit_edge
    i8 6, label %for.body25.i.i.sw.bb.i.i_crit_edge291
    i8 13, label %for.body25.i.i.for.inc35.i.i_crit_edge
  ]

for.body25.i.i.for.inc35.i.i_crit_edge:           ; preds = %for.body25.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc35.i.i

for.body25.i.i.sw.bb.i.i_crit_edge291:            ; preds = %for.body25.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i

for.body25.i.i.sw.bb.i.i_crit_edge:               ; preds = %for.body25.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i

for.body25.i.i.do.end_crit_edge:                  ; preds = %for.body25.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

sw.bb.i.i:                                        ; preds = %for.body25.i.i.sw.bb.i.i_crit_edge, %for.body25.i.i.sw.bb.i.i_crit_edge291
  %add32.i.i = add i32 %formation.sroa.6.1.i, %conv27.i.i
  br label %for.inc35.i.i

for.inc35.i.i:                                    ; preds = %sw.bb.i.i, %for.body25.i.i.for.inc35.i.i_crit_edge
  %formation.sroa.6.2.i = phi i32 [ %add32.i.i, %sw.bb.i.i ], [ %formation.sroa.6.1.i, %for.body25.i.i.for.inc35.i.i_crit_edge ]
  %formation.sroa.11.2.i = phi i32 [ %formation.sroa.11.1.i, %sw.bb.i.i ], [ %conv27.i.i, %for.body25.i.i.for.inc35.i.i_crit_edge ]
  %inc36.i.i = add nuw nsw i32 %e.074.i.i, 1
  %exitcond.not.i = icmp eq i32 %inc36.i.i, %conv22.i.i
  br i1 %exitcond.not.i, label %for.end37.i.i, label %for.inc35.i.i.for.body25.i.i_crit_edge

for.inc35.i.i.for.body25.i.i_crit_edge:           ; preds = %for.inc35.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body25.i.i

for.end37.i.i:                                    ; preds = %for.inc35.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %formation.sroa.6.2.i)
  %cmp39.i.i = icmp ugt i32 %formation.sroa.6.2.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %formation.sroa.11.2.i)
  %cmp43.i.i = icmp ugt i32 %formation.sroa.11.2.i, 1
  %or.cond.i = select i1 %cmp39.i.i, i1 true, i1 %cmp43.i.i
  br i1 %or.cond.i, label %for.end37.i.i.do.end_crit_edge, label %for.end37.i.i.if.end5.i_crit_edge

for.end37.i.i.if.end5.i_crit_edge:                ; preds = %for.end37.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i

for.end37.i.i.do.end_crit_edge:                   ; preds = %for.end37.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end5.i:                                        ; preds = %for.end37.i.i.if.end5.i_crit_edge, %switch.lookup271.if.end5.i_crit_edge
  %formation.sroa.6.4.i = phi i32 [ 0, %switch.lookup271.if.end5.i_crit_edge ], [ %formation.sroa.6.2.i, %for.end37.i.i.if.end5.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %rate.addr.0197215)
  %cmp7.i = icmp eq i32 %69, %rate.addr.0197215
  call void @__sanitizer_cov_trace_cmp4(i32 %formation.sroa.6.4.i, i32 %pcm_channels.addr.0195)
  %cmp8.i = icmp eq i32 %formation.sroa.6.4.i, %pcm_channels.addr.0195
  %or.cond63.i = select i1 %cmp7.i, i1 %cmp8.i, i1 false
  br i1 %or.cond63.i, label %for.end.i, label %for.inc.i

for.inc.i:                                        ; preds = %if.end5.i
  %inc.i = add nuw nsw i32 %i.067.i, 1
  %exitcond69.not.i = icmp eq i32 %inc.i, 10
  br i1 %exitcond69.not.i, label %for.inc.i.do.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.do.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.end.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %i.067.i)
  %cmp11.i = icmp eq i32 %i.067.i, 10
  br i1 %cmp11.i, label %for.end.i.do.end_crit_edge, label %if.end13.i

for.end.i.do.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end13.i:                                       ; preds = %for.end.i
  %assumed.i = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 9
  %77 = ptrtoint ptr %assumed.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %assumed.i, align 8, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool.not.i141 = icmp eq i8 %78, 0
  br i1 %tobool.not.i141, label %if.end16.i, label %if.then14.i

if.then14.i:                                      ; preds = %if.end13.i
  %79 = ptrtoint ptr %unit.i136 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %unit.i136, align 4
  %call.i.i142 = call i32 @avc_general_set_sig_fmt(ptr noundef %80, i32 noundef %rate.addr.0197215, i32 noundef 0, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i142)
  %cmp.i.i = icmp slt i32 %call.i.i142, 0
  br i1 %cmp.i.i, label %if.then14.i.do.end_crit_edge, label %if.end.i.i

if.then14.i.do.end_crit_edge:                     ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i.i:                                       ; preds = %if.then14.i
  %81 = ptrtoint ptr %has_output to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %has_output, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool.not.i.i = icmp eq i8 %82, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.if.end42_crit_edge, label %set_stream_format.exit

if.end.i.i.if.end42_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

if.end16.i:                                       ; preds = %if.end13.i
  %conv.i = zext i8 %71 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 1
  %add.i = add nuw nsw i32 %mul.i, 5
  %83 = ptrtoint ptr %unit.i136 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %unit.i136, align 4
  %call20.i = call i32 @avc_stream_set_format(ptr noundef %84, i32 noundef %., i32 noundef 0, ptr noundef %57, i32 noundef %add.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %cmp21.i = icmp slt i32 %call20.i, 0
  br i1 %cmp21.i, label %if.end16.i.do.end_crit_edge, label %if.end24.i

if.end16.i.do.end_crit_edge:                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end24.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @msleep(i32 noundef 100) #6
  br label %if.end42

set_stream_format.exit:                           ; preds = %if.end.i.i
  %85 = ptrtoint ptr %unit.i136 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %unit.i136, align 4
  %call3.i.i = call i32 @avc_general_set_sig_fmt(ptr noundef %86, i32 noundef %rate.addr.0197215, i32 noundef 1, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp40 = icmp slt i32 %call3.i.i, 0
  br i1 %cmp40, label %set_stream_format.exit.do.end_crit_edge, label %set_stream_format.exit.if.end42_crit_edge

set_stream_format.exit.if.end42_crit_edge:        ; preds = %set_stream_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

set_stream_format.exit.do.end_crit_edge:          ; preds = %set_stream_format.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %set_stream_format.exit.do.end_crit_edge, %if.end16.i.do.end_crit_edge, %if.then14.i.do.end_crit_edge, %for.end.i.do.end_crit_edge, %for.inc.i.do.end_crit_edge, %for.end37.i.i.do.end_crit_edge, %for.body25.i.i.do.end_crit_edge, %switch.hole_check270.do.end_crit_edge, %for.cond.preheader.i.i.do.end_crit_edge, %lor.lhs.false.i.i.do.end_crit_edge, %for.body.i.do.end_crit_edge
  %retval.0.i144231 = phi i32 [ %call3.i.i, %set_stream_format.exit.do.end_crit_edge ], [ %call.i.i142, %if.then14.i.do.end_crit_edge ], [ %call20.i, %if.end16.i.do.end_crit_edge ], [ -22, %for.end.i.do.end_crit_edge ], [ -6, %for.body25.i.i.do.end_crit_edge ], [ -6, %switch.hole_check270.do.end_crit_edge ], [ -22, %for.inc.i.do.end_crit_edge ], [ -6, %for.cond.preheader.i.i.do.end_crit_edge ], [ -6, %for.end37.i.i.do.end_crit_edge ], [ -6, %for.body.i.do.end_crit_edge ], [ -6, %lor.lhs.false.i.i.do.end_crit_edge ]
  %87 = ptrtoint ptr %unit.i136 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %unit.i136, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %88, ptr noundef nonnull @.str, i32 noundef %retval.0.i144231) #9
  br label %cleanup

if.end42:                                         ; preds = %set_stream_format.exit.if.end42_crit_edge, %if.end24.i, %if.end.i.i.if.end42_crit_edge
  %call44 = call fastcc i32 @keep_resources(ptr noundef %oxfw, ptr noundef %rx_stream)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %if.end42.cleanup_crit_edge, label %if.end47

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end47:                                         ; preds = %if.end42
  %89 = ptrtoint ptr %has_output to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %has_output, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool49.not = icmp eq i8 %90, 0
  br i1 %tobool49.not, label %if.end47.if.end57_crit_edge, label %if.then50

if.end47.if.end57_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

if.then50:                                        ; preds = %if.end47
  %call52 = call fastcc i32 @keep_resources(ptr noundef %oxfw, ptr noundef %tx_stream7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %if.then54, label %if.then50.if.end57_crit_edge

if.then50.if.end57_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

if.then54:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #8
  call void @cmp_connection_release(ptr noundef %in_conn.i) #6
  br label %cleanup

if.end57:                                         ; preds = %if.then50.if.end57_crit_edge, %if.end47.if.end57_crit_edge
  %events_per_period1.i = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 21, i32 1
  %91 = ptrtoint ptr %events_per_period1.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %frames_per_period, ptr %events_per_period1.i, align 4
  %events_per_buffer2.i = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 21, i32 2
  %92 = ptrtoint ptr %events_per_buffer2.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %frames_per_buffer, ptr %events_per_buffer2.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %if.then54, %if.end42.cleanup_crit_edge, %do.end, %if.end30.thread.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %snd_oxfw_stream_get_current_formation.exit.thread181, %snd_oxfw_stream_get_current_formation.exit.thread, %check_connection_used_by_others.exit135.thread, %check_connection_used_by_others.exit.thread
  %retval.0 = phi i32 [ %retval.0.i144231, %do.end ], [ %call52, %if.then54 ], [ %call44, %if.end42.cleanup_crit_edge ], [ 0, %if.end57 ], [ %err.0.i.ph, %check_connection_used_by_others.exit.thread ], [ %err.0.i134.ph, %check_connection_used_by_others.exit135.thread ], [ -12, %snd_oxfw_stream_get_current_formation.exit.thread ], [ %err.0.i138.ph, %snd_oxfw_stream_get_current_formation.exit.thread181 ], [ 0, %if.end30.thread.cleanup_crit_edge ], [ 0, %if.end30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_oxfw_stream_get_current_formation(ptr nocapture noundef readonly %oxfw, i32 noundef %dir, ptr nocapture noundef %formation) local_unnamed_addr #0 align 64 {
entry:
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 512, ptr %len, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 512) #10
  %cmp = icmp eq ptr %call7.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %unit = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 1
  %2 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %unit, align 4
  %call.i = call i32 @avc_stream_get_format(ptr noundef %3, i32 noundef %dir, i32 noundef 0, ptr noundef nonnull %call7.i, ptr noundef nonnull %len, i32 noundef 255) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2 = icmp slt i32 %call.i, 0
  br i1 %cmp2, label %if.end.end_crit_edge, label %if.end4

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %end

if.end4:                                          ; preds = %if.end
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp5 = icmp ult i32 %5, 3
  br i1 %cmp5, label %if.end4.end_crit_edge, label %if.end7

if.end4.end_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %end

if.end7:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = call i32 @snd_oxfw_stream_parse_format(ptr noundef nonnull %call7.i, ptr noundef %formation)
  br label %end

end:                                              ; preds = %if.end7, %if.end4.end_crit_edge, %if.end.end_crit_edge
  %err.0 = phi i32 [ %call.i, %if.end.end_crit_edge ], [ %call8, %if.end7 ], [ -5, %if.end4.end_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i) #6
  br label %cleanup

cleanup:                                          ; preds = %end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %end ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdtp_domain_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cmp_connection_break(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cmp_connection_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @keep_resources(ptr noundef %oxfw, ptr noundef %stream) unnamed_addr #0 align 64 {
entry:
  %len.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_stream = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 13
  %cmp = icmp eq ptr %rx_stream, %stream
  %rx_stream_formats = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 8
  %in_conn = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 11
  %tx_stream_formats = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 7
  %out_conn = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 10
  %formats.0 = select i1 %cmp, ptr %rx_stream_formats, ptr %tx_stream_formats
  %conn.0 = select i1 %cmp, ptr %in_conn, ptr %out_conn
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i) #6
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 512, ptr %len.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 512) #10
  %cmp.i = icmp eq ptr %call7.i.i, null
  br i1 %cmp.i, label %snd_oxfw_stream_get_current_formation.exit.thread, label %if.end.i

snd_oxfw_stream_get_current_formation.exit.thread: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #6
  br label %cleanup39

if.end.i:                                         ; preds = %entry
  %not.cmp = xor i1 %cmp, true
  %dir.0 = zext i1 %not.cmp to i32
  %unit.i = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 1
  %2 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %unit.i, align 4
  %call.i.i = call i32 @avc_stream_get_format(ptr noundef %3, i32 noundef %dir.0, i32 noundef 0, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %len.i, i32 noundef 255) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp2.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp2.i, label %if.end.i.snd_oxfw_stream_get_current_formation.exit.thread137_crit_edge, label %if.end4.i

if.end.i.snd_oxfw_stream_get_current_formation.exit.thread137_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_oxfw_stream_get_current_formation.exit.thread137

if.end4.i:                                        ; preds = %if.end.i
  %4 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp5.i = icmp ult i32 %5, 3
  br i1 %cmp5.i, label %if.end4.i.snd_oxfw_stream_get_current_formation.exit.thread137_crit_edge, label %if.end7.i

if.end4.i.snd_oxfw_stream_get_current_formation.exit.thread137_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_oxfw_stream_get_current_formation.exit.thread137

if.end7.i:                                        ; preds = %if.end4.i
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -112, i8 %7)
  %cmp.not.i64 = icmp eq i8 %7, -112
  br i1 %cmp.not.i64, label %lor.lhs.false.i67, label %if.end7.i.snd_oxfw_stream_get_current_formation.exit.thread137_crit_edge

if.end7.i.snd_oxfw_stream_get_current_formation.exit.thread137_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_oxfw_stream_get_current_formation.exit.thread137

lor.lhs.false.i67:                                ; preds = %if.end7.i
  %arrayidx2.i65 = getelementptr i8, ptr %call7.i.i, i32 1
  %8 = ptrtoint ptr %arrayidx2.i65 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx2.i65, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %9)
  %cmp4.not.i66 = icmp eq i8 %9, 64
  br i1 %cmp4.not.i66, label %for.cond.preheader.i69, label %lor.lhs.false.i67.snd_oxfw_stream_get_current_formation.exit.thread137_crit_edge

lor.lhs.false.i67.snd_oxfw_stream_get_current_formation.exit.thread137_crit_edge: ; preds = %lor.lhs.false.i67
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_oxfw_stream_get_current_formation.exit.thread137

for.cond.preheader.i69:                           ; preds = %lor.lhs.false.i67
  %arrayidx8.i68 = getelementptr i8, ptr %call7.i.i, i32 2
  %10 = ptrtoint ptr %arrayidx8.i68 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx8.i68, align 2
  %switch.tableidx = add i8 %11, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %switch.tableidx)
  %12 = icmp ult i8 %switch.tableidx, 9
  br i1 %12, label %switch.hole_check, label %for.cond.preheader.i69.snd_oxfw_stream_get_current_formation.exit.thread137_crit_edge

for.cond.preheader.i69.snd_oxfw_stream_get_current_formation.exit.thread137_crit_edge: ; preds = %for.cond.preheader.i69
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_oxfw_stream_get_current_formation.exit.thread137

switch.hole_check:                                ; preds = %for.cond.preheader.i69
  %switch.maskindex = zext i8 %switch.tableidx to i16
  %switch.shifted = lshr i16 303, %switch.maskindex
  %13 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %switch.lobit.not = icmp eq i16 %13, 0
  br i1 %switch.lobit.not, label %switch.hole_check.snd_oxfw_stream_get_current_formation.exit.thread137_crit_edge, label %switch.lookup

switch.hole_check.snd_oxfw_stream_get_current_formation.exit.thread137_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_oxfw_stream_get_current_formation.exit.thread137

switch.lookup:                                    ; preds = %switch.hole_check
  %14 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.keep_resources, i32 0, i32 %14
  %15 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load = load i32, ptr %switch.gep, align 4
  %arrayidx19.i76 = getelementptr [6 x i32], ptr @oxfw_rate_table, i32 0, i32 %switch.load
  %16 = ptrtoint ptr %arrayidx19.i76 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx19.i76, align 4
  %arrayidx21.i77 = getelementptr i8, ptr %call7.i.i, i32 4
  %18 = ptrtoint ptr %arrayidx21.i77 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx21.i77, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp2373.not.i78 = icmp eq i8 %19, 0
  br i1 %cmp2373.not.i78, label %switch.lookup.snd_oxfw_stream_get_current_formation.exit_crit_edge, label %for.body25.i90.preheader

switch.lookup.snd_oxfw_stream_get_current_formation.exit_crit_edge: ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_oxfw_stream_get_current_formation.exit

for.body25.i90.preheader:                         ; preds = %switch.lookup
  %conv22.i95 = zext i8 %19 to i32
  br label %for.body25.i90

for.body25.i90:                                   ; preds = %for.inc35.i97.for.body25.i90_crit_edge, %for.body25.i90.preheader
  %formation.sroa.7.0 = phi i32 [ %formation.sroa.7.1, %for.inc35.i97.for.body25.i90_crit_edge ], [ 0, %for.body25.i90.preheader ]
  %formation.sroa.13.0 = phi i32 [ %formation.sroa.13.1, %for.inc35.i97.for.body25.i90_crit_edge ], [ 0, %for.body25.i90.preheader ]
  %e.074.i83 = phi i32 [ %inc36.i94, %for.inc35.i97.for.body25.i90_crit_edge ], [ 0, %for.body25.i90.preheader ]
  %mul.i84 = shl nuw i32 %e.074.i83, 1
  %add.i85 = add nuw nsw i32 %mul.i84, 5
  %arrayidx26.i86 = getelementptr i8, ptr %call7.i.i, i32 %add.i85
  %20 = ptrtoint ptr %arrayidx26.i86 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx26.i86, align 1
  %conv27.i87 = zext i8 %21 to i32
  %add29.i88 = add nuw nsw i32 %mul.i84, 6
  %arrayidx30.i89 = getelementptr i8, ptr %call7.i.i, i32 %add29.i88
  %22 = ptrtoint ptr %arrayidx30.i89 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx30.i89, align 2
  %24 = zext i8 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.26)
  switch i8 %23, label %for.body25.i90.snd_oxfw_stream_get_current_formation.exit.thread137_crit_edge [
    i8 0, label %for.body25.i90.sw.bb.i92_crit_edge
    i8 6, label %for.body25.i90.sw.bb.i92_crit_edge207
    i8 13, label %for.body25.i90.for.inc35.i97_crit_edge
  ]

for.body25.i90.for.inc35.i97_crit_edge:           ; preds = %for.body25.i90
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc35.i97

for.body25.i90.sw.bb.i92_crit_edge207:            ; preds = %for.body25.i90
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i92

for.body25.i90.sw.bb.i92_crit_edge:               ; preds = %for.body25.i90
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i92

for.body25.i90.snd_oxfw_stream_get_current_formation.exit.thread137_crit_edge: ; preds = %for.body25.i90
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_oxfw_stream_get_current_formation.exit.thread137

sw.bb.i92:                                        ; preds = %for.body25.i90.sw.bb.i92_crit_edge, %for.body25.i90.sw.bb.i92_crit_edge207
  %add32.i91 = add i32 %formation.sroa.7.0, %conv27.i87
  br label %for.inc35.i97

for.inc35.i97:                                    ; preds = %sw.bb.i92, %for.body25.i90.for.inc35.i97_crit_edge
  %formation.sroa.7.1 = phi i32 [ %add32.i91, %sw.bb.i92 ], [ %formation.sroa.7.0, %for.body25.i90.for.inc35.i97_crit_edge ]
  %formation.sroa.13.1 = phi i32 [ %formation.sroa.13.0, %sw.bb.i92 ], [ %conv27.i87, %for.body25.i90.for.inc35.i97_crit_edge ]
  %inc36.i94 = add nuw nsw i32 %e.074.i83, 1
  %exitcond.not = icmp eq i32 %inc36.i94, %conv22.i95
  br i1 %exitcond.not, label %for.end37.i100, label %for.inc35.i97.for.body25.i90_crit_edge

for.inc35.i97.for.body25.i90_crit_edge:           ; preds = %for.inc35.i97
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body25.i90

for.end37.i100:                                   ; preds = %for.inc35.i97
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %formation.sroa.7.1)
  %cmp39.i99 = icmp ugt i32 %formation.sroa.7.1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %formation.sroa.13.1)
  %cmp43.i102 = icmp ugt i32 %formation.sroa.13.1, 1
  %or.cond = select i1 %cmp39.i99, i1 true, i1 %cmp43.i102
  br i1 %or.cond, label %for.end37.i100.snd_oxfw_stream_get_current_formation.exit.thread137_crit_edge, label %for.end37.i100.snd_oxfw_stream_get_current_formation.exit_crit_edge

for.end37.i100.snd_oxfw_stream_get_current_formation.exit_crit_edge: ; preds = %for.end37.i100
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_oxfw_stream_get_current_formation.exit

for.end37.i100.snd_oxfw_stream_get_current_formation.exit.thread137_crit_edge: ; preds = %for.end37.i100
  call void @__sanitizer_cov_trace_pc() #8
  br label %snd_oxfw_stream_get_current_formation.exit.thread137

snd_oxfw_stream_get_current_formation.exit.thread137: ; preds = %for.end37.i100.snd_oxfw_stream_get_current_formation.exit.thread137_crit_edge, %for.body25.i90.snd_oxfw_stream_get_current_formation.exit.thread137_crit_edge, %switch.hole_check.snd_oxfw_stream_get_current_formation.exit.thread137_crit_edge, %for.cond.preheader.i69.snd_oxfw_stream_get_current_formation.exit.thread137_crit_edge, %lor.lhs.false.i67.snd_oxfw_stream_get_current_formation.exit.thread137_crit_edge, %if.end7.i.snd_oxfw_stream_get_current_formation.exit.thread137_crit_edge, %if.end4.i.snd_oxfw_stream_get_current_formation.exit.thread137_crit_edge, %if.end.i.snd_oxfw_stream_get_current_formation.exit.thread137_crit_edge
  %err.0.i.ph = phi i32 [ -6, %for.cond.preheader.i69.snd_oxfw_stream_get_current_formation.exit.thread137_crit_edge ], [ -6, %for.end37.i100.snd_oxfw_stream_get_current_formation.exit.thread137_crit_edge ], [ -6, %if.end7.i.snd_oxfw_stream_get_current_formation.exit.thread137_crit_edge ], [ -6, %lor.lhs.false.i67.snd_oxfw_stream_get_current_formation.exit.thread137_crit_edge ], [ -5, %if.end4.i.snd_oxfw_stream_get_current_formation.exit.thread137_crit_edge ], [ %call.i.i, %if.end.i.snd_oxfw_stream_get_current_formation.exit.thread137_crit_edge ], [ -6, %switch.hole_check.snd_oxfw_stream_get_current_formation.exit.thread137_crit_edge ], [ -6, %for.body25.i90.snd_oxfw_stream_get_current_formation.exit.thread137_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #6
  br label %cleanup39

snd_oxfw_stream_get_current_formation.exit:       ; preds = %for.end37.i100.snd_oxfw_stream_get_current_formation.exit_crit_edge, %switch.lookup.snd_oxfw_stream_get_current_formation.exit_crit_edge
  %formation.sroa.7.4 = phi i32 [ 0, %switch.lookup.snd_oxfw_stream_get_current_formation.exit_crit_edge ], [ %formation.sroa.7.1, %for.end37.i100.snd_oxfw_stream_get_current_formation.exit_crit_edge ]
  %formation.sroa.13.4 = phi i32 [ 0, %switch.lookup.snd_oxfw_stream_get_current_formation.exit_crit_edge ], [ %formation.sroa.13.1, %for.end37.i100.snd_oxfw_stream_get_current_formation.exit_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %snd_oxfw_stream_get_current_formation.exit
  %i.0175 = phi i32 [ 0, %snd_oxfw_stream_get_current_formation.exit ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %formats.0, i32 %i.0175
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx, align 4
  %cmp6 = icmp eq ptr %26, null
  br i1 %cmp6, label %if.end25, label %if.end8

if.end8:                                          ; preds = %for.body
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %26, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -112, i8 %28)
  %cmp.not.i = icmp eq i8 %28, -112
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end8.cleanup39_crit_edge

if.end8.cleanup39_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup39

lor.lhs.false.i:                                  ; preds = %if.end8
  %arrayidx2.i = getelementptr i8, ptr %26, i32 1
  %29 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %30)
  %cmp4.not.i = icmp eq i8 %30, 64
  br i1 %cmp4.not.i, label %for.cond.preheader.i, label %lor.lhs.false.i.cleanup39_crit_edge

lor.lhs.false.i.cleanup39_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup39

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %arrayidx8.i = getelementptr i8, ptr %26, i32 2
  %31 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx8.i, align 1
  %switch.tableidx192 = add i8 %32, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %switch.tableidx192)
  %33 = icmp ult i8 %switch.tableidx192, 9
  br i1 %33, label %switch.hole_check193, label %for.cond.preheader.i.cleanup39_crit_edge

for.cond.preheader.i.cleanup39_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup39

switch.hole_check193:                             ; preds = %for.cond.preheader.i
  %switch.maskindex195 = zext i8 %switch.tableidx192 to i16
  %switch.shifted196 = lshr i16 303, %switch.maskindex195
  %34 = and i16 %switch.shifted196, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %switch.lobit197.not = icmp eq i16 %34, 0
  br i1 %switch.lobit197.not, label %switch.hole_check193.cleanup39_crit_edge, label %switch.lookup194

switch.hole_check193.cleanup39_crit_edge:         ; preds = %switch.hole_check193
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup39

switch.lookup194:                                 ; preds = %switch.hole_check193
  %35 = sext i8 %switch.tableidx192 to i32
  %switch.gep198 = getelementptr inbounds [9 x i32], ptr @switch.table.keep_resources.24, i32 0, i32 %35
  %36 = ptrtoint ptr %switch.gep198 to i32
  call void @__asan_load4_noabort(i32 %36)
  %switch.load199 = load i32, ptr %switch.gep198, align 4
  %arrayidx19.i = getelementptr [6 x i32], ptr @oxfw_rate_table, i32 0, i32 %switch.load199
  %37 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx19.i, align 4
  %arrayidx21.i = getelementptr i8, ptr %26, i32 4
  %39 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx21.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp2373.not.i = icmp eq i8 %40, 0
  br i1 %cmp2373.not.i, label %switch.lookup194.if.end13_crit_edge, label %for.body25.i.preheader

switch.lookup194.if.end13_crit_edge:              ; preds = %switch.lookup194
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

for.body25.i.preheader:                           ; preds = %switch.lookup194
  %conv22.i = zext i8 %40 to i32
  br label %for.body25.i

for.body25.i:                                     ; preds = %for.inc35.i.for.body25.i_crit_edge, %for.body25.i.preheader
  %fmt.sroa.6.0 = phi i32 [ %fmt.sroa.6.1, %for.inc35.i.for.body25.i_crit_edge ], [ 0, %for.body25.i.preheader ]
  %fmt.sroa.11.0 = phi i32 [ %fmt.sroa.11.1, %for.inc35.i.for.body25.i_crit_edge ], [ 0, %for.body25.i.preheader ]
  %e.074.i = phi i32 [ %inc36.i, %for.inc35.i.for.body25.i_crit_edge ], [ 0, %for.body25.i.preheader ]
  %mul.i = shl nuw i32 %e.074.i, 1
  %add.i = add nuw nsw i32 %mul.i, 5
  %arrayidx26.i = getelementptr i8, ptr %26, i32 %add.i
  %41 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx26.i, align 1
  %conv27.i = zext i8 %42 to i32
  %add29.i = add nuw nsw i32 %mul.i, 6
  %arrayidx30.i = getelementptr i8, ptr %26, i32 %add29.i
  %43 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx30.i, align 1
  %45 = zext i8 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.27)
  switch i8 %44, label %for.body25.i.cleanup39_crit_edge [
    i8 0, label %for.body25.i.sw.bb.i_crit_edge
    i8 6, label %for.body25.i.sw.bb.i_crit_edge208
    i8 13, label %for.body25.i.for.inc35.i_crit_edge
  ]

for.body25.i.for.inc35.i_crit_edge:               ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc35.i

for.body25.i.sw.bb.i_crit_edge208:                ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

for.body25.i.sw.bb.i_crit_edge:                   ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

for.body25.i.cleanup39_crit_edge:                 ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup39

sw.bb.i:                                          ; preds = %for.body25.i.sw.bb.i_crit_edge, %for.body25.i.sw.bb.i_crit_edge208
  %add32.i = add i32 %fmt.sroa.6.0, %conv27.i
  br label %for.inc35.i

for.inc35.i:                                      ; preds = %sw.bb.i, %for.body25.i.for.inc35.i_crit_edge
  %fmt.sroa.6.1 = phi i32 [ %add32.i, %sw.bb.i ], [ %fmt.sroa.6.0, %for.body25.i.for.inc35.i_crit_edge ]
  %fmt.sroa.11.1 = phi i32 [ %fmt.sroa.11.0, %sw.bb.i ], [ %conv27.i, %for.body25.i.for.inc35.i_crit_edge ]
  %inc36.i = add nuw nsw i32 %e.074.i, 1
  %exitcond177.not = icmp eq i32 %inc36.i, %conv22.i
  br i1 %exitcond177.not, label %for.end37.i, label %for.inc35.i.for.body25.i_crit_edge

for.inc35.i.for.body25.i_crit_edge:               ; preds = %for.inc35.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body25.i

for.end37.i:                                      ; preds = %for.inc35.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %fmt.sroa.6.1)
  %cmp39.i = icmp ugt i32 %fmt.sroa.6.1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %fmt.sroa.11.1)
  %cmp43.i = icmp ugt i32 %fmt.sroa.11.1, 1
  %or.cond167 = select i1 %cmp39.i, i1 true, i1 %cmp43.i
  br i1 %or.cond167, label %for.end37.i.cleanup39_crit_edge, label %for.end37.i.if.end13_crit_edge

for.end37.i.if.end13_crit_edge:                   ; preds = %for.end37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

for.end37.i.cleanup39_crit_edge:                  ; preds = %for.end37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup39

if.end13:                                         ; preds = %for.end37.i.if.end13_crit_edge, %switch.lookup194.if.end13_crit_edge
  %fmt.sroa.6.3 = phi i32 [ 0, %switch.lookup194.if.end13_crit_edge ], [ %fmt.sroa.6.1, %for.end37.i.if.end13_crit_edge ]
  %fmt.sroa.11.3 = phi i32 [ 0, %switch.lookup194.if.end13_crit_edge ], [ %fmt.sroa.11.1, %for.end37.i.if.end13_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %17)
  %cmp15 = icmp eq i32 %38, %17
  call void @__sanitizer_cov_trace_cmp4(i32 %fmt.sroa.6.3, i32 %formation.sroa.7.4)
  %cmp17 = icmp eq i32 %fmt.sroa.6.3, %formation.sroa.7.4
  %or.cond168 = select i1 %cmp15, i1 %cmp17, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %fmt.sroa.11.3, i32 %formation.sroa.13.4)
  %cmp20 = icmp eq i32 %fmt.sroa.11.3, %formation.sroa.13.4
  %or.cond169 = select i1 %or.cond168, i1 %cmp20, i1 false
  br i1 %or.cond169, label %for.end, label %for.inc

for.inc:                                          ; preds = %if.end13
  %inc = add nuw nsw i32 %i.0175, 1
  %exitcond178.not = icmp eq i32 %inc, 10
  br i1 %exitcond178.not, label %for.inc.cleanup39_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup39_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup39

for.end:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %i.0175)
  %cmp23 = icmp eq i32 %i.0175, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %formation.sroa.7.4)
  %cmp27 = icmp eq i32 %formation.sroa.7.4, 0
  %or.cond170 = select i1 %cmp23, i1 true, i1 %cmp27
  br i1 %or.cond170, label %for.end.cleanup39_crit_edge, label %for.end.if.end29_crit_edge

for.end.if.end29_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

for.end.cleanup39_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup39

if.end25:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %formation.sroa.7.4)
  %cmp27.old = icmp eq i32 %formation.sroa.7.4, 0
  br i1 %cmp27.old, label %if.end25.cleanup39_crit_edge, label %if.end25.if.end29_crit_edge

if.end25.if.end29_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.end25.cleanup39_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup39

if.end29:                                         ; preds = %if.end25.if.end29_crit_edge, %for.end.if.end29_crit_edge
  %mul = shl i32 %formation.sroa.13.4, 3
  %call33 = call i32 @amdtp_am824_set_parameters(ptr noundef %stream, i32 noundef %17, i32 noundef %formation.sroa.7.4, i32 noundef %mul, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.end29.cleanup39_crit_edge, label %if.end36

if.end29.cleanup39_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup39

if.end36:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %call37 = call i32 @amdtp_stream_get_max_payload(ptr noundef %stream) #6
  %call38 = call i32 @cmp_connection_reserve(ptr noundef %conn.0, i32 noundef %call37) #6
  br label %cleanup39

cleanup39:                                        ; preds = %if.end36, %if.end29.cleanup39_crit_edge, %if.end25.cleanup39_crit_edge, %for.end.cleanup39_crit_edge, %for.inc.cleanup39_crit_edge, %for.end37.i.cleanup39_crit_edge, %for.body25.i.cleanup39_crit_edge, %switch.hole_check193.cleanup39_crit_edge, %for.cond.preheader.i.cleanup39_crit_edge, %lor.lhs.false.i.cleanup39_crit_edge, %if.end8.cleanup39_crit_edge, %snd_oxfw_stream_get_current_formation.exit.thread137, %snd_oxfw_stream_get_current_formation.exit.thread
  %retval.2 = phi i32 [ %call38, %if.end36 ], [ -22, %for.end.cleanup39_crit_edge ], [ -22, %if.end25.cleanup39_crit_edge ], [ %call33, %if.end29.cleanup39_crit_edge ], [ -12, %snd_oxfw_stream_get_current_formation.exit.thread ], [ %err.0.i.ph, %snd_oxfw_stream_get_current_formation.exit.thread137 ], [ -6, %for.body25.i.cleanup39_crit_edge ], [ -6, %switch.hole_check193.cleanup39_crit_edge ], [ -22, %for.inc.cleanup39_crit_edge ], [ -6, %lor.lhs.false.i.cleanup39_crit_edge ], [ -6, %if.end8.cleanup39_crit_edge ], [ -6, %for.end37.i.cleanup39_crit_edge ], [ -6, %for.cond.preheader.i.cleanup39_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_oxfw_stream_start_duplex(ptr noundef %oxfw) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %substreams_count = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 14
  %0 = ptrtoint ptr %substreams_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %substreams_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup58_crit_edge, label %if.end

entry.cleanup58_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup58

if.end:                                           ; preds = %entry
  %rx_stream = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 13
  %packet_index.i = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 13, i32 7
  %2 = ptrtoint ptr %packet_index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %packet_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp slt i32 %3, 0
  br i1 %cmp.i, label %if.end.if.then2_crit_edge, label %lor.lhs.false

if.end.if.then2_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

lor.lhs.false:                                    ; preds = %if.end
  %packet_index.i90 = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 12, i32 7
  %4 = ptrtoint ptr %packet_index.i90 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %packet_index.i90, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i91 = icmp slt i32 %5, 0
  br i1 %cmp.i91, label %lor.lhs.false.if.then2_crit_edge, label %lor.lhs.false.if.end5_crit_edge

lor.lhs.false.if.end5_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

lor.lhs.false.if.then2_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

if.then2:                                         ; preds = %lor.lhs.false.if.then2_crit_edge, %if.end.if.then2_crit_edge
  %domain = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 21
  tail call void @amdtp_domain_stop(ptr noundef %domain) #6
  %in_conn = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 11
  tail call void @cmp_connection_break(ptr noundef %in_conn) #6
  %has_output = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 5
  %6 = ptrtoint ptr %has_output to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %has_output, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then2.if.end5_crit_edge, label %if.then3

if.then2.if.end5_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then3:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  %out_conn = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 10
  tail call void @cmp_connection_break(ptr noundef %out_conn) #6
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.then2.if.end5_crit_edge, %lor.lhs.false.if.end5_crit_edge
  %context.i = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 13, i32 4
  %8 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %context.i, align 4
  %cmp.i.i.not = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.not, label %if.then8, label %if.end5.cleanup58_crit_edge

if.end5.cleanup58_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup58

if.then8:                                         ; preds = %if.end5
  %in_conn.i = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 11
  %call.i = tail call i32 @cmp_connection_establish(ptr noundef %in_conn.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp slt i32 %call.i, 0
  br i1 %cmp1.i, label %if.then8.do.end_crit_edge, label %if.end3.i

if.then8.do.end_crit_edge:                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end3.i:                                        ; preds = %if.then8
  %domain.i = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 21
  %channel.i = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 11, i32 3, i32 3
  %10 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %channel.i, align 8
  %12 = ptrtoint ptr %in_conn.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %in_conn.i, align 8
  %call4.i = tail call i32 @amdtp_domain_add_stream(ptr noundef %domain.i, ptr noundef %rx_stream, i32 noundef %11, i32 noundef %13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.then6.i, label %if.end13

if.then6.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @cmp_connection_break(ptr noundef %in_conn.i) #6
  br label %do.end

do.end:                                           ; preds = %if.then6.i, %if.then8.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i, %if.then8.do.end_crit_edge ], [ %call4.i, %if.then6.i ]
  %unit = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 1
  %14 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %unit, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.5, i32 noundef %retval.0.i.ph) #9
  br label %error

if.end13:                                         ; preds = %if.end3.i
  %has_output14 = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 5
  %16 = ptrtoint ptr %has_output14 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %has_output14, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool15.not = icmp eq i8 %17, 0
  br i1 %tobool15.not, label %if.end13.if.end38_crit_edge, label %land.lhs.true

if.end13.if.end38_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

land.lhs.true:                                    ; preds = %if.end13
  %tx_stream16 = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 12
  %context.i92 = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 12, i32 4
  %18 = ptrtoint ptr %context.i92 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %context.i92, align 4
  %cmp.i.i93.not = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i93.not, label %if.then18, label %land.lhs.true.if.end38_crit_edge

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then18:                                        ; preds = %land.lhs.true
  %out_conn.i96 = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 10
  %call.i97 = tail call i32 @cmp_connection_establish(ptr noundef %out_conn.i96) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97)
  %cmp1.i98 = icmp slt i32 %call.i97, 0
  br i1 %cmp1.i98, label %if.then18.do.end25_crit_edge, label %if.end3.i103

if.then18.do.end25_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end25

if.end3.i103:                                     ; preds = %if.then18
  %channel.i100 = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 10, i32 3, i32 3
  %20 = ptrtoint ptr %channel.i100 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %channel.i100, align 8
  %22 = ptrtoint ptr %out_conn.i96 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %out_conn.i96, align 8
  %call4.i101 = tail call i32 @amdtp_domain_add_stream(ptr noundef %domain.i, ptr noundef %tx_stream16, i32 noundef %21, i32 noundef %23) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i101)
  %cmp5.i102 = icmp slt i32 %call4.i101, 0
  br i1 %cmp5.i102, label %if.then6.i104, label %if.end28

if.then6.i104:                                    ; preds = %if.end3.i103
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @cmp_connection_break(ptr noundef %out_conn.i96) #6
  br label %do.end25

do.end25:                                         ; preds = %if.then6.i104, %if.then18.do.end25_crit_edge
  %retval.0.i105.ph = phi i32 [ %call.i97, %if.then18.do.end25_crit_edge ], [ %call4.i101, %if.then6.i104 ]
  %unit26 = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 1
  %24 = ptrtoint ptr %unit26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %unit26, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.8, i32 noundef %retval.0.i105.ph) #9
  br label %error

if.end28:                                         ; preds = %if.end3.i103
  %quirks = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 4
  %26 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %quirks, align 8
  %and = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool29.not = icmp eq i32 %and, 0
  br i1 %tobool29.not, label %if.else, label %if.end28.if.end38_crit_edge

if.end28.if.end38_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.else:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %and32 = and i32 %27, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  %. = select i1 %tobool33.not, i32 0, i32 4000
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.end28.if.end38_crit_edge, %land.lhs.true.if.end38_crit_edge, %if.end13.if.end38_crit_edge
  %tx_init_skip_cycles.0 = phi i32 [ 0, %land.lhs.true.if.end38_crit_edge ], [ 0, %if.end13.if.end38_crit_edge ], [ 400, %if.end28.if.end38_crit_edge ], [ %., %if.else ]
  %replay_seq.0.off0 = phi i1 [ false, %land.lhs.true.if.end38_crit_edge ], [ false, %if.end13.if.end38_crit_edge ], [ false, %if.end28.if.end38_crit_edge ], [ %tobool33.not, %if.else ]
  %call41 = tail call i32 @amdtp_domain_start(ptr noundef %domain.i, i32 noundef %tx_init_skip_cycles.0, i1 noundef zeroext %replay_seq.0.off0, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.end38.error_crit_edge, label %for.cond.i.preheader

if.end38.error_crit_edge:                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

for.cond.i.preheader:                             ; preds = %if.end38
  %28 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn.i124 = load ptr, ptr %domain.i, align 4
  %cmp.not.i125 = icmp eq ptr %.pn.i124, %domain.i
  br i1 %cmp.not.i125, label %for.cond.i.preheader.cleanup58_crit_edge, label %for.cond.i.preheader.for.body.i_crit_edge

for.cond.i.preheader.for.body.i_crit_edge:        ; preds = %for.cond.i.preheader
  br label %for.body.i

for.cond.i.preheader.cleanup58_crit_edge:         ; preds = %for.cond.i.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup58

for.body.i:                                       ; preds = %for.cond.i.backedge.for.body.i_crit_edge, %for.cond.i.preheader.for.body.i_crit_edge
  %.pn.i126 = phi ptr [ %.pn.i, %for.cond.i.backedge.for.body.i_crit_edge ], [ %.pn.i124, %for.cond.i.preheader.for.body.i_crit_edge ]
  call void @__might_sleep(ptr noundef nonnull @.str.14, i32 noundef 348) #6
  %ready_processing.i = getelementptr i8, ptr %.pn.i126, i32 -76
  %29 = ptrtoint ptr %ready_processing.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ready_processing.i, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i = icmp eq i8 %30, 0
  br i1 %tobool.not.i, label %if.then12.i, label %for.body.i.for.cond.i.backedge_crit_edge

for.body.i.for.cond.i.backedge_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i.backedge

if.then12.i:                                      ; preds = %for.body.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #6
  %31 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #6
  %ready_wait.i = getelementptr i8, ptr %.pn.i126, i32 -72
  %call1511.i = call i32 @prepare_to_wait_event(ptr noundef %ready_wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #6
  %32 = ptrtoint ptr %ready_processing.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %ready_processing.i, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool18.not12.not.i = icmp eq i8 %33, 0
  br i1 %tobool18.not12.not.i, label %if.then12.i.if.end34.i_crit_edge, label %if.then12.i.for.end.i_crit_edge

if.then12.i.for.end.i_crit_edge:                  ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

if.then12.i.if.end34.i_crit_edge:                 ; preds = %if.then12.i
  br label %if.end34.i

if.end34.i:                                       ; preds = %cleanup.i.if.end34.i_crit_edge, %if.then12.i.if.end34.i_crit_edge
  %__ret13.115.i = phi i32 [ %__ret13.1.i, %cleanup.i.if.end34.i_crit_edge ], [ 60, %if.then12.i.if.end34.i_crit_edge ]
  %call1514.i = phi i32 [ %call15.i, %cleanup.i.if.end34.i_crit_edge ], [ %call1511.i, %if.then12.i.if.end34.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1514.i)
  %tobool35.not.i = icmp eq i32 %call1514.i, 0
  br i1 %tobool35.not.i, label %cleanup.i, label %if.end34.i.if.end41.i_crit_edge

if.end34.i.if.end41.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41.i

cleanup.i:                                        ; preds = %if.end34.i
  %call38.i = call i32 @schedule_timeout(i32 noundef %__ret13.115.i) #6
  %call15.i = call i32 @prepare_to_wait_event(ptr noundef %ready_wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #6
  %34 = ptrtoint ptr %ready_processing.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %ready_processing.i, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool18.not.i = icmp eq i8 %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool22.not.i = icmp eq i32 %call38.i, 0
  %spec.store.select56.i = select i1 %tobool22.not.i, i32 1, i32 %call38.i
  %__ret13.1.i = select i1 %tobool18.not.i, i32 %call38.i, i32 %spec.store.select56.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret13.1.i)
  %tobool28.not.i = icmp eq i32 %__ret13.1.i, 0
  %not.tobool18.not.i = xor i1 %tobool18.not.i, true
  %36 = select i1 %not.tobool18.not.i, i1 true, i1 %tobool28.not.i
  br i1 %36, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.if.end34.i_crit_edge

cleanup.i.if.end34.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %if.then12.i.for.end.i_crit_edge
  %__ret13.1.lcssa.i = phi i32 [ 60, %if.then12.i.for.end.i_crit_edge ], [ %__ret13.1.i, %cleanup.i.for.end.i_crit_edge ]
  call void @finish_wait(ptr noundef %ready_wait.i, ptr noundef nonnull %__wq_entry.i) #6
  br label %if.end41.i

if.end41.i:                                       ; preds = %for.end.i, %if.end34.i.if.end41.i_crit_edge
  %__ret13.23.i = phi i32 [ %__ret13.1.lcssa.i, %for.end.i ], [ %call1514.i, %if.end34.i.if.end41.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %__ret13.23.i)
  %cmp43.i = icmp slt i32 %__ret13.23.i, 1
  br i1 %cmp43.i, label %if.end41.i.error_crit_edge, label %if.end41.i.for.cond.i.backedge_crit_edge

if.end41.i.for.cond.i.backedge_crit_edge:         ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i.backedge

if.end41.i.error_crit_edge:                       ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

for.cond.i.backedge:                              ; preds = %if.end41.i.for.cond.i.backedge_crit_edge, %for.body.i.for.cond.i.backedge_crit_edge
  %37 = ptrtoint ptr %.pn.i126 to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn.i = load ptr, ptr %.pn.i126, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %domain.i
  br i1 %cmp.not.i, label %for.cond.i.backedge.cleanup58_crit_edge, label %for.cond.i.backedge.for.body.i_crit_edge

for.cond.i.backedge.for.body.i_crit_edge:         ; preds = %for.cond.i.backedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.cond.i.backedge.cleanup58_crit_edge:          ; preds = %for.cond.i.backedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup58

error:                                            ; preds = %if.end41.i.error_crit_edge, %if.end38.error_crit_edge, %do.end25, %do.end
  %err.0.ph = phi i32 [ %call41, %if.end38.error_crit_edge ], [ %retval.0.i105.ph, %do.end25 ], [ %retval.0.i.ph, %do.end ], [ -110, %if.end41.i.error_crit_edge ]
  %domain51 = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 21
  call void @amdtp_domain_stop(ptr noundef %domain51) #6
  call void @cmp_connection_break(ptr noundef %in_conn.i) #6
  %has_output53 = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 5
  %38 = ptrtoint ptr %has_output53 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %has_output53, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool54.not = icmp eq i8 %39, 0
  br i1 %tobool54.not, label %error.cleanup58_crit_edge, label %if.then55

error.cleanup58_crit_edge:                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup58

if.then55:                                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #8
  %out_conn56 = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 10
  call void @cmp_connection_break(ptr noundef %out_conn56) #6
  br label %cleanup58

cleanup58:                                        ; preds = %if.then55, %error.cleanup58_crit_edge, %for.cond.i.backedge.cleanup58_crit_edge, %for.cond.i.preheader.cleanup58_crit_edge, %if.end5.cleanup58_crit_edge, %entry.cleanup58_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup58_crit_edge ], [ 0, %if.end5.cleanup58_crit_edge ], [ %err.0.ph, %if.then55 ], [ %err.0.ph, %error.cleanup58_crit_edge ], [ 0, %for.cond.i.preheader.cleanup58_crit_edge ], [ 0, %for.cond.i.backedge.cleanup58_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_domain_start(ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_oxfw_stream_stop_duplex(ptr noundef %oxfw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %substreams_count = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 14
  %0 = ptrtoint ptr %substreams_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %substreams_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then:                                          ; preds = %entry
  %domain = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 21
  tail call void @amdtp_domain_stop(ptr noundef %domain) #6
  %in_conn = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 11
  tail call void @cmp_connection_break(ptr noundef %in_conn) #6
  tail call void @cmp_connection_release(ptr noundef %in_conn) #6
  %has_output = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 5
  %2 = ptrtoint ptr %has_output to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %has_output, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then.if.end4_crit_edge, label %if.then2

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %out_conn = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 10
  tail call void @cmp_connection_break(ptr noundef %out_conn) #6
  tail call void @cmp_connection_release(ptr noundef %out_conn) #6
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_oxfw_stream_init_duplex(ptr noundef %oxfw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_stream = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 13
  %quirks.i = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 4
  %0 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %quirks.i, align 8
  %in_conn.i = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 11
  %unit.i = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 1
  %2 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %unit.i, align 4
  %call.i = tail call i32 @cmp_connection_init(ptr noundef %in_conn.i, ptr noundef %3, i32 noundef 0, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp23.i = icmp slt i32 %call.i, 0
  br i1 %cmp23.i, label %entry.cleanup_crit_edge, label %if.end25.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end25.i:                                       ; preds = %entry
  %and3.i = shl i32 %1, 6
  %4 = and i32 %and3.i, 1024
  %and.i = lshr i32 %1, 2
  %and.lobit.i = and i32 %and.i, 1
  %5 = or i32 %4, %and.lobit.i
  %6 = xor i32 %5, 1024
  %7 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %unit.i, align 4
  %call27.i = tail call i32 @amdtp_am824_init(ptr noundef %rx_stream, ptr noundef %8, i32 noundef 0, i32 noundef %6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %cmp28.i = icmp slt i32 %call27.i, 0
  br i1 %cmp28.i, label %if.end25.i.cleanup.sink.split_crit_edge, label %if.end

if.end25.i.cleanup.sink.split_crit_edge:          ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.end25.i
  %has_output = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 5
  %9 = ptrtoint ptr %has_output to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %has_output, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %if.then1

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then1:                                         ; preds = %if.end
  %11 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %quirks.i, align 8
  %out_conn.i = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 10
  %13 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %unit.i, align 4
  %call.i41 = tail call i32 @cmp_connection_init(ptr noundef %out_conn.i, ptr noundef %14, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41)
  %cmp23.i42 = icmp slt i32 %call.i41, 0
  br i1 %cmp23.i42, label %if.then1.cleanup.sink.split.sink.split_crit_edge, label %if.end25.i45

if.then1.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.sink.split

if.end25.i45:                                     ; preds = %if.then1
  %and16.i = shl i32 %12, 2
  %15 = and i32 %and16.i, 8
  %and3.i38 = shl i32 %12, 6
  %16 = and i32 %and3.i38, 64
  %17 = and i32 %and3.i38, 1024
  %and.i36 = lshr i32 %12, 2
  %and.lobit.i37 = and i32 %and.i36, 1
  %18 = or i32 %17, %and.lobit.i37
  %19 = or i32 %18, %16
  %20 = or i32 %19, %15
  %21 = xor i32 %20, 1024
  %tx_stream = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 12
  %22 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %unit.i, align 4
  %call27.i43 = tail call i32 @amdtp_am824_init(ptr noundef %tx_stream, ptr noundef %23, i32 noundef 1, i32 noundef %21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i43)
  %cmp28.i44 = icmp slt i32 %call27.i43, 0
  br i1 %cmp28.i44, label %if.then29.i46, label %if.end25.i45.if.end7_crit_edge

if.end25.i45.if.end7_crit_edge:                   ; preds = %if.end25.i45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then29.i46:                                    ; preds = %if.end25.i45
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @cmp_connection_destroy(ptr noundef %out_conn.i) #6
  br label %cleanup.sink.split.sink.split

if.end7:                                          ; preds = %if.end25.i45.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %domain = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 21
  %call8 = tail call i32 @amdtp_domain_init(ptr noundef %domain) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then10:                                        ; preds = %if.end7
  tail call void @amdtp_stream_destroy(ptr noundef %rx_stream) #6
  tail call void @cmp_connection_destroy(ptr noundef %in_conn.i) #6
  %24 = ptrtoint ptr %has_output to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %has_output, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool13.not = icmp eq i8 %25, 0
  br i1 %tobool13.not, label %if.then10.cleanup_crit_edge, label %if.then14

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then14:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  %tx_stream15 = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 12
  %out_conn.i56 = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 10
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %if.then14, %if.then29.i46, %if.then1.cleanup.sink.split.sink.split_crit_edge
  %rx_stream.sink = phi ptr [ %tx_stream15, %if.then14 ], [ %rx_stream, %if.then29.i46 ], [ %rx_stream, %if.then1.cleanup.sink.split.sink.split_crit_edge ]
  %in_conn.i.sink.ph = phi ptr [ %out_conn.i56, %if.then14 ], [ %in_conn.i, %if.then29.i46 ], [ %in_conn.i, %if.then1.cleanup.sink.split.sink.split_crit_edge ]
  %retval.0.ph.ph = phi i32 [ %call8, %if.then14 ], [ %call27.i43, %if.then29.i46 ], [ %call.i41, %if.then1.cleanup.sink.split.sink.split_crit_edge ]
  tail call void @amdtp_stream_destroy(ptr noundef %rx_stream.sink) #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.end25.i.cleanup.sink.split_crit_edge
  %in_conn.i.sink = phi ptr [ %in_conn.i, %if.end25.i.cleanup.sink.split_crit_edge ], [ %in_conn.i.sink.ph, %cleanup.sink.split.sink.split ]
  %retval.0.ph = phi i32 [ %call27.i, %if.end25.i.cleanup.sink.split_crit_edge ], [ %retval.0.ph.ph, %cleanup.sink.split.sink.split ]
  tail call void @cmp_connection_destroy(ptr noundef %in_conn.i.sink) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then10.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.then10.cleanup_crit_edge ], [ %call8, %if.end7.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_domain_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_oxfw_stream_destroy_duplex(ptr noundef %oxfw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %domain = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 21
  tail call void @amdtp_domain_destroy(ptr noundef %domain) #6
  %rx_stream = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 13
  %in_conn.i = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 11
  tail call void @amdtp_stream_destroy(ptr noundef %rx_stream) #6
  tail call void @cmp_connection_destroy(ptr noundef %in_conn.i) #6
  %has_output = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 5
  %0 = ptrtoint ptr %has_output to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %has_output, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %tx_stream = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 12
  %out_conn.i7 = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 10
  tail call void @amdtp_stream_destroy(ptr noundef %tx_stream) #6
  tail call void @cmp_connection_destroy(ptr noundef %out_conn.i7) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdtp_domain_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_oxfw_stream_update_duplex(ptr noundef %oxfw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %domain = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 21
  tail call void @amdtp_domain_stop(ptr noundef %domain) #6
  %in_conn = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 11
  tail call void @cmp_connection_break(ptr noundef %in_conn) #6
  %rx_stream = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 13
  tail call void @amdtp_stream_pcm_abort(ptr noundef %rx_stream) #6
  %has_output = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 5
  %0 = ptrtoint ptr %has_output to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %has_output, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %out_conn = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 10
  tail call void @cmp_connection_break(ptr noundef %out_conn) #6
  %tx_stream = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 12
  tail call void @amdtp_stream_pcm_abort(ptr noundef %tx_stream) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdtp_stream_pcm_abort(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_oxfw_stream_parse_format(ptr nocapture noundef readonly %format, ptr nocapture noundef %formation) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %formation, i32 0, i32 12)
  %1 = ptrtoint ptr %format to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %format, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -112, i8 %2)
  %cmp.not = icmp eq i8 %2, -112
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx2 = getelementptr i8, ptr %format, i32 1
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %4)
  %cmp4.not = icmp eq i8 %4, 64
  br i1 %cmp4.not, label %for.cond.preheader, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false
  %arrayidx8 = getelementptr i8, ptr %format, i32 2
  %5 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx8, align 1
  %switch.tableidx = add i8 %6, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %switch.tableidx)
  %7 = icmp ult i8 %switch.tableidx, 9
  br i1 %7, label %switch.hole_check, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.hole_check:                                ; preds = %for.cond.preheader
  %switch.maskindex = zext i8 %switch.tableidx to i16
  %switch.shifted = lshr i16 303, %switch.maskindex
  %8 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %switch.lobit.not = icmp eq i16 %8, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %9 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.snd_oxfw_stream_parse_format, i32 0, i32 %9
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load i32, ptr %switch.gep, align 4
  %arrayidx19 = getelementptr [6 x i32], ptr @oxfw_rate_table, i32 0, i32 %switch.load
  %11 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx19, align 4
  %13 = ptrtoint ptr %formation to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %formation, align 4
  %arrayidx21 = getelementptr i8, ptr %format, i32 4
  %14 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx21, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp2373.not = icmp eq i8 %15, 0
  br i1 %cmp2373.not, label %switch.lookup.for.end37_crit_edge, label %for.body25.lr.ph

switch.lookup.for.end37_crit_edge:                ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end37

for.body25.lr.ph:                                 ; preds = %switch.lookup
  %midi = getelementptr inbounds %struct.snd_oxfw_stream_formation, ptr %formation, i32 0, i32 2
  %pcm = getelementptr inbounds %struct.snd_oxfw_stream_formation, ptr %formation, i32 0, i32 1
  br label %for.body25

for.body25:                                       ; preds = %for.inc35.for.body25_crit_edge, %for.body25.lr.ph
  %e.074 = phi i32 [ 0, %for.body25.lr.ph ], [ %inc36, %for.inc35.for.body25_crit_edge ]
  %mul = shl nuw i32 %e.074, 1
  %add = add nuw nsw i32 %mul, 5
  %arrayidx26 = getelementptr i8, ptr %format, i32 %add
  %16 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %17 to i32
  %add29 = add nuw nsw i32 %mul, 6
  %arrayidx30 = getelementptr i8, ptr %format, i32 %add29
  %18 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx30, align 1
  %20 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.28)
  switch i8 %19, label %for.body25.cleanup_crit_edge [
    i8 0, label %for.body25.sw.bb_crit_edge
    i8 6, label %for.body25.sw.bb_crit_edge80
    i8 13, label %sw.bb33
  ]

for.body25.sw.bb_crit_edge80:                     ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

for.body25.sw.bb_crit_edge:                       ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

for.body25.cleanup_crit_edge:                     ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %for.body25.sw.bb_crit_edge, %for.body25.sw.bb_crit_edge80
  %21 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pcm, align 4
  %add32 = add i32 %22, %conv27
  store i32 %add32, ptr %pcm, align 4
  br label %for.inc35

sw.bb33:                                          ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %midi to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv27, ptr %midi, align 4
  br label %for.inc35

for.inc35:                                        ; preds = %sw.bb33, %sw.bb
  %inc36 = add nuw nsw i32 %e.074, 1
  %24 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %25 to i32
  %cmp23 = icmp ult i32 %inc36, %conv22
  br i1 %cmp23, label %for.inc35.for.body25_crit_edge, label %for.inc35.for.end37_crit_edge

for.inc35.for.end37_crit_edge:                    ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end37

for.inc35.for.body25_crit_edge:                   ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body25

for.end37:                                        ; preds = %for.inc35.for.end37_crit_edge, %switch.lookup.for.end37_crit_edge
  %pcm38 = getelementptr inbounds %struct.snd_oxfw_stream_formation, ptr %formation, i32 0, i32 1
  %26 = ptrtoint ptr %pcm38 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pcm38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %27)
  %cmp39 = icmp ugt i32 %27, 64
  br i1 %cmp39, label %for.end37.cleanup_crit_edge, label %lor.lhs.false41

for.end37.cleanup_crit_edge:                      ; preds = %for.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false41:                                  ; preds = %for.end37
  call void @__sanitizer_cov_trace_pc() #8
  %midi42 = getelementptr inbounds %struct.snd_oxfw_stream_formation, ptr %formation, i32 0, i32 2
  %28 = ptrtoint ptr %midi42 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %midi42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp43 = icmp ugt i32 %29, 1
  %spec.select = select i1 %cmp43, i32 -6, i32 0
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false41, %for.end37.cleanup_crit_edge, %for.body25.cleanup_crit_edge, %switch.hole_check.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %lor.lhs.false.cleanup_crit_edge ], [ -6, %entry.cleanup_crit_edge ], [ -6, %for.end37.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false41 ], [ -6, %for.cond.preheader.cleanup_crit_edge ], [ -6, %switch.hole_check.cleanup_crit_edge ], [ -6, %for.body25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_oxfw_stream_discover(ptr nocapture noundef %oxfw) local_unnamed_addr #0 align 64 {
entry:
  %plugs = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %plugs) #6
  %unit = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 1
  %0 = ptrtoint ptr %plugs to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %plugs, align 4
  %1 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %unit, align 4
  %call = call i32 @avc_general_get_plug_info(ptr noundef %2, i32 noundef 31, i32 noundef 7, i32 noundef 0, ptr noundef nonnull %plugs) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %unit, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.10, i32 noundef %call) #9
  br label %end

if.else:                                          ; preds = %entry
  %5 = getelementptr inbounds [4 x i8], ptr %plugs, i32 0, i32 1
  %6 = ptrtoint ptr %plugs to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %plugs, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp2 = icmp eq i8 %7, 0
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp6 = icmp eq i8 %9, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %if.else
  br i1 %cmp6, label %land.lhs.true.end_crit_edge, label %land.lhs.true.if.then14_crit_edge

land.lhs.true.if.then14_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14

land.lhs.true.end_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %end

if.end9:                                          ; preds = %if.else
  br i1 %cmp6, label %if.end9.if.then46_crit_edge, label %if.end9.if.then14_crit_edge

if.end9.if.then14_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14

if.end9.if.then46_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then46

if.then14:                                        ; preds = %if.end9.if.then14_crit_edge, %land.lhs.true.if.then14_crit_edge
  %call15 = call fastcc i32 @fill_stream_formats(ptr noundef %oxfw, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.then18, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then14
  %midi_input_ports = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 15
  br label %for.body

if.then18:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %call15)
  %cmp19.not = icmp eq i32 %call15, -6
  br i1 %cmp19.not, label %if.then18.if.end41_crit_edge, label %if.then18.cleanup_crit_edge

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then18.if.end41_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %err.0219 = phi i32 [ %call15, %for.cond.preheader ], [ %err.1, %for.inc.for.body_crit_edge ]
  %i.0218 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx26 = getelementptr %struct.snd_oxfw, ptr %oxfw, i32 0, i32 7, i32 %i.0218
  %10 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx26, align 4
  %cmp27 = icmp eq ptr %11, null
  br i1 %cmp27, label %for.body.for.inc_crit_edge, label %if.end30

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end30:                                         ; preds = %for.body
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -112, i8 %13)
  %cmp.not.i = icmp eq i8 %13, -112
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end30.for.inc_crit_edge

if.end30.for.inc_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

lor.lhs.false.i:                                  ; preds = %if.end30
  %arrayidx2.i = getelementptr i8, ptr %11, i32 1
  %14 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %15)
  %cmp4.not.i = icmp eq i8 %15, 64
  br i1 %cmp4.not.i, label %for.cond.preheader.i, label %lor.lhs.false.i.for.inc_crit_edge

lor.lhs.false.i.for.inc_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %arrayidx8.i = getelementptr i8, ptr %11, i32 2
  %16 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx8.i, align 1
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.29)
  switch i8 %17, label %for.cond.preheader.i.for.inc_crit_edge [
    i8 2, label %for.cond.preheader.i.if.end18.i_crit_edge
    i8 3, label %for.cond.preheader.i.if.end18.i_crit_edge225
    i8 4, label %for.cond.preheader.i.if.end18.i_crit_edge226
    i8 10, label %for.cond.preheader.i.if.end18.i_crit_edge227
    i8 5, label %for.cond.preheader.i.if.end18.i_crit_edge228
    i8 7, label %for.cond.preheader.i.if.end18.i_crit_edge229
  ]

for.cond.preheader.i.if.end18.i_crit_edge229:     ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i

for.cond.preheader.i.if.end18.i_crit_edge228:     ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i

for.cond.preheader.i.if.end18.i_crit_edge227:     ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i

for.cond.preheader.i.if.end18.i_crit_edge226:     ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i

for.cond.preheader.i.if.end18.i_crit_edge225:     ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i

for.cond.preheader.i.if.end18.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i

for.cond.preheader.i.for.inc_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end18.i:                                       ; preds = %for.cond.preheader.i.if.end18.i_crit_edge, %for.cond.preheader.i.if.end18.i_crit_edge225, %for.cond.preheader.i.if.end18.i_crit_edge226, %for.cond.preheader.i.if.end18.i_crit_edge227, %for.cond.preheader.i.if.end18.i_crit_edge228, %for.cond.preheader.i.if.end18.i_crit_edge229
  %arrayidx21.i = getelementptr i8, ptr %11, i32 4
  %19 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx21.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp2373.not.i = icmp eq i8 %20, 0
  br i1 %cmp2373.not.i, label %if.end18.i.for.inc_crit_edge, label %for.body25.i.preheader

if.end18.i.for.inc_crit_edge:                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.body25.i.preheader:                           ; preds = %if.end18.i
  %conv22.i = zext i8 %20 to i32
  br label %for.body25.i

for.body25.i:                                     ; preds = %for.inc35.i.for.body25.i_crit_edge, %for.body25.i.preheader
  %formation.sroa.7.1 = phi i32 [ %formation.sroa.7.2, %for.inc35.i.for.body25.i_crit_edge ], [ 0, %for.body25.i.preheader ]
  %formation.sroa.14.1 = phi i32 [ %formation.sroa.14.2, %for.inc35.i.for.body25.i_crit_edge ], [ 0, %for.body25.i.preheader ]
  %e.074.i = phi i32 [ %inc36.i, %for.inc35.i.for.body25.i_crit_edge ], [ 0, %for.body25.i.preheader ]
  %mul.i = shl nuw i32 %e.074.i, 1
  %add.i = add nuw nsw i32 %mul.i, 5
  %arrayidx26.i = getelementptr i8, ptr %11, i32 %add.i
  %21 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx26.i, align 1
  %conv27.i = zext i8 %22 to i32
  %add29.i = add nuw nsw i32 %mul.i, 6
  %arrayidx30.i = getelementptr i8, ptr %11, i32 %add29.i
  %23 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx30.i, align 1
  %25 = zext i8 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.30)
  switch i8 %24, label %for.body25.i.for.inc_crit_edge [
    i8 0, label %for.body25.i.sw.bb.i_crit_edge
    i8 6, label %for.body25.i.sw.bb.i_crit_edge230
    i8 13, label %for.body25.i.for.inc35.i_crit_edge
  ]

for.body25.i.for.inc35.i_crit_edge:               ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc35.i

for.body25.i.sw.bb.i_crit_edge230:                ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

for.body25.i.sw.bb.i_crit_edge:                   ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

for.body25.i.for.inc_crit_edge:                   ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

sw.bb.i:                                          ; preds = %for.body25.i.sw.bb.i_crit_edge, %for.body25.i.sw.bb.i_crit_edge230
  %add32.i = add i32 %formation.sroa.7.1, %conv27.i
  br label %for.inc35.i

for.inc35.i:                                      ; preds = %sw.bb.i, %for.body25.i.for.inc35.i_crit_edge
  %formation.sroa.7.2 = phi i32 [ %add32.i, %sw.bb.i ], [ %formation.sroa.7.1, %for.body25.i.for.inc35.i_crit_edge ]
  %formation.sroa.14.2 = phi i32 [ %formation.sroa.14.1, %sw.bb.i ], [ %conv27.i, %for.body25.i.for.inc35.i_crit_edge ]
  %inc36.i = add nuw nsw i32 %e.074.i, 1
  %exitcond.not = icmp eq i32 %inc36.i, %conv22.i
  br i1 %exitcond.not, label %for.end37.i, label %for.inc35.i.for.body25.i_crit_edge

for.inc35.i.for.body25.i_crit_edge:               ; preds = %for.inc35.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body25.i

for.end37.i:                                      ; preds = %for.inc35.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %formation.sroa.7.2)
  %cmp39.i = icmp ugt i32 %formation.sroa.7.2, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %formation.sroa.14.2)
  %cmp43.i = icmp ugt i32 %formation.sroa.14.2, 1
  %or.cond = select i1 %cmp39.i, i1 true, i1 %cmp43.i
  br i1 %or.cond, label %for.end37.i.for.inc_crit_edge, label %if.end35

for.end37.i.for.inc_crit_edge:                    ; preds = %for.end37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end35:                                         ; preds = %for.end37.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %formation.sroa.14.2)
  %cmp36.not = icmp eq i32 %formation.sroa.14.2, 0
  br i1 %cmp36.not, label %if.end35.for.inc_crit_edge, label %if.then38

if.end35.for.inc_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %midi_input_ports to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %midi_input_ports, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then38, %if.end35.for.inc_crit_edge, %for.end37.i.for.inc_crit_edge, %for.body25.i.for.inc_crit_edge, %if.end18.i.for.inc_crit_edge, %for.cond.preheader.i.for.inc_crit_edge, %lor.lhs.false.i.for.inc_crit_edge, %if.end30.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %err.1 = phi i32 [ %err.0219, %for.body.for.inc_crit_edge ], [ 0, %if.then38 ], [ 0, %if.end35.for.inc_crit_edge ], [ 0, %if.end18.i.for.inc_crit_edge ], [ -6, %lor.lhs.false.i.for.inc_crit_edge ], [ -6, %if.end30.for.inc_crit_edge ], [ -6, %for.end37.i.for.inc_crit_edge ], [ -6, %for.cond.preheader.i.for.inc_crit_edge ], [ -6, %for.body25.i.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0218, 1
  %exitcond222.not = icmp eq i32 %inc, 10
  br i1 %exitcond222.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %has_output = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 5
  %27 = ptrtoint ptr %has_output to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %has_output, align 4
  br label %if.end41

if.end41:                                         ; preds = %for.end, %if.then18.if.end41_crit_edge
  %err.2.ph = phi i32 [ 0, %if.then18.if.end41_crit_edge ], [ %err.1, %for.end ]
  %28 = ptrtoint ptr %plugs to i32
  call void @__asan_load1_noabort(i32 %28)
  %.pr188 = load i8, ptr %plugs, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr188)
  %cmp44.not = icmp eq i8 %.pr188, 0
  br i1 %cmp44.not, label %if.end41.end_crit_edge, label %if.end41.if.then46_crit_edge

if.end41.if.then46_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then46

if.end41.end_crit_edge:                           ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %end

if.then46:                                        ; preds = %if.end41.if.then46_crit_edge, %if.end9.if.then46_crit_edge
  %call47 = call fastcc i32 @fill_stream_formats(ptr noundef %oxfw, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %if.then50, label %for.cond56.preheader

for.cond56.preheader:                             ; preds = %if.then46
  %midi_output_ports = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 16
  br label %for.body59

if.then50:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %call47)
  %cmp51.not = icmp eq i32 %call47, -6
  br i1 %cmp51.not, label %if.then50.end_crit_edge, label %if.then50.cleanup_crit_edge

if.then50.cleanup_crit_edge:                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then50.end_crit_edge:                          ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #8
  br label %end

for.body59:                                       ; preds = %for.inc75.for.body59_crit_edge, %for.cond56.preheader
  %err.3221 = phi i32 [ %call47, %for.cond56.preheader ], [ %err.4, %for.inc75.for.body59_crit_edge ]
  %i.1220 = phi i32 [ 0, %for.cond56.preheader ], [ %inc76, %for.inc75.for.body59_crit_edge ]
  %arrayidx60 = getelementptr %struct.snd_oxfw, ptr %oxfw, i32 0, i32 8, i32 %i.1220
  %29 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx60, align 4
  %cmp61 = icmp eq ptr %30, null
  br i1 %cmp61, label %for.body59.for.inc75_crit_edge, label %if.end64

for.body59.for.inc75_crit_edge:                   ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc75

if.end64:                                         ; preds = %for.body59
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %30, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -112, i8 %32)
  %cmp.not.i112 = icmp eq i8 %32, -112
  br i1 %cmp.not.i112, label %lor.lhs.false.i115, label %if.end64.for.inc75_crit_edge

if.end64.for.inc75_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc75

lor.lhs.false.i115:                               ; preds = %if.end64
  %arrayidx2.i113 = getelementptr i8, ptr %30, i32 1
  %33 = ptrtoint ptr %arrayidx2.i113 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx2.i113, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %34)
  %cmp4.not.i114 = icmp eq i8 %34, 64
  br i1 %cmp4.not.i114, label %for.cond.preheader.i117, label %lor.lhs.false.i115.for.inc75_crit_edge

lor.lhs.false.i115.for.inc75_crit_edge:           ; preds = %lor.lhs.false.i115
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc75

for.cond.preheader.i117:                          ; preds = %lor.lhs.false.i115
  %arrayidx8.i116 = getelementptr i8, ptr %30, i32 2
  %35 = ptrtoint ptr %arrayidx8.i116 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx8.i116, align 1
  %37 = zext i8 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.31)
  switch i8 %36, label %for.cond.preheader.i117.for.inc75_crit_edge [
    i8 2, label %for.cond.preheader.i117.if.end18.i127_crit_edge
    i8 3, label %for.cond.preheader.i117.if.end18.i127_crit_edge231
    i8 4, label %for.cond.preheader.i117.if.end18.i127_crit_edge232
    i8 10, label %for.cond.preheader.i117.if.end18.i127_crit_edge233
    i8 5, label %for.cond.preheader.i117.if.end18.i127_crit_edge234
    i8 7, label %for.cond.preheader.i117.if.end18.i127_crit_edge235
  ]

for.cond.preheader.i117.if.end18.i127_crit_edge235: ; preds = %for.cond.preheader.i117
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i127

for.cond.preheader.i117.if.end18.i127_crit_edge234: ; preds = %for.cond.preheader.i117
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i127

for.cond.preheader.i117.if.end18.i127_crit_edge233: ; preds = %for.cond.preheader.i117
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i127

for.cond.preheader.i117.if.end18.i127_crit_edge232: ; preds = %for.cond.preheader.i117
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i127

for.cond.preheader.i117.if.end18.i127_crit_edge231: ; preds = %for.cond.preheader.i117
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i127

for.cond.preheader.i117.if.end18.i127_crit_edge:  ; preds = %for.cond.preheader.i117
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i127

for.cond.preheader.i117.for.inc75_crit_edge:      ; preds = %for.cond.preheader.i117
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc75

if.end18.i127:                                    ; preds = %for.cond.preheader.i117.if.end18.i127_crit_edge, %for.cond.preheader.i117.if.end18.i127_crit_edge231, %for.cond.preheader.i117.if.end18.i127_crit_edge232, %for.cond.preheader.i117.if.end18.i127_crit_edge233, %for.cond.preheader.i117.if.end18.i127_crit_edge234, %for.cond.preheader.i117.if.end18.i127_crit_edge235
  %arrayidx21.i125 = getelementptr i8, ptr %30, i32 4
  %38 = ptrtoint ptr %arrayidx21.i125 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx21.i125, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %cmp2373.not.i126 = icmp eq i8 %39, 0
  br i1 %cmp2373.not.i126, label %if.end18.i127.for.inc75_crit_edge, label %for.body25.i138.preheader

if.end18.i127.for.inc75_crit_edge:                ; preds = %if.end18.i127
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc75

for.body25.i138.preheader:                        ; preds = %if.end18.i127
  %conv22.i143 = zext i8 %39 to i32
  br label %for.body25.i138

for.body25.i138:                                  ; preds = %for.inc35.i145.for.body25.i138_crit_edge, %for.body25.i138.preheader
  %formation.sroa.7.8 = phi i32 [ %formation.sroa.7.9, %for.inc35.i145.for.body25.i138_crit_edge ], [ 0, %for.body25.i138.preheader ]
  %formation.sroa.14.8 = phi i32 [ %formation.sroa.14.9, %for.inc35.i145.for.body25.i138_crit_edge ], [ 0, %for.body25.i138.preheader ]
  %e.074.i131 = phi i32 [ %inc36.i142, %for.inc35.i145.for.body25.i138_crit_edge ], [ 0, %for.body25.i138.preheader ]
  %mul.i132 = shl nuw i32 %e.074.i131, 1
  %add.i133 = add nuw nsw i32 %mul.i132, 5
  %arrayidx26.i134 = getelementptr i8, ptr %30, i32 %add.i133
  %40 = ptrtoint ptr %arrayidx26.i134 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx26.i134, align 1
  %conv27.i135 = zext i8 %41 to i32
  %add29.i136 = add nuw nsw i32 %mul.i132, 6
  %arrayidx30.i137 = getelementptr i8, ptr %30, i32 %add29.i136
  %42 = ptrtoint ptr %arrayidx30.i137 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx30.i137, align 1
  %44 = zext i8 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.32)
  switch i8 %43, label %for.body25.i138.for.inc75_crit_edge [
    i8 0, label %for.body25.i138.sw.bb.i140_crit_edge
    i8 6, label %for.body25.i138.sw.bb.i140_crit_edge236
    i8 13, label %for.body25.i138.for.inc35.i145_crit_edge
  ]

for.body25.i138.for.inc35.i145_crit_edge:         ; preds = %for.body25.i138
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc35.i145

for.body25.i138.sw.bb.i140_crit_edge236:          ; preds = %for.body25.i138
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i140

for.body25.i138.sw.bb.i140_crit_edge:             ; preds = %for.body25.i138
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i140

for.body25.i138.for.inc75_crit_edge:              ; preds = %for.body25.i138
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc75

sw.bb.i140:                                       ; preds = %for.body25.i138.sw.bb.i140_crit_edge, %for.body25.i138.sw.bb.i140_crit_edge236
  %add32.i139 = add i32 %formation.sroa.7.8, %conv27.i135
  br label %for.inc35.i145

for.inc35.i145:                                   ; preds = %sw.bb.i140, %for.body25.i138.for.inc35.i145_crit_edge
  %formation.sroa.7.9 = phi i32 [ %add32.i139, %sw.bb.i140 ], [ %formation.sroa.7.8, %for.body25.i138.for.inc35.i145_crit_edge ]
  %formation.sroa.14.9 = phi i32 [ %formation.sroa.14.8, %sw.bb.i140 ], [ %conv27.i135, %for.body25.i138.for.inc35.i145_crit_edge ]
  %inc36.i142 = add nuw nsw i32 %e.074.i131, 1
  %exitcond223.not = icmp eq i32 %inc36.i142, %conv22.i143
  br i1 %exitcond223.not, label %for.end37.i148, label %for.inc35.i145.for.body25.i138_crit_edge

for.inc35.i145.for.body25.i138_crit_edge:         ; preds = %for.inc35.i145
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body25.i138

for.end37.i148:                                   ; preds = %for.inc35.i145
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %formation.sroa.7.9)
  %cmp39.i147 = icmp ugt i32 %formation.sroa.7.9, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %formation.sroa.14.9)
  %cmp43.i150 = icmp ugt i32 %formation.sroa.14.9, 1
  %or.cond217 = select i1 %cmp39.i147, i1 true, i1 %cmp43.i150
  br i1 %or.cond217, label %for.end37.i148.for.inc75_crit_edge, label %if.end69

for.end37.i148.for.inc75_crit_edge:               ; preds = %for.end37.i148
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc75

if.end69:                                         ; preds = %for.end37.i148
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %formation.sroa.14.9)
  %cmp71.not = icmp eq i32 %formation.sroa.14.9, 0
  br i1 %cmp71.not, label %if.end69.for.inc75_crit_edge, label %if.then73

if.end69.for.inc75_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc75

if.then73:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %midi_output_ports to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %midi_output_ports, align 8
  br label %for.inc75

for.inc75:                                        ; preds = %if.then73, %if.end69.for.inc75_crit_edge, %for.end37.i148.for.inc75_crit_edge, %for.body25.i138.for.inc75_crit_edge, %if.end18.i127.for.inc75_crit_edge, %for.cond.preheader.i117.for.inc75_crit_edge, %lor.lhs.false.i115.for.inc75_crit_edge, %if.end64.for.inc75_crit_edge, %for.body59.for.inc75_crit_edge
  %err.4 = phi i32 [ %err.3221, %for.body59.for.inc75_crit_edge ], [ 0, %if.then73 ], [ 0, %if.end69.for.inc75_crit_edge ], [ 0, %if.end18.i127.for.inc75_crit_edge ], [ -6, %lor.lhs.false.i115.for.inc75_crit_edge ], [ -6, %if.end64.for.inc75_crit_edge ], [ -6, %for.end37.i148.for.inc75_crit_edge ], [ -6, %for.cond.preheader.i117.for.inc75_crit_edge ], [ -6, %for.body25.i138.for.inc75_crit_edge ]
  %inc76 = add nuw nsw i32 %i.1220, 1
  %exitcond224.not = icmp eq i32 %inc76, 10
  br i1 %exitcond224.not, label %for.end77, label %for.inc75.for.body59_crit_edge

for.inc75.for.body59_crit_edge:                   ; preds = %for.inc75
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body59

for.end77:                                        ; preds = %for.inc75
  call void @__sanitizer_cov_trace_pc() #8
  %has_input = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 6
  %46 = ptrtoint ptr %has_input to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %has_input, align 1
  br label %end

end:                                              ; preds = %for.end77, %if.then50.end_crit_edge, %if.end41.end_crit_edge, %land.lhs.true.end_crit_edge, %do.end
  %err.5 = phi i32 [ %call, %do.end ], [ %err.4, %for.end77 ], [ %err.2.ph, %if.end41.end_crit_edge ], [ -6, %land.lhs.true.end_crit_edge ], [ 0, %if.then50.end_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %end, %if.then50.cleanup_crit_edge, %if.then18.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.5, %end ], [ %call15, %if.then18.cleanup_crit_edge ], [ %call47, %if.then50.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %plugs) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @avc_general_get_plug_info(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fill_stream_formats(ptr nocapture noundef %oxfw, i32 noundef %dir) unnamed_addr #0 align 64 {
entry:
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 512) #10
  %cmp = icmp eq ptr %call7.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp1 = icmp eq i32 %dir, 1
  %tx_stream_formats = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 7
  %rx_stream_formats = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 8
  %formats.0 = select i1 %cmp1, ptr %tx_stream_formats, ptr %rx_stream_formats
  %1 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 512, ptr %len, align 4
  %unit = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 1
  %2 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %unit, align 4
  %call.i = call i32 @avc_stream_get_format(ptr noundef %3, i32 noundef %dir, i32 noundef 0, ptr noundef nonnull %call7.i, ptr noundef nonnull %len, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %call.i)
  %cmp6 = icmp eq i32 %call.i, -6
  br i1 %cmp6, label %if.then7, label %if.else9

if.then7:                                         ; preds = %if.end
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 512, ptr %len, align 4
  %5 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %unit, align 4
  %call.i.i = call i32 @avc_stream_get_format(ptr noundef %6, i32 noundef %dir, i32 noundef 0, ptr noundef nonnull %call7.i, ptr noundef nonnull %len, i32 noundef 255) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %unit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %cmp2.i = icmp eq i32 %dir, 0
  %cond.i = select i1 %cmp2.i, ptr @.str.17, ptr @.str.18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.21, ptr noundef nonnull %cond.i, i32 noundef 0, i32 noundef %call.i.i) #9
  br label %end

if.end.i:                                         ; preds = %if.then7
  %9 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %call7.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -112, i8 %10)
  %cmp.not.i.i = icmp eq i8 %10, -112
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %if.end.i.end_crit_edge

if.end.i.end_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %end

lor.lhs.false.i.i:                                ; preds = %if.end.i
  %arrayidx2.i.i = getelementptr i8, ptr %call7.i, i32 1
  %11 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %12)
  %cmp4.not.i.i = icmp eq i8 %12, 64
  br i1 %cmp4.not.i.i, label %for.cond.preheader.i.i, label %lor.lhs.false.i.i.end_crit_edge

lor.lhs.false.i.i.end_crit_edge:                  ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %end

for.cond.preheader.i.i:                           ; preds = %lor.lhs.false.i.i
  %arrayidx8.i.i = getelementptr i8, ptr %call7.i, i32 2
  %13 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx8.i.i, align 2
  %switch.tableidx = add i8 %14, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %switch.tableidx)
  %15 = icmp ult i8 %switch.tableidx, 9
  br i1 %15, label %switch.hole_check, label %for.cond.preheader.i.i.end_crit_edge

for.cond.preheader.i.i.end_crit_edge:             ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %end

switch.hole_check:                                ; preds = %for.cond.preheader.i.i
  %switch.maskindex = zext i8 %switch.tableidx to i16
  %switch.shifted = lshr i16 303, %switch.maskindex
  %16 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %switch.lobit.not = icmp eq i16 %16, 0
  br i1 %switch.lobit.not, label %switch.hole_check.end_crit_edge, label %switch.lookup

switch.hole_check.end_crit_edge:                  ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %end

switch.lookup:                                    ; preds = %switch.hole_check
  %17 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.fill_stream_formats, i32 0, i32 %17
  %18 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %18)
  %switch.load = load i32, ptr %switch.gep, align 4
  %arrayidx19.i.i = getelementptr [6 x i32], ptr @oxfw_rate_table, i32 0, i32 %switch.load
  %19 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx19.i.i, align 4
  %arrayidx21.i.i = getelementptr i8, ptr %call7.i, i32 4
  %21 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx21.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp2373.not.i.i = icmp eq i8 %22, 0
  br i1 %cmp2373.not.i.i, label %switch.lookup.if.end6.i_crit_edge, label %for.body25.i.preheader.i

switch.lookup.if.end6.i_crit_edge:                ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i

for.body25.i.preheader.i:                         ; preds = %switch.lookup
  %conv22.i.i = zext i8 %22 to i32
  br label %for.body25.i.i

for.body25.i.i:                                   ; preds = %for.inc35.i.i.for.body25.i.i_crit_edge, %for.body25.i.preheader.i
  %formation.sroa.6.0.i = phi i32 [ %formation.sroa.6.1.i, %for.inc35.i.i.for.body25.i.i_crit_edge ], [ 0, %for.body25.i.preheader.i ]
  %formation.sroa.10.0.i = phi i32 [ %formation.sroa.10.1.i, %for.inc35.i.i.for.body25.i.i_crit_edge ], [ 0, %for.body25.i.preheader.i ]
  %e.074.i.i = phi i32 [ %inc36.i.i, %for.inc35.i.i.for.body25.i.i_crit_edge ], [ 0, %for.body25.i.preheader.i ]
  %mul.i.i = shl nuw i32 %e.074.i.i, 1
  %add.i.i = add nuw nsw i32 %mul.i.i, 5
  %arrayidx26.i.i = getelementptr i8, ptr %call7.i, i32 %add.i.i
  %23 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx26.i.i, align 1
  %conv27.i.i = zext i8 %24 to i32
  %add29.i.i = add nuw nsw i32 %mul.i.i, 6
  %arrayidx30.i.i = getelementptr i8, ptr %call7.i, i32 %add29.i.i
  %25 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx30.i.i, align 2
  %27 = zext i8 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.33)
  switch i8 %26, label %for.body25.i.i.end_crit_edge [
    i8 0, label %for.body25.i.i.sw.bb.i.i_crit_edge
    i8 6, label %for.body25.i.i.sw.bb.i.i_crit_edge32
    i8 13, label %for.body25.i.i.for.inc35.i.i_crit_edge
  ]

for.body25.i.i.for.inc35.i.i_crit_edge:           ; preds = %for.body25.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc35.i.i

for.body25.i.i.sw.bb.i.i_crit_edge32:             ; preds = %for.body25.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i

for.body25.i.i.sw.bb.i.i_crit_edge:               ; preds = %for.body25.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i

for.body25.i.i.end_crit_edge:                     ; preds = %for.body25.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %end

sw.bb.i.i:                                        ; preds = %for.body25.i.i.sw.bb.i.i_crit_edge, %for.body25.i.i.sw.bb.i.i_crit_edge32
  %add32.i.i = add i32 %formation.sroa.6.0.i, %conv27.i.i
  br label %for.inc35.i.i

for.inc35.i.i:                                    ; preds = %sw.bb.i.i, %for.body25.i.i.for.inc35.i.i_crit_edge
  %formation.sroa.6.1.i = phi i32 [ %add32.i.i, %sw.bb.i.i ], [ %formation.sroa.6.0.i, %for.body25.i.i.for.inc35.i.i_crit_edge ]
  %formation.sroa.10.1.i = phi i32 [ %formation.sroa.10.0.i, %sw.bb.i.i ], [ %conv27.i.i, %for.body25.i.i.for.inc35.i.i_crit_edge ]
  %inc36.i.i = add nuw nsw i32 %e.074.i.i, 1
  %exitcond.not.i = icmp eq i32 %inc36.i.i, %conv22.i.i
  br i1 %exitcond.not.i, label %for.end37.i.i, label %for.inc35.i.i.for.body25.i.i_crit_edge

for.inc35.i.i.for.body25.i.i_crit_edge:           ; preds = %for.inc35.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body25.i.i

for.end37.i.i:                                    ; preds = %for.inc35.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %formation.sroa.6.1.i)
  %cmp39.i.i = icmp ugt i32 %formation.sroa.6.1.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %formation.sroa.10.1.i)
  %cmp43.i.i = icmp ugt i32 %formation.sroa.10.1.i, 1
  %or.cond.i = select i1 %cmp39.i.i, i1 true, i1 %cmp43.i.i
  br i1 %or.cond.i, label %for.end37.i.i.end_crit_edge, label %for.end37.i.i.if.end6.i_crit_edge

for.end37.i.i.if.end6.i_crit_edge:                ; preds = %for.end37.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i

for.end37.i.i.end_crit_edge:                      ; preds = %for.end37.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %end

if.end6.i:                                        ; preds = %for.end37.i.i.if.end6.i_crit_edge, %switch.lookup.if.end6.i_crit_edge
  %28 = ptrtoint ptr %oxfw to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %oxfw, align 8
  %card_dev.i = getelementptr inbounds %struct.snd_card, ptr %29, i32 0, i32 28
  %30 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len, align 4
  %call7.i1 = call ptr @devm_kmemdup(ptr noundef %card_dev.i, ptr noundef nonnull %call7.i, i32 noundef %31, i32 noundef 3264) #6
  %32 = ptrtoint ptr %formats.0 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call7.i1, ptr %formats.0, align 4
  %tobool.not.i = icmp eq ptr %call7.i1, null
  br i1 %tobool.not.i, label %if.end6.i.end_crit_edge, label %if.end6.i.for.body.i_crit_edge

if.end6.i.for.body.i_crit_edge:                   ; preds = %if.end6.i
  br label %for.body.i

if.end6.i.end_crit_edge:                          ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %end

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end6.i.for.body.i_crit_edge
  %eid.014.i = phi i32 [ %eid.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end6.i.for.body.i_crit_edge ]
  %i.013.i = phi i32 [ %inc36.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end6.i.for.body.i_crit_edge ]
  %arrayidx12.i = getelementptr [6 x i32], ptr @oxfw_rate_table, i32 0, i32 %i.013.i
  %33 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx12.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %34)
  %cmp13.i = icmp eq i32 %20, %34
  br i1 %cmp13.i, label %for.body.i.for.inc.i_crit_edge, label %if.end15.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end15.i:                                       ; preds = %for.body.i
  %35 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %unit, align 4
  %call18.i = call i32 @avc_general_inquiry_sig_fmt(ptr noundef %36, i32 noundef %34, i32 noundef %dir, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp19.i = icmp slt i32 %call18.i, 0
  br i1 %cmp19.i, label %if.end15.i.for.inc.i_crit_edge, label %if.end22.i

if.end15.i.for.inc.i_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end22.i:                                       ; preds = %if.end15.i
  %inc.i = add i32 %eid.014.i, 1
  %37 = ptrtoint ptr %oxfw to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %oxfw, align 8
  %card_dev24.i = getelementptr inbounds %struct.snd_card, ptr %38, i32 0, i32 28
  %39 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len, align 4
  %call25.i = call ptr @devm_kmemdup(ptr noundef %card_dev24.i, ptr noundef nonnull %call7.i, i32 noundef %40, i32 noundef 3264) #6
  %arrayidx26.i = getelementptr ptr, ptr %formats.0, i32 %inc.i
  %41 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call25.i, ptr %arrayidx26.i, align 4
  %cmp28.i = icmp eq ptr %call25.i, null
  br i1 %cmp28.i, label %if.end22.i.end_crit_edge, label %if.end31.i

if.end22.i.end_crit_edge:                         ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %end

if.end31.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx32.i = getelementptr [6 x i32], ptr @avc_stream_rate_table, i32 0, i32 %i.013.i
  %42 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx32.i, align 4
  %conv33.i = trunc i32 %43 to i8
  %arrayidx35.i = getelementptr i8, ptr %call25.i, i32 2
  %44 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv33.i, ptr %arrayidx35.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end31.i, %if.end15.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %eid.1.i = phi i32 [ %eid.014.i, %for.body.i.for.inc.i_crit_edge ], [ %eid.014.i, %if.end15.i.for.inc.i_crit_edge ], [ %inc.i, %if.end31.i ]
  %inc36.i = add nuw nsw i32 %i.013.i, 1
  %exitcond16.not.i = icmp eq i32 %inc36.i, 6
  br i1 %exitcond16.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  %assumed.i = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 9
  %45 = ptrtoint ptr %assumed.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %assumed.i, align 8
  br label %end

if.else9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp10 = icmp slt i32 %call.i, 0
  br i1 %cmp10, label %do.end, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.else9
  %arrayidx2.i = getelementptr i8, ptr %call7.i, i32 1
  %arrayidx8.i = getelementptr i8, ptr %call7.i, i32 2
  %arrayidx21.i = getelementptr i8, ptr %call7.i, i32 4
  br label %while.body

do.end:                                           ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %unit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %cmp14 = icmp eq i32 %dir, 0
  %cond = select i1 %cmp14, ptr @.str.17, ptr @.str.18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.15, i32 noundef 0, ptr noundef nonnull %cond, i32 noundef 0, i32 noundef %call.i) #9
  br label %end

while.cond:                                       ; preds = %if.else39
  %exitcond22.not = icmp eq i32 %inc, 10
  br i1 %exitcond22.not, label %while.cond.end_crit_edge, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.cond.end_crit_edge:                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %end

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %while.cond.preheader
  %eid.018 = phi i32 [ 0, %while.cond.preheader ], [ %inc, %while.cond.while.body_crit_edge ]
  %48 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %49)
  %cmp21 = icmp ult i32 %49, 3
  br i1 %cmp21, label %while.body.end_crit_edge, label %if.end24

while.body.end_crit_edge:                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %end

if.end24:                                         ; preds = %while.body
  %50 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %call7.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -112, i8 %51)
  %cmp.not.i = icmp eq i8 %51, -112
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end24.end_crit_edge

if.end24.end_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %end

lor.lhs.false.i:                                  ; preds = %if.end24
  %52 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %53)
  %cmp4.not.i = icmp eq i8 %53, 64
  br i1 %cmp4.not.i, label %for.cond.preheader.i, label %lor.lhs.false.i.end_crit_edge

lor.lhs.false.i.end_crit_edge:                    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %end

for.cond.preheader.i:                             ; preds = %lor.lhs.false.i
  %54 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx8.i, align 2
  %56 = zext i8 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.34)
  switch i8 %55, label %for.cond.preheader.i.end_crit_edge [
    i8 2, label %for.cond.preheader.i.if.end18.i_crit_edge
    i8 3, label %for.cond.preheader.i.if.end18.i_crit_edge33
    i8 4, label %for.cond.preheader.i.if.end18.i_crit_edge34
    i8 10, label %for.cond.preheader.i.if.end18.i_crit_edge35
    i8 5, label %for.cond.preheader.i.if.end18.i_crit_edge36
    i8 7, label %for.cond.preheader.i.if.end18.i_crit_edge37
  ]

for.cond.preheader.i.if.end18.i_crit_edge37:      ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i

for.cond.preheader.i.if.end18.i_crit_edge36:      ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i

for.cond.preheader.i.if.end18.i_crit_edge35:      ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i

for.cond.preheader.i.if.end18.i_crit_edge34:      ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i

for.cond.preheader.i.if.end18.i_crit_edge33:      ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i

for.cond.preheader.i.if.end18.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i

for.cond.preheader.i.end_crit_edge:               ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %end

if.end18.i:                                       ; preds = %for.cond.preheader.i.if.end18.i_crit_edge, %for.cond.preheader.i.if.end18.i_crit_edge33, %for.cond.preheader.i.if.end18.i_crit_edge34, %for.cond.preheader.i.if.end18.i_crit_edge35, %for.cond.preheader.i.if.end18.i_crit_edge36, %for.cond.preheader.i.if.end18.i_crit_edge37
  %57 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx21.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %cmp2373.not.i = icmp eq i8 %58, 0
  br i1 %cmp2373.not.i, label %if.end18.i.if.end29_crit_edge, label %for.body25.i.preheader

if.end18.i.if.end29_crit_edge:                    ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

for.body25.i.preheader:                           ; preds = %if.end18.i
  %conv22.i = zext i8 %58 to i32
  br label %for.body25.i

for.body25.i:                                     ; preds = %for.inc35.i.for.body25.i_crit_edge, %for.body25.i.preheader
  %dummy.sroa.5.1 = phi i32 [ %dummy.sroa.5.2, %for.inc35.i.for.body25.i_crit_edge ], [ 0, %for.body25.i.preheader ]
  %dummy.sroa.9.1 = phi i32 [ %dummy.sroa.9.2, %for.inc35.i.for.body25.i_crit_edge ], [ 0, %for.body25.i.preheader ]
  %e.074.i = phi i32 [ %inc36.i3, %for.inc35.i.for.body25.i_crit_edge ], [ 0, %for.body25.i.preheader ]
  %mul.i = shl nuw i32 %e.074.i, 1
  %add.i = add nuw nsw i32 %mul.i, 5
  %arrayidx26.i2 = getelementptr i8, ptr %call7.i, i32 %add.i
  %59 = ptrtoint ptr %arrayidx26.i2 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx26.i2, align 1
  %conv27.i = zext i8 %60 to i32
  %add29.i = add nuw nsw i32 %mul.i, 6
  %arrayidx30.i = getelementptr i8, ptr %call7.i, i32 %add29.i
  %61 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx30.i, align 2
  %63 = zext i8 %62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.35)
  switch i8 %62, label %for.body25.i.end_crit_edge [
    i8 0, label %for.body25.i.sw.bb.i_crit_edge
    i8 6, label %for.body25.i.sw.bb.i_crit_edge38
    i8 13, label %for.body25.i.for.inc35.i_crit_edge
  ]

for.body25.i.for.inc35.i_crit_edge:               ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc35.i

for.body25.i.sw.bb.i_crit_edge38:                 ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

for.body25.i.sw.bb.i_crit_edge:                   ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

for.body25.i.end_crit_edge:                       ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %end

sw.bb.i:                                          ; preds = %for.body25.i.sw.bb.i_crit_edge, %for.body25.i.sw.bb.i_crit_edge38
  %add32.i = add i32 %dummy.sroa.5.1, %conv27.i
  br label %for.inc35.i

for.inc35.i:                                      ; preds = %sw.bb.i, %for.body25.i.for.inc35.i_crit_edge
  %dummy.sroa.5.2 = phi i32 [ %add32.i, %sw.bb.i ], [ %dummy.sroa.5.1, %for.body25.i.for.inc35.i_crit_edge ]
  %dummy.sroa.9.2 = phi i32 [ %dummy.sroa.9.1, %sw.bb.i ], [ %conv27.i, %for.body25.i.for.inc35.i_crit_edge ]
  %inc36.i3 = add nuw nsw i32 %e.074.i, 1
  %exitcond.not = icmp eq i32 %inc36.i3, %conv22.i
  br i1 %exitcond.not, label %for.end37.i, label %for.inc35.i.for.body25.i_crit_edge

for.inc35.i.for.body25.i_crit_edge:               ; preds = %for.inc35.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body25.i

for.end37.i:                                      ; preds = %for.inc35.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %dummy.sroa.5.2)
  %cmp39.i = icmp ugt i32 %dummy.sroa.5.2, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dummy.sroa.9.2)
  %cmp43.i = icmp ugt i32 %dummy.sroa.9.2, 1
  %or.cond = select i1 %cmp39.i, i1 true, i1 %cmp43.i
  br i1 %or.cond, label %for.end37.i.end_crit_edge, label %for.end37.i.if.end29_crit_edge

for.end37.i.if.end29_crit_edge:                   ; preds = %for.end37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

for.end37.i.end_crit_edge:                        ; preds = %for.end37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %end

if.end29:                                         ; preds = %for.end37.i.if.end29_crit_edge, %if.end18.i.if.end29_crit_edge
  %64 = ptrtoint ptr %oxfw to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %oxfw, align 8
  %card_dev = getelementptr inbounds %struct.snd_card, ptr %65, i32 0, i32 28
  %call30 = call ptr @devm_kmemdup(ptr noundef %card_dev, ptr noundef nonnull %call7.i, i32 noundef %49, i32 noundef 3264) #6
  %arrayidx = getelementptr ptr, ptr %formats.0, i32 %eid.018
  %66 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call30, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %call30, null
  br i1 %tobool.not, label %if.end29.end_crit_edge, label %if.end33

if.end29.end_crit_edge:                           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %end

if.end33:                                         ; preds = %if.end29
  %67 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 512, ptr %len, align 4
  %68 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %unit, align 4
  %inc = add nuw nsw i32 %eid.018, 1
  %call.i4 = call i32 @avc_stream_get_format(ptr noundef %69, i32 noundef %dir, i32 noundef 0, ptr noundef nonnull %call7.i, ptr noundef nonnull %len, i32 noundef %inc) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call.i4)
  %cmp36 = icmp eq i32 %call.i4, -22
  br i1 %cmp36, label %if.end33.end_crit_edge, label %if.else39

if.end33.end_crit_edge:                           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %end

if.else39:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4)
  %cmp40 = icmp slt i32 %call.i4, 0
  br i1 %cmp40, label %do.end45, label %while.cond

do.end45:                                         ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #8
  %70 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %unit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %cmp48 = icmp eq i32 %dir, 0
  %cond50 = select i1 %cmp48, ptr @.str.17, ptr @.str.18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.15, i32 noundef %inc, ptr noundef nonnull %cond50, i32 noundef 0, i32 noundef %call.i4) #9
  br label %end

end:                                              ; preds = %do.end45, %if.end33.end_crit_edge, %if.end29.end_crit_edge, %for.end37.i.end_crit_edge, %for.body25.i.end_crit_edge, %for.cond.preheader.i.end_crit_edge, %lor.lhs.false.i.end_crit_edge, %if.end24.end_crit_edge, %while.body.end_crit_edge, %while.cond.end_crit_edge, %do.end, %for.end.i, %if.end22.i.end_crit_edge, %if.end6.i.end_crit_edge, %for.end37.i.i.end_crit_edge, %for.body25.i.i.end_crit_edge, %switch.hole_check.end_crit_edge, %for.cond.preheader.i.i.end_crit_edge, %lor.lhs.false.i.i.end_crit_edge, %if.end.i.end_crit_edge, %do.end.i
  %err.1 = phi i32 [ %call.i, %do.end ], [ %call.i4, %do.end45 ], [ %call.i.i, %do.end.i ], [ 0, %for.end.i ], [ -12, %if.end6.i.end_crit_edge ], [ -6, %lor.lhs.false.i.i.end_crit_edge ], [ -6, %if.end.i.end_crit_edge ], [ -6, %for.end37.i.i.end_crit_edge ], [ -6, %for.cond.preheader.i.i.end_crit_edge ], [ -6, %switch.hole_check.end_crit_edge ], [ -12, %if.end22.i.end_crit_edge ], [ -6, %for.body25.i.i.end_crit_edge ], [ -6, %for.body25.i.end_crit_edge ], [ -6, %for.cond.preheader.i.end_crit_edge ], [ -6, %for.end37.i.end_crit_edge ], [ -6, %if.end24.end_crit_edge ], [ -6, %lor.lhs.false.i.end_crit_edge ], [ 0, %if.end33.end_crit_edge ], [ -12, %if.end29.end_crit_edge ], [ -5, %while.body.end_crit_edge ], [ %call.i4, %while.cond.end_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i) #6
  br label %cleanup

cleanup:                                          ; preds = %end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %end ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_oxfw_stream_lock_changed(ptr noundef %oxfw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_lock_changed = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 18
  %0 = ptrtoint ptr %dev_lock_changed to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %dev_lock_changed, align 8
  %hwdep_wait = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 19
  tail call void @__wake_up(ptr noundef %hwdep_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_oxfw_stream_lock_try(ptr noundef %oxfw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #6
  %dev_lock_count = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 17
  %0 = ptrtoint ptr %dev_lock_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev_lock_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %entry.end_crit_edge, label %if.end

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %end

if.end:                                           ; preds = %entry
  %inc = add nuw i32 %1, 1
  %2 = ptrtoint ptr %dev_lock_count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %inc, ptr %dev_lock_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp2 = icmp eq i32 %1, 0
  br i1 %cmp2, label %if.then3, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %end

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev_lock_changed.i = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 18
  %3 = ptrtoint ptr %dev_lock_changed.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %dev_lock_changed.i, align 8
  %hwdep_wait.i = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 19
  tail call void @__wake_up(ptr noundef %hwdep_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %end

end:                                              ; preds = %if.then3, %if.end.end_crit_edge, %entry.end_crit_edge
  %err.0 = phi i32 [ -16, %entry.end_crit_edge ], [ 0, %if.then3 ], [ 0, %if.end.end_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #6
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_oxfw_stream_lock_release(ptr noundef %oxfw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #6
  %dev_lock_count = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 17
  %0 = ptrtoint ptr %dev_lock_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev_lock_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %do.end, label %if.end21.critedge, !prof !59

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 840, i32 noundef 9, ptr noundef null) #6
  br label %end

if.end21.critedge:                                ; preds = %entry
  %dec = add nsw i32 %1, -1
  %2 = ptrtoint ptr %dev_lock_count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %dec, ptr %dev_lock_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp23 = icmp eq i32 %dec, 0
  br i1 %cmp23, label %if.then24, label %if.end21.critedge.end_crit_edge

if.end21.critedge.end_crit_edge:                  ; preds = %if.end21.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %end

if.then24:                                        ; preds = %if.end21.critedge
  call void @__sanitizer_cov_trace_pc() #8
  %dev_lock_changed.i = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 18
  %3 = ptrtoint ptr %dev_lock_changed.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %dev_lock_changed.i, align 8
  %hwdep_wait.i = getelementptr inbounds %struct.snd_oxfw, ptr %oxfw, i32 0, i32 19
  tail call void @__wake_up(ptr noundef %hwdep_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %end

end:                                              ; preds = %if.then24, %if.end21.critedge.end_crit_edge, %do.end
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cmp_connection_check_used(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @avc_stream_set_format(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @avc_general_set_sig_fmt(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_am824_set_parameters(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cmp_connection_reserve(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_stream_get_max_payload(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cmp_connection_establish(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_domain_add_stream(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cmp_connection_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_am824_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cmp_connection_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdtp_stream_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @avc_stream_get_format(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kmemdup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @avc_general_inquiry_sig_fmt(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !27, !29, !31, !33, !35, !36, !37, !38, !39, !40, !42, !43, !45, !46, !47}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/firewire/oxfw/oxfw-stream.c", i32 300, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @snd_oxfw_stream_reserve_duplex._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @snd_oxfw_stream_reserve_duplex._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/firewire/oxfw/oxfw-stream.c", i32 352, i32 4}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @snd_oxfw_stream_start_duplex._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @snd_oxfw_stream_start_duplex._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../sound/firewire/oxfw/oxfw-stream.c", i32 361, i32 5}
!15 = !{ptr @snd_oxfw_stream_start_duplex._entry.7, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @snd_oxfw_stream_start_duplex._entry_ptr.9, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/firewire/oxfw/oxfw-stream.c", i32 741, i32 3}
!19 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @snd_oxfw_stream_discover._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @snd_oxfw_stream_discover._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/firewire/oxfw/oxfw-stream.c", i32 141, i32 3}
!24 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @check_connection_used_by_others._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @check_connection_used_by_others._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/firewire/oxfw/../amdtp-stream.h", i32 348, i32 7}
!29 = !{ptr @avc_stream_rate_table, !30, !"avc_stream_rate_table", i1 false, i1 false}
!30 = !{!"../sound/firewire/oxfw/oxfw-stream.c", i32 32, i32 27}
!31 = !{ptr @oxfw_rate_table, !32, !"oxfw_rate_table", i1 false, i1 false}
!32 = !{!"../sound/firewire/oxfw/oxfw-stream.c", i32 19, i32 27}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/firewire/oxfw/oxfw-stream.c", i32 681, i32 3}
!35 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @fill_stream_formats._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @fill_stream_formats._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @fill_stream_formats._entry.19, !41, !"_entry", i1 false, i1 false}
!41 = !{!"../sound/firewire/oxfw/oxfw-stream.c", i32 717, i32 4}
!42 = !{ptr @fill_stream_formats._entry_ptr.20, !41, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/firewire/oxfw/oxfw-stream.c", i32 606, i32 3}
!45 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @assume_stream_formats._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @assume_stream_formats._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{!"auto-init"}
!58 = !{i8 0, i8 2}
!59 = !{!"branch_weights", i32 1, i32 2000}
