; ModuleID = '/llk/IR_all_yes/sound/pci/hda/patch_si3054.c_pt.bc'
source_filename = "../sound/pci/hda/patch_si3054.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hda_codec_driver = type { %struct.hdac_driver, ptr }
%struct.hdac_driver = type { %struct.device_driver, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hda_device_id = type { i32, i32, i8, ptr, i32 }
%struct.hda_codec_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.84, i32 }
%union.anon.84 = type { ptr }
%struct.hda_pcm_stream = type { i32, i32, i32, i16, i32, i64, i32, ptr, %struct.hda_pcm_ops }
%struct.hda_pcm_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hda_codec = type { %struct.hdac_device, ptr, ptr, i32, i32, ptr, ptr, %struct.hda_codec_ops, %struct.list_head, %struct.refcount_struct, %struct.wait_queue_head, ptr, ptr, i32, ptr, %struct.snd_array, %struct.snd_array, %struct.list_head, %struct.mutex, %struct.mutex, %struct.snd_array, i32, ptr, %struct.snd_array, %struct.snd_array, %struct.snd_array, %struct.mutex, %struct.snd_array, %struct.snd_array, %struct.snd_array, ptr, i24, i32, i32, i32, ptr, ptr, %struct.snd_array, i32, %struct.delayed_work, i32, i32, ptr, ptr, %struct.snd_array }
%struct.hdac_device = type { %struct.device, i32, ptr, i32, %struct.list_head, i16, i16, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, i32, i16, i16, %struct.atomic_t, %struct.mutex, ptr, ptr, %struct.mutex, %struct.snd_array, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_array = type { i32, i32, i32, i32, ptr }
%struct.hda_pcm = type { ptr, [2 x %struct.hda_pcm_stream], i32, i32, ptr, i8, ptr, %struct.list_head, i8 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.79, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.79 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.74, [128 x i8] }
%union.anon.74 = type { %union.anon.76 }
%union.anon.76 = type { [64 x i64] }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }

