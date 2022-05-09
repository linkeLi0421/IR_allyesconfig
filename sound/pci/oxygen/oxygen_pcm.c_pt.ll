; ModuleID = '/llk/IR_all_yes/sound/pci/oxygen/oxygen_pcm.c_pt.bc'
source_filename = "../sound/pci/oxygen/oxygen_pcm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.oxygen = type { i32, %struct.spinlock, %struct.mutex, ptr, ptr, ptr, i32, ptr, i32, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i32, i32, [6 x ptr], [6 x ptr], %struct.work_struct, %struct.work_struct, %struct.wait_queue_head, %union.anon.79, [2 x [64 x i16]], i32, [32 x i8], %struct.oxygen_model }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%union.anon.79 = type { [64 x i32] }
%struct.oxygen_model = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16 }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
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
%struct.snd_pcm_oss = type { i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.68, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.68 = type { ptr }
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
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.78, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.78 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }

@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Multichannel\00", [19 x i8] zeroinitializer }, align 32
@oxygen_multich_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @oxygen_multich_open, ptr @oxygen_close, ptr null, ptr @oxygen_multich_hw_params, ptr @oxygen_hw_free, ptr @oxygen_prepare, ptr @oxygen_trigger, ptr null, ptr @oxygen_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@oxygen_rec_a_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @oxygen_rec_a_open, ptr @oxygen_close, ptr null, ptr @oxygen_rec_a_hw_params, ptr @oxygen_hw_free, ptr @oxygen_prepare, ptr @oxygen_trigger, ptr null, ptr @oxygen_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@oxygen_rec_b_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @oxygen_rec_b_open, ptr @oxygen_close, ptr null, ptr @oxygen_rec_b_hw_params, ptr @oxygen_hw_free, ptr @oxygen_prepare, ptr @oxygen_trigger, ptr null, ptr @oxygen_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Digital\00", [24 x i8] zeroinitializer }, align 32
@oxygen_spdif_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @oxygen_spdif_open, ptr @oxygen_close, ptr null, ptr @oxygen_spdif_hw_params, ptr @oxygen_spdif_hw_free, ptr @oxygen_prepare, ptr @oxygen_trigger, ptr null, ptr @oxygen_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@oxygen_rec_c_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @oxygen_rec_c_open, ptr @oxygen_close, ptr null, ptr @oxygen_rec_c_hw_params, ptr @oxygen_hw_free, ptr @oxygen_prepare, ptr @oxygen_trigger, ptr null, ptr @oxygen_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AC97\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Analog2\00", [24 x i8] zeroinitializer }, align 32
@oxygen_ac97_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @oxygen_ac97_open, ptr @oxygen_close, ptr null, ptr @oxygen_hw_params, ptr @oxygen_hw_free, ptr @oxygen_prepare, ptr @oxygen_trigger, ptr null, ptr @oxygen_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Front Panel\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Analog 2\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Analog3\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Analog 3\00", [23 x i8] zeroinitializer }, align 32
@oxygen_ac97_hardware = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 13107459, i64 4, i32 128, i32 48000, i32 48000, i32 2, i32 2, i32 262144, i32 64, i32 262144, i32 1, i32 4096, i32 256 }, [32 x i8] zeroinitializer }, align 32
@oxygen_hardware = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @oxygen_stereo_hardware, ptr @oxygen_stereo_hardware, ptr @oxygen_stereo_hardware, ptr @oxygen_stereo_hardware, ptr @oxygen_multichannel_hardware, ptr @oxygen_ac97_hardware], [40 x i8] zeroinitializer }, align 32
@oxygen_stereo_hardware = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 13107459, i64 1028, i32 8160, i32 32000, i32 192000, i32 2, i32 2, i32 262144, i32 64, i32 262144, i32 1, i32 4096, i32 256 }, [32 x i8] zeroinitializer }, align 32
@oxygen_multichannel_hardware = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 13107459, i64 1028, i32 8160, i32 32000, i32 192000, i32 2, i32 8, i32 67108864, i32 64, i32 67108864, i32 1, i32 1048576, i32 1024 }, [32 x i8] zeroinitializer }, align 32
@channel_base_registers = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 8, i32 16, i32 24, i32 32, i32 48], [40 x i8] zeroinitializer }, align 32
@switch.table.oxygen_multich_hw_params = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\01\00\02\00\03", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@__sancov_gen_cov_switch_values.8 = internal global [9 x i64] [i64 7, i64 32, i64 32000, i64 44100, i64 64000, i64 88200, i64 96000, i64 176400, i64 192000]
@__sancov_gen_cov_switch_values.9 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 4]
@__sancov_gen_cov_switch_values.10 = internal global [9 x i64] [i64 7, i64 32, i64 32000, i64 44100, i64 64000, i64 88200, i64 96000, i64 176400, i64 192000]
@__sancov_gen_cov_switch_values.11 = internal global [9 x i64] [i64 7, i64 32, i64 32000, i64 44100, i64 64000, i64 88200, i64 96000, i64 176400, i64 192000]
@__sancov_gen_cov_switch_values.12 = internal global [9 x i64] [i64 7, i64 32, i64 32000, i64 44100, i64 64000, i64 88200, i64 96000, i64 176400, i64 192000]
@__sancov_gen_cov_switch_values.13 = internal global [9 x i64] [i64 7, i64 32, i64 32000, i64 44100, i64 64000, i64 88200, i64 96000, i64 176400, i64 192000]
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 686, i32 33 }
@___asan_gen_.17 = private unnamed_addr constant [19 x i8] c"oxygen_multich_ops\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 656, i32 33 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"oxygen_rec_a_ops\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 616, i32 33 }
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"oxygen_rec_b_ops\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 626, i32 33 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 718, i32 33 }
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"oxygen_spdif_ops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 646, i32 33 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"oxygen_rec_c_ops\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 636, i32 33 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 743, i32 40 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 743, i32 49 }
@___asan_gen_.41 = private unnamed_addr constant [16 x i8] c"oxygen_ac97_ops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 666, i32 33 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 758, i32 28 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 758, i32 44 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 767, i32 33 }
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 776, i32 21 }
@___asan_gen_.56 = private unnamed_addr constant [21 x i8] c"oxygen_ac97_hardware\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 84, i32 38 }
@___asan_gen_.59 = private unnamed_addr constant [16 x i8] c"oxygen_hardware\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 105, i32 45 }
@___asan_gen_.62 = private unnamed_addr constant [23 x i8] c"oxygen_stereo_hardware\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 28, i32 38 }
@___asan_gen_.65 = private unnamed_addr constant [29 x i8] c"oxygen_multichannel_hardware\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 56, i32 38 }
@___asan_gen_.68 = private unnamed_addr constant [23 x i8] c"channel_base_registers\00", align 1
@___asan_gen_.69 = private constant [33 x i8] c"../sound/pci/oxygen/oxygen_pcm.c\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 293, i32 27 }
@___asan_gen_.71 = private unnamed_addr constant [38 x i8] c"switch.table.oxygen_multich_hw_params\00", align 1
@llvm.compiler.used = appending global [20 x ptr] [ptr @.str, ptr @oxygen_multich_ops, ptr @oxygen_rec_a_ops, ptr @oxygen_rec_b_ops, ptr @.str.1, ptr @oxygen_spdif_ops, ptr @oxygen_rec_c_ops, ptr @.str.2, ptr @.str.3, ptr @oxygen_ac97_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @oxygen_ac97_hardware, ptr @oxygen_hardware, ptr @oxygen_stereo_hardware, ptr @oxygen_multichannel_hardware, ptr @channel_base_registers, ptr @switch.table.oxygen_multich_hw_params], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxygen_multich_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxygen_rec_a_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxygen_rec_b_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxygen_spdif_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxygen_rec_c_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxygen_ac97_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxygen_ac97_hardware to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxygen_hardware to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxygen_stereo_hardware to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oxygen_multichannel_hardware to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @channel_base_registers to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.oxygen_multich_hw_params to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @oxygen_pcm_init(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  %pcm = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm) #5
  %0 = ptrtoint ptr %pcm to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm, align 4, !annotation !47
  %device_config = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 22
  %1 = ptrtoint ptr %device_config to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %device_config, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and4 = and i32 %2, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5 = icmp ne i32 %and4, 0
  %lnot.ext9 = zext i1 %tobool5 to i32
  %or = or i32 %and, %lnot.ext9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool10.not = icmp eq i32 %or, 0
  br i1 %tobool10.not, label %entry.if.end41_crit_edge, label %if.then

entry.if.end41_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

if.then:                                          ; preds = %entry
  %card = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 3
  %3 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %card, align 4
  %call = call i32 @snd_pcm_new(ptr noundef %4, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef %and, i32 noundef %lnot.ext9, ptr noundef nonnull %pcm) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %if.then
  br i1 %tobool.not, label %if.end.if.end14_crit_edge, label %if.then13

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pcm, align 4
  call void @snd_pcm_set_ops(ptr noundef %6, i32 noundef 0, ptr noundef nonnull @oxygen_multich_ops) #5
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end.if.end14_crit_edge
  %7 = ptrtoint ptr %device_config to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %device_config, align 4
  %and17 = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pcm, align 4
  call void @snd_pcm_set_ops(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @oxygen_rec_a_ops) #5
  br label %if.end26

if.else:                                          ; preds = %if.end14
  %and22 = and i32 %8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.else.if.end26_crit_edge, label %if.then24

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.then24:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pcm, align 4
  call void @snd_pcm_set_ops(ptr noundef %12, i32 noundef 1, ptr noundef nonnull @oxygen_rec_b_ops) #5
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.else.if.end26_crit_edge, %if.then19
  %13 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pcm, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %chip, ptr %private_data, align 8
  %name = getelementptr inbounds %struct.snd_pcm, ptr %14, i32 0, i32 7
  %16 = call ptr @memcpy(ptr %name, ptr @.str, i32 13)
  br i1 %tobool.not, label %if.end26.if.end31_crit_edge, label %if.then29

