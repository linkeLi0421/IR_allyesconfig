; ModuleID = '/llk/IR_all_yes/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c_pt.bc'
source_filename = "../drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.vc_audio_stop = type { i32 }
%struct.vc_audio_msg = type { i32, %union.anon.73 }
%union.anon.73 = type { %struct.vc_audio_write }
%struct.vc_audio_write = type { i32, i32, i32, i16, i16 }
%struct.vchiq_service_params_kernel = type { i32, ptr, ptr, i16, i16 }
%struct.bcm2835_chip = type { ptr, ptr, ptr, ptr, [8 x ptr], i32, i32, i32, i32, i32, %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.bcm2835_audio_instance = type { ptr, i32, %struct.completion, %struct.mutex, ptr, i32, i32, i16 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.bcm2835_alsa_stream = type { ptr, ptr, %struct.snd_pcm_indirect, i32, %struct.atomic_t, i32, i32, i32, i64, ptr, i32 }
%struct.snd_pcm_indirect = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vchiq_header = type { i32, i32, [0 x i8] }

@__param_str_force_bulk = internal constant [23 x i8] c"snd_bcm2835.force_bulk\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@force_bulk = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_force_bulk = internal constant %struct.kernel_param { ptr @__param_str_force_bulk, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @force_bulk } }, section "__param", align 4
@__UNIQUE_ID_force_bulktype230 = internal constant [37 x i8] c"snd_bcm2835.parmtype=force_bulk:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_force_bulk231 = internal constant [62 x i8] c"snd_bcm2835.parm=force_bulk:Force use of vchiq bulk for audio\00", section ".modinfo", align 1
@bcm2835_new_vchi_ctx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 177, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"failed to initialise VCHI instance (ret=%d)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bcm2835_new_vchi_ctx\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bcm2835_new_vchi_ctx._entry_ptr = internal global ptr @bcm2835_new_vchi_ctx._entry, section ".printk_index", align 4
@bcm2835_new_vchi_ctx.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"snd_bcm2835\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to connect VCHI instance (ret=%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@bcm2835_audio_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&instance->vchi_mutex\00", [42 x i8] zeroinitializer }, align 32
@__const.bcm2835_audio_drain.m = private unnamed_addr constant { i32, { %struct.vc_audio_stop, [12 x i8] } } { i32 7, { %struct.vc_audio_stop, [12 x i8] } { %struct.vc_audio_stop { i32 1 }, [12 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF" } }, align 4
@bcm2835_audio_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 363, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed on %d bytes transfer (status=%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bcm2835_audio_write\00", [44 x i8] zeroinitializer }, align 32
@bcm2835_audio_write._entry_ptr = internal global ptr @bcm2835_audio_write._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@vc_vchi_audio_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 141, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"failed to open VCHI service connection (status=%d)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vc_vchi_audio_init\00", [45 x i8] zeroinitializer }, align 32
@vc_vchi_audio_init._entry_ptr = internal global ptr @vc_vchi_audio_init._entry, section ".printk_index", align 4
@audio_vchi_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 109, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"invalid cookie\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"audio_vchi_callback\00", [44 x i8] zeroinitializer }, align 32
@audio_vchi_callback._entry_ptr = internal global ptr @audio_vchi_callback._entry, section ".printk_index", align 4
@audio_vchi_callback._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 114, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unexpected callback type=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@audio_vchi_callback._entry_ptr.16 = internal global ptr @audio_vchi_callback._entry.14, section ".printk_index", align 4
@vc_vchi_audio_deinit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 163, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"failed to close VCHI service connection (status=%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vc_vchi_audio_deinit\00", [43 x i8] zeroinitializer }, align 32
@vc_vchi_audio_deinit._entry_ptr = internal global ptr @vc_vchi_audio_deinit._entry, section ".printk_index", align 4
@bcm2835_audio_send_msg_locked._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 52, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"vchi message queue failed: %d, msg=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bcm2835_audio_send_msg_locked\00", [34 x i8] zeroinitializer }, align 32
@bcm2835_audio_send_msg_locked._entry_ptr = internal global ptr @bcm2835_audio_send_msg_locked._entry, section ".printk_index", align 4
@bcm2835_audio_send_msg_locked._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.2, i32 60, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"vchi message timeout, msg=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@bcm2835_audio_send_msg_locked._entry_ptr.23 = internal global ptr @bcm2835_audio_send_msg_locked._entry.21, section ".printk_index", align 4
@bcm2835_audio_send_msg_locked._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.20, ptr @.str.2, i32 65, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"vchi message response error:%d, msg=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@bcm2835_audio_send_msg_locked._entry_ptr.26 = internal global ptr @bcm2835_audio_send_msg_locked._entry.24, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.28 = private unnamed_addr constant [11 x i8] c"force_bulk\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 21, i32 13 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 176, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 183, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 213, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 361, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 139, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 109, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 114, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 161, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 50, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 59, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.122 = private constant [63 x i8] c"../drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 63, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 87, i32 2 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_force_bulk231, ptr @__UNIQUE_ID_force_bulktype230, ptr @__param_force_bulk, ptr @audio_vchi_callback._entry, ptr @audio_vchi_callback._entry.14, ptr @audio_vchi_callback._entry_ptr, ptr @audio_vchi_callback._entry_ptr.16, ptr @bcm2835_audio_send_msg_locked._entry, ptr @bcm2835_audio_send_msg_locked._entry.21, ptr @bcm2835_audio_send_msg_locked._entry.24, ptr @bcm2835_audio_send_msg_locked._entry_ptr, ptr @bcm2835_audio_send_msg_locked._entry_ptr.23, ptr @bcm2835_audio_send_msg_locked._entry_ptr.26, ptr @bcm2835_audio_write._entry, ptr @bcm2835_audio_write._entry_ptr, ptr @bcm2835_new_vchi_ctx._entry, ptr @bcm2835_new_vchi_ctx._entry_ptr, ptr @vc_vchi_audio_deinit._entry, ptr @vc_vchi_audio_deinit._entry_ptr, ptr @vc_vchi_audio_init._entry, ptr @vc_vchi_audio_init._entry_ptr, ptr @force_bulk, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @bcm2835_audio_open.__key, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @init_completion.__key, ptr @.str.27], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @force_bulk to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_new_vchi_ctx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_audio_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_audio_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc_vchi_audio_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_vchi_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_vchi_callback._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc_vchi_audio_deinit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_audio_send_msg_locked._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_audio_send_msg_locked._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_audio_send_msg_locked._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcm2835_new_vchi_ctx(ptr noundef %dev, ptr noundef %vchi_ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @vchiq_initialise(ptr noundef %vchi_ctx) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %call) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %vchi_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vchi_ctx, align 4
  %call2 = tail call i32 @vchiq_connect(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %do.body5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body5:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm2835_new_vchi_ctx.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm2835_new_vchi_ctx, %if.then10)) #6
          to label %do.end13 [label %if.then10], !srcloc !72

if.then10:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm2835_new_vchi_ctx.__UNIQUE_ID_ddebug232, ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %call2) #6
  br label %do.end13