@__UNIQUE_ID_file240 = internal constant [61 x i8] c"snd_hda_codec_si3054.file=sound/pci/hda/snd-hda-codec-si3054\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [33 x i8] c"snd_hda_codec_si3054.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description242 = internal constant [61 x i8] c"snd_hda_codec_si3054.description=Si3054 HD-audio modem codec\00", section ".modinfo", align 1
@__initcall__kmod_snd_hda_codec_si3054__243_304_si3054_driver_init6 = internal global ptr @si3054_driver_init, section ".initcall6.init", align 4
@si3054_driver = internal global { %struct.hda_codec_driver, [52 x i8] } { %struct.hda_codec_driver { %struct.hdac_driver zeroinitializer, ptr @snd_hda_id_si3054 }, [52 x i8] zeroinitializer }, align 32
@__exitcall_si3054_driver_exit = internal global ptr @si3054_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snd_hda_codec_si3054\00", [43 x i8] zeroinitializer }, align 32
@snd_hda_id_si3054 = internal constant { [12 x %struct.hda_device_id], [48 x i8] } { [12 x %struct.hda_device_id] [%struct.hda_device_id { i32 373043285, i32 0, i8 1, ptr @.str.1, i32 ptrtoint (ptr @patch_si3054 to i32) }, %struct.hda_device_id { i32 373043541, i32 0, i8 1, ptr @.str.1, i32 ptrtoint (ptr @patch_si3054 to i32) }, %struct.hda_device_id { i32 297873446, i32 0, i8 1, ptr @.str.1, i32 ptrtoint (ptr @patch_si3054 to i32) }, %struct.hda_device_id { i32 297873493, i32 0, i8 1, ptr @.str.1, i32 ptrtoint (ptr @patch_si3054 to i32) }, %struct.hda_device_id { i32 297873749, i32 0, i8 1, ptr @.str.1, i32 ptrtoint (ptr @patch_si3054 to i32) }, %struct.hda_device_id { i32 274149461, i32 0, i8 1, ptr @.str.1, i32 ptrtoint (ptr @patch_si3054 to i32) }, %struct.hda_device_id { i32 274149463, i32 0, i8 1, ptr @.str.1, i32 ptrtoint (ptr @patch_si3054 to i32) }, %struct.hda_device_id { i32 274149717, i32 0, i8 1, ptr @.str.1, i32 ptrtoint (ptr @patch_si3054 to i32) }, %struct.hda_device_id { i32 285618824, i32 0, i8 1, ptr @.str.1, i32 ptrtoint (ptr @patch_si3054 to i32) }, %struct.hda_device_id { i32 356725077, i32 0, i8 1, ptr @.str.1, i32 ptrtoint (ptr @patch_si3054 to i32) }, %struct.hda_device_id { i32 408158232, i32 0, i8 1, ptr @.str.1, i32 ptrtoint (ptr @patch_si3054 to i32) }, %struct.hda_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Si3054\00", [25 x i8] zeroinitializer }, align 32
@si3054_patch_ops = internal constant { %struct.hda_codec_ops, [56 x i8] } { %struct.hda_codec_ops { ptr @si3054_build_controls, ptr @si3054_build_pcms, ptr @si3054_init, ptr @si3054_free, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@si3054_modem_mixer = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 -2147483638, ptr @.str.2, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @si3054_switch_get, ptr @si3054_switch_put, %union.anon.84 zeroinitializer, i32 655361 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 -2147483638, ptr @.str.3, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @si3054_switch_get, ptr @si3054_switch_put, %union.anon.84 zeroinitializer, i32 655362 }, %struct.snd_kcontrol_new zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Off-hook Switch\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Caller ID Switch\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Si3054 Modem\00", [19 x i8] zeroinitializer }, align 32
@si3054_pcm = internal constant { %struct.hda_pcm_stream, [32 x i8] } { %struct.hda_pcm_stream { i32 1, i32 1, i32 1, i16 1, i32 -2147483638, i64 4, i32 16, ptr null, %struct.hda_pcm_ops { ptr @si3054_pcm_open, ptr null, ptr @si3054_pcm_prepare, ptr null, ptr null } }, [32 x i8] zeroinitializer }, align 32
@si3054_pcm_open.rates = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 8000, i32 9600, i32 16000], [20 x i8] zeroinitializer }, align 32
@si3054_pcm_open.hw_constraints_rates = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @si3054_pcm_open.rates, i32 3, i32 0 }, [20 x i8] zeroinitializer }, align 32
@si3054_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 228, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"si3054: cannot initialize. EXT MID = %04x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"si3054_init\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sound/pci/hda/patch_si3054.c\00", [35 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@si3054_init._entry_ptr = internal global ptr @si3054_init._entry, section ".printk_index", align 4
@si3054_init.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.7, ptr @.str.10, i8 0, i8 60, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Link Frame Detect(FDT) is not ready (line status: %04x)\0A\00", [39 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private unnamed_addr constant [14 x i8] c"si3054_driver\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 300, i32 32 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 304, i32 1 }
@___asan_gen_.17 = private unnamed_addr constant [18 x i8] c"snd_hda_id_si3054\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 278, i32 35 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 279, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"si3054_patch_ops\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 258, i32 35 }
@___asan_gen_.26 = private unnamed_addr constant [19 x i8] c"si3054_modem_mixer\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 119, i32 38 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 120, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 121, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 189, i32 38 }
@___asan_gen_.38 = private unnamed_addr constant [11 x i8] c"si3054_pcm\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 170, i32 36 }
@___asan_gen_.41 = private unnamed_addr constant [6 x i8] c"rates\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 158, i32 28 }
@___asan_gen_.44 = private unnamed_addr constant [21 x i8] c"hw_constraints_rates\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 159, i32 49 }
@___asan_gen_.47 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 228, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.66 = private constant [32 x i8] c"../sound/pci/hda/patch_si3054.c\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 239, i32 3 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_description242, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__exitcall_si3054_driver_exit, ptr @__initcall__kmod_snd_hda_codec_si3054__243_304_si3054_driver_init6, ptr @si3054_driver_exit, ptr @si3054_init._entry, ptr @si3054_init._entry_ptr, ptr @si3054_driver, ptr @.str, ptr @snd_hda_id_si3054, ptr @.str.1, ptr @si3054_patch_ops, ptr @si3054_modem_mixer, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @si3054_pcm, ptr @si3054_pcm_open.rates, ptr @si3054_pcm_open.hw_constraints_rates, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si3054_driver to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_hda_id_si3054 to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si3054_patch_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si3054_modem_mixer to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si3054_pcm to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si3054_pcm_open.rates to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si3054_pcm_open.hw_constraints_rates to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si3054_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @si3054_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hda_codec_driver_register(ptr noundef nonnull @si3054_driver, ptr noundef nonnull @.str, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @si3054_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @hda_codec_driver_unregister(ptr noundef nonnull @si3054_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hda_codec_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hda_codec_driver_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @patch_si3054(ptr nocapture noundef writeonly %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4) #8
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %1 = ptrtoint ptr %spec1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %spec1, align 8
  %patch_ops = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 7
  %2 = call ptr @memcpy(ptr %patch_ops, ptr @si3054_patch_ops, i32 40)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si3054_build_controls(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_hda_add_new_ctls(ptr noundef %codec, ptr noundef nonnull @si3054_modem_mixer) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si3054_build_pcms(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr (ptr, ptr, ...) @snd_hda_codec_pcm_new(ptr noundef %codec, ptr noundef nonnull @.str.4) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %stream = getelementptr inbounds %struct.hda_pcm, ptr %call, i32 0, i32 1
  %0 = call ptr @memcpy(ptr %stream, ptr @si3054_pcm, i32 64)
  %arrayidx2 = getelementptr %struct.hda_pcm, ptr %call, i32 0, i32 1, i32 1
  %1 = call ptr @memcpy(ptr %arrayidx2, ptr @si3054_pcm, i32 64)
  %mfg = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 6
  %2 = ptrtoint ptr %mfg to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mfg, align 2
  %nid = getelementptr inbounds %struct.hda_pcm, ptr %call, i32 0, i32 1, i32 0, i32 3
  %4 = ptrtoint ptr %nid to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %nid, align 4
  %5 = load i16, ptr %mfg, align 2
  %nid9 = getelementptr %struct.hda_pcm, ptr %call, i32 0, i32 1, i32 1, i32 3
  %6 = ptrtoint ptr %nid9 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %nid9, align 4
  %pcm_type = getelementptr inbounds %struct.hda_pcm, ptr %call, i32 0, i32 2
  %7 = ptrtoint ptr %pcm_type to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %pcm_type, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si3054_init(ptr noundef %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %spec1 = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec1, align 8
  %call = tail call i32 @snd_hdac_regmap_add_vendor_verb(ptr noundef %codec, i32 noundef 256) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 0, i32 noundef 0, i32 noundef 2047, i32 noundef 0) #5
  %mfg = getelementptr inbounds %struct.hdac_device, ptr %codec, i32 0, i32 6
  %2 = ptrtoint ptr %mfg to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mfg, align 2
  %call.i68 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext %3, i32 noundef 0, i32 noundef 512, i32 noundef 0) #5
  %call.i69 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 3, i32 noundef 0, i32 noundef 256, i32 noundef 9600) #5
  %call.i70 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 4, i32 noundef 0, i32 noundef 256, i32 noundef 61680) #5
  %call.i71 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 2, i32 noundef 0, i32 noundef 256, i32 noundef 0) #5
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.end
  %wait_count.0 = phi i32 [ 10, %if.end ], [ %dec, %do.body.do.body_crit_edge ]
  tail call void @msleep(i32 noundef 2) #5
  %call.i72 = tail call i32 @snd_hdac_codec_read(ptr noundef %codec, i16 noundef zeroext 2, i32 noundef 0, i32 noundef 2304, i32 noundef 0) #5
  %and = and i32 %call.i72, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and)
  %cmp.not = icmp eq i32 %and, 15
  %dec = add nsw i32 %wait_count.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wait_count.0)
  %tobool11.not = icmp eq i32 %wait_count.0, 0
  %or.cond = select i1 %cmp.not, i1 true, i1 %tobool11.not
  br i1 %or.cond, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.end:                                           ; preds = %do.body
  br i1 %cmp.not, label %do.end.if.end22_crit_edge, label %do.end19