if.end26.if.end31_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  %substream = getelementptr inbounds %struct.snd_pcm, ptr %14, i32 0, i32 8, i32 0, i32 4
  %17 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %substream, align 8
  %pci = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 4
  %19 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %call30 = call i32 @snd_pcm_set_managed_buffer(ptr noundef %18, i32 noundef 2, ptr noundef %dev, i32 noundef 1048576, i32 noundef 67108864) #5
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end26.if.end31_crit_edge
  br i1 %tobool5, label %if.then33, label %if.end31.if.end41_crit_edge

if.end31.if.end41_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pcm, align 4
  %substream36 = getelementptr %struct.snd_pcm, ptr %22, i32 0, i32 8, i32 1, i32 4
  %23 = ptrtoint ptr %substream36 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %substream36, align 8
  %pci37 = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 4
  %25 = ptrtoint ptr %pci37 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pci37, align 4
  %dev38 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %call39 = call i32 @snd_pcm_set_managed_buffer(ptr noundef %24, i32 noundef 2, ptr noundef %dev38, i32 noundef 131072, i32 noundef 262144) #5
  br label %if.end41

if.end41:                                         ; preds = %if.then33, %if.end31.if.end41_crit_edge, %entry.if.end41_crit_edge
  %27 = ptrtoint ptr %device_config to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %device_config, align 4
  %and44 = and i32 %28, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  %and44.lobit = lshr exact i32 %and44, 2
  %and52 = and i32 %28, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  %and52.lobit = lshr exact i32 %and52, 7
  %or58 = or i32 %and44.lobit, %and52.lobit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or58)
  %tobool59.not = icmp eq i32 %or58, 0
  br i1 %tobool59.not, label %if.end41.if.end79_crit_edge, label %if.then60

if.end41.if.end79_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end79

if.then60:                                        ; preds = %if.end41
  %card61 = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 3
  %29 = ptrtoint ptr %card61 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %card61, align 4
  %call62 = call i32 @snd_pcm_new(ptr noundef %30, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef %and44.lobit, i32 noundef %and52.lobit, ptr noundef nonnull %pcm) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63 = icmp slt i32 %call62, 0
  br i1 %cmp63, label %if.then60.cleanup_crit_edge, label %if.end65

if.then60.cleanup_crit_edge:                      ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end65:                                         ; preds = %if.then60
  br i1 %tobool45.not, label %if.end65.if.end68_crit_edge, label %if.then67

if.end65.if.end68_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end68

if.then67:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pcm, align 4
  call void @snd_pcm_set_ops(ptr noundef %32, i32 noundef 0, ptr noundef nonnull @oxygen_spdif_ops) #5
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %if.end65.if.end68_crit_edge
  br i1 %tobool53.not, label %if.end68.if.end71_crit_edge, label %if.then70

if.end68.if.end71_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end71

if.then70:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pcm, align 4
  call void @snd_pcm_set_ops(ptr noundef %34, i32 noundef 1, ptr noundef nonnull @oxygen_rec_c_ops) #5
  br label %if.end71

if.end71:                                         ; preds = %if.then70, %if.end68.if.end71_crit_edge
  %35 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pcm, align 4
  %private_data72 = getelementptr inbounds %struct.snd_pcm, ptr %36, i32 0, i32 11
  %37 = ptrtoint ptr %private_data72 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %chip, ptr %private_data72, align 8
  %name73 = getelementptr inbounds %struct.snd_pcm, ptr %36, i32 0, i32 7
  %38 = ptrtoint ptr %name73 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 8)
  store i64 4929584969755487232, ptr %name73, align 1
  %pci76 = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 4
  %39 = ptrtoint ptr %pci76 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pci76, align 4
  %dev77 = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44
  %call78 = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %36, i32 noundef 2, ptr noundef %dev77, i32 noundef 131072, i32 noundef 262144) #5
  br label %if.end79

if.end79:                                         ; preds = %if.end71, %if.end41.if.end79_crit_edge
  %has_ac97_1 = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 16
  %41 = ptrtoint ptr %has_ac97_1 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %has_ac97_1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool80.not = icmp eq i8 %42, 0
  %43 = ptrtoint ptr %device_config to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %device_config, align 4
  %and84 = lshr i32 %44, 3
  %and84.lobit = and i32 %and84, 1
  %.sink = select i1 %tobool80.not, i32 8, i32 9
  %outs.0 = select i1 %tobool80.not, i32 0, i32 %and84.lobit
  %and101 = lshr i32 %44, %.sink
  %ins.0 = and i32 %and101, 1
  %or108 = or i32 %ins.0, %outs.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or108)
  %tobool109.not = icmp eq i32 %or108, 0
  br i1 %tobool109.not, label %if.end79.if.end132_crit_edge, label %if.then110

if.end79.if.end132_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end132

if.then110:                                       ; preds = %if.end79
  %card111 = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 3
  %45 = ptrtoint ptr %card111 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %card111, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %outs.0)
  %tobool112.not = icmp eq i32 %outs.0, 0
  %cond = select i1 %tobool112.not, ptr @.str.3, ptr @.str.2
  %call113 = call i32 @snd_pcm_new(ptr noundef %46, ptr noundef nonnull %cond, i32 noundef 2, i32 noundef %outs.0, i32 noundef %ins.0, ptr noundef nonnull %pcm) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %cmp114 = icmp slt i32 %call113, 0
  br i1 %cmp114, label %if.then110.cleanup_crit_edge, label %if.end116

if.then110.cleanup_crit_edge:                     ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end116:                                        ; preds = %if.then110
  br i1 %tobool112.not, label %if.end116.if.end119_crit_edge, label %if.then118

if.end116.if.end119_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end119

if.then118:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pcm, align 4
  call void @snd_pcm_set_ops(ptr noundef %48, i32 noundef 0, ptr noundef nonnull @oxygen_ac97_ops) #5
  call void @oxygen_write8_masked(ptr noundef %chip, i32 noundef 194, i8 noundef zeroext 16, i8 noundef zeroext 16) #5
  br label %if.end119

if.end119:                                        ; preds = %if.then118, %if.end116.if.end119_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ins.0)
  %tobool120.not = icmp eq i32 %ins.0, 0
  br i1 %tobool120.not, label %if.end119.if.end122_crit_edge, label %if.then121

if.end119.if.end122_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end122

if.then121:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #7
  %49 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pcm, align 4
  call void @snd_pcm_set_ops(ptr noundef %50, i32 noundef 1, ptr noundef nonnull @oxygen_rec_b_ops) #5
  br label %if.end122

if.end122:                                        ; preds = %if.then121, %if.end119.if.end122_crit_edge
  %51 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pcm, align 4
  %private_data123 = getelementptr inbounds %struct.snd_pcm, ptr %52, i32 0, i32 11
  %53 = ptrtoint ptr %private_data123 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %chip, ptr %private_data123, align 8
  %name124 = getelementptr inbounds %struct.snd_pcm, ptr %52, i32 0, i32 7
  %cond127 = select i1 %tobool112.not, ptr @.str.5, ptr @.str.4
  %call128 = call ptr @strcpy(ptr noundef %name124, ptr noundef nonnull %cond127) #8
  %pci129 = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 4
  %54 = ptrtoint ptr %pci129 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pci129, align 4
  %dev130 = getelementptr inbounds %struct.pci_dev, ptr %55, i32 0, i32 44
  %call131 = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %52, i32 noundef 2, ptr noundef %dev130, i32 noundef 131072, i32 noundef 262144) #5
  br label %if.end132

if.end132:                                        ; preds = %if.end122, %if.end79.if.end132_crit_edge
  %56 = ptrtoint ptr %device_config to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %device_config, align 4
  %and135 = and i32 %57, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135)
  %tobool136.not = icmp eq i32 %and135, 0
  br i1 %tobool136.not, label %if.end132.cleanup_crit_edge, label %if.then142

if.end132.cleanup_crit_edge:                      ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then142:                                       ; preds = %if.end132
  %and135.lobit = lshr exact i32 %and135, 10
  %card143 = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 3
  %58 = ptrtoint ptr %card143 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %card143, align 4
  %call144 = call i32 @snd_pcm_new(ptr noundef %59, ptr noundef nonnull @.str.6, i32 noundef 3, i32 noundef 0, i32 noundef %and135.lobit, ptr noundef nonnull %pcm) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %cmp145 = icmp slt i32 %call144, 0
  br i1 %cmp145, label %if.then142.cleanup_crit_edge, label %if.end147