do.end13:                                         ; preds = %if.then10, %do.body5
  %2 = ptrtoint ptr %vchi_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vchi_ctx, align 4
  tail call void @kfree(ptr noundef %3) #6
  %4 = ptrtoint ptr %vchi_ctx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %vchi_ctx, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end13, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %do.end13 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchiq_initialise(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchiq_connect(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bcm2835_free_vchi_ctx(ptr nocapture noundef %vchi_ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vchi_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vchi_ctx, align 4
  %call = tail call i32 @vchiq_shutdown(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !73

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 198, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %vchi_ctx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %vchi_ctx, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchiq_shutdown(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcm2835_audio_open(ptr noundef %alsa_stream) local_unnamed_addr #0 align 64 {
entry:
  %m.i = alloca %struct.vc_audio_msg, align 4
  %params.i = alloca %struct.vchiq_service_params_kernel, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %alsa_stream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %alsa_stream, align 8
  %vchi_ctx1 = getelementptr inbounds %struct.bcm2835_chip, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %vchi_ctx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vchi_ctx1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 172) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  %vchi_mutex = getelementptr inbounds %struct.bcm2835_audio_instance, ptr %call7.i.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %vchi_mutex, ptr noundef nonnull @.str.7, ptr noundef nonnull @bcm2835_audio_open.__key) #6
  %5 = ptrtoint ptr %alsa_stream to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %alsa_stream, align 8
  %dev = getelementptr inbounds %struct.bcm2835_chip, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %call7.i.i, align 8
  %alsa_stream4 = getelementptr inbounds %struct.bcm2835_audio_instance, ptr %call7.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %alsa_stream4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %alsa_stream, ptr %alsa_stream4, align 4
  %instance5 = getelementptr inbounds %struct.bcm2835_alsa_stream, ptr %alsa_stream, i32 0, i32 9
  %11 = ptrtoint ptr %instance5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i, ptr %instance5, align 8
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %params.i) #6
  %14 = getelementptr inbounds %struct.vchiq_service_params_kernel, ptr %params.i, i32 0, i32 1
  %15 = getelementptr inbounds %struct.vchiq_service_params_kernel, ptr %params.i, i32 0, i32 2
  %16 = getelementptr inbounds %struct.vchiq_service_params_kernel, ptr %params.i, i32 0, i32 3
  %17 = getelementptr inbounds %struct.vchiq_service_params_kernel, ptr %params.i, i32 0, i32 4
  %18 = ptrtoint ptr %params.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1096107091, ptr %params.i, align 4
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @audio_vchi_callback, ptr %14, align 4
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i, ptr %15, align 4
  %21 = ptrtoint ptr %16 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 2, ptr %16, align 4
  %22 = ptrtoint ptr %17 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 1, ptr %17, align 2
  %service_handle.i = getelementptr inbounds %struct.bcm2835_audio_instance, ptr %call7.i.i, i32 0, i32 1
  %call.i = call i32 @vchiq_open_service(ptr noundef %13, ptr noundef nonnull %params.i, ptr noundef %service_handle.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end9, label %vc_vchi_audio_init.exit.thread

vc_vchi_audio_init.exit.thread:                   ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call7.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.10, i32 noundef %call.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %params.i) #6
  br label %free_instance

if.end9:                                          ; preds = %do.body
  %25 = ptrtoint ptr %service_handle.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %service_handle.i, align 4
  %call2.i = call i32 @vchiq_release_service(i32 noundef %26) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %params.i) #6
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %m.i) #6
  %27 = getelementptr inbounds i8, ptr %m.i, i32 4
  %28 = call ptr @memset(ptr %27, i32 0, i32 16)
  %29 = ptrtoint ptr %m.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 4, ptr %m.i, align 4
  call void @mutex_lock_nested(ptr noundef %vchi_mutex, i32 noundef 0) #6
  %30 = ptrtoint ptr %service_handle.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %service_handle.i, align 4
  %call.i.i.i = call i32 @vchiq_use_service(i32 noundef %31) #6
  %32 = ptrtoint ptr %service_handle.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %service_handle.i, align 4
  %call42.i = call i32 @vchiq_queue_kernel_message(i32 noundef %33, ptr noundef nonnull %m.i, i32 noundef 20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool1.not43.i = icmp eq i32 %call42.i, 0
  br i1 %tobool1.not43.i, label %if.end9.bcm2835_audio_send_msg_locked.exit_crit_edge, label %do.end.i59

if.end9.bcm2835_audio_send_msg_locked.exit_crit_edge: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %bcm2835_audio_send_msg_locked.exit

do.end.i59:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call7.i.i, align 8
  %36 = ptrtoint ptr %m.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %m.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.19, i32 noundef %call42.i, i32 noundef %37) #9
  br label %bcm2835_audio_send_msg_locked.exit