do.end.if.end22_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

do.end19:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %conv9.le = and i32 %call.i72, 65535
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %codec, ptr noundef nonnull @.str.5, i32 noundef %conv9.le) #9
  br label %if.end22

if.end22:                                         ; preds = %do.end19, %do.end.if.end22_crit_edge
  %call.i73 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 6, i32 noundef 0, i32 noundef 256, i32 noundef 65535) #5
  %call.i74 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 5, i32 noundef 0, i32 noundef 256, i32 noundef 0) #5
  %call.i75 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 11, i32 noundef 0, i32 noundef 256, i32 noundef 0) #5
  %call.i76 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 13, i32 noundef 0, i32 noundef 256, i32 noundef 512) #5
  %call.i77 = tail call i32 @snd_hdac_codec_read(ptr noundef %codec, i16 noundef zeroext 14, i32 noundef 0, i32 noundef 2304, i32 noundef 0) #5
  %and28 = and i32 %call.i77, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %cmp29 = icmp eq i32 %and28, 0
  br i1 %cmp29, label %do.body32, label %if.end22.if.end44_crit_edge

if.end22.if.end44_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

do.body32:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si3054_init.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si3054_init, %if.then37)) #5
          to label %if.end44 [label %if.then37], !srcloc !51

if.then37:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #7
  %call.i78 = tail call i32 @snd_hdac_codec_read(ptr noundef %codec, i16 noundef zeroext 14, i32 noundef 0, i32 noundef 2304, i32 noundef 0) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si3054_init.__UNIQUE_ID_ddebug239, ptr noundef %codec, ptr noundef nonnull @.str.10, i32 noundef %call.i78) #5
  br label %if.end44