if.then142.cleanup_crit_edge:                     ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end147:                                        ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #7
  %60 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pcm, align 4
  call void @snd_pcm_set_ops(ptr noundef %61, i32 noundef 1, ptr noundef nonnull @oxygen_rec_c_ops) #5
  call void @oxygen_write8_masked(ptr noundef %chip, i32 noundef 194, i8 noundef zeroext 32, i8 noundef zeroext 32) #5
  %62 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pcm, align 4
  %private_data148 = getelementptr inbounds %struct.snd_pcm, ptr %63, i32 0, i32 11
  %64 = ptrtoint ptr %private_data148 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %chip, ptr %private_data148, align 8
  %name149 = getelementptr inbounds %struct.snd_pcm, ptr %63, i32 0, i32 7
  %65 = call ptr @memcpy(ptr %name149, ptr @.str.7, i32 9)
  %pci152 = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 4
  %66 = ptrtoint ptr %pci152 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pci152, align 4
  %dev153 = getelementptr inbounds %struct.pci_dev, ptr %67, i32 0, i32 44
  %call154 = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %63, i32 noundef 2, ptr noundef %dev153, i32 noundef 131072, i32 noundef 262144) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end147, %if.then142.cleanup_crit_edge, %if.end132.cleanup_crit_edge, %if.then110.cleanup_crit_edge, %if.then60.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then.cleanup_crit_edge ], [ %call62, %if.then60.cleanup_crit_edge ], [ %call113, %if.then110.cleanup_crit_edge ], [ %call144, %if.then142.cleanup_crit_edge ], [ 0, %if.end147 ], [ 0, %if.end132.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @oxygen_write8_masked(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oxygen_multich_open(ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @oxygen_open(ptr noundef %substream, i32 noundef 4)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oxygen_close(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime.i, align 4
  %private_data.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i, align 8
  %6 = ptrtoint ptr %5 to i32
  %mutex = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %shl = shl nuw i32 1, %6
  %pcm_active = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %pcm_active to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %pcm_active, align 1
  %9 = trunc i32 %shl to i8
  %10 = xor i8 %9, -1
  %conv1 = and i8 %8, %10
  store i8 %conv1, ptr %pcm_active, align 1
  %11 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %entry.if.end11_crit_edge [
    i32 3, label %if.then
    i32 4, label %entry.if.then10_crit_edge
  ]

entry.if.then10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %controls = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 20
  %12 = ptrtoint ptr %controls to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %controls, align 4
  %access = getelementptr inbounds %struct.snd_kcontrol, ptr %13, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %access to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %access, align 4
  %or = or i32 %15, 256
  store i32 %or, ptr %access, align 4
  %card = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %card, align 4
  %18 = load ptr, ptr %controls, align 4
  %id = getelementptr inbounds %struct.snd_kcontrol, ptr %18, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %17, i32 noundef 3, ptr noundef %id) #5
  br label %if.then10

if.then10:                                        ; preds = %if.then, %entry.if.then10_crit_edge
  tail call void @oxygen_update_spdif_source(ptr noundef %1) #5
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %entry.if.end11_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  %arrayidx13 = getelementptr %struct.oxygen, ptr %1, i32 0, i32 19, i32 %6
  %19 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %arrayidx13, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oxygen_multich_hw_params(ptr nocapture noundef readonly %substream, ptr noundef %hw_params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call i32 @oxygen_hw_params(ptr noundef %substream, ptr noundef %hw_params)
  %mutex = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %reg_lock = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #5
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 2
  %2 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i.i.i, align 4
  %switch.tableidx = add i32 %3, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 5
  br i1 %4, label %switch.lookup, label %entry.oxygen_play_channels.exit_crit_edge

entry.oxygen_play_channels.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %oxygen_play_channels.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [5 x i8], ptr @switch.table.oxygen_multich_hw_params, i32 0, i32 %switch.tableidx
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %5)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %oxygen_play_channels.exit

oxygen_play_channels.exit:                        ; preds = %switch.lookup, %entry.oxygen_play_channels.exit_crit_edge
  %retval.0.i = phi i8 [ 0, %entry.oxygen_play_channels.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  tail call void @oxygen_write8_masked(ptr noundef %1, i32 noundef 67, i8 noundef zeroext %retval.0.i, i8 noundef zeroext 3) #5
  %arrayidx.i.i.i36 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %arrayidx.i.i.i36 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i.i36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %oxygen_play_channels.exit.params_format.exit.i_crit_edge

oxygen_play_channels.exit.params_format.exit.i_crit_edge: ; preds = %oxygen_play_channels.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %params_format.exit.i

for.inc.i.i.i:                                    ; preds = %oxygen_play_channels.exit
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 1, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.1.i.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.oxygen_format.exit_crit_edge, label %for.inc.i.i.i.params_format.exit.i_crit_edge

for.inc.i.i.i.params_format.exit.i_crit_edge:     ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %params_format.exit.i

for.inc.i.i.i.oxygen_format.exit_crit_edge:       ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %oxygen_format.exit

params_format.exit.i:                             ; preds = %for.inc.i.i.i.params_format.exit.i_crit_edge, %oxygen_play_channels.exit.params_format.exit.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %oxygen_play_channels.exit.params_format.exit.i_crit_edge ], [ 32, %for.inc.i.i.i.params_format.exit.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %7, %oxygen_play_channels.exit.params_format.exit.i_crit_edge ], [ %9, %for.inc.i.i.i.params_format.exit.i_crit_edge ]
  %10 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #5, !range !48
  %add.i.i.i = or i32 %10, %i.09.lcssa.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %add.i.i.i)
  %cmp.i = icmp eq i32 %add.i.i.i, 10
  %phi.bo = select i1 %cmp.i, i8 4, i8 0
  br label %oxygen_format.exit

oxygen_format.exit:                               ; preds = %params_format.exit.i, %for.inc.i.i.i.oxygen_format.exit_crit_edge
  %11 = phi i8 [ 0, %for.inc.i.i.i.oxygen_format.exit_crit_edge ], [ %phi.bo, %params_format.exit.i ]
  tail call void @oxygen_write8_masked(ptr noundef %1, i32 noundef 75, i8 noundef zeroext %11, i8 noundef zeroext 12) #5
  %arrayidx.i.i.i37 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %arrayidx.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i.i37, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %13, label %sw.default.i [
    i32 32000, label %oxygen_format.exit.oxygen_rate.exit_crit_edge
    i32 44100, label %sw.bb1.i38
    i32 64000, label %sw.bb2.i39
    i32 88200, label %sw.bb3.i
    i32 96000, label %sw.bb4.i
    i32 176400, label %sw.bb5.i
    i32 192000, label %sw.bb6.i
  ]

oxygen_format.exit.oxygen_rate.exit_crit_edge:    ; preds = %oxygen_format.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %oxygen_rate.exit

sw.bb1.i38:                                       ; preds = %oxygen_format.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %oxygen_rate.exit

sw.default.i:                                     ; preds = %oxygen_format.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %oxygen_rate.exit

sw.bb2.i39:                                       ; preds = %oxygen_format.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %oxygen_rate.exit

sw.bb3.i:                                         ; preds = %oxygen_format.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %oxygen_rate.exit

sw.bb4.i:                                         ; preds = %oxygen_format.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %oxygen_rate.exit

sw.bb5.i:                                         ; preds = %oxygen_format.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %oxygen_rate.exit

sw.bb6.i:                                         ; preds = %oxygen_format.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %oxygen_rate.exit

oxygen_rate.exit:                                 ; preds = %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i39, %sw.default.i, %sw.bb1.i38, %oxygen_format.exit.oxygen_rate.exit_crit_edge
  %retval.0.i40 = phi i16 [ 2, %sw.default.i ], [ 7, %sw.bb6.i ], [ 6, %sw.bb5.i ], [ 5, %sw.bb4.i ], [ 4, %sw.bb3.i ], [ 3, %sw.bb2.i39 ], [ 1, %sw.bb1.i38 ], [ 0, %oxygen_format.exit.oxygen_rate.exit_crit_edge ]
  %dac_i2s_format = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 28, i32 31
  %15 = ptrtoint ptr %dac_i2s_format to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %dac_i2s_format, align 4
  %dac_mclks.i = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 28, i32 29
  %17 = ptrtoint ptr %dac_mclks.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %mclks.0.in.i = load i8, ptr %dac_mclks.i, align 1
  %18 = ptrtoint ptr %arrayidx.i.i.i36 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.i.i36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.i.i43 = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i.i43, label %for.inc.i.i.i46, label %oxygen_rate.exit.params_format.exit.i52_crit_edge

oxygen_rate.exit.params_format.exit.i52_crit_edge: ; preds = %oxygen_rate.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %params_format.exit.i52

for.inc.i.i.i46:                                  ; preds = %oxygen_rate.exit
  %arrayidx.1.i.i.i44 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 1, i32 1, i32 0, i32 1
  %20 = ptrtoint ptr %arrayidx.1.i.i.i44 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.1.i.i.i44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.1.i.i.i45 = icmp eq i32 %21, 0
  br i1 %tobool.not.1.i.i.i45, label %for.inc.i.i.i46.oxygen_i2s_bits.exit_crit_edge, label %for.inc.i.i.i46.params_format.exit.i52_crit_edge

for.inc.i.i.i46.params_format.exit.i52_crit_edge: ; preds = %for.inc.i.i.i46
  call void @__sanitizer_cov_trace_pc() #7
  br label %params_format.exit.i52

for.inc.i.i.i46.oxygen_i2s_bits.exit_crit_edge:   ; preds = %for.inc.i.i.i46
  call void @__sanitizer_cov_trace_pc() #7
  br label %oxygen_i2s_bits.exit

params_format.exit.i52:                           ; preds = %for.inc.i.i.i46.params_format.exit.i52_crit_edge, %oxygen_rate.exit.params_format.exit.i52_crit_edge
  %i.09.lcssa.i.i.i47 = phi i32 [ 0, %oxygen_rate.exit.params_format.exit.i52_crit_edge ], [ 32, %for.inc.i.i.i46.params_format.exit.i52_crit_edge ]
  %.lcssa.i.i.i48 = phi i32 [ %19, %oxygen_rate.exit.params_format.exit.i52_crit_edge ], [ %21, %for.inc.i.i.i46.params_format.exit.i52_crit_edge ]
  %22 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i48, i1 true) #5, !range !48
  %add.i.i.i49 = or i32 %22, %i.09.lcssa.i.i.i47
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %add.i.i.i49)
  %cmp.i50 = icmp eq i32 %add.i.i.i49, 10
  %spec.select.i51 = select i1 %cmp.i50, i16 128, i16 0
  br label %oxygen_i2s_bits.exit

