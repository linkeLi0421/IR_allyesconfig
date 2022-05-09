; ModuleID = '/llk/IR_all_yes/sound/core/seq/oss/seq_oss_init.c_pt.bc'
source_filename = "../sound/core/seq/oss/seq_oss_init.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_seq_port_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_seq_port_subscribe = type { %struct.snd_seq_addr, %struct.snd_seq_addr, i32, i32, i8, [3 x i8], [64 x i8] }
%struct.snd_seq_addr = type { i8, i8 }
%struct.snd_seq_port_info = type { %struct.snd_seq_addr, [64 x i8], i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, [59 x i8] }
%struct.snd_seq_event = type { i8, i8, i8, i8, %union.snd_seq_timestamp, %struct.snd_seq_addr, %struct.snd_seq_addr, %union.anon.68 }
%union.snd_seq_timestamp = type { %struct.snd_seq_real_time }
%struct.snd_seq_real_time = type { i32, i32 }
%union.anon.68 = type { %struct.snd_seq_ev_ctrl }
%struct.snd_seq_ev_ctrl = type { i8, i8, i8, i8, i32, i32 }
%struct.snd_seq_queue_info = type { i32, i32, i8, [64 x i8], i32, [60 x i8] }
%struct.seq_oss_devinfo = type { i32, i32, i32, i32, %struct.snd_seq_addr, i32, i32, i32, i32, [16 x %struct.seq_oss_synthinfo], i32, ptr, ptr, ptr }
%struct.seq_oss_synthinfo = type { %struct.snd_seq_oss_arg, ptr, ptr, i32, i32, i32, i32 }
%struct.snd_seq_oss_arg = type { i32, i32, i32, %struct.snd_seq_addr, ptr, i32 }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.seq_oss_timer = type { ptr, i32, i32, i32, i32, i32, i32, i32 }

@__param_str_maxqlen = internal constant [20 x i8] c"snd_seq_oss.maxqlen\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@maxqlen = internal global { i32, [28 x i8] } { i32 1024, [28 x i8] zeroinitializer }, align 32
@__param_maxqlen = internal constant %struct.kernel_param { ptr @__param_str_maxqlen, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.62 { ptr @maxqlen } }, section "__param", align 4
@__UNIQUE_ID_maxqlentype229 = internal constant [33 x i8] c"snd_seq_oss.parmtype=maxqlen:int\00", section ".modinfo", align 1
@__UNIQUE_ID_maxqlen230 = internal constant [46 x i8] c"snd_seq_oss.parm=maxqlen:maximum queue length\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"OSS sequencer\00", [18 x i8] zeroinitializer }, align 32
@system_client = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Receiver\00", [23 x i8] zeroinitializer }, align 32
@system_port = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@async_lookup_work = internal global { %struct.work_struct, [52 x i8] } { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @async_lookup_work, i64 4), ptr getelementptr (i8, ptr @async_lookup_work, i64 4) }, ptr @async_call_lookup_ports, %struct.lockdep_map { ptr @async_lookup_work, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@client_table = internal global { [16 x ptr], [32 x i8] } zeroinitializer, align 32
@snd_seq_oss_open.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"snd_seq_oss\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snd_seq_oss_open\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"sound/core/seq/oss/seq_oss_init.c\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ALSA: seq_oss: too many applications\0A\00", [58 x i8] zeroinitializer }, align 32
@snd_seq_oss_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 210, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013ALSA: seq_oss: can't create port\0A\00", [60 x i8] zeroinitializer }, align 32
@snd_seq_oss_open._entry_ptr = internal global ptr @snd_seq_oss_open._entry, section ".printk_index", align 4
@snd_seq_oss_open._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 251, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013ALSA: seq_oss: can't alloc timer\0A\00", [60 x i8] zeroinitializer }, align 32
@snd_seq_oss_open._entry_ptr.9 = internal global ptr @snd_seq_oss_open._entry.7, section ".printk_index", align 4
@num_clients = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ALSA client number %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ALSA receiver port %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\0ANumber of applications: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\0AApplication %d: \00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"*empty*\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"port %d : queue %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"  sequencer mode = %s : file open mode = %s\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"music\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"synth\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"  timer tempo = %d, timebase = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"  max queue length %d\0A\00", [41 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"async_lookup_work\00", [46 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Sequencer-%d\00", [19 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"OSS Sequencer Emulation\00", [40 x i8] zeroinitializer }, align 32
@delete_seq_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.4, i32 379, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013ALSA: seq_oss: unable to delete queue %d (%d)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"delete_seq_queue\00", [47 x i8] zeroinitializer }, align 32
@delete_seq_queue._entry_ptr = internal global ptr @delete_seq_queue._entry, section ".printk_index", align 4
@filemode_str.str = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], [16 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"read/write\00", [21 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 63, i64 64, i64 65]
@___asan_gen_.32 = private unnamed_addr constant [8 x i8] c"maxqlen\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 26, i32 12 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 77, i32 8 }
@___asan_gen_.38 = private unnamed_addr constant [14 x i8] c"system_client\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 30, i32 12 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 85, i32 21 }
@___asan_gen_.44 = private unnamed_addr constant [12 x i8] c"system_port\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 31, i32 12 }
@___asan_gen_.47 = private unnamed_addr constant [18 x i8] c"async_lookup_work\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [13 x i8] c"client_table\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 34, i32 32 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 192, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 210, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 251, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant [12 x i8] c"num_clients\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 33, i32 12 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 461, i32 16 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 461, i32 28 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 483, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 484, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 486, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 488, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 491, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 494, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 495, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 499, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 501, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 57, i32 8 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 308, i32 21 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 356, i32 21 }
@___asan_gen_.128 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 379, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 467, i32 28 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 468, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 468, i32 11 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 468, i32 19 }
@___asan_gen_.149 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.150 = private constant [37 x i8] c"../sound/core/seq/oss/seq_oss_init.c\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 468, i32 28 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_maxqlen230, ptr @__UNIQUE_ID_maxqlentype229, ptr @__param_maxqlen, ptr @delete_seq_queue._entry, ptr @delete_seq_queue._entry_ptr, ptr @snd_seq_oss_open._entry, ptr @snd_seq_oss_open._entry.7, ptr @snd_seq_oss_open._entry_ptr, ptr @snd_seq_oss_open._entry_ptr.9, ptr @maxqlen, ptr @.str, ptr @system_client, ptr @.str.1, ptr @system_port, ptr @async_lookup_work, ptr @client_table, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @num_clients, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @filemode_str.str, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @maxqlen to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @system_client to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @system_port to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @async_lookup_work to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @client_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_seq_oss_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_seq_oss_open._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_clients to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delete_seq_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @filemode_str.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_oss_create_client() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %port_callback = alloca %struct.snd_seq_port_callback, align 4
  %subs = alloca %struct.snd_seq_port_subscribe, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %port_callback) #8
  %0 = getelementptr inbounds %struct.snd_seq_port_callback, ptr %port_callback, i32 0, i32 6
  %1 = call ptr @memset(ptr %port_callback, i32 255, i32 32)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 164) #11
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.__error_crit_edge, label %if.end