bcm2835_audio_send_msg_locked.exit:               ; preds = %do.end.i59, %if.end9.bcm2835_audio_send_msg_locked.exit_crit_edge
  %retval.0.i60 = phi i32 [ -5, %do.end.i59 ], [ 0, %if.end9.bcm2835_audio_send_msg_locked.exit_crit_edge ]
  %38 = ptrtoint ptr %service_handle.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %service_handle.i, align 4
  %call.i4.i.i = call i32 @vchiq_release_service(i32 noundef %39) #6
  call void @mutex_unlock(ptr noundef %vchi_mutex) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %m.i) #6
  call void @mutex_lock_nested(ptr noundef %vchi_mutex, i32 noundef 0) #6
  %40 = ptrtoint ptr %service_handle.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %service_handle.i, align 4
  %call.i48 = call i32 @vchiq_use_service(i32 noundef %41) #6
  %42 = ptrtoint ptr %service_handle.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %service_handle.i, align 4
  br i1 %tobool1.not43.i, label %if.end13, label %deinit

if.end13:                                         ; preds = %bcm2835_audio_send_msg_locked.exit
  %peer_version = getelementptr inbounds %struct.bcm2835_audio_instance, ptr %call7.i.i, i32 0, i32 7
  %call14 = call i32 @vchiq_get_peer_version(i32 noundef %43, ptr noundef %peer_version) #6
  %44 = ptrtoint ptr %service_handle.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %service_handle.i, align 4
  %call.i50 = call i32 @vchiq_release_service(i32 noundef %45) #6
  call void @mutex_unlock(ptr noundef %vchi_mutex) #6
  %46 = ptrtoint ptr %peer_version to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %peer_version, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %47)
  %cmp16 = icmp slt i16 %47, 2
  br i1 %cmp16, label %if.end13.if.then20_crit_edge, label %lor.lhs.false

if.end13.if.then20_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20

lor.lhs.false:                                    ; preds = %if.end13
  %48 = load i8, ptr @force_bulk, align 1, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool18.not = icmp eq i8 %48, 0
  br i1 %tobool18.not, label %if.else, label %lor.lhs.false.if.then20_crit_edge

lor.lhs.false.if.then20_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20

if.then20:                                        ; preds = %lor.lhs.false.if.then20_crit_edge, %if.end13.if.then20_crit_edge
  %max_packet = getelementptr inbounds %struct.bcm2835_audio_instance, ptr %call7.i.i, i32 0, i32 6
  %49 = ptrtoint ptr %max_packet to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %max_packet, align 4
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %max_packet21 = getelementptr inbounds %struct.bcm2835_audio_instance, ptr %call7.i.i, i32 0, i32 6
  %50 = ptrtoint ptr %max_packet21 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 4000, ptr %max_packet21, align 4
  br label %cleanup

deinit:                                           ; preds = %bcm2835_audio_send_msg_locked.exit
  %call2.i55 = call i32 @vchiq_close_service(i32 noundef %43) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i55)
  %tobool.not.i56 = icmp eq i32 %call2.i55, 0
  br i1 %tobool.not.i56, label %deinit.vc_vchi_audio_deinit.exit_crit_edge, label %do.end.i57

deinit.vc_vchi_audio_deinit.exit_crit_edge:       ; preds = %deinit
  call void @__sanitizer_cov_trace_pc() #8
  br label %vc_vchi_audio_deinit.exit

do.end.i57:                                       ; preds = %deinit
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %call7.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.17, i32 noundef %call2.i55) #9
  br label %vc_vchi_audio_deinit.exit

vc_vchi_audio_deinit.exit:                        ; preds = %do.end.i57, %deinit.vc_vchi_audio_deinit.exit_crit_edge
  call void @mutex_unlock(ptr noundef %vchi_mutex) #6
  br label %free_instance