oxygen_i2s_bits.exit:                             ; preds = %params_format.exit.i52, %for.inc.i.i.i46.oxygen_i2s_bits.exit_crit_edge
  %23 = phi i16 [ 0, %for.inc.i.i.i46.oxygen_i2s_bits.exit_crit_edge ], [ %spec.select.i51, %params_format.exit.i52 ]
  %or = or i16 %16, %retval.0.i40
  %mclks.0.i = zext i8 %mclks.0.in.i to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 48001, i32 %13)
  %cmp3.i = icmp ult i32 %13, 48001
  call void @__sanitizer_cov_trace_const_cmp4(i32 96001, i32 %13)
  %cmp8.i = icmp ult i32 %13, 96001
  %..i = select i1 %cmp8.i, i16 2, i16 4
  %shift.0.i = select i1 %cmp3.i, i16 0, i16 %..i
  %shr.i = lshr i16 %mclks.0.i, %shift.0.i
  %and.i = shl nuw nsw i16 %shr.i, 4
  %shl.i = and i16 %and.i, 48
  %or8 = or i16 %or, %shl.i
  %or10 = or i16 %or8, %23
  tail call void @oxygen_write16_masked(ptr noundef %1, i32 noundef 96, i16 noundef zeroext %or10, i16 noundef zeroext 255) #5
  tail call void @oxygen_update_spdif_source(ptr noundef %1) #5
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #5
  %set_dac_params = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 28, i32 10
  %24 = ptrtoint ptr %set_dac_params to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %set_dac_params, align 4
  tail call void %25(ptr noundef %1, ptr noundef %hw_params) #5
  tail call void @oxygen_update_dac_routing(ptr noundef %1) #5
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oxygen_hw_free(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime.i, align 4
  %private_data.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i, align 8
  %6 = ptrtoint ptr %5 to i32
  %shl = shl nuw i32 1, %6
  %reg_lock = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #5
  %neg = xor i32 %shl, -1
  %interrupt_mask = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %interrupt_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %interrupt_mask, align 4
  %and = and i32 %8, %neg
  store i32 %and, ptr %interrupt_mask, align 4
  %conv = trunc i32 %and to i16
  tail call void @oxygen_write16(ptr noundef %1, i32 noundef 68, i16 noundef zeroext %conv) #5
  %conv2 = trunc i32 %shl to i8
  tail call void @oxygen_write8_masked(ptr noundef %1, i32 noundef 225, i8 noundef zeroext %conv2, i8 noundef zeroext %conv2) #5
  tail call void @oxygen_write8_masked(ptr noundef %1, i32 noundef 225, i8 noundef zeroext 0, i8 noundef zeroext %conv2) #5
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oxygen_prepare(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime.i, align 4
  %private_data.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i, align 8
  %6 = ptrtoint ptr %5 to i32
  %shl = shl nuw i32 1, %6
  %reg_lock = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #5
  %conv = trunc i32 %shl to i8
  tail call void @oxygen_write8_masked(ptr noundef %1, i32 noundef 225, i8 noundef zeroext %conv, i8 noundef zeroext %conv) #5
  tail call void @oxygen_write8_masked(ptr noundef %1, i32 noundef 225, i8 noundef zeroext 0, i8 noundef zeroext %conv) #5
  %7 = ptrtoint ptr %runtime.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %runtime.i, align 4
  %no_period_wakeup = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 26
  %9 = ptrtoint ptr %no_period_wakeup to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %no_period_wakeup, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %neg = xor i32 %shl, -1
  %interrupt_mask = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %interrupt_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %interrupt_mask, align 4
  %and = and i32 %11, %neg
  store i32 %and, ptr %interrupt_mask, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %interrupt_mask2 = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %interrupt_mask2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %interrupt_mask2, align 4
  %or = or i32 %13, %shl
  store i32 %or, ptr %interrupt_mask2, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %interrupt_mask3 = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %interrupt_mask3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %interrupt_mask3, align 4
  %conv4 = trunc i32 %15 to i16
  tail call void @oxygen_write16(ptr noundef %1, i32 noundef 68, i16 noundef zeroext %conv4) #5
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oxygen_trigger(ptr noundef %substream, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %cmd)
  %2 = icmp ult i32 %cmd, 6
  br i1 %2, label %switch.hole_check, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %cmd to i8
  %switch.shifted = lshr i8 59, %switch.maskindex
  %3 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %switch.lobit.not = icmp eq i8 %3, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.cast = trunc i32 %cmd to i6
  %switch.downshift = lshr i6 -25, %switch.cast
  %4 = and i6 %switch.downshift, 1
  %5 = sext i6 %4 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %switch.masked.not = icmp eq i6 %4, 0
  %group = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 18
  %6 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %group, align 4
  %substreams = getelementptr inbounds %struct.snd_pcm_group, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %substreams to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn56 = load ptr, ptr %substreams, align 4
  %cmp.not58 = icmp eq ptr %.pn56, %substreams
  br i1 %cmp.not58, label %switch.lookup.for.end_crit_edge, label %switch.lookup.for.body_crit_edge

switch.lookup.for.body_crit_edge:                 ; preds = %switch.lookup
  br label %for.body

switch.lookup.for.end_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %switch.lookup.for.body_crit_edge
  %.pn60 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn56, %switch.lookup.for.body_crit_edge ]
  %mask.059 = phi i32 [ %mask.1, %for.inc.for.body_crit_edge ], [ 0, %switch.lookup.for.body_crit_edge ]
  %private_data4 = getelementptr i8, ptr %.pn60, i32 -132
  %9 = ptrtoint ptr %private_data4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %private_data4, align 4
  %cmp5 = icmp eq ptr %10, %1
  br i1 %cmp5, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %runtime.i = getelementptr i8, ptr %.pn60, i32 -20
  %11 = ptrtoint ptr %runtime.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %runtime.i, align 4
  %private_data.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %12, i32 0, i32 44
  %13 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %private_data.i, align 8
  %15 = ptrtoint ptr %14 to i32
  %shl = shl nuw i32 1, %15
  %or = or i32 %shl, %mask.059
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %substream, ptr %12, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %mask.1 = phi i32 [ %or, %if.then ], [ %mask.059, %for.body.for.inc_crit_edge ]
  %17 = ptrtoint ptr %.pn60 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn = load ptr, ptr %.pn60, align 4
  %18 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %group, align 4
  %substreams3 = getelementptr inbounds %struct.snd_pcm_group, ptr %19, i32 0, i32 2
  %cmp.not = icmp eq ptr %.pn, %substreams3
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %switch.lookup.for.end_crit_edge
  %mask.0.lcssa = phi i32 [ 0, %switch.lookup.for.end_crit_edge ], [ %mask.1, %for.inc.for.end_crit_edge ]
  %reg_lock = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #5
  br i1 %switch.masked.not, label %if.else21, label %if.then11

if.then11:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cmd)
  %cmp12 = icmp eq i32 %cmd, 1
  %pcm_running = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 12
  %20 = ptrtoint ptr %pcm_running to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %pcm_running, align 2
  %22 = trunc i32 %mask.0.lcssa to i8
  %23 = xor i8 %22, -1
  %conv18 = and i8 %21, %23
  %conv15 = or i8 %21, %22
  %conv18.sink = select i1 %cmp12, i8 %conv15, i8 %conv18
  store i8 %conv18.sink, ptr %pcm_running, align 2
  tail call void @oxygen_write8(ptr noundef %1, i32 noundef 64, i8 noundef zeroext %conv18.sink) #5
  br label %if.end29

if.else21:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %cmd)
  %cmp22 = icmp eq i32 %cmd, 3
  %conv25 = trunc i32 %mask.0.lcssa to i8
  br i1 %cmp22, label %if.then24, label %if.else26

if.then24:                                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @oxygen_write8_masked(ptr noundef %1, i32 noundef 65, i8 noundef zeroext %conv25, i8 noundef zeroext %conv25) #5
  br label %if.end29

if.else26:                                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @oxygen_write8_masked(ptr noundef %1, i32 noundef 65, i8 noundef zeroext 0, i8 noundef zeroext %conv25) #5
  br label %if.end29

if.end29:                                         ; preds = %if.else26, %if.then24, %if.then11
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %switch.hole_check.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end29 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oxygen_pointer(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %private_data.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i, align 8
  %6 = ptrtoint ptr %5 to i32
  %arrayidx = getelementptr [6 x i32], ptr @channel_base_registers, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %call2 = tail call i32 @oxygen_read32(ptr noundef %1, i32 noundef %8) #5
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 51
  %9 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dma_addr, align 8
  %sub = sub i32 %call2, %10
  %mul.i = shl i32 %sub, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 21
  %11 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %12
  ret i32 %div.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @oxygen_open(ptr noundef %substream, i32 noundef %channel) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %4 = inttoptr i32 %channel to ptr
  %private_data2 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %5 = ptrtoint ptr %private_data2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %private_data2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %channel)
  %cmp = icmp eq i32 %channel, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %has_ac97_1 = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %has_ac97_1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %has_ac97_1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %land.lhs.true.if.end.thread117_crit_edge, label %land.lhs.true3

land.lhs.true.if.end.thread117_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.thread117

land.lhs.true3:                                   ; preds = %land.lhs.true
  %device_config = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 28, i32 22
  %8 = ptrtoint ptr %device_config to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %device_config, align 4
  %and = and i32 %9, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %land.lhs.true3.if.end.thread117_crit_edge, label %if.end.thread

land.lhs.true3.if.end.thread117_crit_edge:        ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.thread117

if.end.thread:                                    ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #7
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %10 = call ptr @memcpy(ptr %hw, ptr @oxygen_ac97_hardware, i32 64)
  br label %sw.bb15

if.end.thread117:                                 ; preds = %land.lhs.true3.if.end.thread117_crit_edge, %land.lhs.true.if.end.thread117_crit_edge
  %hw5118 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %11 = call ptr @memcpy(ptr %hw5118, ptr @oxygen_stereo_hardware, i32 64)
  br label %sw.bb15

if.end:                                           ; preds = %entry
  %hw5 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %arrayidx = getelementptr [6 x ptr], ptr @oxygen_hardware, i32 0, i32 %channel
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %14 = call ptr @memcpy(ptr %hw5, ptr %13, i32 64)
  %15 = zext i32 %channel to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %channel, label %if.end.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 0, label %if.end.sw.bb15_crit_edge
    i32 4, label %sw.bb17
  ]

if.end.sw.bb15_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb15

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %device_config7 = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 28, i32 22
  %16 = ptrtoint ptr %device_config7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %device_config7, align 4
  %and8 = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %sw.bb.sw.bb15_crit_edge, label %if.then10

sw.bb.sw.bb15_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb15

if.then10:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %rates = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 2
  %18 = ptrtoint ptr %rates to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rates, align 8
  %and12 = and i32 %19, -289
  store i32 %and12, ptr %rates, align 8
  %rate_min = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 3
  %20 = ptrtoint ptr %rate_min to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 44100, ptr %rate_min, align 4
  br label %sw.bb15