entry.__error_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__error

if.end:                                           ; preds = %entry
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snd_seq_create_kernel_client(ptr noundef null, i32 noundef 15, ptr noundef nonnull @.str) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.__error_crit_edge, label %if.end3

if.end.__error_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %__error

if.end3:                                          ; preds = %if.end
  store i32 %call1, ptr @system_client, align 4
  %3 = call ptr @memset(ptr %call7.i, i32 0, i32 164)
  %name = getelementptr inbounds %struct.snd_seq_port_info, ptr %call7.i, i32 0, i32 1
  %4 = call ptr @memcpy(ptr %name, ptr @.str.1, i32 9)
  %conv = trunc i32 %call1 to i8
  %5 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %call7.i, align 8
  %capability = getelementptr inbounds %struct.snd_seq_port_info, ptr %call7.i, i32 0, i32 2
  %6 = ptrtoint ptr %capability to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %capability, align 4
  %7 = call ptr @memset(ptr %port_callback, i32 0, i32 32)
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @receive_announce, ptr %0, align 4
  %kernel = getelementptr inbounds %struct.snd_seq_port_info, ptr %call7.i, i32 0, i32 9
  %9 = ptrtoint ptr %kernel to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %port_callback, ptr %kernel, align 8
  %call5 = call i32 @snd_seq_kernel_client_ctl(i32 noundef %call1, i32 noundef -1062972640, ptr noundef nonnull %call7.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call5)
  %cmp6 = icmp sgt i32 %call5, -1
  br i1 %cmp6, label %if.then8, label %if.end3.if.end21_crit_edge

if.end3.if.end21_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then8:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %subs) #8
  %port10 = getelementptr inbounds %struct.snd_seq_addr, ptr %call7.i, i32 0, i32 1
  %10 = ptrtoint ptr %port10 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %port10, align 1
  %conv11 = zext i8 %11 to i32
  store i32 %conv11, ptr @system_port, align 4
  %port14 = getelementptr inbounds %struct.snd_seq_addr, ptr %subs, i32 0, i32 1
  %12 = call ptr @memset(ptr %subs, i32 0, i32 80)
  %13 = ptrtoint ptr %port14 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %port14, align 1
  %14 = load i32, ptr @system_client, align 4
  %conv15 = trunc i32 %14 to i8
  %dest = getelementptr inbounds %struct.snd_seq_port_subscribe, ptr %subs, i32 0, i32 1
  %15 = ptrtoint ptr %dest to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv15, ptr %dest, align 2
  %port19 = getelementptr inbounds %struct.snd_seq_port_subscribe, ptr %subs, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %port19 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %11, ptr %port19, align 1
  %call20 = call i32 @snd_seq_kernel_client_ctl(i32 noundef %14, i32 noundef 1079006000, ptr noundef nonnull %subs) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %subs) #8
  br label %if.end21

if.end21:                                         ; preds = %if.then8, %if.end3.if.end21_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %17 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %17, ptr noundef nonnull @async_lookup_work) #8
  br label %__error

__error:                                          ; preds = %if.end21, %if.end.__error_crit_edge, %entry.__error_crit_edge
  %rc.0 = phi i32 [ %call1, %if.end.__error_crit_edge ], [ 0, %if.end21 ], [ -12, %entry.__error_crit_edge ]
  call void @kfree(ptr noundef %call7.i) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %port_callback) #8
  ret i32 %rc.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_create_kernel_client(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @receive_announce(ptr nocapture noundef readonly %ev, i32 noundef %direct, ptr nocapture noundef readnone %private, i32 noundef %atomic, i32 noundef %hop) #3 align 64 {
entry:
  %pinfo = alloca %struct.snd_seq_port_info, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 164, ptr nonnull %pinfo) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %atomic)
  %tobool.not = icmp eq i32 %atomic, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %ev to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ev, align 4
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %if.end.cleanup_crit_edge [
    i8 63, label %if.end.sw.bb_crit_edge
    i8 65, label %if.end.sw.bb_crit_edge30
    i8 64, label %sw.bb11
  ]

if.end.sw.bb_crit_edge30:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge30
  %data = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %data, align 4
  %conv1 = zext i8 %4 to i32
  %5 = load i32, ptr @system_client, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv1)
  %cmp = icmp eq i32 %5, %conv1
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end4

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %sw.bb
  %6 = call ptr @memset(ptr %pinfo, i32 0, i32 164)
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %data, align 4
  %9 = ptrtoint ptr %pinfo to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %pinfo, align 4
  %call = call i32 @snd_seq_kernel_client_ctl(i32 noundef %5, i32 noundef -1062972638, ptr noundef nonnull %pinfo) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp6 = icmp sgt i32 %call, -1
  br i1 %cmp6, label %if.then8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = call i32 @snd_seq_oss_midi_check_new_port(ptr noundef nonnull %pinfo) #8
  br label %cleanup

sw.bb11:                                          ; preds = %if.end
  %data12 = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7
  %10 = ptrtoint ptr %data12 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %data12, align 4
  %conv14 = zext i8 %11 to i32
  %12 = load i32, ptr @system_client, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv14)
  %cmp15 = icmp eq i32 %12, %conv14
  br i1 %cmp15, label %sw.bb11.cleanup_crit_edge, label %if.end18

sw.bb11.cleanup_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end18:                                         ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  %port = getelementptr inbounds %struct.snd_seq_event, ptr %ev, i32 0, i32 7, i32 0, i32 1
  %13 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %port, align 1
  %conv23 = zext i8 %14 to i32
  %call24 = tail call i32 @snd_seq_oss_midi_check_exit_port(i32 noundef %conv14, i32 noundef %conv23) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %sw.bb11.cleanup_crit_edge, %if.then8, %if.end4.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 164, ptr nonnull %pinfo) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_kernel_client_ctl(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_oss_delete_client() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef nonnull @async_lookup_work) #8
  %0 = load i32, ptr @system_client, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %0)
  %cmp = icmp sgt i32 %0, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 @snd_seq_delete_kernel_client(i32 noundef %0) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @snd_seq_oss_midi_clear_all() #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_delete_kernel_client(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_seq_oss_midi_clear_all() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_oss_open(ptr nocapture noundef %file, i32 noundef %level) local_unnamed_addr #3 align 64 {
