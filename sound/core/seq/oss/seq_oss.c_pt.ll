; ModuleID = '/llk/IR_all_yes/sound/core/seq/oss/seq_oss.c_pt.bc'
source_filename = "../sound/core/seq/oss/seq_oss.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_seq_driver = type { %struct.device_driver, ptr, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_info_entry = type { ptr, i16, i32, i16, %union.anon.71, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.71 = type { %struct.snd_info_entry_text }
%struct.snd_info_entry_text = type { ptr, ptr }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.67, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.68, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.69, ptr, %struct.address_space, %struct.list_head, %union.anon.70, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.67 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.68 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.69 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.70 = type { ptr }

@__UNIQUE_ID_author231 = internal constant [48 x i8] c"snd_seq_oss.author=Takashi Iwai <tiwai@suse.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description232 = internal constant [56 x i8] c"snd_seq_oss.description=OSS-compatible sequencer module\00", section ".modinfo", align 1
@__UNIQUE_ID_file233 = internal constant [48 x i8] c"snd_seq_oss.file=sound/core/seq/oss/snd-seq-oss\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [24 x i8] c"snd_seq_oss.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias235 = internal constant [36 x i8] c"snd_seq_oss.alias=sound-service-?-1\00", section ".modinfo", align 1
@__UNIQUE_ID_alias236 = internal constant [36 x i8] c"snd_seq_oss.alias=sound-service-?-8\00", section ".modinfo", align 1
@seq_oss_synth_driver = internal global { %struct.snd_seq_driver, [44 x i8] } { %struct.snd_seq_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr @snd_seq_oss_synth_probe, ptr null, ptr @snd_seq_oss_synth_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, i32 44 }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_snd_seq_oss__237_108_alsa_seq_oss_init6 = internal global ptr @alsa_seq_oss_init, section ".initcall6.init", align 4
@__exitcall_alsa_seq_oss_exit = internal global ptr @alsa_seq_oss_exit, section ".exitcall.exit", align 4
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"snd_seq_oss\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"seq-oss\00", [24 x i8] zeroinitializer }, align 32
@register_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @register_mutex, i64 52), ptr getelementptr (i8, ptr @register_mutex, i64 52) }, ptr @register_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@seq_oss_f_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @odev_read, ptr @odev_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @odev_poll, ptr @odev_ioctl, ptr null, ptr null, i32 0, ptr @odev_open, ptr null, ptr @odev_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@register_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 237, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013ALSA: seq_oss: can't register device seq\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"register_device\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sound/core/seq/oss/seq_oss.c\00", [35 x i8] zeroinitializer }, align 32
@register_device._entry_ptr = internal global ptr @register_device._entry, section ".printk_index", align 4
@register_device._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013ALSA: seq_oss: can't register device music\0A\00", [50 x i8] zeroinitializer }, align 32
@register_device._entry_ptr.7 = internal global ptr @register_device._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"register_mutex.wait_lock\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"register_mutex\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"oss\00", [28 x i8] zeroinitializer }, align 32
@snd_seq_root = external dso_local local_unnamed_addr global ptr, align 4
@info_entry = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"OSS sequencer emulation version %s\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.1.8\00", [26 x i8] zeroinitializer }, align 32
@unregister_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.4, i32 259, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013ALSA: seq_oss: error unregister device music\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"unregister_device\00", [46 x i8] zeroinitializer }, align 32
@unregister_device._entry_ptr = internal global ptr @unregister_device._entry, section ".printk_index", align 4
@unregister_device._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.4, i32 261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013ALSA: seq_oss: error unregister device seq\0A\00", [50 x i8] zeroinitializer }, align 32
@unregister_device._entry_ptr.17 = internal global ptr @unregister_device._entry.15, section ".printk_index", align 4
@___asan_gen_.18 = private unnamed_addr constant [21 x i8] c"seq_oss_synth_driver\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 56, i32 30 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 58, i32 11 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 62, i32 8 }
@___asan_gen_.27 = private unnamed_addr constant [15 x i8] c"register_mutex\00", align 1
@___asan_gen_.30 = private unnamed_addr constant [14 x i8] c"seq_oss_f_ops\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 214, i32 37 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 237, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 245, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 115, i32 8 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 290, i32 52 }
@___asan_gen_.60 = private unnamed_addr constant [11 x i8] c"info_entry\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 271, i32 31 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 277, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 259, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.82 = private constant [32 x i8] c"../sound/core/seq/oss/seq_oss.c\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 261, i32 3 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_alias235, ptr @__UNIQUE_ID_alias236, ptr @__UNIQUE_ID_author231, ptr @__UNIQUE_ID_description232, ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__exitcall_alsa_seq_oss_exit, ptr @__initcall__kmod_snd_seq_oss__237_108_alsa_seq_oss_init6, ptr @alsa_seq_oss_exit, ptr @register_device._entry, ptr @register_device._entry.5, ptr @register_device._entry_ptr, ptr @register_device._entry_ptr.7, ptr @unregister_device._entry, ptr @unregister_device._entry.15, ptr @unregister_device._entry_ptr, ptr @unregister_device._entry_ptr.17, ptr @seq_oss_synth_driver, ptr @.str, ptr @.str.1, ptr @register_mutex, ptr @seq_oss_f_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @info_entry, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seq_oss_synth_driver to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seq_oss_f_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_device._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @info_entry to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unregister_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unregister_device._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @alsa_seq_oss_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @snd_seq_driver_unregister(ptr noundef nonnull @seq_oss_synth_driver) #4
  %call = tail call i32 @snd_seq_oss_delete_client() #4
  %0 = load ptr, ptr @info_entry, align 4
  tail call void @snd_info_free_entry(ptr noundef %0) #4
  store ptr null, ptr @info_entry, align 4
  tail call fastcc void @unregister_device()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_seq_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_oss_delete_client() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @unregister_device() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @register_mutex, i32 noundef 0) #4
  %call = tail call i32 @snd_unregister_oss_device(i32 noundef 6, ptr noundef null, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call2 = tail call i32 @snd_unregister_oss_device(i32 noundef 1, ptr noundef null, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %do.end6, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #7
  br label %if.end9

if.end9:                                          ; preds = %do.end6, %if.end.if.end9_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @register_mutex) #4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @alsa_seq_oss_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @register_device()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.error_crit_edge, label %if.end

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %error

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @register_proc()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @unregister_device()
  br label %error

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @snd_seq_oss_create_client() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %0 = load ptr, ptr @info_entry, align 4
  tail call void @snd_info_free_entry(ptr noundef %0) #4
  store ptr null, ptr @info_entry, align 4
  tail call fastcc void @unregister_device()
  br label %error

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 @__snd_seq_driver_register(ptr noundef nonnull @seq_oss_synth_driver, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %call12 = tail call i32 @snd_seq_oss_delete_client() #4
  %1 = load ptr, ptr @info_entry, align 4
  tail call void @snd_info_free_entry(ptr noundef %1) #4
  store ptr null, ptr @info_entry, align 4
  tail call fastcc void @unregister_device()
  br label %error

if.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @snd_seq_oss_synth_init() #4
  br label %error

error:                                            ; preds = %if.end13, %if.then11, %if.then7, %if.then3, %entry.error_crit_edge
  %rc.0 = phi i32 [ %call, %entry.error_crit_edge ], [ %call1, %if.then3 ], [ %call5, %if.then7 ], [ %call9, %if.then11 ], [ %call9, %if.end13 ]
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_oss_synth_probe(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_oss_synth_remove(ptr noundef) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @register_device() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @register_mutex, i32 noundef 0) #4
  %call = tail call i32 @snd_register_oss_device(i32 noundef 1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @seq_oss_f_ops, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @snd_register_oss_device(i32 noundef 6, ptr noundef null, i32 noundef 0, ptr noundef nonnull @seq_oss_f_ops, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %do.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #7
  %call10 = tail call i32 @snd_unregister_oss_device(i32 noundef 1, ptr noundef null, i32 noundef 0) #4
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call2, %do.end7 ], [ 0, %if.end.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @register_mutex) #4
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @register_proc() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snd_seq_root to i32))
  %0 = load ptr, ptr @snd_seq_root, align 4
  %call = tail call ptr @snd_info_create_module_entry(ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef %0) #4
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %content = getelementptr inbounds %struct.snd_info_entry, ptr %call, i32 0, i32 3
  %1 = ptrtoint ptr %content to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %content, align 4
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %call, i32 0, i32 7
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %private_data, align 4
  %c = getelementptr inbounds %struct.snd_info_entry, ptr %call, i32 0, i32 4
  %3 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @info_read, ptr %c, align 4
  %call2 = tail call i32 @snd_info_register(ptr noundef nonnull %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @snd_info_free_entry(ptr noundef nonnull %call) #4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  store ptr %call, ptr @info_entry, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then4 ], [ 0, %if.end5 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_oss_create_client() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__snd_seq_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_seq_oss_synth_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_register_oss_device(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_unregister_oss_device(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @odev_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !62

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 155, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @snd_seq_oss_read(ptr noundef nonnull %1, ptr noundef %buf, i32 noundef %count) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ %call, %if.end23 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @odev_write(ptr noundef %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !62

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 166, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @snd_seq_oss_write(ptr noundef nonnull %1, ptr noundef %buf, i32 noundef %count, ptr noundef %file) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ %call, %if.end23 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @odev_poll(ptr noundef %file, ptr noundef %wait) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !62

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 205, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @snd_seq_oss_poll(ptr noundef nonnull %1, ptr noundef %file, ptr noundef %wait) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end
  %retval.0 = phi i32 [ 8, %do.end ], [ %call, %if.end23 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @odev_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !62

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 178, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 20737, i32 %cmd)
  %cmp.not = icmp eq i32 %cmd, 20737
  br i1 %cmp.not, label %if.end26.thread, label %land.lhs.true

if.end26.thread:                                  ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  %call2736 = tail call i32 @snd_seq_oss_ioctl(ptr noundef nonnull %1, i32 noundef 20737, i32 noundef %arg) #4
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end23
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef nonnull @register_mutex, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool24.not = icmp eq i32 %call, 0
  br i1 %tobool24.not, label %if.then29, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then29:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %call27 = tail call i32 @snd_seq_oss_ioctl(ptr noundef nonnull %1, i32 noundef %cmd, i32 noundef %arg) #4
  tail call void @mutex_unlock(ptr noundef nonnull @register_mutex) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %land.lhs.true.cleanup_crit_edge, %if.end26.thread, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ -512, %land.lhs.true.cleanup_crit_edge ], [ %call27, %if.then29 ], [ %call2736, %if.end26.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @odev_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %0 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %1, 1048575
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and.i)
  %cmp = icmp eq i32 %and.i, 8
  %. = zext i1 %cmp to i32
  tail call void @mutex_lock_nested(ptr noundef nonnull @register_mutex, i32 noundef 0) #4
  %call1 = tail call i32 @snd_seq_oss_open(ptr noundef %file, i32 noundef %.) #4
  tail call void @mutex_unlock(ptr noundef nonnull @register_mutex) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @odev_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mutex_lock_nested(ptr noundef nonnull @register_mutex, i32 noundef 0) #4
  tail call void @snd_seq_oss_release(ptr noundef nonnull %1) #4
  tail call void @mutex_unlock(ptr noundef nonnull @register_mutex) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_oss_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_oss_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_oss_poll(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_oss_ioctl(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_oss_open(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_seq_oss_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_info_create_module_entry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @info_read(ptr nocapture noundef readnone %entry1, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @register_mutex, i32 noundef 0) #4
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #4
  tail call void @snd_seq_oss_system_info_read(ptr noundef %buf) #4
  tail call void @snd_seq_oss_synth_info_read(ptr noundef %buf) #4
  tail call void @snd_seq_oss_midi_info_read(ptr noundef %buf) #4
  tail call void @mutex_unlock(ptr noundef nonnull @register_mutex) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_info_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_info_free_entry(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_seq_oss_system_info_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_seq_oss_synth_info_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_seq_oss_midi_info_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !39, !41, !42, !44, !46, !47, !48, !49, !51, !52}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @__UNIQUE_ID_author231, !1, !"__UNIQUE_ID_author231", i1 false, i1 false}
!1 = !{!"../sound/core/seq/oss/seq_oss.c", i32 23, i32 1}
!2 = !{ptr @__UNIQUE_ID_description232, !3, !"__UNIQUE_ID_description232", i1 false, i1 false}
!3 = !{!"../sound/core/seq/oss/seq_oss.c", i32 24, i32 1}
!4 = !{ptr @__UNIQUE_ID_file233, !5, !"__UNIQUE_ID_file233", i1 false, i1 false}
!5 = !{!"../sound/core/seq/oss/seq_oss.c", i32 25, i32 1}
!6 = !{ptr @__UNIQUE_ID_license234, !5, !"__UNIQUE_ID_license234", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias235, !8, !"__UNIQUE_ID_alias235", i1 false, i1 false}
!8 = !{!"../sound/core/seq/oss/seq_oss.c", i32 27, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias236, !10, !"__UNIQUE_ID_alias236", i1 false, i1 false}
!10 = !{!"../sound/core/seq/oss/seq_oss.c", i32 28, i32 1}
!11 = !{ptr @__initcall__kmod_snd_seq_oss__237_108_alsa_seq_oss_init6, !12, !"__initcall__kmod_snd_seq_oss__237_108_alsa_seq_oss_init6", i1 false, i1 false}
!12 = !{!"../sound/core/seq/oss/seq_oss.c", i32 108, i32 1}
!13 = !{ptr @__exitcall_alsa_seq_oss_exit, !14, !"__exitcall_alsa_seq_oss_exit", i1 false, i1 false}
!14 = !{!"../sound/core/seq/oss/seq_oss.c", i32 109, i32 1}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../sound/core/seq/oss/seq_oss.c", i32 58, i32 11}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/core/seq/oss/seq_oss.c", i32 62, i32 8}
!19 = !{ptr @seq_oss_synth_driver, !20, !"seq_oss_synth_driver", i1 false, i1 false}
!20 = !{!"../sound/core/seq/oss/seq_oss.c", i32 56, i32 30}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../sound/core/seq/oss/seq_oss.c", i32 237, i32 3}
!23 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @register_device._entry, !22, !"_entry", i1 false, i1 false}
!26 = !{ptr @register_device._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/core/seq/oss/seq_oss.c", i32 245, i32 3}
!29 = !{ptr @register_device._entry.5, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @register_device._entry_ptr.7, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/core/seq/oss/seq_oss.c", i32 115, i32 8}
!33 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @register_mutex, !32, !"register_mutex", i1 false, i1 false}
!35 = !{ptr @seq_oss_f_ops, !36, !"seq_oss_f_ops", i1 false, i1 false}
!36 = !{!"../sound/core/seq/oss/seq_oss.c", i32 214, i32 37}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/core/seq/oss/seq_oss.c", i32 290, i32 52}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/core/seq/oss/seq_oss.c", i32 277, i32 2}
!41 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @info_entry, !43, !"info_entry", i1 false, i1 false}
!43 = !{!"../sound/core/seq/oss/seq_oss.c", i32 271, i32 31}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/core/seq/oss/seq_oss.c", i32 259, i32 3}
!46 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @unregister_device._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @unregister_device._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/core/seq/oss/seq_oss.c", i32 261, i32 3}
!51 = !{ptr @unregister_device._entry.15, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @unregister_device._entry_ptr.17, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{!"branch_weights", i32 1, i32 2000}