if.end44:                                         ; preds = %if.then37, %do.body32, %if.end22.if.end44_crit_edge
  %call.i79 = tail call i32 @snd_hdac_codec_read(ptr noundef %codec, i16 noundef zeroext 12, i32 noundef 0, i32 noundef 2304, i32 noundef 0) #5
  %and46 = and i32 %call.i79, 256
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and46, ptr %1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end44 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @si3054_free(ptr nocapture noundef readonly %codec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %spec = getelementptr inbounds %struct.hda_codec, ptr %codec, i32 0, i32 11
  %0 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec, align 8
  tail call void @kfree(ptr noundef %1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_add_new_ctls(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si3054_switch_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uvalue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %shr = lshr i32 %3, 16
  %conv = trunc i32 %shr to i16
  %call.i = tail call i32 @snd_hdac_codec_read(ptr noundef %1, i16 noundef zeroext %conv, i32 noundef 0, i32 noundef 2304, i32 noundef 0) #5
  %conv4 = and i32 %3, 65535
  %and5 = and i32 %conv4, %call.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool.not = icmp ne i32 %and5, 0
  %cond = zext i1 %tobool.not to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %uvalue, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cond, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si3054_switch_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %uvalue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %shr = lshr i32 %3, 16
  %conv = trunc i32 %shr to i16
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %uvalue, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %call.i19 = tail call i32 @snd_hdac_codec_read(ptr noundef %1, i16 noundef zeroext %conv, i32 noundef 0, i32 noundef 2304, i32 noundef 0) #5
  %conv7 = and i32 %3, 65535
  %neg = xor i32 %conv7, -1
  %and8 = and i32 %call.i19, %neg
  %or = or i32 %call.i19, %conv7
  %and8.sink = select i1 %tobool.not, i32 %and8, i32 %or
  %shl1.i.i21 = shl i32 %shr, 20
  %or2.i.i22 = or i32 %shl1.i.i21, 589824
  %call.i.i23 = tail call i32 @snd_hdac_regmap_write_raw(ptr noundef %1, i32 noundef %or2.i.i22, i32 noundef %and8.sink) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_codec_read(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_regmap_write_raw(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_hda_codec_pcm_new(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si3054_pcm_open(ptr nocapture noundef readnone %hinfo, ptr nocapture noundef readnone %codec, ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %period_bytes_min = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 46, i32 8
  %2 = ptrtoint ptr %period_bytes_min to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 80, ptr %period_bytes_min, align 8
  %3 = load ptr, ptr %runtime, align 4
  %call = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %3, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @si3054_pcm_open.hw_constraints_rates) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si3054_pcm_prepare(ptr nocapture noundef readonly %hinfo, ptr noundef %codec, i32 noundef %stream_tag, i32 noundef %format, ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rate, align 4
  %call.i = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 3, i32 noundef 0, i32 noundef 256, i32 noundef %3) #5
  %call.i24 = tail call i32 @snd_hdac_codec_read(ptr noundef %codec, i16 noundef zeroext 4, i32 noundef 0, i32 noundef 2304, i32 noundef 0) #5
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %4 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  %shl = select i1 %cmp.not, i32 255, i32 65280
  %and = and i32 %shl, %call.i24
  %and5 = shl i32 %stream_tag, 4
  %shl6 = and i32 %and5, 240
  %mul10 = select i1 %cmp.not, i32 8, i32 0
  %shl11 = shl nuw nsw i32 %shl6, %mul10
  %or = or i32 %and, %shl11
  %call.i25 = tail call i32 @snd_hdac_codec_write(ptr noundef %codec, i16 noundef zeroext 4, i32 noundef 0, i32 noundef 256, i32 noundef %or) #5
  %nid = getelementptr inbounds %struct.hda_pcm_stream, ptr %hinfo, i32 0, i32 3
  %6 = ptrtoint ptr %nid to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %nid, align 4
  tail call void @snd_hda_codec_setup_stream(ptr noundef %codec, i16 noundef zeroext %7, i32 noundef %stream_tag, i32 noundef 0, i32 noundef %format) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_list(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_codec_setup_stream(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_codec_write(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_regmap_add_vendor_verb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !34, !35, !36, !37, !38, !39, !41}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @__UNIQUE_ID_file240, !1, !"__UNIQUE_ID_file240", i1 false, i1 false}
!1 = !{!"../sound/pci/hda/patch_si3054.c", i32 297, i32 1}
!2 = !{ptr @__UNIQUE_ID_license241, !1, !"__UNIQUE_ID_license241", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description242, !4, !"__UNIQUE_ID_description242", i1 false, i1 false}
!4 = !{!"../sound/pci/hda/patch_si3054.c", i32 298, i32 1}
!5 = !{ptr @__initcall__kmod_snd_hda_codec_si3054__243_304_si3054_driver_init6, !6, !"__initcall__kmod_snd_hda_codec_si3054__243_304_si3054_driver_init6", i1 false, i1 false}
!6 = !{!"../sound/pci/hda/patch_si3054.c", i32 304, i32 1}
!7 = !{ptr @__exitcall_si3054_driver_exit, !6, !"__exitcall_si3054_driver_exit", i1 false, i1 false}
!8 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @si3054_driver, !10, !"si3054_driver", i1 false, i1 false}
!10 = !{!"../sound/pci/hda/patch_si3054.c", i32 300, i32 32}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../sound/pci/hda/patch_si3054.c", i32 279, i32 2}
!13 = !{ptr @snd_hda_id_si3054, !14, !"snd_hda_id_si3054", i1 false, i1 false}
!14 = !{!"../sound/pci/hda/patch_si3054.c", i32 278, i32 35}
!15 = !{ptr @si3054_patch_ops, !16, !"si3054_patch_ops", i1 false, i1 false}
!16 = !{!"../sound/pci/hda/patch_si3054.c", i32 258, i32 35}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/pci/hda/patch_si3054.c", i32 120, i32 2}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/pci/hda/patch_si3054.c", i32 121, i32 2}
!21 = !{ptr @si3054_modem_mixer, !22, !"si3054_modem_mixer", i1 false, i1 false}
!22 = !{!"../sound/pci/hda/patch_si3054.c", i32 119, i32 38}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../sound/pci/hda/patch_si3054.c", i32 189, i32 38}
!25 = !{ptr @si3054_pcm, !26, !"si3054_pcm", i1 false, i1 false}
!26 = !{!"../sound/pci/hda/patch_si3054.c", i32 170, i32 36}
!27 = !{ptr @si3054_pcm_open.rates, !28, !"rates", i1 false, i1 false}
!28 = !{!"../sound/pci/hda/patch_si3054.c", i32 158, i32 28}
!29 = !{ptr @si3054_pcm_open.hw_constraints_rates, !30, !"hw_constraints_rates", i1 false, i1 false}
!30 = !{!"../sound/pci/hda/patch_si3054.c", i32 159, i32 49}
!31 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/pci/hda/patch_si3054.c", i32 228, i32 3}
!33 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @si3054_init._entry, !32, !"_entry", i1 false, i1 false}
!38 = !{ptr @si3054_init._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/pci/hda/patch_si3054.c", i32 239, i32 3}
!41 = !{ptr @si3054_init.__UNIQUE_ID_ddebug239, !40, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{i64 2148763294, i64 2148763299, i64 2148763312, i64 2148763356, i64 2148763390, i64 2148763411}