entry:
  %qinfo.i133 = alloca %struct.snd_seq_queue_info, align 4
  %qinfo.i = alloca %struct.snd_seq_queue_info, align 4
  %port.i = alloca %struct.snd_seq_port_info, align 4
  %callback.i = alloca %struct.snd_seq_port_callback, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 820) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @system_client, align 4
  %cseq = getelementptr inbounds %struct.seq_oss_devinfo, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %cseq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %cseq, align 4
  %port = getelementptr inbounds %struct.seq_oss_devinfo, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %port, align 8
  %queue = getelementptr inbounds %struct.seq_oss_devinfo, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %queue, align 4
  %5 = load ptr, ptr @client_table, align 4
  %cmp1 = icmp eq ptr %5, null
  br i1 %cmp1, label %if.end.if.end12_crit_edge, label %for.inc

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

for.inc:                                          ; preds = %if.end
  %6 = load ptr, ptr getelementptr inbounds ([16 x ptr], ptr @client_table, i32 0, i32 1), align 4
  %cmp1.1 = icmp eq ptr %6, null
  br i1 %cmp1.1, label %for.inc.if.end12_crit_edge, label %for.inc.1

for.inc.if.end12_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

for.inc.1:                                        ; preds = %for.inc
  %7 = load ptr, ptr getelementptr inbounds ([16 x ptr], ptr @client_table, i32 0, i32 2), align 4
  %cmp1.2 = icmp eq ptr %7, null
  br i1 %cmp1.2, label %for.inc.1.if.end12_crit_edge, label %for.inc.2

for.inc.1.if.end12_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

for.inc.2:                                        ; preds = %for.inc.1
  %8 = load ptr, ptr getelementptr inbounds ([16 x ptr], ptr @client_table, i32 0, i32 3), align 4
  %cmp1.3 = icmp eq ptr %8, null
  br i1 %cmp1.3, label %for.inc.2.if.end12_crit_edge, label %for.inc.3

for.inc.2.if.end12_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

for.inc.3:                                        ; preds = %for.inc.2
  %9 = load ptr, ptr getelementptr inbounds ([16 x ptr], ptr @client_table, i32 0, i32 4), align 4
  %cmp1.4 = icmp eq ptr %9, null
  br i1 %cmp1.4, label %for.inc.3.if.end12_crit_edge, label %for.inc.4

for.inc.3.if.end12_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

for.inc.4:                                        ; preds = %for.inc.3
  %10 = load ptr, ptr getelementptr inbounds ([16 x ptr], ptr @client_table, i32 0, i32 5), align 4
  %cmp1.5 = icmp eq ptr %10, null
  br i1 %cmp1.5, label %for.inc.4.if.end12_crit_edge, label %for.inc.5

for.inc.4.if.end12_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

for.inc.5:                                        ; preds = %for.inc.4
  %11 = load ptr, ptr getelementptr inbounds ([16 x ptr], ptr @client_table, i32 0, i32 6), align 4
  %cmp1.6 = icmp eq ptr %11, null
  br i1 %cmp1.6, label %for.inc.5.if.end12_crit_edge, label %for.inc.6

for.inc.5.if.end12_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

for.inc.6:                                        ; preds = %for.inc.5
  %12 = load ptr, ptr getelementptr inbounds ([16 x ptr], ptr @client_table, i32 0, i32 7), align 4
  %cmp1.7 = icmp eq ptr %12, null
  br i1 %cmp1.7, label %for.inc.6.if.end12_crit_edge, label %for.inc.7

for.inc.6.if.end12_crit_edge:                     ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

for.inc.7:                                        ; preds = %for.inc.6
  %13 = load ptr, ptr getelementptr inbounds ([16 x ptr], ptr @client_table, i32 0, i32 8), align 4
  %cmp1.8 = icmp eq ptr %13, null
  br i1 %cmp1.8, label %for.inc.7.if.end12_crit_edge, label %for.inc.8

for.inc.7.if.end12_crit_edge:                     ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

for.inc.8:                                        ; preds = %for.inc.7
  %14 = load ptr, ptr getelementptr inbounds ([16 x ptr], ptr @client_table, i32 0, i32 9), align 4
  %cmp1.9 = icmp eq ptr %14, null
  br i1 %cmp1.9, label %for.inc.8.if.end12_crit_edge, label %for.inc.9

for.inc.8.if.end12_crit_edge:                     ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

for.inc.9:                                        ; preds = %for.inc.8
  %15 = load ptr, ptr getelementptr inbounds ([16 x ptr], ptr @client_table, i32 0, i32 10), align 4
  %cmp1.10 = icmp eq ptr %15, null
  br i1 %cmp1.10, label %for.inc.9.if.end12_crit_edge, label %for.inc.10

for.inc.9.if.end12_crit_edge:                     ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

for.inc.10:                                       ; preds = %for.inc.9
  %16 = load ptr, ptr getelementptr inbounds ([16 x ptr], ptr @client_table, i32 0, i32 11), align 4
  %cmp1.11 = icmp eq ptr %16, null
  br i1 %cmp1.11, label %for.inc.10.if.end12_crit_edge, label %for.inc.11

for.inc.10.if.end12_crit_edge:                    ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

for.inc.11:                                       ; preds = %for.inc.10
  %17 = load ptr, ptr getelementptr inbounds ([16 x ptr], ptr @client_table, i32 0, i32 12), align 4
  %cmp1.12 = icmp eq ptr %17, null
  br i1 %cmp1.12, label %for.inc.11.if.end12_crit_edge, label %for.inc.12

for.inc.11.if.end12_crit_edge:                    ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

for.inc.12:                                       ; preds = %for.inc.11
  %18 = load ptr, ptr getelementptr inbounds ([16 x ptr], ptr @client_table, i32 0, i32 13), align 4
  %cmp1.13 = icmp eq ptr %18, null
  br i1 %cmp1.13, label %for.inc.12.if.end12_crit_edge, label %for.inc.13

for.inc.12.if.end12_crit_edge:                    ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

for.inc.13:                                       ; preds = %for.inc.12
  %19 = load ptr, ptr getelementptr inbounds ([16 x ptr], ptr @client_table, i32 0, i32 14), align 4
  %cmp1.14 = icmp eq ptr %19, null
  br i1 %cmp1.14, label %for.inc.13.if.end12_crit_edge, label %for.inc.14

for.inc.13.if.end12_crit_edge:                    ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