free_instance:                                    ; preds = %vc_vchi_audio_deinit.exit, %vc_vchi_audio_init.exit.thread
  %err.0 = phi i32 [ %retval.0.i60, %vc_vchi_audio_deinit.exit ], [ -1, %vc_vchi_audio_init.exit.thread ]
  %53 = ptrtoint ptr %instance5 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %instance5, align 8
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %free_instance, %if.else, %if.then20, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %free_instance ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.then20 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchiq_get_peer_version(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcm2835_audio_set_ctls(ptr nocapture noundef readonly %alsa_stream) local_unnamed_addr #0 align 64 {
entry:
  %m = alloca %struct.vc_audio_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %alsa_stream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %alsa_stream, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %m) #6
  %2 = getelementptr inbounds i8, ptr %m, i32 12
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 0, ptr %2, align 4
  %4 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 3, ptr %m, align 4
  %dest = getelementptr inbounds %struct.bcm2835_chip, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %dest to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dest, align 4
  %dest2 = getelementptr inbounds %struct.vc_audio_msg, ptr %m, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %dest2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %dest2, align 4
  %mute = getelementptr inbounds %struct.bcm2835_chip, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %mute to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mute, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %volume3 = getelementptr inbounds %struct.bcm2835_chip, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %volume3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %volume3, align 4
  %shl = shl i32 %11, 8
  %div.neg = sdiv i32 %shl, -100
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %storemerge = phi i32 [ %div.neg, %if.else ], [ 26214, %entry.if.end_crit_edge ]
  %12 = getelementptr inbounds %struct.vc_audio_msg, ptr %m, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %storemerge, ptr %12, align 4
  %instance = getelementptr inbounds %struct.bcm2835_alsa_stream, ptr %alsa_stream, i32 0, i32 9
  %14 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %instance, align 8
  %vchi_mutex.i.i = getelementptr inbounds %struct.bcm2835_audio_instance, ptr %15, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %vchi_mutex.i.i, i32 noundef 0) #6
  %service_handle.i.i = getelementptr inbounds %struct.bcm2835_audio_instance, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %service_handle.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %service_handle.i.i, align 4
  %call.i.i = tail call i32 @vchiq_use_service(i32 noundef %17) #6
  %call.i = call fastcc i32 @bcm2835_audio_send_msg_locked(ptr noundef %15, ptr noundef nonnull %m, i1 noundef zeroext true) #6
  %18 = ptrtoint ptr %service_handle.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %service_handle.i.i, align 4
  %call.i4.i = call i32 @vchiq_release_service(i32 noundef %19) #6
  call void @mutex_unlock(ptr noundef %vchi_mutex.i.i) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %m) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcm2835_audio_set_params(ptr nocapture noundef readonly %alsa_stream, i32 noundef %channels, i32 noundef %samplerate, i32 noundef %bps) local_unnamed_addr #0 align 64 {
entry:
  %m = alloca %struct.vc_audio_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %m) #6
  %0 = getelementptr inbounds %struct.vc_audio_msg, ptr %m, i32 0, i32 1
  %1 = getelementptr inbounds %struct.vc_audio_msg, ptr %m, i32 0, i32 1, i32 0, i32 1
  %2 = getelementptr inbounds %struct.vc_audio_msg, ptr %m, i32 0, i32 1, i32 0, i32 2
  %3 = getelementptr inbounds i8, ptr %m, i32 16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4
  %5 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %m, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %channels, ptr %0, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %samplerate, ptr %1, align 4
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %bps, ptr %2, align 4
  %call = tail call i32 @bcm2835_audio_set_ctls(ptr noundef %alsa_stream)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %instance = getelementptr inbounds %struct.bcm2835_alsa_stream, ptr %alsa_stream, i32 0, i32 9
  %9 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %instance, align 8
  %vchi_mutex.i.i = getelementptr inbounds %struct.bcm2835_audio_instance, ptr %10, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %vchi_mutex.i.i, i32 noundef 0) #6
  %service_handle.i.i = getelementptr inbounds %struct.bcm2835_audio_instance, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %service_handle.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %service_handle.i.i, align 4
  %call.i.i = tail call i32 @vchiq_use_service(i32 noundef %12) #6
  %call.i = call fastcc i32 @bcm2835_audio_send_msg_locked(ptr noundef %10, ptr noundef nonnull %m, i1 noundef zeroext true) #6
  %13 = ptrtoint ptr %service_handle.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %service_handle.i.i, align 4
  %call.i4.i = call i32 @vchiq_release_service(i32 noundef %14) #6
  call void @mutex_unlock(ptr noundef %vchi_mutex.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %m) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcm2835_audio_start(ptr nocapture noundef readonly %alsa_stream) local_unnamed_addr #0 align 64 {
entry:
  %m.i = alloca %struct.vc_audio_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %instance = getelementptr inbounds %struct.bcm2835_alsa_stream, ptr %alsa_stream, i32 0, i32 9
  %0 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %instance, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %m.i) #6
  %2 = getelementptr inbounds i8, ptr %m.i, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 16)
  %4 = ptrtoint ptr %m.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 6, ptr %m.i, align 4
  %vchi_mutex.i.i.i = getelementptr inbounds %struct.bcm2835_audio_instance, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %vchi_mutex.i.i.i, i32 noundef 0) #6
  %service_handle.i.i.i = getelementptr inbounds %struct.bcm2835_audio_instance, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %service_handle.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %service_handle.i.i.i, align 4
  %call.i.i.i = tail call i32 @vchiq_use_service(i32 noundef %6) #6
  %7 = ptrtoint ptr %service_handle.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %service_handle.i.i.i, align 4
  %call42.i = call i32 @vchiq_queue_kernel_message(i32 noundef %8, ptr noundef nonnull %m.i, i32 noundef 20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool1.not43.i = icmp eq i32 %call42.i, 0
  br i1 %tobool1.not43.i, label %entry.bcm2835_audio_send_msg_locked.exit_crit_edge, label %do.end.i

entry.bcm2835_audio_send_msg_locked.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %bcm2835_audio_send_msg_locked.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %11 = ptrtoint ptr %m.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %m.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.19, i32 noundef %call42.i, i32 noundef %12) #9
  br label %bcm2835_audio_send_msg_locked.exit