sw.bb15:                                          ; preds = %if.then10, %sw.bb.sw.bb15_crit_edge, %if.end.sw.bb15_crit_edge, %if.end.thread117, %if.end.thread
  %fifo_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 12
  %21 = ptrtoint ptr %fifo_size to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %fifo_size, align 8
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dac_channels_pcm = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 28, i32 23
  %22 = ptrtoint ptr %dac_channels_pcm to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %dac_channels_pcm, align 4
  %conv19 = zext i8 %23 to i32
  %channels_max = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 6
  %24 = ptrtoint ptr %channels_max to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv19, ptr %channels_max, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb17, %sw.bb15, %if.end.sw.epilog_crit_edge
  %pcm_hardware_filter = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 28, i32 9
  %25 = ptrtoint ptr %pcm_hardware_filter to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pcm_hardware_filter, align 4
  %tobool22.not = icmp eq ptr %26, null
  br i1 %tobool22.not, label %sw.epilog.if.end27_crit_edge, label %if.then23

sw.epilog.if.end27_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

if.then23:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %hw26 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  tail call void %26(i32 noundef %channel, ptr noundef %hw26) #5
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %sw.epilog.if.end27_crit_edge
  %call = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %3, i32 noundef 0, i32 noundef 14, i32 noundef 32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp28 = icmp slt i32 %call, 0
  br i1 %cmp28, label %if.end27.cleanup_crit_edge, label %if.end31

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end31:                                         ; preds = %if.end27
  %call32 = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %3, i32 noundef 0, i32 noundef 18, i32 noundef 32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.end31.cleanup_crit_edge, label %if.end36

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end36:                                         ; preds = %if.end31
  %formats = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 1
  %27 = ptrtoint ptr %formats to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %formats, align 8
  %and38 = and i64 %28, 1024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and38)
  %tobool39.not = icmp eq i64 %and38, 0
  br i1 %tobool39.not, label %if.end36.if.end46_crit_edge, label %if.then40

if.end36.if.end46_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

if.then40:                                        ; preds = %if.end36
  %call41 = tail call i32 @snd_pcm_hw_constraint_msbits(ptr noundef %3, i32 noundef 0, i32 noundef 32, i32 noundef 24) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %if.then40.cleanup_crit_edge, label %if.then40.if.end46_crit_edge

if.then40.if.end46_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

if.then40.cleanup_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end46:                                         ; preds = %if.then40.if.end46_crit_edge, %if.end36.if.end46_crit_edge
  %channels_max48 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 6
  %29 = ptrtoint ptr %channels_max48 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %channels_max48, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %cmp49 = icmp ugt i32 %30, 2
  br i1 %cmp49, label %if.then51, label %if.end46.if.end57_crit_edge

if.end46.if.end57_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

if.then51:                                        ; preds = %if.end46
  %call52 = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %3, i32 noundef 0, i32 noundef 10, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %if.then51.cleanup_crit_edge, label %if.then51.if.end57_crit_edge

if.then51.if.end57_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

if.then51.cleanup_crit_edge:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end57:                                         ; preds = %if.then51.if.end57_crit_edge, %if.end46.if.end57_crit_edge
  tail call void @snd_pcm_set_sync(ptr noundef %substream) #5
  %arrayidx58 = getelementptr %struct.oxygen, ptr %1, i32 0, i32 19, i32 %channel
  %31 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %substream, ptr %arrayidx58, align 4
  %mutex = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %shl = shl nuw i32 1, %channel
  %pcm_active = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 11
  %32 = ptrtoint ptr %pcm_active to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %pcm_active, align 1
  %34 = trunc i32 %shl to i8
  %conv60 = or i8 %33, %34
  store i8 %conv60, ptr %pcm_active, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %channel)
  %cmp61 = icmp eq i32 %channel, 3
  br i1 %cmp61, label %if.then63, label %if.end57.if.end69_crit_edge

if.end57.if.end69_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

if.then63:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  %spdif_bits = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 17
  %35 = ptrtoint ptr %spdif_bits to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %spdif_bits, align 4
  %spdif_pcm_bits = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 18
  %37 = ptrtoint ptr %spdif_pcm_bits to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %spdif_pcm_bits, align 4
  %controls = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 20
  %38 = ptrtoint ptr %controls to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %controls, align 4
  %access = getelementptr inbounds %struct.snd_kcontrol, ptr %39, i32 1, i32 0, i32 1
  %40 = ptrtoint ptr %access to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %access, align 4
  %and66 = and i32 %41, -257
  store i32 %and66, ptr %access, align 4
  %card = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 3
  %42 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %card, align 4
  %44 = load ptr, ptr %controls, align 4
  %id = getelementptr inbounds %struct.snd_kcontrol, ptr %44, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %43, i32 noundef 3, ptr noundef %id) #5
  br label %if.end69