for.inc.14:                                       ; preds = %for.inc.13
  %20 = load ptr, ptr getelementptr inbounds ([16 x ptr], ptr @client_table, i32 0, i32 15), align 4
  %cmp1.15 = icmp eq ptr %20, null
  br i1 %cmp1.15, label %for.inc.14.if.end12_crit_edge, label %for.inc.15

for.inc.14.if.end12_crit_edge:                    ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

for.inc.15:                                       ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 16, ptr %call7.i.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_seq_oss_open.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_seq_oss_open, %if.then10)) #8
          to label %_error [label %if.then10], !srcloc !89

if.then10:                                        ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @snd_seq_oss_open.__UNIQUE_ID_ddebug231, ptr noundef nonnull @.str.5) #8
  br label %_error

if.end12:                                         ; preds = %for.inc.14.if.end12_crit_edge, %for.inc.13.if.end12_crit_edge, %for.inc.12.if.end12_crit_edge, %for.inc.11.if.end12_crit_edge, %for.inc.10.if.end12_crit_edge, %for.inc.9.if.end12_crit_edge, %for.inc.8.if.end12_crit_edge, %for.inc.7.if.end12_crit_edge, %for.inc.6.if.end12_crit_edge, %for.inc.5.if.end12_crit_edge, %for.inc.4.if.end12_crit_edge, %for.inc.3.if.end12_crit_edge, %for.inc.2.if.end12_crit_edge, %for.inc.1.if.end12_crit_edge, %for.inc.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %i.0150.lcssa = phi i32 [ 0, %if.end.if.end12_crit_edge ], [ 1, %for.inc.if.end12_crit_edge ], [ 2, %for.inc.1.if.end12_crit_edge ], [ 3, %for.inc.2.if.end12_crit_edge ], [ 4, %for.inc.3.if.end12_crit_edge ], [ 5, %for.inc.4.if.end12_crit_edge ], [ 6, %for.inc.5.if.end12_crit_edge ], [ 7, %for.inc.6.if.end12_crit_edge ], [ 8, %for.inc.7.if.end12_crit_edge ], [ 9, %for.inc.8.if.end12_crit_edge ], [ 10, %for.inc.9.if.end12_crit_edge ], [ 11, %for.inc.10.if.end12_crit_edge ], [ 12, %for.inc.11.if.end12_crit_edge ], [ 13, %for.inc.12.if.end12_crit_edge ], [ 14, %for.inc.13.if.end12_crit_edge ], [ 15, %for.inc.14.if.end12_crit_edge ]
  %22 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %i.0150.lcssa, ptr %call7.i.i, align 8
  tail call void @snd_seq_oss_synth_setup(ptr noundef nonnull %call7.i.i) #8
  tail call void @snd_seq_oss_midi_setup(ptr noundef nonnull %call7.i.i) #8
  %synth_opened = getelementptr inbounds %struct.seq_oss_devinfo, ptr %call7.i.i, i32 0, i32 10
  %23 = ptrtoint ptr %synth_opened to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %synth_opened, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp13 = icmp eq i32 %24, 0
  br i1 %cmp13, label %land.lhs.true, label %if.end12.if.end16_crit_edge

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end12
  %max_mididev = getelementptr inbounds %struct.seq_oss_devinfo, ptr %call7.i.i, i32 0, i32 7
  %25 = ptrtoint ptr %max_mididev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %max_mididev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp14 = icmp eq i32 %26, 0
  br i1 %cmp14, label %land.lhs.true._error_crit_edge, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

land.lhs.true._error_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %_error

if.end16:                                         ; preds = %land.lhs.true.if.end16_crit_edge, %if.end12.if.end16_crit_edge
  call void @llvm.lifetime.start.p0(i64 164, ptr nonnull %port.i) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %callback.i) #8
  %27 = getelementptr inbounds %struct.snd_seq_port_callback, ptr %callback.i, i32 0, i32 1
  %28 = getelementptr inbounds %struct.snd_seq_port_callback, ptr %callback.i, i32 0, i32 6
  %29 = getelementptr inbounds %struct.snd_seq_port_callback, ptr %callback.i, i32 0, i32 7
  %30 = call ptr @memset(ptr %port.i, i32 0, i32 164)
  %31 = ptrtoint ptr %cseq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cseq, align 4
  %conv.i = trunc i32 %32 to i8
  %33 = ptrtoint ptr %port.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv.i, ptr %port.i, align 4
  %name.i = getelementptr inbounds %struct.snd_seq_port_info, ptr %port.i, i32 0, i32 1
  %34 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %call7.i.i, align 8
  %call.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name.i, ptr noundef nonnull @.str.24, i32 noundef %35) #8
  %capability.i = getelementptr inbounds %struct.snd_seq_port_info, ptr %port.i, i32 0, i32 2
  %36 = ptrtoint ptr %capability.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 3, ptr %capability.i, align 4
  %type.i = getelementptr inbounds %struct.snd_seq_port_info, ptr %port.i, i32 0, i32 3
  %37 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %type.i, align 4
  %midi_channels.i = getelementptr inbounds %struct.snd_seq_port_info, ptr %port.i, i32 0, i32 4
  %38 = ptrtoint ptr %midi_channels.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 128, ptr %midi_channels.i, align 4
  %synth_voices.i = getelementptr inbounds %struct.snd_seq_port_info, ptr %port.i, i32 0, i32 6
  %39 = ptrtoint ptr %synth_voices.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 128, ptr %synth_voices.i, align 4
  %40 = call ptr @memset(ptr %callback.i, i32 0, i32 24)
  %41 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call7.i.i, ptr %27, align 4
  %42 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @snd_seq_oss_event_input, ptr %28, align 4
  %43 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @free_devinfo, ptr %29, align 4
  %kernel.i = getelementptr inbounds %struct.snd_seq_port_info, ptr %port.i, i32 0, i32 9
  %44 = ptrtoint ptr %kernel.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %callback.i, ptr %kernel.i, align 4
  %45 = load i32, ptr @system_client, align 4
  %call1.i = call i32 @snd_seq_kernel_client_ctl(i32 noundef %45, i32 noundef -1062972640, ptr noundef nonnull %port.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %do.end22, label %if.end25

do.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %callback.i) #8
  call void @llvm.lifetime.end.p0(i64 164, ptr nonnull %port.i) #8
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #12
  br label %_error