bcm2835_audio_send_msg_locked.exit:               ; preds = %do.end.i, %entry.bcm2835_audio_send_msg_locked.exit_crit_edge
  %retval.0.i = phi i32 [ -5, %do.end.i ], [ 0, %entry.bcm2835_audio_send_msg_locked.exit_crit_edge ]
  %13 = ptrtoint ptr %service_handle.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %service_handle.i.i.i, align 4
  %call.i4.i.i = call i32 @vchiq_release_service(i32 noundef %14) #6
  call void @mutex_unlock(ptr noundef %vchi_mutex.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %m.i) #6
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcm2835_audio_stop(ptr nocapture noundef readonly %alsa_stream) local_unnamed_addr #0 align 64 {
entry:
  %m.i = alloca %struct.vc_audio_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %instance = getelementptr inbounds %struct.bcm2835_alsa_stream, ptr %alsa_stream, i32 0, i32 9
  %0 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %instance, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %m.i) #6
  %2 = getelementptr inbounds i8, ptr %m.i, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 16)
  %4 = ptrtoint ptr %m.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 7, ptr %m.i, align 4
  %vchi_mutex.i.i.i = getelementptr inbounds %struct.bcm2835_audio_instance, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %vchi_mutex.i.i.i, i32 noundef 0) #6
  %service_handle.i.i.i = getelementptr inbounds %struct.bcm2835_audio_instance, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %service_handle.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %service_handle.i.i.i, align 4
  %call.i.i.i = tail call i32 @vchiq_use_service(i32 noundef %6) #6
  %7 = ptrtoint ptr %service_handle.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %service_handle.i.i.i, align 4
  %call42.i = call i32 @vchiq_queue_kernel_message(i32 noundef %8, ptr noundef nonnull %m.i, i32 noundef 20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool1.not43.i = icmp eq i32 %call42.i, 0
  br i1 %tobool1.not43.i, label %entry.bcm2835_audio_send_msg_locked.exit_crit_edge, label %do.end.i

entry.bcm2835_audio_send_msg_locked.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %bcm2835_audio_send_msg_locked.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %11 = ptrtoint ptr %m.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %m.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.19, i32 noundef %call42.i, i32 noundef %12) #9
  br label %bcm2835_audio_send_msg_locked.exit

bcm2835_audio_send_msg_locked.exit:               ; preds = %do.end.i, %entry.bcm2835_audio_send_msg_locked.exit_crit_edge
  %retval.0.i = phi i32 [ -5, %do.end.i ], [ 0, %entry.bcm2835_audio_send_msg_locked.exit_crit_edge ]
  %13 = ptrtoint ptr %service_handle.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %service_handle.i.i.i, align 4
  %call.i4.i.i = call i32 @vchiq_release_service(i32 noundef %14) #6
  call void @mutex_unlock(ptr noundef %vchi_mutex.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %m.i) #6
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcm2835_audio_drain(ptr nocapture noundef readonly %alsa_stream) local_unnamed_addr #0 align 64 {
entry:
  %m = alloca %struct.vc_audio_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %m) #6
  %0 = call ptr @memcpy(ptr %m, ptr @__const.bcm2835_audio_drain.m, i32 20)
  %instance = getelementptr inbounds %struct.bcm2835_alsa_stream, ptr %alsa_stream, i32 0, i32 9
  %1 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %instance, align 8
  %vchi_mutex.i.i = getelementptr inbounds %struct.bcm2835_audio_instance, ptr %2, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %vchi_mutex.i.i, i32 noundef 0) #6
  %service_handle.i.i = getelementptr inbounds %struct.bcm2835_audio_instance, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %service_handle.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %service_handle.i.i, align 4
  %call.i.i = tail call i32 @vchiq_use_service(i32 noundef %4) #6
  %5 = ptrtoint ptr %service_handle.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %service_handle.i.i, align 4
  %call42.i = call i32 @vchiq_queue_kernel_message(i32 noundef %6, ptr noundef nonnull %m, i32 noundef 20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool1.not43.i = icmp eq i32 %call42.i, 0
  br i1 %tobool1.not43.i, label %entry.bcm2835_audio_send_msg_locked.exit_crit_edge, label %do.end.i

entry.bcm2835_audio_send_msg_locked.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %bcm2835_audio_send_msg_locked.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %2, align 4
  %9 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %m, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.19, i32 noundef %call42.i, i32 noundef %10) #9
  br label %bcm2835_audio_send_msg_locked.exit