if.end69:                                         ; preds = %if.then63, %if.end57.if.end69_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end69, %if.then51.cleanup_crit_edge, %if.then40.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.end27.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end69 ], [ %call, %if.end27.cleanup_crit_edge ], [ %call32, %if.end31.cleanup_crit_edge ], [ %call41, %if.then40.cleanup_crit_edge ], [ %call52, %if.then51.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_step(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_msbits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ctl_notify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @oxygen_update_spdif_source(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oxygen_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %hw_params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime.i, align 4
  %private_data.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i, align 8
  %6 = ptrtoint ptr %5 to i32
  %arrayidx = getelementptr [6 x i32], ptr @channel_base_registers, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 51
  %9 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dma_addr, align 8
  tail call void @oxygen_write32(ptr noundef %1, i32 noundef %8, i32 noundef %10) #5
  %cmp = icmp eq ptr %5, inttoptr (i32 4 to ptr)
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 10
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i, align 4
  %div29 = lshr i32 %12, 2
  %sub = add nsw i32 %div29, -1
  tail call void @oxygen_write32(ptr noundef %1, i32 noundef 36, i32 noundef %sub) #5
  %arrayidx.i.i31 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 6
  %13 = ptrtoint ptr %arrayidx.i.i31 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i31, align 4
  %div330 = lshr i32 %14, 2
  %sub4 = add nsw i32 %div330, -1
  tail call void @oxygen_write32(ptr noundef %1, i32 noundef 40, i32 noundef %sub4) #5
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add = add i32 %8, 4
  %arrayidx.i.i32 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 10
  %15 = ptrtoint ptr %arrayidx.i.i32 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i.i32, align 4
  %div727 = lshr i32 %16, 2
  %17 = trunc i32 %div727 to i16
  %conv = add i16 %17, -1
  tail call void @oxygen_write16(ptr noundef %1, i32 noundef %add, i16 noundef zeroext %conv) #5
  %add10 = add i32 %8, 6
  %arrayidx.i.i33 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 6
  %18 = ptrtoint ptr %arrayidx.i.i33 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.i33, align 4
  %div1228 = lshr i32 %19, 2
  %20 = trunc i32 %div1228 to i16
  %conv14 = add i16 %20, -1
  tail call void @oxygen_write16(ptr noundef %1, i32 noundef %add10, i16 noundef zeroext %conv14) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @oxygen_write16_masked(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @oxygen_update_dac_routing(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @oxygen_write32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @oxygen_write16(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @oxygen_write8(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @oxygen_read32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oxygen_rec_a_open(ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @oxygen_open(ptr noundef %substream, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oxygen_rec_a_hw_params(ptr nocapture noundef readonly %substream, ptr noundef %hw_params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call i32 @oxygen_hw_params(ptr noundef %substream, ptr noundef %hw_params)
  %reg_lock = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #5
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i.i.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %entry.params_format.exit.i_crit_edge

entry.params_format.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %params_format.exit.i

for.inc.i.i.i:                                    ; preds = %entry
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 1, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.1.i.i.i = icmp eq i32 %5, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.oxygen_format.exit_crit_edge, label %for.inc.i.i.i.params_format.exit.i_crit_edge

for.inc.i.i.i.params_format.exit.i_crit_edge:     ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %params_format.exit.i

for.inc.i.i.i.oxygen_format.exit_crit_edge:       ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %oxygen_format.exit

params_format.exit.i:                             ; preds = %for.inc.i.i.i.params_format.exit.i_crit_edge, %entry.params_format.exit.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %entry.params_format.exit.i_crit_edge ], [ 32, %for.inc.i.i.i.params_format.exit.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %3, %entry.params_format.exit.i_crit_edge ], [ %5, %for.inc.i.i.i.params_format.exit.i_crit_edge ]
  %6 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #5, !range !48
  %add.i.i.i = or i32 %6, %i.09.lcssa.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %add.i.i.i)
  %cmp.i = icmp eq i32 %add.i.i.i, 10
  %phi.cast = zext i1 %cmp.i to i8
  br label %oxygen_format.exit

oxygen_format.exit:                               ; preds = %params_format.exit.i, %for.inc.i.i.i.oxygen_format.exit_crit_edge
  %7 = phi i8 [ 0, %for.inc.i.i.i.oxygen_format.exit_crit_edge ], [ %phi.cast, %params_format.exit.i ]
  tail call void @oxygen_write8_masked(ptr noundef %1, i32 noundef 74, i8 noundef zeroext %7, i8 noundef zeroext 3) #5
  %arrayidx.i.i.i30 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %arrayidx.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i.i30, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %9, label %sw.default.i [
    i32 32000, label %oxygen_format.exit.oxygen_rate.exit_crit_edge
    i32 44100, label %sw.bb1.i
    i32 64000, label %sw.bb2.i
    i32 88200, label %sw.bb3.i
    i32 96000, label %sw.bb4.i
    i32 176400, label %sw.bb5.i
    i32 192000, label %sw.bb6.i
  ]

oxygen_format.exit.oxygen_rate.exit_crit_edge:    ; preds = %oxygen_format.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %oxygen_rate.exit

sw.bb1.i:                                         ; preds = %oxygen_format.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %oxygen_rate.exit

sw.default.i:                                     ; preds = %oxygen_format.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %oxygen_rate.exit

sw.bb2.i:                                         ; preds = %oxygen_format.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %oxygen_rate.exit

sw.bb3.i:                                         ; preds = %oxygen_format.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %oxygen_rate.exit

sw.bb4.i:                                         ; preds = %oxygen_format.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %oxygen_rate.exit

sw.bb5.i:                                         ; preds = %oxygen_format.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %oxygen_rate.exit

sw.bb6.i:                                         ; preds = %oxygen_format.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %oxygen_rate.exit

oxygen_rate.exit:                                 ; preds = %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.default.i, %sw.bb1.i, %oxygen_format.exit.oxygen_rate.exit_crit_edge
  %retval.0.i = phi i16 [ 2, %sw.default.i ], [ 7, %sw.bb6.i ], [ 6, %sw.bb5.i ], [ 5, %sw.bb4.i ], [ 4, %sw.bb3.i ], [ 3, %sw.bb2.i ], [ 1, %sw.bb1.i ], [ 0, %oxygen_format.exit.oxygen_rate.exit_crit_edge ]
  %adc_i2s_format = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 28, i32 32
  %11 = ptrtoint ptr %adc_i2s_format to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %adc_i2s_format, align 2
  %adc_mclks.i = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 28, i32 30
  %13 = ptrtoint ptr %adc_mclks.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %mclks.0.in.i = load i8, ptr %adc_mclks.i, align 1
  %14 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i.i33 = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i.i33, label %for.inc.i.i.i36, label %oxygen_rate.exit.params_format.exit.i42_crit_edge

oxygen_rate.exit.params_format.exit.i42_crit_edge: ; preds = %oxygen_rate.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %params_format.exit.i42

for.inc.i.i.i36:                                  ; preds = %oxygen_rate.exit
  %arrayidx.1.i.i.i34 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 1, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx.1.i.i.i34 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.1.i.i.i34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.1.i.i.i35 = icmp eq i32 %17, 0
  br i1 %tobool.not.1.i.i.i35, label %for.inc.i.i.i36.oxygen_i2s_bits.exit_crit_edge, label %for.inc.i.i.i36.params_format.exit.i42_crit_edge

for.inc.i.i.i36.params_format.exit.i42_crit_edge: ; preds = %for.inc.i.i.i36
  call void @__sanitizer_cov_trace_pc() #7
  br label %params_format.exit.i42

for.inc.i.i.i36.oxygen_i2s_bits.exit_crit_edge:   ; preds = %for.inc.i.i.i36
  call void @__sanitizer_cov_trace_pc() #7
  br label %oxygen_i2s_bits.exit

params_format.exit.i42:                           ; preds = %for.inc.i.i.i36.params_format.exit.i42_crit_edge, %oxygen_rate.exit.params_format.exit.i42_crit_edge
  %i.09.lcssa.i.i.i37 = phi i32 [ 0, %oxygen_rate.exit.params_format.exit.i42_crit_edge ], [ 32, %for.inc.i.i.i36.params_format.exit.i42_crit_edge ]
  %.lcssa.i.i.i38 = phi i32 [ %15, %oxygen_rate.exit.params_format.exit.i42_crit_edge ], [ %17, %for.inc.i.i.i36.params_format.exit.i42_crit_edge ]
  %18 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i38, i1 true) #5, !range !48
  %add.i.i.i39 = or i32 %18, %i.09.lcssa.i.i.i37
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %add.i.i.i39)
  %cmp.i40 = icmp eq i32 %add.i.i.i39, 10
  %spec.select.i41 = select i1 %cmp.i40, i16 128, i16 0
  br label %oxygen_i2s_bits.exit

oxygen_i2s_bits.exit:                             ; preds = %params_format.exit.i42, %for.inc.i.i.i36.oxygen_i2s_bits.exit_crit_edge
  %19 = phi i16 [ 0, %for.inc.i.i.i36.oxygen_i2s_bits.exit_crit_edge ], [ %spec.select.i41, %params_format.exit.i42 ]
  %or = or i16 %12, %retval.0.i
  %mclks.0.i = zext i8 %mclks.0.in.i to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 48001, i32 %9)
  %cmp3.i = icmp ult i32 %9, 48001
  call void @__sanitizer_cov_trace_const_cmp4(i32 96001, i32 %9)
  %cmp8.i = icmp ult i32 %9, 96001
  %..i = select i1 %cmp8.i, i16 2, i16 4
  %shift.0.i = select i1 %cmp3.i, i16 0, i16 %..i
  %shr.i = lshr i16 %mclks.0.i, %shift.0.i
  %and.i = shl nuw nsw i16 %shr.i, 4
  %shl.i = and i16 %and.i, 48
  %or6 = or i16 %or, %shl.i
  %or8 = or i16 %or6, %19
  tail call void @oxygen_write16_masked(ptr noundef %1, i32 noundef 98, i16 noundef zeroext %or8, i16 noundef zeroext 255) #5
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #5
  %mutex = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %set_adc_params = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 28, i32 11
  %20 = ptrtoint ptr %set_adc_params to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %set_adc_params, align 4
  tail call void %21(ptr noundef %1, ptr noundef %hw_params) #5
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oxygen_rec_b_open(ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @oxygen_open(ptr noundef %substream, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oxygen_rec_b_hw_params(ptr nocapture noundef readonly %substream, ptr noundef %hw_params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call i32 @oxygen_hw_params(ptr noundef %substream, ptr noundef %hw_params)
  %has_ac97_1 = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %has_ac97_1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %has_ac97_1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %device_config = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 28, i32 22
  %4 = ptrtoint ptr %device_config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %device_config, align 4
  %and = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1 = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %6 = phi i1 [ false, %entry.land.end_crit_edge ], [ %tobool1, %land.rhs ]
  %reg_lock = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #5
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %land.end.params_format.exit.i_crit_edge

land.end.params_format.exit.i_crit_edge:          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %params_format.exit.i

for.inc.i.i.i:                                    ; preds = %land.end
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 1, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.1.i.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.oxygen_format.exit_crit_edge, label %for.inc.i.i.i.params_format.exit.i_crit_edge

for.inc.i.i.i.params_format.exit.i_crit_edge:     ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %params_format.exit.i

for.inc.i.i.i.oxygen_format.exit_crit_edge:       ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %oxygen_format.exit

params_format.exit.i:                             ; preds = %for.inc.i.i.i.params_format.exit.i_crit_edge, %land.end.params_format.exit.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %land.end.params_format.exit.i_crit_edge ], [ 32, %for.inc.i.i.i.params_format.exit.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %8, %land.end.params_format.exit.i_crit_edge ], [ %10, %for.inc.i.i.i.params_format.exit.i_crit_edge ]
  %11 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #5, !range !48
  %add.i.i.i = or i32 %11, %i.09.lcssa.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %add.i.i.i)
  %cmp.i = icmp eq i32 %add.i.i.i, 10
  %phi.bo = select i1 %cmp.i, i8 4, i8 0
  br label %oxygen_format.exit

oxygen_format.exit:                               ; preds = %params_format.exit.i, %for.inc.i.i.i.oxygen_format.exit_crit_edge
  %12 = phi i8 [ 0, %for.inc.i.i.i.oxygen_format.exit_crit_edge ], [ %phi.bo, %params_format.exit.i ]
  tail call void @oxygen_write8_masked(ptr noundef %1, i32 noundef 74, i8 noundef zeroext %12, i8 noundef zeroext 12) #5
  br i1 %6, label %if.end21.critedge, label %if.then5

if.then5:                                         ; preds = %oxygen_format.exit
  %arrayidx.i.i.i43 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 3
  %13 = ptrtoint ptr %arrayidx.i.i.i43 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i.i43, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %14, label %sw.default.i [
    i32 32000, label %if.then5.oxygen_rate.exit_crit_edge
    i32 44100, label %sw.bb1.i
    i32 64000, label %sw.bb2.i
    i32 88200, label %sw.bb3.i
    i32 96000, label %sw.bb4.i
    i32 176400, label %sw.bb5.i
    i32 192000, label %sw.bb6.i
  ]

if.then5.oxygen_rate.exit_crit_edge:              ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %oxygen_rate.exit

sw.bb1.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %oxygen_rate.exit

sw.default.i:                                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %oxygen_rate.exit

sw.bb2.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %oxygen_rate.exit

sw.bb3.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %oxygen_rate.exit

sw.bb4.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %oxygen_rate.exit

sw.bb5.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %oxygen_rate.exit

sw.bb6.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %oxygen_rate.exit

oxygen_rate.exit:                                 ; preds = %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.default.i, %sw.bb1.i, %if.then5.oxygen_rate.exit_crit_edge
  %retval.0.i = phi i16 [ 2, %sw.default.i ], [ 7, %sw.bb6.i ], [ 6, %sw.bb5.i ], [ 5, %sw.bb4.i ], [ 4, %sw.bb3.i ], [ 3, %sw.bb2.i ], [ 1, %sw.bb1.i ], [ 0, %if.then5.oxygen_rate.exit_crit_edge ]
  %adc_i2s_format = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 28, i32 32
  %16 = ptrtoint ptr %adc_i2s_format to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %adc_i2s_format, align 2
  %or = or i16 %17, %retval.0.i
  %adc_mclks.i = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 28, i32 30
  %18 = ptrtoint ptr %adc_mclks.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %mclks.0.in.i = load i8, ptr %adc_mclks.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 48001, i32 %14)
  %cmp3.i = icmp ult i32 %14, 48001
  call void @__sanitizer_cov_trace_const_cmp4(i32 96001, i32 %14)
  %cmp8.i = icmp ult i32 %14, 96001
  %..i = select i1 %cmp8.i, i16 2, i16 4
  %shift.0.i = select i1 %cmp3.i, i16 0, i16 %..i
  %mclks.0.i = zext i8 %mclks.0.in.i to i16
  %shr.i = lshr i16 %mclks.0.i, %shift.0.i
  %and.i = shl nuw nsw i16 %shr.i, 4
  %shl.i = and i16 %and.i, 48
  %or11 = or i16 %or, %shl.i
  %19 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i.i.i46 = icmp eq i32 %20, 0
  br i1 %tobool.not.i.i.i46, label %for.inc.i.i.i49, label %oxygen_rate.exit.params_format.exit.i55_crit_edge

oxygen_rate.exit.params_format.exit.i55_crit_edge: ; preds = %oxygen_rate.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %params_format.exit.i55

for.inc.i.i.i49:                                  ; preds = %oxygen_rate.exit
  %arrayidx.1.i.i.i47 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 1, i32 1, i32 0, i32 1
  %21 = ptrtoint ptr %arrayidx.1.i.i.i47 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.1.i.i.i47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.1.i.i.i48 = icmp eq i32 %22, 0
  br i1 %tobool.not.1.i.i.i48, label %for.inc.i.i.i49.oxygen_i2s_bits.exit_crit_edge, label %for.inc.i.i.i49.params_format.exit.i55_crit_edge

for.inc.i.i.i49.params_format.exit.i55_crit_edge: ; preds = %for.inc.i.i.i49
  call void @__sanitizer_cov_trace_pc() #7
  br label %params_format.exit.i55

for.inc.i.i.i49.oxygen_i2s_bits.exit_crit_edge:   ; preds = %for.inc.i.i.i49
  call void @__sanitizer_cov_trace_pc() #7
  br label %oxygen_i2s_bits.exit

params_format.exit.i55:                           ; preds = %for.inc.i.i.i49.params_format.exit.i55_crit_edge, %oxygen_rate.exit.params_format.exit.i55_crit_edge
  %i.09.lcssa.i.i.i50 = phi i32 [ 0, %oxygen_rate.exit.params_format.exit.i55_crit_edge ], [ 32, %for.inc.i.i.i49.params_format.exit.i55_crit_edge ]
  %.lcssa.i.i.i51 = phi i32 [ %20, %oxygen_rate.exit.params_format.exit.i55_crit_edge ], [ %22, %for.inc.i.i.i49.params_format.exit.i55_crit_edge ]
  %23 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i51, i1 true) #5, !range !48
  %add.i.i.i52 = or i32 %23, %i.09.lcssa.i.i.i50
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %add.i.i.i52)
  %cmp.i53 = icmp eq i32 %add.i.i.i52, 10
  %spec.select.i54 = select i1 %cmp.i53, i16 128, i16 0
  br label %oxygen_i2s_bits.exit

oxygen_i2s_bits.exit:                             ; preds = %params_format.exit.i55, %for.inc.i.i.i49.oxygen_i2s_bits.exit_crit_edge
  %24 = phi i16 [ 0, %for.inc.i.i.i49.oxygen_i2s_bits.exit_crit_edge ], [ %spec.select.i54, %params_format.exit.i55 ]
  %or13 = or i16 %or11, %24
  tail call void @oxygen_write16_masked(ptr noundef %1, i32 noundef 100, i16 noundef zeroext %or13, i16 noundef zeroext 255) #5
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #5
  %mutex = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %set_adc_params = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 28, i32 11
  %25 = ptrtoint ptr %set_adc_params to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %set_adc_params, align 4
  tail call void %26(ptr noundef %1, ptr noundef %hw_params) #5
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  br label %cleanup

if.end21.critedge:                                ; preds = %oxygen_format.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end21.critedge, %oxygen_i2s_bits.exit
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oxygen_spdif_open(ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @oxygen_open(ptr noundef %substream, i32 noundef 3)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oxygen_spdif_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %hw_params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call i32 @oxygen_hw_params(ptr noundef %substream, ptr noundef %hw_params)
  %mutex = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %reg_lock = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #5
  tail call void @oxygen_write32_masked(ptr noundef %1, i32 noundef 112, i32 noundef 0, i32 noundef 2) #5
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i.i.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %entry.params_format.exit.i_crit_edge

entry.params_format.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %params_format.exit.i

for.inc.i.i.i:                                    ; preds = %entry
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 1, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.1.i.i.i = icmp eq i32 %5, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.oxygen_format.exit_crit_edge, label %for.inc.i.i.i.params_format.exit.i_crit_edge

for.inc.i.i.i.params_format.exit.i_crit_edge:     ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %params_format.exit.i

for.inc.i.i.i.oxygen_format.exit_crit_edge:       ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %oxygen_format.exit

params_format.exit.i:                             ; preds = %for.inc.i.i.i.params_format.exit.i_crit_edge, %entry.params_format.exit.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %entry.params_format.exit.i_crit_edge ], [ 32, %for.inc.i.i.i.params_format.exit.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %3, %entry.params_format.exit.i_crit_edge ], [ %5, %for.inc.i.i.i.params_format.exit.i_crit_edge ]
  %6 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #5, !range !48
  %add.i.i.i = or i32 %6, %i.09.lcssa.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %add.i.i.i)
  %cmp.i = icmp eq i32 %add.i.i.i, 10
  %phi.cast = zext i1 %cmp.i to i8
  br label %oxygen_format.exit

oxygen_format.exit:                               ; preds = %params_format.exit.i, %for.inc.i.i.i.oxygen_format.exit_crit_edge
  %7 = phi i8 [ 0, %for.inc.i.i.i.oxygen_format.exit_crit_edge ], [ %phi.cast, %params_format.exit.i ]
  tail call void @oxygen_write8_masked(ptr noundef %1, i32 noundef 75, i8 noundef zeroext %7, i8 noundef zeroext 3) #5
  %arrayidx.i.i.i18 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %arrayidx.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i.i18, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %9, label %sw.default.i [
    i32 32000, label %oxygen_format.exit.oxygen_rate.exit_crit_edge
    i32 44100, label %sw.bb1.i
    i32 64000, label %sw.bb2.i
    i32 88200, label %sw.bb3.i
    i32 96000, label %sw.bb4.i
    i32 176400, label %sw.bb5.i
    i32 192000, label %sw.bb6.i
  ]

oxygen_format.exit.oxygen_rate.exit_crit_edge:    ; preds = %oxygen_format.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %oxygen_rate.exit

sw.bb1.i:                                         ; preds = %oxygen_format.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %oxygen_rate.exit

sw.default.i:                                     ; preds = %oxygen_format.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %oxygen_rate.exit

sw.bb2.i:                                         ; preds = %oxygen_format.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %oxygen_rate.exit

sw.bb3.i:                                         ; preds = %oxygen_format.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %oxygen_rate.exit

sw.bb4.i:                                         ; preds = %oxygen_format.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %oxygen_rate.exit

sw.bb5.i:                                         ; preds = %oxygen_format.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %oxygen_rate.exit

sw.bb6.i:                                         ; preds = %oxygen_format.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %oxygen_rate.exit

oxygen_rate.exit:                                 ; preds = %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.default.i, %sw.bb1.i, %oxygen_format.exit.oxygen_rate.exit_crit_edge
  %retval.0.i = phi i32 [ 33554432, %sw.default.i ], [ 117440512, %sw.bb6.i ], [ 100663296, %sw.bb5.i ], [ 83886080, %sw.bb4.i ], [ 67108864, %sw.bb3.i ], [ 50331648, %sw.bb2.i ], [ 16777216, %sw.bb1.i ], [ 0, %oxygen_format.exit.oxygen_rate.exit_crit_edge ]
  tail call void @oxygen_write32_masked(ptr noundef %1, i32 noundef 112, i32 noundef %retval.0.i, i32 noundef 117440512) #5
  tail call void @oxygen_update_spdif_source(ptr noundef %1) #5
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #5
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oxygen_spdif_hw_free(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #5
  tail call void @oxygen_write32_masked(ptr noundef %1, i32 noundef 112, i32 noundef 0, i32 noundef 2) #5
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #5
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %runtime.i.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %4 = ptrtoint ptr %runtime.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime.i.i, align 4
  %private_data.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 44
  %6 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data.i.i, align 8
  %8 = ptrtoint ptr %7 to i32
  %shl.i = shl nuw i32 1, %8
  %reg_lock.i = getelementptr inbounds %struct.oxygen, ptr %3, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock.i) #5
  %neg.i = xor i32 %shl.i, -1
  %interrupt_mask.i = getelementptr inbounds %struct.oxygen, ptr %3, i32 0, i32 8
  %9 = ptrtoint ptr %interrupt_mask.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %interrupt_mask.i, align 4
  %and.i = and i32 %10, %neg.i
  store i32 %and.i, ptr %interrupt_mask.i, align 4
  %conv.i = trunc i32 %and.i to i16
  tail call void @oxygen_write16(ptr noundef %3, i32 noundef 68, i16 noundef zeroext %conv.i) #5
  %conv2.i = trunc i32 %shl.i to i8
  tail call void @oxygen_write8_masked(ptr noundef %3, i32 noundef 225, i8 noundef zeroext %conv2.i, i8 noundef zeroext %conv2.i) #5
  tail call void @oxygen_write8_masked(ptr noundef %3, i32 noundef 225, i8 noundef zeroext 0, i8 noundef zeroext %conv2.i) #5
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock.i) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @oxygen_write32_masked(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oxygen_rec_c_open(ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @oxygen_open(ptr noundef %substream, i32 noundef 2)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oxygen_rec_c_hw_params(ptr nocapture noundef readonly %substream, ptr noundef %hw_params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call i32 @oxygen_hw_params(ptr noundef %substream, ptr noundef %hw_params)
  %device_config = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 28, i32 22
  %2 = ptrtoint ptr %device_config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %device_config, align 4
  %and = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %reg_lock = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #5
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i.i.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %entry.params_format.exit.i_crit_edge

entry.params_format.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %params_format.exit.i

for.inc.i.i.i:                                    ; preds = %entry
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 1, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.1.i.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.oxygen_format.exit_crit_edge, label %for.inc.i.i.i.params_format.exit.i_crit_edge

for.inc.i.i.i.params_format.exit.i_crit_edge:     ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %params_format.exit.i

for.inc.i.i.i.oxygen_format.exit_crit_edge:       ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %oxygen_format.exit

params_format.exit.i:                             ; preds = %for.inc.i.i.i.params_format.exit.i_crit_edge, %entry.params_format.exit.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %entry.params_format.exit.i_crit_edge ], [ 32, %for.inc.i.i.i.params_format.exit.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %5, %entry.params_format.exit.i_crit_edge ], [ %7, %for.inc.i.i.i.params_format.exit.i_crit_edge ]
  %8 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #5, !range !48
  %add.i.i.i = or i32 %8, %i.09.lcssa.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %add.i.i.i)
  %cmp.i = icmp eq i32 %add.i.i.i, 10
  %phi.bo = select i1 %cmp.i, i8 16, i8 0
  br label %oxygen_format.exit

oxygen_format.exit:                               ; preds = %params_format.exit.i, %for.inc.i.i.i.oxygen_format.exit_crit_edge
  %9 = phi i8 [ 0, %for.inc.i.i.i.oxygen_format.exit_crit_edge ], [ %phi.bo, %params_format.exit.i ]
  tail call void @oxygen_write8_masked(ptr noundef %1, i32 noundef 74, i8 noundef zeroext %9, i8 noundef zeroext 48) #5
  br i1 %tobool.not, label %if.then3, label %if.end19.critedge

if.then3:                                         ; preds = %oxygen_format.exit
  %arrayidx.i.i.i40 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %arrayidx.i.i.i40 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i.i40, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %11, label %sw.default.i [
    i32 32000, label %if.then3.oxygen_rate.exit_crit_edge
    i32 44100, label %sw.bb1.i
    i32 64000, label %sw.bb2.i
    i32 88200, label %sw.bb3.i
    i32 96000, label %sw.bb4.i
    i32 176400, label %sw.bb5.i
    i32 192000, label %sw.bb6.i
  ]

if.then3.oxygen_rate.exit_crit_edge:              ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %oxygen_rate.exit

sw.bb1.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %oxygen_rate.exit

sw.default.i:                                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %oxygen_rate.exit

sw.bb2.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %oxygen_rate.exit

sw.bb3.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %oxygen_rate.exit

sw.bb4.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %oxygen_rate.exit

sw.bb5.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %oxygen_rate.exit

sw.bb6.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %oxygen_rate.exit

oxygen_rate.exit:                                 ; preds = %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.default.i, %sw.bb1.i, %if.then3.oxygen_rate.exit_crit_edge
  %retval.0.i = phi i16 [ 2, %sw.default.i ], [ 7, %sw.bb6.i ], [ 6, %sw.bb5.i ], [ 5, %sw.bb4.i ], [ 4, %sw.bb3.i ], [ 3, %sw.bb2.i ], [ 1, %sw.bb1.i ], [ 0, %if.then3.oxygen_rate.exit_crit_edge ]
  %adc_i2s_format = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 28, i32 32
  %13 = ptrtoint ptr %adc_i2s_format to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %adc_i2s_format, align 2
  %or = or i16 %14, %retval.0.i
  %adc_mclks.i = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 28, i32 30
  %15 = ptrtoint ptr %adc_mclks.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %mclks.0.in.i = load i8, ptr %adc_mclks.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 48001, i32 %11)
  %cmp3.i = icmp ult i32 %11, 48001
  call void @__sanitizer_cov_trace_const_cmp4(i32 96001, i32 %11)
  %cmp8.i = icmp ult i32 %11, 96001
  %..i = select i1 %cmp8.i, i16 2, i16 4
  %shift.0.i = select i1 %cmp3.i, i16 0, i16 %..i
  %mclks.0.i = zext i8 %mclks.0.in.i to i16
  %shr.i = lshr i16 %mclks.0.i, %shift.0.i
  %and.i = shl nuw nsw i16 %shr.i, 4
  %shl.i = and i16 %and.i, 48
  %or9 = or i16 %or, %shl.i
  %16 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i.i43 = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i.i43, label %for.inc.i.i.i46, label %oxygen_rate.exit.params_format.exit.i52_crit_edge

oxygen_rate.exit.params_format.exit.i52_crit_edge: ; preds = %oxygen_rate.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %params_format.exit.i52

for.inc.i.i.i46:                                  ; preds = %oxygen_rate.exit
  %arrayidx.1.i.i.i44 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 1, i32 1, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx.1.i.i.i44 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.1.i.i.i44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.1.i.i.i45 = icmp eq i32 %19, 0
  br i1 %tobool.not.1.i.i.i45, label %for.inc.i.i.i46.oxygen_i2s_bits.exit_crit_edge, label %for.inc.i.i.i46.params_format.exit.i52_crit_edge

for.inc.i.i.i46.params_format.exit.i52_crit_edge: ; preds = %for.inc.i.i.i46
  call void @__sanitizer_cov_trace_pc() #7
  br label %params_format.exit.i52

for.inc.i.i.i46.oxygen_i2s_bits.exit_crit_edge:   ; preds = %for.inc.i.i.i46
  call void @__sanitizer_cov_trace_pc() #7
  br label %oxygen_i2s_bits.exit

params_format.exit.i52:                           ; preds = %for.inc.i.i.i46.params_format.exit.i52_crit_edge, %oxygen_rate.exit.params_format.exit.i52_crit_edge
  %i.09.lcssa.i.i.i47 = phi i32 [ 0, %oxygen_rate.exit.params_format.exit.i52_crit_edge ], [ 32, %for.inc.i.i.i46.params_format.exit.i52_crit_edge ]
  %.lcssa.i.i.i48 = phi i32 [ %17, %oxygen_rate.exit.params_format.exit.i52_crit_edge ], [ %19, %for.inc.i.i.i46.params_format.exit.i52_crit_edge ]
  %20 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i48, i1 true) #5, !range !48
  %add.i.i.i49 = or i32 %20, %i.09.lcssa.i.i.i47
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %add.i.i.i49)
  %cmp.i50 = icmp eq i32 %add.i.i.i49, 10
  %spec.select.i51 = select i1 %cmp.i50, i16 128, i16 0
  br label %oxygen_i2s_bits.exit