if.end25:                                         ; preds = %if.end16
  %port4.i = getelementptr inbounds %struct.snd_seq_addr, ptr %port.i, i32 0, i32 1
  %46 = ptrtoint ptr %port4.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %port4.i, align 1
  %conv5.i = zext i8 %47 to i32
  %48 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %conv5.i, ptr %port, align 8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %callback.i) #8
  call void @llvm.lifetime.end.p0(i64 164, ptr nonnull %port.i) #8
  call void @llvm.lifetime.start.p0(i64 140, ptr nonnull %qinfo.i) #8
  %49 = call ptr @memset(ptr %qinfo.i, i32 0, i32 140)
  %50 = load i32, ptr @system_client, align 4
  %owner.i = getelementptr inbounds %struct.snd_seq_queue_info, ptr %qinfo.i, i32 0, i32 1
  %51 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %owner.i, align 4
  %locked.i = getelementptr inbounds %struct.snd_seq_queue_info, ptr %qinfo.i, i32 0, i32 2
  %52 = ptrtoint ptr %locked.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 -128, ptr %locked.i, align 4
  %name.i128 = getelementptr inbounds %struct.snd_seq_queue_info, ptr %qinfo.i, i32 0, i32 3
  %53 = call ptr @memcpy(ptr %name.i128, ptr @.str.25, i32 24)
  %call1.i129 = call i32 @snd_seq_kernel_client_ctl(i32 noundef %50, i32 noundef -1064545486, ptr noundef nonnull %qinfo.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i129)
  %cmp.i130 = icmp slt i32 %call1.i129, 0
  br i1 %cmp.i130, label %alloc_seq_queue.exit.thread, label %if.end29

alloc_seq_queue.exit.thread:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %qinfo.i) #8
  br label %_error

if.end29:                                         ; preds = %if.end25
  %54 = ptrtoint ptr %qinfo.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %qinfo.i, align 4
  %56 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %queue, align 4
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %qinfo.i) #8
  %57 = ptrtoint ptr %cseq to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %cseq, align 4
  %conv = trunc i32 %58 to i8
  %addr = getelementptr inbounds %struct.seq_oss_devinfo, ptr %call7.i.i, i32 0, i32 4
  %59 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv, ptr %addr, align 8
  %60 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %port, align 8
  %conv32 = trunc i32 %61 to i8
  %port34 = getelementptr inbounds %struct.seq_oss_devinfo, ptr %call7.i.i, i32 0, i32 4, i32 1
  %62 = ptrtoint ptr %port34 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv32, ptr %port34, align 1
  %seq_mode = getelementptr inbounds %struct.seq_oss_devinfo, ptr %call7.i.i, i32 0, i32 5
  %63 = ptrtoint ptr %seq_mode to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %level, ptr %seq_mode, align 4
  %f_flags.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %64 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %f_flags.i, align 4
  %and.i = and i32 %65, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %cmp.not.i, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp3.not.i = icmp ne i32 %and.i, 1
  %or5.i = zext i1 %cmp3.not.i to i32
  %and8.i = lshr i32 %65, 9
  %66 = and i32 %and8.i, 4
  %file_mode.1.i = or i32 %66, %or5.i
  %67 = or i32 %file_mode.1.i, %spec.select.i
  %file_mode = getelementptr inbounds %struct.seq_oss_devinfo, ptr %call7.i.i, i32 0, i32 6
  %68 = ptrtoint ptr %file_mode to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %file_mode, align 8
  br i1 %cmp3.not.i, label %if.then38, label %if.end29.if.end44_crit_edge

if.end29.if.end44_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.then38:                                        ; preds = %if.end29
  %69 = load i32, ptr @maxqlen, align 4
  %call39 = call ptr @snd_seq_oss_readq_new(ptr noundef nonnull %call7.i.i, i32 noundef %69) #8
  %readq = getelementptr inbounds %struct.seq_oss_devinfo, ptr %call7.i.i, i32 0, i32 12
  %70 = ptrtoint ptr %readq to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call39, ptr %readq, align 4
  %tobool41.not = icmp eq ptr %call39, null
  br i1 %tobool41.not, label %if.then38._error_crit_edge, label %if.then38.if.end44_crit_edge

if.then38.if.end44_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.then38._error_crit_edge:                       ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  br label %_error

if.end44:                                         ; preds = %if.then38.if.end44_crit_edge, %if.end29.if.end44_crit_edge
  %71 = ptrtoint ptr %file_mode to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %file_mode, align 8
  %and46 = and i32 %72, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end44.if.end54_crit_edge, label %if.then48

if.end44.if.end54_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then48:                                        ; preds = %if.end44
  %73 = load i32, ptr @maxqlen, align 4
  %call49 = call ptr @snd_seq_oss_writeq_new(ptr noundef nonnull %call7.i.i, i32 noundef %73) #8
  %writeq = getelementptr inbounds %struct.seq_oss_devinfo, ptr %call7.i.i, i32 0, i32 11
  %74 = ptrtoint ptr %writeq to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call49, ptr %writeq, align 8
  %tobool51.not = icmp eq ptr %call49, null
  br i1 %tobool51.not, label %if.then48._error_crit_edge, label %if.then48.if.end54_crit_edge

if.then48.if.end54_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then48._error_crit_edge:                       ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  br label %_error

if.end54:                                         ; preds = %if.then48.if.end54_crit_edge, %if.end44.if.end54_crit_edge
  %call55 = call ptr @snd_seq_oss_timer_new(ptr noundef nonnull %call7.i.i) #8
  %timer = getelementptr inbounds %struct.seq_oss_devinfo, ptr %call7.i.i, i32 0, i32 13
  %75 = ptrtoint ptr %timer to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call55, ptr %timer, align 8
  %tobool57.not = icmp eq ptr %call55, null
  br i1 %tobool57.not, label %do.end61, label %if.end64

do.end61:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  %call63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #12
  br label %_error

if.end64:                                         ; preds = %if.end54
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %76 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call7.i.i, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %level)
  %cmp65 = icmp eq i32 %level, 1
  br i1 %cmp65, label %if.then67, label %if.else

if.then67:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  call void @snd_seq_oss_synth_setup_midi(ptr noundef nonnull %call7.i.i) #8
  br label %if.end73

if.else:                                          ; preds = %if.end64
  %77 = ptrtoint ptr %file_mode to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %file_mode, align 8
  %and69 = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %if.else.if.end73_crit_edge, label %if.then71

if.else.if.end73_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73

if.then71:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  call void @snd_seq_oss_midi_open_all(ptr noundef nonnull %call7.i.i, i32 noundef 1) #8
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %if.else.if.end73_crit_edge, %if.then67
  %79 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %call7.i.i, align 8
  %arrayidx75 = getelementptr [16 x ptr], ptr @client_table, i32 0, i32 %80
  %81 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call7.i.i, ptr %arrayidx75, align 4
  %82 = load i32, ptr @num_clients, align 4
  %inc76 = add i32 %82, 1
  store i32 %inc76, ptr @num_clients, align 4
  br label %cleanup