bcm2835_audio_send_msg_locked.exit:               ; preds = %do.end.i, %entry.bcm2835_audio_send_msg_locked.exit_crit_edge
  %retval.0.i = phi i32 [ -5, %do.end.i ], [ 0, %entry.bcm2835_audio_send_msg_locked.exit_crit_edge ]
  %11 = ptrtoint ptr %service_handle.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %service_handle.i.i, align 4
  %call.i4.i = call i32 @vchiq_release_service(i32 noundef %12) #6
  call void @mutex_unlock(ptr noundef %vchi_mutex.i.i) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %m) #6
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcm2835_audio_close(ptr nocapture noundef %alsa_stream) local_unnamed_addr #0 align 64 {
entry:
  %m.i = alloca %struct.vc_audio_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %instance1 = getelementptr inbounds %struct.bcm2835_alsa_stream, ptr %alsa_stream, i32 0, i32 9
  %0 = ptrtoint ptr %instance1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %instance1, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %m.i) #6
  %2 = getelementptr inbounds i8, ptr %m.i, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 16)
  %4 = ptrtoint ptr %m.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 5, ptr %m.i, align 4
  %vchi_mutex.i.i.i = getelementptr inbounds %struct.bcm2835_audio_instance, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %vchi_mutex.i.i.i, i32 noundef 0) #6
  %service_handle.i.i.i = getelementptr inbounds %struct.bcm2835_audio_instance, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %service_handle.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %service_handle.i.i.i, align 4
  %call.i.i.i = tail call i32 @vchiq_use_service(i32 noundef %6) #6
  %call.i.i = call fastcc i32 @bcm2835_audio_send_msg_locked(ptr noundef %1, ptr noundef nonnull %m.i, i1 noundef zeroext true) #6
  %7 = ptrtoint ptr %service_handle.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %service_handle.i.i.i, align 4
  %call.i4.i.i = call i32 @vchiq_release_service(i32 noundef %8) #6
  call void @mutex_unlock(ptr noundef %vchi_mutex.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %m.i) #6
  call void @mutex_lock_nested(ptr noundef %vchi_mutex.i.i.i, i32 noundef 0) #6
  %9 = ptrtoint ptr %service_handle.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %service_handle.i.i.i, align 4
  %call.i = call i32 @vchiq_use_service(i32 noundef %10) #6
  %11 = ptrtoint ptr %service_handle.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %service_handle.i.i.i, align 4
  %call2.i = call i32 @vchiq_close_service(i32 noundef %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %entry.vc_vchi_audio_deinit.exit_crit_edge, label %do.end.i

entry.vc_vchi_audio_deinit.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %vc_vchi_audio_deinit.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.17, i32 noundef %call2.i) #9
  br label %vc_vchi_audio_deinit.exit

vc_vchi_audio_deinit.exit:                        ; preds = %do.end.i, %entry.vc_vchi_audio_deinit.exit_crit_edge
  call void @mutex_unlock(ptr noundef %vchi_mutex.i.i.i) #6
  %15 = ptrtoint ptr %instance1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %instance1, align 8
  call void @kfree(ptr noundef %1) #6
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcm2835_audio_write(ptr nocapture noundef readonly %alsa_stream, i32 noundef %size, ptr noundef %src) local_unnamed_addr #0 align 64 {
entry:
  %m = alloca %struct.vc_audio_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %instance1 = getelementptr inbounds %struct.bcm2835_alsa_stream, ptr %alsa_stream, i32 0, i32 9
  %0 = ptrtoint ptr %instance1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %instance1, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %m) #6
  %2 = getelementptr inbounds %struct.vc_audio_msg, ptr %m, i32 0, i32 1
  %3 = getelementptr inbounds %struct.vc_audio_msg, ptr %m, i32 0, i32 1, i32 0, i32 1
  %4 = getelementptr inbounds %struct.vc_audio_msg, ptr %m, i32 0, i32 1, i32 0, i32 2
  %5 = getelementptr inbounds %struct.vc_audio_msg, ptr %m, i32 0, i32 1, i32 0, i32 3
  %6 = getelementptr inbounds %struct.vc_audio_msg, ptr %m, i32 0, i32 1, i32 0, i32 4
  %7 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 8, ptr %m, align 4
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %size, ptr %2, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1111706945, ptr %3, align 4
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1145132097, ptr %4, align 4
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %5, align 4
  %max_packet2 = getelementptr inbounds %struct.bcm2835_audio_instance, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %max_packet2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_packet2, align 4
  %conv = trunc i32 %13 to i16
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv, ptr %6, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not = icmp eq i32 %size, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %vchi_mutex.i = getelementptr inbounds %struct.bcm2835_audio_instance, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %vchi_mutex.i, i32 noundef 0) #6
  %service_handle.i = getelementptr inbounds %struct.bcm2835_audio_instance, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %service_handle.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %service_handle.i, align 4
  %call.i = tail call i32 @vchiq_use_service(i32 noundef %16) #6
  %17 = ptrtoint ptr %service_handle.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %service_handle.i, align 4
  %call42.i = call i32 @vchiq_queue_kernel_message(i32 noundef %18, ptr noundef nonnull %m, i32 noundef 20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool1.not43.i = icmp eq i32 %call42.i, 0
  br i1 %tobool1.not43.i, label %if.end6, label %bcm2835_audio_send_msg_locked.exit.thread

bcm2835_audio_send_msg_locked.exit.thread:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %21 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %m, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.19, i32 noundef %call42.i, i32 noundef %22) #9
  br label %unlock

if.end6:                                          ; preds = %if.end
  %23 = ptrtoint ptr %max_packet2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_packet2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool8.not = icmp eq i32 %24, 0
  br i1 %tobool8.not, label %if.then9, label %if.end6.while.body_crit_edge