oxygen_i2s_bits.exit:                             ; preds = %params_format.exit.i52, %for.inc.i.i.i46.oxygen_i2s_bits.exit_crit_edge
  %21 = phi i16 [ 0, %for.inc.i.i.i46.oxygen_i2s_bits.exit_crit_edge ], [ %spec.select.i51, %params_format.exit.i52 ]
  %or11 = or i16 %or9, %21
  tail call void @oxygen_write16_masked(ptr noundef %1, i32 noundef 102, i16 noundef zeroext %or11, i16 noundef zeroext 255) #5
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #5
  %mutex = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %set_adc_params = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 28, i32 11
  %22 = ptrtoint ptr %set_adc_params to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %set_adc_params, align 4
  tail call void %23(ptr noundef %1, ptr noundef %hw_params) #5
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  br label %cleanup

if.end19.critedge:                                ; preds = %oxygen_format.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end19.critedge, %oxygen_i2s_bits.exit
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @oxygen_ac97_open(ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @oxygen_open(ptr noundef %substream, i32 noundef 5)
  ret i32 %call
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/pci/oxygen/oxygen_pcm.c", i32 686, i32 33}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/pci/oxygen/oxygen_pcm.c", i32 718, i32 33}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/pci/oxygen/oxygen_pcm.c", i32 743, i32 40}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/pci/oxygen/oxygen_pcm.c", i32 743, i32 49}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/pci/oxygen/oxygen_pcm.c", i32 758, i32 28}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/pci/oxygen/oxygen_pcm.c", i32 758, i32 44}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/pci/oxygen/oxygen_pcm.c", i32 767, i32 33}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/pci/oxygen/oxygen_pcm.c", i32 776, i32 21}
!16 = !{ptr @oxygen_multich_ops, !17, !"oxygen_multich_ops", i1 false, i1 false}
!17 = !{!"../sound/pci/oxygen/oxygen_pcm.c", i32 656, i32 33}
!18 = !{ptr @oxygen_ac97_hardware, !19, !"oxygen_ac97_hardware", i1 false, i1 false}
!19 = !{!"../sound/pci/oxygen/oxygen_pcm.c", i32 84, i32 38}
!20 = !{ptr @oxygen_hardware, !21, !"oxygen_hardware", i1 false, i1 false}
!21 = !{!"../sound/pci/oxygen/oxygen_pcm.c", i32 105, i32 45}
!22 = !{ptr @oxygen_stereo_hardware, !23, !"oxygen_stereo_hardware", i1 false, i1 false}
!23 = !{!"../sound/pci/oxygen/oxygen_pcm.c", i32 28, i32 38}
!24 = !{ptr @oxygen_multichannel_hardware, !25, !"oxygen_multichannel_hardware", i1 false, i1 false}
!25 = !{!"../sound/pci/oxygen/oxygen_pcm.c", i32 56, i32 38}
!26 = !{ptr @channel_base_registers, !27, !"channel_base_registers", i1 false, i1 false}
!27 = !{!"../sound/pci/oxygen/oxygen_pcm.c", i32 293, i32 27}
!28 = !{ptr @oxygen_rec_a_ops, !29, !"oxygen_rec_a_ops", i1 false, i1 false}
!29 = !{!"../sound/pci/oxygen/oxygen_pcm.c", i32 616, i32 33}
!30 = !{ptr @oxygen_rec_b_ops, !31, !"oxygen_rec_b_ops", i1 false, i1 false}
!31 = !{!"../sound/pci/oxygen/oxygen_pcm.c", i32 626, i32 33}
!32 = !{ptr @oxygen_spdif_ops, !33, !"oxygen_spdif_ops", i1 false, i1 false}
!33 = !{!"../sound/pci/oxygen/oxygen_pcm.c", i32 646, i32 33}
!34 = !{ptr @oxygen_rec_c_ops, !35, !"oxygen_rec_c_ops", i1 false, i1 false}
!35 = !{!"../sound/pci/oxygen/oxygen_pcm.c", i32 636, i32 33}
!36 = !{ptr @oxygen_ac97_ops, !37, !"oxygen_ac97_ops", i1 false, i1 false}
!37 = !{!"../sound/pci/oxygen/oxygen_pcm.c", i32 666, i32 33}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{!"auto-init"}
!48 = !{i32 0, i32 33}