_error:                                           ; preds = %do.end61, %if.then48._error_crit_edge, %if.then38._error_crit_edge, %alloc_seq_queue.exit.thread, %do.end22, %land.lhs.true._error_crit_edge, %if.then10, %for.inc.15
  %rc.0 = phi i32 [ %call1.i, %do.end22 ], [ -12, %do.end61 ], [ -12, %if.then10 ], [ -19, %land.lhs.true._error_crit_edge ], [ -12, %if.then38._error_crit_edge ], [ -12, %if.then48._error_crit_edge ], [ -12, %for.inc.15 ], [ %call1.i129, %alloc_seq_queue.exit.thread ]
  call void @snd_seq_oss_synth_cleanup(ptr noundef nonnull %call7.i.i) #8
  call void @snd_seq_oss_midi_cleanup(ptr noundef nonnull %call7.i.i) #8
  %83 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %queue, align 4
  call void @llvm.lifetime.start.p0(i64 140, ptr nonnull %qinfo.i133) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp.i134 = icmp slt i32 %84, 0
  br i1 %cmp.i134, label %_error.delete_seq_queue.exit_crit_edge, label %if.end.i136

_error.delete_seq_queue.exit_crit_edge:           ; preds = %_error
  call void @__sanitizer_cov_trace_pc() #10
  br label %delete_seq_queue.exit

if.end.i136:                                      ; preds = %_error
  %85 = getelementptr inbounds i8, ptr %qinfo.i133, i32 4
  %86 = call ptr @memset(ptr %85, i32 0, i32 136)
  %87 = ptrtoint ptr %qinfo.i133 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %84, ptr %qinfo.i133, align 4
  %88 = load i32, ptr @system_client, align 4
  %call.i135 = call i32 @snd_seq_kernel_client_ctl(i32 noundef %88, i32 noundef 1082938163, ptr noundef nonnull %qinfo.i133) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i135)
  %cmp2.i = icmp slt i32 %call.i135, 0
  br i1 %cmp2.i, label %do.end.i, label %if.end.i136.delete_seq_queue.exit_crit_edge

if.end.i136.delete_seq_queue.exit_crit_edge:      ; preds = %if.end.i136
  call void @__sanitizer_cov_trace_pc() #10
  br label %delete_seq_queue.exit

do.end.i:                                         ; preds = %if.end.i136
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %84, i32 noundef %call.i135) #12
  br label %delete_seq_queue.exit

delete_seq_queue.exit:                            ; preds = %do.end.i, %if.end.i136.delete_seq_queue.exit_crit_edge, %_error.delete_seq_queue.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %qinfo.i133) #8
  %89 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %port, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp.i138 = icmp slt i32 %90, 0
  br i1 %cmp.i138, label %if.then.i, label %if.end.i141

if.then.i:                                        ; preds = %delete_seq_queue.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end.i141:                                      ; preds = %delete_seq_queue.exit
  call void @__sanitizer_cov_trace_pc() #10
  %91 = ptrtoint ptr %cseq to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %cseq, align 4
  %call.i140 = call i32 @snd_seq_event_port_detach(i32 noundef %92, i32 noundef %90) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end.i141, %if.then.i, %if.end73, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end73 ], [ -12, %entry.cleanup_crit_edge ], [ %rc.0, %if.then.i ], [ %rc.0, %if.end.i141 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_seq_oss_synth_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_seq_oss_midi_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_seq_oss_readq_new(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_seq_oss_writeq_new(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_seq_oss_timer_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_seq_oss_synth_setup_midi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_seq_oss_midi_open_all(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_seq_oss_synth_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_seq_oss_midi_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_seq_oss_release(ptr noundef %dp) local_unnamed_addr #3 align 64 {
entry:
  %qinfo.i = alloca %struct.snd_seq_queue_info, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dp, align 4
  %arrayidx = getelementptr [16 x ptr], ptr @client_table, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %arrayidx, align 4
  %3 = load i32, ptr @num_clients, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr @num_clients, align 4
  tail call void @snd_seq_oss_reset(ptr noundef %dp)
  tail call void @snd_seq_oss_synth_cleanup(ptr noundef %dp) #8
  tail call void @snd_seq_oss_midi_cleanup(ptr noundef %dp) #8
  %queue1 = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 3
  %4 = ptrtoint ptr %queue1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %queue1, align 4
  %port = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 2
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp = icmp sgt i32 %7, -1
  br i1 %cmp, label %delete_port.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

delete_port.exit:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %cseq.i = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 1
  %8 = ptrtoint ptr %cseq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cseq.i, align 4
  %call.i = tail call i32 @snd_seq_event_port_detach(i32 noundef %9, i32 noundef %7) #8
  br label %if.end

if.end:                                           ; preds = %delete_port.exit, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 140, ptr nonnull %qinfo.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i9 = icmp slt i32 %5, 0
  br i1 %cmp.i9, label %if.end.delete_seq_queue.exit_crit_edge, label %if.end.i11

if.end.delete_seq_queue.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %delete_seq_queue.exit

if.end.i11:                                       ; preds = %if.end
  %10 = getelementptr inbounds i8, ptr %qinfo.i, i32 4
  %11 = call ptr @memset(ptr %10, i32 0, i32 136)
  %12 = ptrtoint ptr %qinfo.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %5, ptr %qinfo.i, align 4
  %13 = load i32, ptr @system_client, align 4
  %call.i10 = call i32 @snd_seq_kernel_client_ctl(i32 noundef %13, i32 noundef 1082938163, ptr noundef nonnull %qinfo.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10)
  %cmp2.i = icmp slt i32 %call.i10, 0
  br i1 %cmp2.i, label %do.end.i, label %if.end.i11.delete_seq_queue.exit_crit_edge

if.end.i11.delete_seq_queue.exit_crit_edge:       ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #10
  br label %delete_seq_queue.exit

do.end.i:                                         ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %5, i32 noundef %call.i10) #12
  br label %delete_seq_queue.exit

delete_seq_queue.exit:                            ; preds = %do.end.i, %if.end.i11.delete_seq_queue.exit_crit_edge, %if.end.delete_seq_queue.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %qinfo.i) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_seq_oss_reset(ptr noundef %dp) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %max_synthdev = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 8
  %0 = ptrtoint ptr %max_synthdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_synthdev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp30 = icmp sgt i32 %1, 0
  br i1 %cmp30, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.031 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  tail call void @snd_seq_oss_synth_reset(ptr noundef %dp, i32 noundef %i.031) #8
  %inc = add nuw nsw i32 %i.031, 1
  %2 = ptrtoint ptr %max_synthdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_synthdev, align 4
  %cmp = icmp slt i32 %inc, %3
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %seq_mode = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 5
  %4 = ptrtoint ptr %seq_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %seq_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp1.not = icmp eq i32 %5, 1
  br i1 %cmp1.not, label %for.end.if.end_crit_edge, label %for.cond2.preheader

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.cond2.preheader:                              ; preds = %for.end
  %max_mididev = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 7
  %6 = ptrtoint ptr %max_mididev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_mididev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp332 = icmp sgt i32 %7, 0
  br i1 %cmp332, label %for.cond2.preheader.for.body4_crit_edge, label %for.cond2.preheader.if.end_crit_edge

for.cond2.preheader.if.end_crit_edge:             ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.cond2.preheader.for.body4_crit_edge:          ; preds = %for.cond2.preheader
  br label %for.body4

for.body4:                                        ; preds = %for.body4.for.body4_crit_edge, %for.cond2.preheader.for.body4_crit_edge
  %i.133 = phi i32 [ %inc6, %for.body4.for.body4_crit_edge ], [ 0, %for.cond2.preheader.for.body4_crit_edge ]
  tail call void @snd_seq_oss_midi_reset(ptr noundef %dp, i32 noundef %i.133) #8
  %inc6 = add nuw nsw i32 %i.133, 1
  %8 = ptrtoint ptr %max_mididev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_mididev, align 4
  %cmp3 = icmp slt i32 %inc6, %9
  br i1 %cmp3, label %for.body4.for.body4_crit_edge, label %for.body4.if.end_crit_edge

for.body4.if.end_crit_edge:                       ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body4.for.body4_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body4

if.end:                                           ; preds = %for.body4.if.end_crit_edge, %for.cond2.preheader.if.end_crit_edge, %for.end.if.end_crit_edge
  %readq = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 12
  %10 = ptrtoint ptr %readq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %readq, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.end.if.end10_crit_edge, label %if.then8

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @snd_seq_oss_readq_clear(ptr noundef nonnull %11) #8
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end.if.end10_crit_edge
  %writeq = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 11
  %12 = ptrtoint ptr %writeq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %writeq, align 4
  %tobool11.not = icmp eq ptr %13, null
  br i1 %tobool11.not, label %if.end10.if.end14_crit_edge, label %if.then12

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @snd_seq_oss_writeq_clear(ptr noundef nonnull %13) #8
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end10.if.end14_crit_edge
  %timer = getelementptr inbounds %struct.seq_oss_devinfo, ptr %dp, i32 0, i32 13
  %14 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %timer, align 4
  %call = tail call i32 @snd_seq_oss_timer_stop(ptr noundef %15) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_seq_oss_synth_reset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_seq_oss_midi_reset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_seq_oss_readq_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_seq_oss_writeq_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_oss_timer_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @enabled_str(i32 noundef %bool) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bool)
  %tobool.not = icmp eq i32 %bool, 0
  %cond = select i1 %tobool.not, ptr @.str.11, ptr @.str.10
  ret ptr %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_seq_oss_system_info_read(ptr noundef %buf) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf, align 4
  %2 = load i32, ptr @system_client, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.12, i32 noundef %2) #8
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %buf, align 4
  %5 = load i32, ptr @system_port, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %4, ptr noundef nonnull @.str.13, i32 noundef %5) #8
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buf, align 4
  %8 = load i32, ptr @num_clients, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %7, ptr noundef nonnull @.str.14, i32 noundef %8) #8
  %9 = load i32, ptr @num_clients, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp44 = icmp sgt i32 %9, 0
  br i1 %cmp44, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.045 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buf, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %11, ptr noundef nonnull @.str.15, i32 noundef %i.045) #8
  %arrayidx = getelementptr [16 x ptr], ptr @client_table, i32 0, i32 %i.045
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %13, null
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buf, align 4
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %15, ptr noundef nonnull @.str.16) #8
  br label %for.inc