if.end6.while.body_crit_edge:                     ; preds = %if.end6
  br label %while.body

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %service_handle.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %service_handle.i, align 4
  %call10 = call i32 @vchiq_bulk_transmit(i32 noundef %26, ptr noundef %src, i32 noundef %size, ptr noundef null, i32 noundef 1) #6
  br label %if.end18

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end6.while.body_crit_edge
  %count3.055 = phi i32 [ %sub, %while.body.while.body_crit_edge ], [ %size, %if.end6.while.body_crit_edge ]
  %src.addr.054 = phi ptr [ %add.ptr, %while.body.while.body_crit_edge ], [ %src, %if.end6.while.body_crit_edge ]
  %27 = ptrtoint ptr %max_packet2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %max_packet2, align 4
  %29 = call i32 @llvm.umin.i32(i32 %28, i32 %count3.055)
  %30 = ptrtoint ptr %service_handle.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %service_handle.i, align 4
  %call17 = call i32 @vchiq_queue_kernel_message(i32 noundef %31, ptr noundef %src.addr.054, i32 noundef %29) #6
  %add.ptr = getelementptr i8, ptr %src.addr.054, i32 %29
  %sub = sub i32 %count3.055, %29
  %cmp11.not = icmp eq i32 %sub, 0
  br i1 %cmp11.not, label %while.body.if.end18_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.if.end18_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.end18:                                         ; preds = %while.body.if.end18_crit_edge, %if.then9
  %status.1 = phi i32 [ %call10, %if.then9 ], [ %call17, %while.body.if.end18_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.1)
  %tobool19.not = icmp eq i32 %status.1, 0
  br i1 %tobool19.not, label %if.end18.unlock_crit_edge, label %do.end

if.end18.unlock_crit_edge:                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

do.end:                                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.8, i32 noundef %size, i32 noundef %status.1) #9
  br label %unlock

unlock:                                           ; preds = %do.end, %if.end18.unlock_crit_edge, %bcm2835_audio_send_msg_locked.exit.thread
  %err.0 = phi i32 [ -5, %do.end ], [ 0, %if.end18.unlock_crit_edge ], [ -5, %bcm2835_audio_send_msg_locked.exit.thread ]
  %34 = ptrtoint ptr %service_handle.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %service_handle.i, align 4
  %call.i49 = call i32 @vchiq_release_service(i32 noundef %35) #6
  call void @mutex_unlock(ptr noundef %vchi_mutex.i) #6
  br label %cleanup

cleanup:                                          ; preds = %unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %unlock ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %m) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcm2835_audio_send_msg_locked(ptr noundef %instance, ptr noundef %m, i1 noundef zeroext %wait) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %wait, label %if.end, label %if.end.thread

if.end:                                           ; preds = %entry
  %result = getelementptr inbounds %struct.bcm2835_audio_instance, ptr %instance, i32 0, i32 5
  %0 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %result, align 4
  %msg_avail_comp = getelementptr inbounds %struct.bcm2835_audio_instance, ptr %instance, i32 0, i32 2
  %1 = ptrtoint ptr %msg_avail_comp to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %msg_avail_comp, align 4
  %wait.i = getelementptr inbounds %struct.bcm2835_audio_instance, ptr %instance, i32 0, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @init_completion.__key) #6
  %service_handle = getelementptr inbounds %struct.bcm2835_audio_instance, ptr %instance, i32 0, i32 1
  %2 = ptrtoint ptr %service_handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %service_handle, align 4
  %call = tail call i32 @vchiq_queue_kernel_message(i32 noundef %3, ptr noundef %m, i32 noundef 20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then5, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.thread:                                    ; preds = %entry
  %service_handle41 = getelementptr inbounds %struct.bcm2835_audio_instance, ptr %instance, i32 0, i32 1
  %4 = ptrtoint ptr %service_handle41 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %service_handle41, align 4
  %call42 = tail call i32 @vchiq_queue_kernel_message(i32 noundef %5, ptr noundef %m, i32 noundef 20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool1.not43 = icmp eq i32 %call42, 0
  br i1 %tobool1.not43, label %if.end.thread.cleanup_crit_edge, label %if.end.thread.do.end_crit_edge

if.end.thread.do.end_crit_edge:                   ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.thread.cleanup_crit_edge:                  ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.end.thread.do.end_crit_edge, %if.end.do.end_crit_edge
  %call44 = phi i32 [ %call42, %if.end.thread.do.end_crit_edge ], [ %call, %if.end.do.end_crit_edge ]
  %6 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %instance, align 4
  %8 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %m, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.19, i32 noundef %call44, i32 noundef %9) #9
  br label %cleanup

if.then5:                                         ; preds = %if.end
  %call8 = tail call i32 @wait_for_completion_timeout(ptr noundef %msg_avail_comp, i32 noundef 1000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %do.end13, label %if.else

do.end13:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %instance, align 4
  %12 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %m, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.22, i32 noundef %13) #9
  br label %cleanup

if.else:                                          ; preds = %if.then5
  %14 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %result, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool17.not = icmp eq i32 %15, 0
  br i1 %tobool17.not, label %if.else.cleanup_crit_edge, label %do.end21

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end21:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %instance, align 4
  %18 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %m, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.25, i32 noundef %15, i32 noundef %19) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end21, %if.else.cleanup_crit_edge, %do.end13, %do.end, %if.end.thread.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %do.end21 ], [ -110, %do.end13 ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.end.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchiq_bulk_transmit(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchiq_queue_kernel_message(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @audio_vchi_callback(i32 noundef %reason, ptr noundef %header, i32 noundef %handle, ptr nocapture noundef readnone %userdata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @vchiq_get_service_userdata(i32 noundef %handle) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %reason)
  %cmp.not = icmp eq i32 %reason, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.vchiq_header, ptr %header, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %do.end14 [
    i32 0, label %if.then2
    i32 1, label %if.then5
  ]

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %3 = getelementptr inbounds %struct.vchiq_header, ptr %header, i32 1, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %result = getelementptr inbounds %struct.bcm2835_audio_instance, ptr %call, i32 0, i32 5
  %6 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %result, align 4
  %msg_avail_comp = getelementptr inbounds %struct.bcm2835_audio_instance, ptr %call, i32 0, i32 2
  tail call void @complete(ptr noundef %msg_avail_comp) #6
  br label %if.end18

if.then5:                                         ; preds = %if.end
  %7 = getelementptr inbounds %struct.vchiq_header, ptr %header, i32 1, i32 1
  %cookie1 = getelementptr inbounds %struct.vchiq_header, ptr %header, i32 2
  %8 = ptrtoint ptr %cookie1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cookie1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1111706945, i32 %9)
  %cmp6.not = icmp eq i32 %9, 1111706945
  br i1 %cmp6.not, label %lor.lhs.false, label %if.then5.do.end_crit_edge

if.then5.do.end_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false:                                    ; preds = %if.then5
  %cookie2 = getelementptr inbounds %struct.vchiq_header, ptr %header, i32 2, i32 1
  %10 = ptrtoint ptr %cookie2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cookie2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1145132097, i32 %11)
  %cmp7.not = icmp eq i32 %11, 1145132097
  br i1 %cmp7.not, label %if.else9, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.then5.do.end_crit_edge
  %12 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.12) #9
  br label %if.end18