if.end:                                           ; preds = %for.body
  %port = getelementptr inbounds %struct.seq_oss_devinfo, ptr %13, i32 0, i32 2
  %16 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port, align 4
  %queue = getelementptr inbounds %struct.seq_oss_devinfo, ptr %13, i32 0, i32 3
  %18 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %queue, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %15, ptr noundef nonnull @.str.17, i32 noundef %17, i32 noundef %19) #8
  %20 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buf, align 4
  %seq_mode = getelementptr inbounds %struct.seq_oss_devinfo, ptr %13, i32 0, i32 5
  %22 = ptrtoint ptr %seq_mode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %seq_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool7.not = icmp eq i32 %23, 0
  %cond = select i1 %tobool7.not, ptr @.str.20, ptr @.str.19
  %file_mode = getelementptr inbounds %struct.seq_oss_devinfo, ptr %13, i32 0, i32 6
  %24 = ptrtoint ptr %file_mode to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %file_mode, align 4
  %and.i = and i32 %25, 3
  %arrayidx.i = getelementptr [4 x ptr], ptr @filemode_str.str, i32 0, i32 %and.i
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %21, ptr noundef nonnull @.str.18, ptr noundef nonnull %cond, ptr noundef %27) #8
  %28 = ptrtoint ptr %seq_mode to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %seq_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool9.not = icmp eq i32 %29, 0
  br i1 %tobool9.not, label %if.end.if.end13_crit_edge, label %if.then10

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %buf, align 4
  %timer = getelementptr inbounds %struct.seq_oss_devinfo, ptr %13, i32 0, i32 13
  %32 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %timer, align 4
  %oss_tempo = getelementptr inbounds %struct.seq_oss_timer, ptr %33, i32 0, i32 6
  %34 = ptrtoint ptr %oss_tempo to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %oss_tempo, align 4
  %oss_timebase = getelementptr inbounds %struct.seq_oss_timer, ptr %33, i32 0, i32 7
  %36 = ptrtoint ptr %oss_timebase to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %oss_timebase, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %31, ptr noundef nonnull @.str.21, i32 noundef %35, i32 noundef %37) #8
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end.if.end13_crit_edge
  %38 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %buf, align 4
  %40 = load i32, ptr @maxqlen, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %39, ptr noundef nonnull @.str.22, i32 noundef %40) #8
  %41 = ptrtoint ptr %file_mode to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %file_mode, align 4
  %and = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.end13.for.inc_crit_edge, label %land.lhs.true

if.end13.for.inc_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end13
  %readq = getelementptr inbounds %struct.seq_oss_devinfo, ptr %13, i32 0, i32 12
  %43 = ptrtoint ptr %readq to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %readq, align 4
  %tobool17.not = icmp eq ptr %44, null
  br i1 %tobool17.not, label %land.lhs.true.for.inc_crit_edge, label %if.then18

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @snd_seq_oss_readq_info_read(ptr noundef nonnull %44, ptr noundef %buf) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then18, %land.lhs.true.for.inc_crit_edge, %if.end13.for.inc_crit_edge, %if.then
  %inc = add nuw nsw i32 %i.045, 1
  %45 = load i32, ptr @num_clients, align 4
  %cmp = icmp slt i32 %inc, %45
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_seq_oss_readq_info_read(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @async_call_lookup_ports(ptr nocapture noundef readnone %work) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @system_client, align 4
  %call = tail call i32 @snd_seq_oss_midi_lookup_ports(i32 noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_oss_midi_lookup_ports(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_oss_midi_check_new_port(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_oss_midi_check_exit_port(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_oss_event_input(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @free_devinfo(ptr noundef %private) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %timer = getelementptr inbounds %struct.seq_oss_devinfo, ptr %private, i32 0, i32 13
  %0 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %timer, align 4
  tail call void @snd_seq_oss_timer_delete(ptr noundef %1) #8
  %writeq = getelementptr inbounds %struct.seq_oss_devinfo, ptr %private, i32 0, i32 11
  %2 = ptrtoint ptr %writeq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %writeq, align 4
  tail call void @snd_seq_oss_writeq_delete(ptr noundef %3) #8
  %readq = getelementptr inbounds %struct.seq_oss_devinfo, ptr %private, i32 0, i32 12
  %4 = ptrtoint ptr %readq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %readq, align 4
  tail call void @snd_seq_oss_readq_delete(ptr noundef %5) #8
  tail call void @kfree(ptr noundef %private) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_seq_oss_timer_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_seq_oss_writeq_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_seq_oss_readq_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_event_port_detach(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !42, !43, !45, !47, !49, !51, !52, !54, !56, !58, !60, !61, !63, !65, !67, !68, !69, !70, !72, !74, !76, !78}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86, !87}
!llvm.ident = !{!88}

!0 = !{ptr @__param_maxqlen, !1, !"__param_maxqlen", i1 false, i1 false}
!1 = !{!"../sound/core/seq/oss/seq_oss_init.c", i32 27, i32 1}
!2 = !{ptr @__UNIQUE_ID_maxqlentype229, !1, !"__UNIQUE_ID_maxqlentype229", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_maxqlen230, !4, !"__UNIQUE_ID_maxqlen230", i1 false, i1 false}
!4 = !{!"../sound/core/seq/oss/seq_oss_init.c", i32 28, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../sound/core/seq/oss/seq_oss_init.c", i32 77, i32 8}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../sound/core/seq/oss/seq_oss_init.c", i32 85, i32 21}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../sound/core/seq/oss/seq_oss_init.c", i32 192, i32 3}
!11 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @snd_seq_oss_open.__UNIQUE_ID_ddebug231, !10, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../sound/core/seq/oss/seq_oss_init.c", i32 210, i32 3}
!17 = !{ptr @snd_seq_oss_open._entry, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @snd_seq_oss_open._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/core/seq/oss/seq_oss_init.c", i32 251, i32 3}
!21 = !{ptr @snd_seq_oss_open._entry.7, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @snd_seq_oss_open._entry_ptr.9, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../sound/core/seq/oss/seq_oss_init.c", i32 461, i32 16}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/core/seq/oss/seq_oss_init.c", i32 461, i32 28}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/core/seq/oss/seq_oss_init.c", i32 483, i32 2}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/core/seq/oss/seq_oss_init.c", i32 484, i32 2}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/core/seq/oss/seq_oss_init.c", i32 486, i32 2}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/core/seq/oss/seq_oss_init.c", i32 488, i32 3}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/core/seq/oss/seq_oss_init.c", i32 491, i32 4}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/core/seq/oss/seq_oss_init.c", i32 494, i32 3}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/core/seq/oss/seq_oss_init.c", i32 495, i32 3}
!41 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/core/seq/oss/seq_oss_init.c", i32 499, i32 4}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/core/seq/oss/seq_oss_init.c", i32 501, i32 3}
!47 = !{ptr @num_clients, !48, !"num_clients", i1 false, i1 false}
!48 = !{!"../sound/core/seq/oss/seq_oss_init.c", i32 33, i32 12}
!49 = !{ptr @client_table, !50, !"client_table", i1 false, i1 false}
!50 = !{!"../sound/core/seq/oss/seq_oss_init.c", i32 34, i32 32}
!51 = !{ptr @__param_str_maxqlen, !1, !"__param_str_maxqlen", i1 false, i1 false}
!52 = !{ptr @maxqlen, !53, !"maxqlen", i1 false, i1 false}
!53 = !{!"../sound/core/seq/oss/seq_oss_init.c", i32 26, i32 12}
!54 = !{ptr @system_client, !55, !"system_client", i1 false, i1 false}
!55 = !{!"../sound/core/seq/oss/seq_oss_init.c", i32 30, i32 12}
!56 = !{ptr @system_port, !57, !"system_port", i1 false, i1 false}
!57 = !{!"../sound/core/seq/oss/seq_oss_init.c", i32 31, i32 12}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/core/seq/oss/seq_oss_init.c", i32 57, i32 8}
!60 = !{ptr @async_lookup_work, !59, !"async_lookup_work", i1 false, i1 false}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/core/seq/oss/seq_oss_init.c", i32 308, i32 21}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/core/seq/oss/seq_oss_init.c", i32 356, i32 21}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/core/seq/oss/seq_oss_init.c", i32 379, i32 3}
!67 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @delete_seq_queue._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @delete_seq_queue._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/core/seq/oss/seq_oss_init.c", i32 468, i32 3}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/core/seq/oss/seq_oss_init.c", i32 468, i32 11}
!74 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/core/seq/oss/seq_oss_init.c", i32 468, i32 19}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/core/seq/oss/seq_oss_init.c", i32 468, i32 28}
!78 = !{ptr @filemode_str.str, !79, !"str", i1 false, i1 false}
!79 = !{!"../sound/core/seq/oss/seq_oss_init.c", i32 467, i32 28}
!80 = !{i32 1, !"wchar_size", i32 2}
!81 = !{i32 1, !"min_enum_size", i32 4}
!82 = !{i32 8, !"branch-target-enforcement", i32 0}
!83 = !{i32 8, !"sign-return-address", i32 0}
!84 = !{i32 8, !"sign-return-address-all", i32 0}
!85 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!86 = !{i32 7, !"uwtable", i32 1}
!87 = !{i32 7, !"frame-pointer", i32 2}
!88 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!89 = !{i64 2148931483, i64 2148931488, i64 2148931501, i64 2148931545, i64 2148931579, i64 2148931600}