if.else9:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %alsa_stream = getelementptr inbounds %struct.bcm2835_audio_instance, ptr %call, i32 0, i32 4
  %14 = ptrtoint ptr %alsa_stream to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %alsa_stream, align 4
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %7, align 4
  tail call void @bcm2835_playback_fifo(ptr noundef %15, i32 noundef %17) #6
  br label %if.end18

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.15, i32 noundef %1) #9
  br label %if.end18

if.end18:                                         ; preds = %do.end14, %if.else9, %do.end, %if.then2
  tail call void @vchiq_release_message(i32 noundef %handle, ptr noundef %header) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchiq_open_service(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchiq_release_service(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vchiq_get_service_userdata(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcm2835_playback_fifo(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchiq_release_message(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchiq_use_service(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchiq_close_service(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !12, !13, !15, !16, !17, !19, !20, !22, !23, !24, !25, !27, !28, !30, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @__param_force_bulk, !1, !"__param_force_bulk", i1 false, i1 false}
!1 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c", i32 22, i32 1}
!2 = !{ptr @__UNIQUE_ID_force_bulktype230, !1, !"__UNIQUE_ID_force_bulktype230", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_force_bulk231, !4, !"__UNIQUE_ID_force_bulk231", i1 false, i1 false}
!4 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c", i32 23, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c", i32 176, i32 3}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @bcm2835_new_vchi_ctx._entry, !6, !"_entry", i1 false, i1 false}
!12 = !{ptr @bcm2835_new_vchi_ctx._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c", i32 183, i32 3}
!15 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @bcm2835_new_vchi_ctx.__UNIQUE_ID_ddebug232, !14, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!17 = !{ptr @bcm2835_audio_open.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c", i32 213, i32 2}
!19 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c", i32 361, i32 3}
!22 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @bcm2835_audio_write._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @bcm2835_audio_write._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @force_bulk, !26, !"force_bulk", i1 false, i1 false}
!26 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c", i32 21, i32 13}
!27 = !{ptr @__param_str_force_bulk, !1, !"__param_str_force_bulk", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c", i32 139, i32 3}
!30 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @vc_vchi_audio_init._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @vc_vchi_audio_init._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c", i32 109, i32 4}
!35 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @audio_vchi_callback._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @audio_vchi_callback._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c", i32 114, i32 3}
!40 = !{ptr @audio_vchi_callback._entry.14, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @audio_vchi_callback._entry_ptr.16, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c", i32 161, i32 3}
!44 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @vc_vchi_audio_deinit._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @vc_vchi_audio_deinit._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c", i32 50, i32 3}
!49 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @bcm2835_audio_send_msg_locked._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @bcm2835_audio_send_msg_locked._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c", i32 59, i32 4}
!54 = !{ptr @bcm2835_audio_send_msg_locked._entry.21, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @bcm2835_audio_send_msg_locked._entry_ptr.23, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c", i32 63, i32 4}
!58 = !{ptr @bcm2835_audio_send_msg_locked._entry.24, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @bcm2835_audio_send_msg_locked._entry_ptr.26, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @init_completion.__key, !61, !"__key", i1 false, i1 false}
!61 = !{!"../include/linux/completion.h", i32 87, i32 2}
!62 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!72 = !{i64 2148208604, i64 2148208609, i64 2148208622, i64 2148208666, i64 2148208700, i64 2148208721}
!73 = !{!"branch_weights", i32 2000, i32 1}
!74 = !{i8 0, i8 2}
