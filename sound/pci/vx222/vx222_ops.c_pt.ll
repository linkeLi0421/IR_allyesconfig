; ModuleID = '/llk/IR_all_yes/sound/pci/vx222/vx222_ops.c_pt.bc'
source_filename = "../sound/pci/vx222/vx222_ops.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_vx_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.83, i32 }
%union.anon.83 = type { ptr }
%struct.snd_vx222 = type { %struct.vx_core, ptr, [2 x i32], i32, i32, i32, [2 x i32], i32 }
%struct.vx_core = type { ptr, [2 x ptr], i32, i32, ptr, ptr, %struct.mutex, i32, i32, ptr, ptr, %struct.vx_rmh, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vx_ibl_info, [2 x [2 x i32]], [2 x [4 x i32]], [4 x i8], [4 x i32], [4 x i8], %struct.mutex, [4 x ptr] }
%struct.vx_rmh = type { i16, i16, [16 x i32], [16 x i32], i16 }
%struct.vx_ibl_info = type { i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.vx_pipe = type { i32, i8, i32, i32, i64, ptr, i32, i32, i32, i32, i32, i32, i32, i64, i32, ptr }
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
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.68, [64 x i8] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.68 = type { %struct.anon.71, [40 x i8] }
%struct.anon.71 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.77, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%union.anon.77 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.72, [128 x i8] }
%union.anon.72 = type { %union.anon.74 }
%union.anon.74 = type { [64 x i64] }

@vx222_ops = dso_local constant { %struct.snd_vx_ops, [60 x i8] } { %struct.snd_vx_ops { ptr @vx2_inb, ptr @vx2_inl, ptr @vx2_outb, ptr @vx2_outl, ptr @vx2_test_and_ack, ptr @vx2_validate_irq, ptr null, ptr @vx2_write_akm, ptr @vx2_reset_codec, ptr @vx2_change_audio_source, ptr @vx2_set_clock_source, ptr @vx2_load_dsp, ptr @vx2_reset_dsp, ptr @vx2_reset_board, ptr @vx2_add_mic_controls, ptr @vx2_dma_write, ptr @vx2_dma_read }, [60 x i8] zeroinitializer }, align 32
@vx222_old_ops = dso_local constant { %struct.snd_vx_ops, [60 x i8] } { %struct.snd_vx_ops { ptr @vx2_inb, ptr @vx2_inl, ptr @vx2_outb, ptr @vx2_outl, ptr @vx2_test_and_ack, ptr @vx2_validate_irq, ptr @vx2_old_write_codec_bit, ptr null, ptr @vx2_reset_codec, ptr @vx2_change_audio_source, ptr @vx2_set_clock_source, ptr @vx2_load_dsp, ptr @vx2_reset_dsp, ptr @vx2_reset_board, ptr null, ptr @vx2_dma_write, ptr @vx2_dma_read }, [60 x i8] zeroinitializer }, align 32
@vx2_reg_index = internal constant { [27 x i32], [52 x i8] } { [27 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1], [52 x i8] zeroinitializer }, align 32
@vx2_reg_offset = internal constant { [27 x i32], [52 x i8] } { [27 x i32] [i32 0, i32 4, i32 8, i32 12, i32 20, i32 24, i32 28, i32 16, i32 32, i32 36, i32 0, i32 44, i32 48, i32 0, i32 0, i32 0, i32 64, i32 68, i32 72, i32 76, i32 76, i32 80, i32 84, i32 52, i32 56, i32 60, i32 40], [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sound/pci/vx222/vx222_ops.c\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUG?\0A\00", [26 x i8] zeroinitializer }, align 32
@vx2_akm_gains_lut = internal constant { [148 x i8], [44 x i8] } { [148 x i8] c"\7F}|zywvusrqpomljigfedba`_^\\[YXVUTSRQPNMKJHGFDCBA@?><;9876432110.-+*)('%$$#\22! \1F\1E\1D\1C\1B\1A\19\18\17\16\15\14\14\13\12\12\11\11\10\10\0F\0E\0D\0D\0C\0B\0B\0A\0A\09\09\08\08\07\07\06\06\06\05\05\05\05\04\04\04\04\03\03\03\03\03\03\02\02\02\02\02\02\02\02\02\02\01\01\01\01\01\01\01\01\00", [44 x i8] zeroinitializer }, align 32
@vx2_load_xilinx_binary._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 393, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"xilinx test failed after load, GPIOC=0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vx2_load_xilinx_binary\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vx2_load_xilinx_binary._entry_ptr = internal global ptr @vx2_load_xilinx_binary._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@vx2_test_xilinx.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str, ptr @.str.8, i8 0, i8 41, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"snd_vx222\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vx2_test_xilinx\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"testing xilinx...\0A\00", [45 x i8] zeroinitializer }, align 32
@vx2_test_xilinx.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str, ptr @.str.9, i8 0, i8 44, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bad!\0A\00", [26 x i8] zeroinitializer }, align 32
@vx2_test_xilinx.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str, ptr @.str.10, i8 0, i8 46, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bad! #2\0A\00", [23 x i8] zeroinitializer }, align 32
@vx2_test_xilinx.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str, ptr @.str.11, i8 0, i8 49, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bad! #3\0A\00", [23 x i8] zeroinitializer }, align 32
@vx2_test_xilinx.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str, ptr @.str.12, i8 0, i8 51, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bad! #4\0A\00", [23 x i8] zeroinitializer }, align 32
@vx2_test_xilinx.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str, ptr @.str.13, i8 0, i8 52, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ok, xilinx fine.\0A\00", [46 x i8] zeroinitializer }, align 32
@vx_control_input_level = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.14, i32 0, i32 19, i32 0, ptr @vx_input_level_info, ptr @vx_input_level_get, ptr @vx_input_level_put, %union.anon.83 { ptr @db_scale_mic }, i32 0 }, [48 x i8] zeroinitializer }, align 32
@vx_control_mic_level = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.15, i32 0, i32 19, i32 0, ptr @vx_mic_level_info, ptr @vx_mic_level_get, ptr @vx_mic_level_put, %union.anon.83 { ptr @db_scale_mic }, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Capture Volume\00", [17 x i8] zeroinitializer }, align 32
@db_scale_mic = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -6450, i32 50], [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Mic Capture Volume\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@__sancov_gen_cov_switch_values.16 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.17 = private unnamed_addr constant [10 x i8] c"vx222_ops\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 991, i32 25 }
@___asan_gen_.20 = private unnamed_addr constant [14 x i8] c"vx222_old_ops\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 1011, i32 25 }
@___asan_gen_.23 = private unnamed_addr constant [14 x i8] c"vx2_reg_index\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 48, i32 18 }
@___asan_gen_.26 = private unnamed_addr constant [15 x i8] c"vx2_reg_offset\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 22, i32 18 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 679, i32 6 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 690, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant [18 x i8] c"vx2_akm_gains_lut\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 513, i32 17 }
@___asan_gen_.38 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 392, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 167, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 177, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 186, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 197, i32 4 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 206, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 210, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant [23 x i8] c"vx_control_input_level\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 937, i32 38 }
@___asan_gen_.80 = private unnamed_addr constant [21 x i8] c"vx_control_mic_level\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 948, i32 38 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 941, i32 11 }
@___asan_gen_.86 = private unnamed_addr constant [13 x i8] c"db_scale_mic\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 851, i32 14 }
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.90 = private constant [31 x i8] c"../sound/pci/vx222/vx222_ops.c\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 952, i32 11 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @vx2_load_xilinx_binary._entry, ptr @vx2_load_xilinx_binary._entry_ptr, ptr @vx222_ops, ptr @vx222_old_ops, ptr @vx2_reg_index, ptr @vx2_reg_offset, ptr @.str, ptr @.str.1, ptr @vx2_akm_gains_lut, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @vx_control_input_level, ptr @vx_control_mic_level, ptr @.str.14, ptr @db_scale_mic, ptr @.str.15], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vx222_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vx222_old_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vx2_reg_index to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vx2_reg_offset to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vx2_akm_gains_lut to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vx2_load_xilinx_binary._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vx_control_input_level to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vx_control_mic_level to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db_scale_mic to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @vx2_inb(ptr nocapture noundef readonly %chip, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr [27 x i32], ptr @vx2_reg_index, i32 0, i32 %offset
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr %struct.snd_vx222, ptr %chip, i32 0, i32 2, i32 %1
  %2 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1.i, align 4
  %arrayidx2.i = getelementptr [27 x i32], ptr @vx2_reg_offset, i32 0, i32 %offset
  %4 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2.i, align 4
  %add.i = add i32 %5, %3
  %and = and i32 %add.i, 1048575
  %add = or i32 %and, -18874368
  %6 = inttoptr i32 %add to ptr
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #6, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  ret i8 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vx2_inl(ptr nocapture noundef readonly %chip, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr [27 x i32], ptr @vx2_reg_index, i32 0, i32 %offset
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr %struct.snd_vx222, ptr %chip, i32 0, i32 2, i32 %1
  %2 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1.i, align 4
  %arrayidx2.i = getelementptr [27 x i32], ptr @vx2_reg_offset, i32 0, i32 %offset
  %4 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2.i, align 4
  %add.i = add i32 %5, %3
  %and = and i32 %add.i, 1048575
  %add = or i32 %and, -18874368
  %6 = inttoptr i32 %add to ptr
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %6) #6, !srcloc !62
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vx2_outb(ptr nocapture noundef readonly %chip, i32 noundef %offset, i8 noundef zeroext %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  tail call void @arm_heavy_mb() #6
  %arrayidx.i = getelementptr [27 x i32], ptr @vx2_reg_index, i32 0, i32 %offset
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr %struct.snd_vx222, ptr %chip, i32 0, i32 2, i32 %1
  %2 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1.i, align 4
  %arrayidx2.i = getelementptr [27 x i32], ptr @vx2_reg_offset, i32 0, i32 %offset
  %4 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2.i, align 4
  %add.i = add i32 %5, %3
  %and = and i32 %add.i, 1048575
  %add = or i32 %and, -18874368
  %6 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %val) #6, !srcloc !65
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vx2_outl(ptr nocapture noundef readonly %chip, i32 noundef %offset, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  %0 = tail call i32 @llvm.bswap.i32(i32 %val)
  %arrayidx.i = getelementptr [27 x i32], ptr @vx2_reg_index, i32 0, i32 %offset
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr %struct.snd_vx222, ptr %chip, i32 0, i32 2, i32 %2
  %3 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx1.i, align 4
  %arrayidx2.i = getelementptr [27 x i32], ptr @vx2_reg_offset, i32 0, i32 %offset
  %5 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx2.i, align 4
  %add.i = add i32 %6, %4
  %and = and i32 %add.i, 1048575
  %add = or i32 %and, -18874368
  %7 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %7, i32 %0) #6, !srcloc !67
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vx2_test_and_ack(ptr nocapture noundef readonly %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_status = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %chip_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chip_status, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %arrayidx1.i.i = getelementptr %struct.snd_vx222, ptr %chip, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1.i.i, align 4
  %add.i.i = add i32 %3, 48
  %and.i = and i32 %add.i.i, 1048575
  %add.i = or i32 %and.i, -18874368
  %4 = inttoptr i32 %add.i to ptr
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %4) #6, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  br i1 %tobool2.not, label %if.end.return_crit_edge, label %if.end4

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  %7 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx1.i.i, align 4
  %add.i.i14 = add i32 %8, 48
  %and.i15 = and i32 %add.i.i14, 1048575
  %add.i16 = or i32 %and.i15, -18874368
  %9 = inttoptr i32 %add.i16 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %9, i32 0) #6, !srcloc !67
  %10 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx1.i.i, align 4
  %add.i.i18 = add i32 %11, 48
  %and.i19 = and i32 %add.i.i18, 1048575
  %add.i20 = or i32 %and.i19, -18874368
  %12 = inttoptr i32 %add.i20 to ptr
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %12) #6, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  %14 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx1.i.i, align 4
  %add.i.i22 = add i32 %15, 48
  %and.i23 = and i32 %add.i.i22, 1048575
  %add.i24 = or i32 %and.i23, -18874368
  %16 = inttoptr i32 %add.i24 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %16, i32 16777216) #6, !srcloc !67
  %17 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx1.i.i, align 4
  %add.i.i26 = add i32 %18, 48
  %and.i27 = and i32 %add.i.i26, 1048575
  %add.i28 = or i32 %and.i27, -18874368
  %19 = inttoptr i32 %add.i28 to ptr
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %19) #6, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  %21 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx1.i.i, align 4
  %add.i.i30 = add i32 %22, 48
  %and.i31 = and i32 %add.i.i30, 1048575
  %add.i32 = or i32 %and.i31, -18874368
  %23 = inttoptr i32 %add.i32 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %23, i32 0) #6, !srcloc !67
  br label %return

return:                                           ; preds = %if.end4, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -6, %entry.return_crit_edge ], [ -5, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vx2_validate_irq(ptr nocapture noundef %_chip, i32 noundef %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %arrayidx1.i.i8 = getelementptr %struct.snd_vx222, ptr %_chip, i32 0, i32 2, i32 0
  %0 = ptrtoint ptr %arrayidx1.i.i8 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx1.i.i8, align 4
  %add.i.i9 = add i32 %1, 76
  %and.i10 = and i32 %add.i.i9, 1048575
  %add.i11 = or i32 %and.i10, -18874368
  %2 = inttoptr i32 %add.i11 to ptr
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %2, i32 1090519040) #6, !srcloc !67
  %regCDSP = getelementptr inbounds %struct.snd_vx222, ptr %_chip, i32 0, i32 3
  %3 = ptrtoint ptr %regCDSP to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %regCDSP, align 4
  %or = or i32 %4, 4
  store i32 %or, ptr %regCDSP, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %2, i32 16777216) #6, !srcloc !67
  %regCDSP1 = getelementptr inbounds %struct.snd_vx222, ptr %_chip, i32 0, i32 3
  %5 = ptrtoint ptr %regCDSP1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %regCDSP1, align 4
  %and = and i32 %6, -5
  store i32 %and, ptr %regCDSP1, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %regCDSP2 = getelementptr inbounds %struct.snd_vx222, ptr %_chip, i32 0, i32 3
  %7 = ptrtoint ptr %regCDSP2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %regCDSP2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  %arrayidx1.i.i12 = getelementptr %struct.snd_vx222, ptr %_chip, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %arrayidx1.i.i12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx1.i.i12, align 4
  %add.i.i13 = add i32 %11, 32
  %and.i14 = and i32 %add.i.i13, 1048575
  %add.i15 = or i32 %and.i14, -18874368
  %12 = inttoptr i32 %add.i15 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %12, i32 %9) #6, !srcloc !67
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vx2_write_akm(ptr nocapture noundef readonly %chip, i32 noundef %reg, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %reg)
  %cmp = icmp eq i32 %reg, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data)
  %tobool.not = icmp eq i32 %data, 0
  %cond = select i1 %tobool.not, i32 41741, i32 41869
  %arrayidx1.i.i.i = getelementptr %struct.snd_vx222, ptr %chip, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx1.i.i.i, align 4
  %add.i.i.i = add i32 %1, 56
  %and.i.i = and i32 %add.i.i.i, 1048575
  %add.i.i = or i32 %and.i.i, -18874368
  %2 = inttoptr i32 %add.i.i to ptr
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %2) #6, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then
  %i.015.i = phi i32 [ 0, %if.then ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %data.addr.014.i = phi i32 [ %cond, %if.then ], [ %shl.i, %for.body.i.for.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  %4 = shl i32 %data.addr.014.i, 8
  %5 = and i32 %4, -2147483648
  %6 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx1.i.i.i, align 4
  %add.i.i7.i = add i32 %7, 44
  %and.i8.i = and i32 %add.i.i7.i, 1048575
  %add.i9.i = or i32 %and.i8.i, -18874368
  %8 = inttoptr i32 %add.i9.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %8, i32 %5) #6, !srcloc !67
  %inc.i = add nuw nsw i32 %i.015.i, 1
  %shl.i = shl i32 %data.addr.014.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 24
  br i1 %exitcond.not.i, label %vx2_write_codec_reg.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

vx2_write_codec_reg.exit:                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx1.i.i.i, align 4
  %add.i.i11.i = add i32 %10, 40
  %and.i12.i = and i32 %add.i.i11.i, 1048575
  %add.i13.i = or i32 %and.i12.i, -18874368
  %11 = inttoptr i32 %add.i13.i to ptr
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %11) #6, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 147, i32 %data)
  %cmp1 = icmp ugt i32 %data, 147
  br i1 %cmp1, label %do.end, label %if.end25, !prof !68

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 679, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end25:                                         ; preds = %if.end
  %13 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %do.end39 [
    i32 3, label %if.end25.sw.epilog_crit_edge
    i32 4, label %sw.bb26
  ]

if.end25.sw.epilog_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end39:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 690, i32 noundef 9, ptr noundef nonnull @.str.1) #6
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb26, %if.end25.sw.epilog_crit_edge
  %val.0 = phi i32 [ 42240, %sw.bb26 ], [ 41984, %if.end25.sw.epilog_crit_edge ]
  %arrayidx = getelementptr [148 x i8], ptr @vx2_akm_gains_lut, i32 0, i32 %data
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %15 to i32
  %or = or i32 %val.0, %conv
  %arrayidx1.i.i.i60 = getelementptr %struct.snd_vx222, ptr %chip, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %arrayidx1.i.i.i60 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx1.i.i.i60, align 4
  %add.i.i.i61 = add i32 %17, 56
  %and.i.i62 = and i32 %add.i.i.i61, 1048575
  %add.i.i63 = or i32 %and.i.i62, -18874368
  %18 = inttoptr i32 %add.i.i63 to ptr
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %18) #6, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  br label %for.body.i72

for.body.i72:                                     ; preds = %for.body.i72.for.body.i72_crit_edge, %sw.epilog
  %i.015.i64 = phi i32 [ 0, %sw.epilog ], [ %inc.i69, %for.body.i72.for.body.i72_crit_edge ]
  %data.addr.014.i65 = phi i32 [ %or, %sw.epilog ], [ %shl.i70, %for.body.i72.for.body.i72_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  %20 = shl i32 %data.addr.014.i65, 8
  %21 = and i32 %20, -2147483648
  %22 = ptrtoint ptr %arrayidx1.i.i.i60 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx1.i.i.i60, align 4
  %add.i.i7.i66 = add i32 %23, 44
  %and.i8.i67 = and i32 %add.i.i7.i66, 1048575
  %add.i9.i68 = or i32 %and.i8.i67, -18874368
  %24 = inttoptr i32 %add.i9.i68 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %24, i32 %21) #6, !srcloc !67
  %inc.i69 = add nuw nsw i32 %i.015.i64, 1
  %shl.i70 = shl i32 %data.addr.014.i65, 1
  %exitcond.not.i71 = icmp eq i32 %inc.i69, 24
  br i1 %exitcond.not.i71, label %vx2_write_codec_reg.exit76, label %for.body.i72.for.body.i72_crit_edge

for.body.i72.for.body.i72_crit_edge:              ; preds = %for.body.i72
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i72

vx2_write_codec_reg.exit76:                       ; preds = %for.body.i72
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %arrayidx1.i.i.i60 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx1.i.i.i60, align 4
  %add.i.i11.i73 = add i32 %26, 40
  %and.i12.i74 = and i32 %add.i.i11.i73, 1048575
  %add.i13.i75 = or i32 %and.i12.i74, -18874368
  %27 = inttoptr i32 %add.i13.i75 to ptr
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %27) #6, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  br label %cleanup

cleanup:                                          ; preds = %vx2_write_codec_reg.exit76, %do.end39, %do.end, %vx2_write_codec_reg.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vx2_reset_codec(ptr nocapture noundef %_chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regCDSP = getelementptr inbounds %struct.snd_vx222, ptr %_chip, i32 0, i32 3
  %0 = ptrtoint ptr %regCDSP to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %regCDSP, align 4
  %and = and i32 %1, -9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  %2 = tail call i32 @llvm.bswap.i32(i32 %and) #6
  %arrayidx1.i.i = getelementptr %struct.snd_vx222, ptr %_chip, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx1.i.i, align 4
  %add.i.i = add i32 %4, 32
  %and.i = and i32 %add.i.i, 1048575
  %add.i = or i32 %and.i, -18874368
  %5 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %5, i32 %2) #6, !srcloc !67
  %6 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx1.i.i, align 4
  %add.i.i28 = add i32 %7, 32
  %and.i29 = and i32 %add.i.i28, 1048575
  %add.i30 = or i32 %and.i29, -18874368
  %8 = inttoptr i32 %add.i30 to ptr
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %8) #6, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @msleep(i32 noundef 10) #6
  %10 = ptrtoint ptr %regCDSP to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %regCDSP, align 4
  %or = or i32 %11, 8
  store i32 %or, ptr %regCDSP, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  %12 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  %13 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx1.i.i, align 4
  %add.i.i32 = add i32 %14, 32
  %and.i33 = and i32 %add.i.i32, 1048575
  %add.i34 = or i32 %and.i33, -18874368
  %15 = inttoptr i32 %add.i34 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %15, i32 %12) #6, !srcloc !67
  %16 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx1.i.i, align 4
  %add.i.i36 = add i32 %17, 32
  %and.i37 = and i32 %add.i.i36, 1048575
  %add.i38 = or i32 %and.i37, -18874368
  %18 = inttoptr i32 %add.i38 to ptr
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %18) #6, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  %type = getelementptr inbounds %struct.vx_core, ptr %_chip, i32 0, i32 2
  %20 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp = icmp eq i32 %21, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @msleep(i32 noundef 1) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @msleep(i32 noundef 5) #6
  %22 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx1.i.i, align 4
  %add.i.i.i = add i32 %23, 56
  %and.i.i = and i32 %add.i.i.i, 1048575
  %add.i.i39 = or i32 %and.i.i, -18874368
  %24 = inttoptr i32 %add.i.i39 to ptr
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %24) #6, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end
  %i.015.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %data.addr.014.i = phi i32 [ 40967, %if.end ], [ %shl.i, %for.body.i.for.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  %26 = shl i32 %data.addr.014.i, 8
  %27 = and i32 %26, -2147483648
  %28 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx1.i.i, align 4
  %add.i.i7.i = add i32 %29, 44
  %and.i8.i = and i32 %add.i.i7.i, 1048575
  %add.i9.i = or i32 %and.i8.i, -18874368
  %30 = inttoptr i32 %add.i9.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %30, i32 %27) #6, !srcloc !67
  %inc.i = add nuw nsw i32 %i.015.i, 1
  %shl.i = shl i32 %data.addr.014.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 24
  br i1 %exitcond.not.i, label %vx2_write_codec_reg.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

vx2_write_codec_reg.exit:                         ; preds = %for.body.i
  %31 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx1.i.i, align 4
  %add.i.i11.i = add i32 %32, 40
  %and.i12.i = and i32 %add.i.i11.i, 1048575
  %add.i13.i = or i32 %and.i12.i, -18874368
  %33 = inttoptr i32 %add.i13.i to ptr
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %33) #6, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  %35 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx1.i.i, align 4
  %add.i.i.i41 = add i32 %36, 56
  %and.i.i42 = and i32 %add.i.i.i41, 1048575
  %add.i.i43 = or i32 %and.i.i42, -18874368
  %37 = inttoptr i32 %add.i.i43 to ptr
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %37) #6, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  br label %for.body.i52

for.body.i52:                                     ; preds = %for.body.i52.for.body.i52_crit_edge, %vx2_write_codec_reg.exit
  %i.015.i44 = phi i32 [ 0, %vx2_write_codec_reg.exit ], [ %inc.i49, %for.body.i52.for.body.i52_crit_edge ]
  %data.addr.014.i45 = phi i32 [ 41536, %vx2_write_codec_reg.exit ], [ %shl.i50, %for.body.i52.for.body.i52_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  %39 = shl i32 %data.addr.014.i45, 8
  %40 = and i32 %39, -2147483648
  %41 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx1.i.i, align 4
  %add.i.i7.i46 = add i32 %42, 44
  %and.i8.i47 = and i32 %add.i.i7.i46, 1048575
  %add.i9.i48 = or i32 %and.i8.i47, -18874368
  %43 = inttoptr i32 %add.i9.i48 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %43, i32 %40) #6, !srcloc !67
  %inc.i49 = add nuw nsw i32 %i.015.i44, 1
  %shl.i50 = shl i32 %data.addr.014.i45, 1
  %exitcond.not.i51 = icmp eq i32 %inc.i49, 24
  br i1 %exitcond.not.i51, label %vx2_write_codec_reg.exit56, label %for.body.i52.for.body.i52_crit_edge

for.body.i52.for.body.i52_crit_edge:              ; preds = %for.body.i52
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i52

vx2_write_codec_reg.exit56:                       ; preds = %for.body.i52
  %44 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx1.i.i, align 4
  %add.i.i11.i53 = add i32 %45, 40
  %and.i12.i54 = and i32 %add.i.i11.i53, 1048575
  %add.i13.i55 = or i32 %and.i12.i54, -18874368
  %46 = inttoptr i32 %add.i13.i55 to ptr
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %46) #6, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  %48 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx1.i.i, align 4
  %add.i.i.i58 = add i32 %49, 56
  %and.i.i59 = and i32 %add.i.i.i58, 1048575
  %add.i.i60 = or i32 %and.i.i59, -18874368
  %50 = inttoptr i32 %add.i.i60 to ptr
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %50) #6, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  br label %for.body.i69

for.body.i69:                                     ; preds = %for.body.i69.for.body.i69_crit_edge, %vx2_write_codec_reg.exit56
  %i.015.i61 = phi i32 [ 0, %vx2_write_codec_reg.exit56 ], [ %inc.i66, %for.body.i69.for.body.i69_crit_edge ]
  %data.addr.014.i62 = phi i32 [ 41869, %vx2_write_codec_reg.exit56 ], [ %shl.i67, %for.body.i69.for.body.i69_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  %52 = shl i32 %data.addr.014.i62, 8
  %53 = and i32 %52, -2147483648
  %54 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx1.i.i, align 4
  %add.i.i7.i63 = add i32 %55, 44
  %and.i8.i64 = and i32 %add.i.i7.i63, 1048575
  %add.i9.i65 = or i32 %and.i8.i64, -18874368
  %56 = inttoptr i32 %add.i9.i65 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %56, i32 %53) #6, !srcloc !67
  %inc.i66 = add nuw nsw i32 %i.015.i61, 1
  %shl.i67 = shl i32 %data.addr.014.i62, 1
  %exitcond.not.i68 = icmp eq i32 %inc.i66, 24
  br i1 %exitcond.not.i68, label %vx2_write_codec_reg.exit73, label %for.body.i69.for.body.i69_crit_edge

for.body.i69.for.body.i69_crit_edge:              ; preds = %for.body.i69
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i69

vx2_write_codec_reg.exit73:                       ; preds = %for.body.i69
  %57 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx1.i.i, align 4
  %add.i.i11.i70 = add i32 %58, 40
  %and.i12.i71 = and i32 %add.i.i11.i70, 1048575
  %add.i13.i72 = or i32 %and.i12.i71, -18874368
  %59 = inttoptr i32 %add.i13.i72 to ptr
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %59) #6, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  %61 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx1.i.i, align 4
  %add.i.i.i75 = add i32 %62, 56
  %and.i.i76 = and i32 %add.i.i.i75, 1048575
  %add.i.i77 = or i32 %and.i.i76, -18874368
  %63 = inttoptr i32 %add.i.i77 to ptr
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %63) #6, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  br label %for.body.i86

for.body.i86:                                     ; preds = %for.body.i86.for.body.i86_crit_edge, %vx2_write_codec_reg.exit73
  %i.015.i78 = phi i32 [ 0, %vx2_write_codec_reg.exit73 ], [ %inc.i83, %for.body.i86.for.body.i86_crit_edge ]
  %data.addr.014.i79 = phi i32 [ 41219, %vx2_write_codec_reg.exit73 ], [ %shl.i84, %for.body.i86.for.body.i86_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  %65 = shl i32 %data.addr.014.i79, 8
  %66 = and i32 %65, -2147483648
  %67 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx1.i.i, align 4
  %add.i.i7.i80 = add i32 %68, 44
  %and.i8.i81 = and i32 %add.i.i7.i80, 1048575
  %add.i9.i82 = or i32 %and.i8.i81, -18874368
  %69 = inttoptr i32 %add.i9.i82 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %69, i32 %66) #6, !srcloc !67
  %inc.i83 = add nuw nsw i32 %i.015.i78, 1
  %shl.i84 = shl i32 %data.addr.014.i79, 1
  %exitcond.not.i85 = icmp eq i32 %inc.i83, 24
  br i1 %exitcond.not.i85, label %vx2_write_codec_reg.exit90, label %for.body.i86.for.body.i86_crit_edge

for.body.i86.for.body.i86_crit_edge:              ; preds = %for.body.i86
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i86

vx2_write_codec_reg.exit90:                       ; preds = %for.body.i86
  %70 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx1.i.i, align 4
  %add.i.i11.i87 = add i32 %71, 40
  %and.i12.i88 = and i32 %add.i.i11.i87, 1048575
  %add.i13.i89 = or i32 %and.i12.i88, -18874368
  %72 = inttoptr i32 %add.i13.i89 to ptr
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %72) #6, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  %74 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %75)
  %cmp5 = icmp eq i32 %75, 2
  br i1 %cmp5, label %if.then6, label %vx2_write_codec_reg.exit90.cleanup_crit_edge

vx2_write_codec_reg.exit90.cleanup_crit_edge:     ; preds = %vx2_write_codec_reg.exit90
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then6:                                         ; preds = %vx2_write_codec_reg.exit90
  call void @__sanitizer_cov_trace_pc() #8
  %regSELMIC = getelementptr inbounds %struct.snd_vx222, ptr %_chip, i32 0, i32 5
  %76 = ptrtoint ptr %regSELMIC to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %regSELMIC, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  %77 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx1.i.i, align 4
  %add.i.i92 = add i32 %78, 64
  %and.i93 = and i32 %add.i.i92, 1048575
  %add.i94 = or i32 %and.i93, -18874368
  %79 = inttoptr i32 %add.i94 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %79, i32 0) #6, !srcloc !67
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %vx2_write_codec_reg.exit90.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vx2_change_audio_source(ptr nocapture noundef %_chip, i32 noundef %src) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %src)
  %cond = icmp eq i32 %src, 0
  %regCFG = getelementptr inbounds %struct.snd_vx222, ptr %_chip, i32 0, i32 4
  %0 = ptrtoint ptr %regCFG to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %regCFG, align 4
  %and = and i32 %1, -9
  %masksel = select i1 %cond, i32 8, i32 0
  %and.sink = or i32 %and, %masksel
  store i32 %and.sink, ptr %regCFG, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  %2 = tail call i32 @llvm.bswap.i32(i32 %and.sink) #6
  %arrayidx1.i.i = getelementptr %struct.snd_vx222, ptr %_chip, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx1.i.i, align 4
  %add.i.i = add i32 %4, 36
  %and.i = and i32 %add.i.i, 1048575
  %add.i = or i32 %and.i, -18874368
  %5 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %5, i32 %2) #6, !srcloc !67
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vx2_set_clock_source(ptr nocapture noundef %_chip, i32 noundef %source) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %source)
  %cmp = icmp ne i32 %source, 0
  %regCFG = getelementptr inbounds %struct.snd_vx222, ptr %_chip, i32 0, i32 4
  %0 = ptrtoint ptr %regCFG to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %regCFG, align 4
  %and = and i32 %1, -2
  %masksel = zext i1 %cmp to i32
  %or.sink = or i32 %and, %masksel
  store i32 %or.sink, ptr %regCFG, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  %2 = tail call i32 @llvm.bswap.i32(i32 %or.sink) #6
  %arrayidx1.i.i = getelementptr %struct.snd_vx222, ptr %_chip, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx1.i.i, align 4
  %add.i.i = add i32 %4, 36
  %and.i = and i32 %add.i.i, 1048575
  %add.i = or i32 %and.i, -18874368
  %5 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %5, i32 %2) #6, !srcloc !67
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vx2_load_dsp(ptr noundef %vx, i32 noundef %index, ptr noundef %dsp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %index to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %index, label %do.end [
    i32 1, label %sw.bb
    i32 2, label %sw.bb5
    i32 3, label %sw.bb7
  ]

sw.bb:                                            ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  %arrayidx1.i.i.i = getelementptr %struct.snd_vx222, ptr %vx, i32 0, i32 2, i32 0
  %1 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx1.i.i.i, align 4
  %add.i.i.i = add i32 %2, 80
  %and.i.i = and i32 %add.i.i.i, 1048575
  %add.i.i = or i32 %and.i.i, -18874368
  %3 = inttoptr i32 %add.i.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %3, i32 304092992) #6, !srcloc !67
  %4 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx1.i.i.i, align 4
  %add.i.i34.i = add i32 %5, 80
  %and.i35.i = and i32 %add.i.i34.i, 1048575
  %add.i36.i = or i32 %and.i35.i, -18874368
  %6 = inttoptr i32 %add.i36.i to ptr
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %6) #6, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @msleep(i32 noundef 10) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx1.i.i.i, align 4
  %add.i.i38.i = add i32 %9, 80
  %and.i39.i = and i32 %add.i.i38.i, 1048575
  %add.i40.i = or i32 %and.i39.i, -18874368
  %10 = inttoptr i32 %add.i40.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %10, i32 304092928) #6, !srcloc !67
  %11 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx1.i.i.i, align 4
  %add.i.i42.i = add i32 %12, 80
  %and.i43.i = and i32 %add.i.i42.i, 1048575
  %add.i44.i = or i32 %and.i43.i, -18874368
  %13 = inttoptr i32 %add.i44.i to ptr
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %13) #6, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @msleep(i32 noundef 10) #6
  %type.i = getelementptr inbounds %struct.vx_core, ptr %vx, i32 0, i32 2
  %15 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i = icmp eq i32 %16, 0
  %..i = select i1 %cmp.i, i32 21, i32 22
  %17 = ptrtoint ptr %dsp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dsp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp249.not.i = icmp eq i32 %18, 0
  br i1 %cmp249.not.i, label %sw.bb.for.end.i_crit_edge, label %for.body.preheader.i

sw.bb.for.end.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.preheader.i:                             ; preds = %sw.bb
  %data.i = getelementptr inbounds %struct.firmware, ptr %dsp, i32 0, i32 1
  %19 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %image.051.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %20, %for.body.preheader.i ]
  %i.050.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %21 = ptrtoint ptr %image.051.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %image.051.i, align 1
  tail call fastcc void @put_xilinx_data(ptr noundef %vx, i32 noundef %..i, i32 noundef 8, i8 noundef zeroext %22) #6
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 380, i32 noundef 0) #6
  %call.i.i = tail call i32 @__cond_resched() #6
  %inc.i = add nuw i32 %i.050.i, 1
  %incdec.ptr.i = getelementptr i8, ptr %image.051.i, i32 1
  %23 = ptrtoint ptr %dsp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dsp, align 4
  %cmp2.i = icmp ult i32 %inc.i, %24
  br i1 %cmp2.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %sw.bb.for.end.i_crit_edge
  tail call fastcc void @put_xilinx_data(ptr noundef %vx, i32 noundef %..i, i32 noundef 4, i8 noundef zeroext -1) #6
  tail call void @msleep(i32 noundef 200) #6
  %25 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp10.not.i = icmp eq i32 %26, 0
  br i1 %cmp10.not.i, label %for.end.i.if.end_crit_edge, label %if.then11.i

for.end.i.if.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then11.i:                                      ; preds = %for.end.i
  %27 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx1.i.i.i, align 4
  %add.i.i46.i = add i32 %28, 84
  %and.i47.i = and i32 %add.i.i46.i, 1048575
  %add.i48.i = or i32 %and.i47.i, -18874368
  %29 = inttoptr i32 %add.i48.i to ptr
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %29) #6, !srcloc !62
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  %and.i = and i32 %31, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %vx2_load_xilinx_binary.exit, label %if.then11.i.if.end_crit_edge

if.then11.i.if.end_crit_edge:                     ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

vx2_load_xilinx_binary.exit:                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %vx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vx, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %33, i32 0, i32 27
  %34 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.2, i32 noundef %31) #9
  br label %cleanup

if.end:                                           ; preds = %if.then11.i.if.end_crit_edge, %for.end.i.if.end_crit_edge
  %call1 = tail call fastcc i32 @vx2_test_xilinx(ptr noundef %vx)
  %36 = tail call i32 @llvm.smin.i32(i32 %call1, i32 0)
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call i32 @snd_vx_dsp_boot(ptr noundef %vx, ptr noundef %dsp) #6
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call i32 @snd_vx_dsp_load(ptr noundef %vx, ptr noundef %dsp) #6
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 425, i32 noundef 9, ptr noundef nonnull @.str.1) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb7, %sw.bb5, %if.end, %vx2_load_xilinx_binary.exit
  %retval.0 = phi i32 [ -22, %do.end ], [ %call8, %sw.bb7 ], [ %call6, %sw.bb5 ], [ -22, %vx2_load_xilinx_binary.exit ], [ %36, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vx2_reset_dsp(ptr nocapture noundef %_chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regCDSP = getelementptr inbounds %struct.snd_vx222, ptr %_chip, i32 0, i32 3
  %0 = ptrtoint ptr %regCDSP to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %regCDSP, align 4
  %and = and i32 %1, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  %2 = tail call i32 @llvm.bswap.i32(i32 %and) #6
  %arrayidx1.i.i = getelementptr %struct.snd_vx222, ptr %_chip, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx1.i.i, align 4
  %add.i.i = add i32 %4, 32
  %and.i = and i32 %add.i.i, 1048575
  %add.i = or i32 %and.i, -18874368
  %5 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %5, i32 %2) #6, !srcloc !67
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 429496000) #6
  %7 = ptrtoint ptr %regCDSP to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %regCDSP, align 4
  %or = or i32 %8, 1
  store i32 %or, ptr %regCDSP, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  %9 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  %10 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx1.i.i, align 4
  %add.i.i8 = add i32 %11, 32
  %and.i9 = and i32 %add.i.i8, 1048575
  %add.i10 = or i32 %and.i9, -18874368
  %12 = inttoptr i32 %add.i10 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %12, i32 %9) #6, !srcloc !67
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @vx2_reset_board(ptr nocapture noundef writeonly %_chip, i32 noundef %cold_reset) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regCDSP = getelementptr inbounds %struct.snd_vx222, ptr %_chip, i32 0, i32 3
  %0 = ptrtoint ptr %regCDSP to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 9, ptr %regCDSP, align 4
  %regCFG = getelementptr inbounds %struct.snd_vx222, ptr %_chip, i32 0, i32 4
  %1 = ptrtoint ptr %regCFG to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %regCFG, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vx2_add_mic_controls(ptr noundef %_chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.vx_core, ptr %_chip, i32 0, i32 2
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %input_level = getelementptr inbounds %struct.snd_vx222, ptr %_chip, i32 0, i32 6
  %arrayidx = getelementptr %struct.snd_vx222, ptr %_chip, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %arrayidx, align 4
  %3 = ptrtoint ptr %input_level to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %input_level, align 4
  %mic_level = getelementptr inbounds %struct.snd_vx222, ptr %_chip, i32 0, i32 7
  %4 = ptrtoint ptr %mic_level to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %mic_level, align 4
  tail call fastcc void @vx2_set_input_level(ptr noundef %_chip)
  %5 = ptrtoint ptr %_chip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %_chip, align 4
  %call = tail call ptr @snd_ctl_new1(ptr noundef nonnull @vx_control_input_level, ptr noundef %_chip) #6
  %call3 = tail call i32 @snd_ctl_add(ptr noundef %6, ptr noundef %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %_chip to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %_chip, align 4
  %call8 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @vx_control_mic_level, ptr noundef %_chip) #6
  %call9 = tail call i32 @snd_ctl_add(ptr noundef %8, ptr noundef %call8) #6
  %9 = tail call i32 @llvm.smin.i32(i32 %call9, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %9, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vx2_dma_write(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %runtime, ptr nocapture noundef %pipe, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx1.i = getelementptr %struct.snd_vx222, ptr %chip, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx1.i, align 4
  %add.i = add i32 %1, 16
  %hw_ptr = getelementptr inbounds %struct.vx_pipe, ptr %pipe, i32 0, i32 9
  %2 = ptrtoint ptr %hw_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hw_ptr, align 8
  %dma_area = getelementptr inbounds %struct.snd_pcm_runtime, ptr %runtime, i32 0, i32 50
  %4 = ptrtoint ptr %dma_area to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_area, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %3
  %6 = and i32 %count, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end22, label %do.end, !prof !69

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 252, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end22:                                         ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  %7 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx1.i, align 4
  %and.i.i = and i32 %8, 1048575
  %add.i.i = or i32 %and.i.i, -18874368
  %9 = inttoptr i32 %add.i.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %9, i32 33554432) #6, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx1.i, align 4
  %add.i.i.i = add i32 %11, 8
  %and.i3.i = and i32 %add.i.i.i, 1048575
  %add.i4.i = or i32 %and.i3.i, -18874368
  %12 = inttoptr i32 %add.i4.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %12, i32 0) #6, !srcloc !67
  %add = add i32 %3, %count
  %buffer_bytes = getelementptr inbounds %struct.vx_pipe, ptr %pipe, i32 0, i32 7
  %13 = ptrtoint ptr %buffer_bytes to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %buffer_bytes, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %14)
  %cmp.not = icmp slt i32 %add, %14
  br i1 %cmp.not, label %if.end22.if.end34_crit_edge, label %if.then23

if.end22.if.end34_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then23:                                        ; preds = %if.end22
  %sub = sub i32 %14, %3
  %sub25 = sub i32 %count, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub)
  %cmp2679 = icmp sgt i32 %sub, 3
  br i1 %cmp2679, label %do.body27.lr.ph, label %if.then23.for.end_crit_edge

if.then23.for.end_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

do.body27.lr.ph:                                  ; preds = %if.then23
  %shr86 = lshr i32 %sub, 2
  %and = and i32 %add.i, 1048575
  %add30 = or i32 %and, -18874368
  %15 = inttoptr i32 %add30 to ptr
  br label %do.body27

do.body27:                                        ; preds = %do.body27.do.body27_crit_edge, %do.body27.lr.ph
  %length.081 = phi i32 [ %shr86, %do.body27.lr.ph ], [ %dec, %do.body27.do.body27_crit_edge ]
  %addr.080 = phi ptr [ %add.ptr, %do.body27.lr.ph ], [ %incdec.ptr, %do.body27.do.body27_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %16 = ptrtoint ptr %addr.080 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %addr.080, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %15, i32 %18) #6, !srcloc !67
  %incdec.ptr = getelementptr i32, ptr %addr.080, i32 1
  %dec = add nsw i32 %length.081, -1
  %cmp26 = icmp ugt i32 %length.081, 1
  br i1 %cmp26, label %do.body27.do.body27_crit_edge, label %do.body27.for.end_crit_edge

do.body27.for.end_crit_edge:                      ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

do.body27.do.body27_crit_edge:                    ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body27

for.end:                                          ; preds = %do.body27.for.end_crit_edge, %if.then23.for.end_crit_edge
  %19 = ptrtoint ptr %dma_area to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dma_area, align 4
  %21 = ptrtoint ptr %hw_ptr to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %hw_ptr, align 8
  br label %if.end34

if.end34:                                         ; preds = %for.end, %if.end22.if.end34_crit_edge
  %addr.1 = phi ptr [ %20, %for.end ], [ %add.ptr, %if.end22.if.end34_crit_edge ]
  %count.addr.0 = phi i32 [ %sub25, %for.end ], [ %count, %if.end22.if.end34_crit_edge ]
  %22 = ptrtoint ptr %hw_ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %hw_ptr, align 8
  %add36 = add i32 %23, %count.addr.0
  store i32 %add36, ptr %hw_ptr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %count.addr.0)
  %cmp3982 = icmp sgt i32 %count.addr.0, 3
  br i1 %cmp3982, label %do.body41.lr.ph, label %if.end34.for.end50_crit_edge

if.end34.for.end50_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end50

do.body41.lr.ph:                                  ; preds = %if.end34
  %shr3785 = lshr i32 %count.addr.0, 2
  %and44 = and i32 %add.i, 1048575
  %add45 = or i32 %and44, -18874368
  %24 = inttoptr i32 %add45 to ptr
  br label %do.body41

do.body41:                                        ; preds = %do.body41.do.body41_crit_edge, %do.body41.lr.ph
  %count.addr.184 = phi i32 [ %shr3785, %do.body41.lr.ph ], [ %dec49, %do.body41.do.body41_crit_edge ]
  %addr.283 = phi ptr [ %addr.1, %do.body41.lr.ph ], [ %incdec.ptr47, %do.body41.do.body41_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  tail call void @arm_heavy_mb() #6
  %25 = ptrtoint ptr %addr.283 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %addr.283, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %24, i32 %27) #6, !srcloc !67
  %incdec.ptr47 = getelementptr i32, ptr %addr.283, i32 1
  %dec49 = add nsw i32 %count.addr.184, -1
  %cmp39 = icmp ugt i32 %count.addr.184, 1
  br i1 %cmp39, label %do.body41.do.body41_crit_edge, label %do.body41.for.end50_crit_edge

do.body41.for.end50_crit_edge:                    ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end50

do.body41.do.body41_crit_edge:                    ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body41

for.end50:                                        ; preds = %do.body41.for.end50_crit_edge, %if.end34.for.end50_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  %28 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx1.i, align 4
  %and.i.i77 = and i32 %29, 1048575
  %add.i.i78 = or i32 %and.i.i77, -18874368
  %30 = inttoptr i32 %add.i.i78 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %30, i32 0) #6, !srcloc !67
  br label %cleanup

cleanup:                                          ; preds = %for.end50, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vx2_dma_read(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %runtime, ptr nocapture noundef %pipe, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_ptr = getelementptr inbounds %struct.vx_pipe, ptr %pipe, i32 0, i32 9
  %0 = ptrtoint ptr %hw_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hw_ptr, align 8
  %dma_area = getelementptr inbounds %struct.snd_pcm_runtime, ptr %runtime, i32 0, i32 50
  %2 = ptrtoint ptr %dma_area to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_area, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %1
  %arrayidx1.i = getelementptr %struct.snd_vx222, ptr %chip, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx1.i, align 4
  %add.i = add i32 %5, 16
  %6 = and i32 %count, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end22, label %do.end, !prof !69

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 291, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end22:                                         ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  %7 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx1.i, align 4
  %and.i.i = and i32 %8, 1048575
  %add.i.i = or i32 %and.i.i, -18874368
  %9 = inttoptr i32 %add.i.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %9, i32 16777216) #6, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx1.i, align 4
  %add.i.i.i = add i32 %11, 8
  %and.i3.i = and i32 %add.i.i.i, 1048575
  %add.i4.i = or i32 %and.i3.i, -18874368
  %12 = inttoptr i32 %add.i4.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %12, i32 0) #6, !srcloc !67
  %add = add i32 %1, %count
  %buffer_bytes = getelementptr inbounds %struct.vx_pipe, ptr %pipe, i32 0, i32 7
  %13 = ptrtoint ptr %buffer_bytes to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %buffer_bytes, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %14)
  %cmp.not = icmp slt i32 %add, %14
  br i1 %cmp.not, label %if.end22.if.end33_crit_edge, label %if.then23

if.end22.if.end33_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then23:                                        ; preds = %if.end22
  %sub = sub i32 %14, %1
  %sub25 = sub i32 %count, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub)
  %cmp2676 = icmp sgt i32 %sub, 3
  br i1 %cmp2676, label %for.body.lr.ph, label %if.then23.for.end_crit_edge

if.then23.for.end_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then23
  %shr83 = lshr i32 %sub, 2
  %and = and i32 %add.i, 1048575
  %add27 = or i32 %and, -18874368
  %15 = inttoptr i32 %add27 to ptr
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %addr.078 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %length.077 = phi i32 [ %shr83, %for.body.lr.ph ], [ %dec, %for.body.for.body_crit_edge ]
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %15) #6, !srcloc !62
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  %incdec.ptr = getelementptr i32, ptr %addr.078, i32 1
  %18 = ptrtoint ptr %addr.078 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %addr.078, align 4
  %dec = add nsw i32 %length.077, -1
  %cmp26 = icmp ugt i32 %length.077, 1
  br i1 %cmp26, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then23.for.end_crit_edge
  %19 = ptrtoint ptr %dma_area to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dma_area, align 4
  %21 = ptrtoint ptr %hw_ptr to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %hw_ptr, align 8
  br label %if.end33

if.end33:                                         ; preds = %for.end, %if.end22.if.end33_crit_edge
  %addr.1 = phi ptr [ %20, %for.end ], [ %add.ptr, %if.end22.if.end33_crit_edge ]
  %count.addr.0 = phi i32 [ %sub25, %for.end ], [ %count, %if.end22.if.end33_crit_edge ]
  %22 = ptrtoint ptr %hw_ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %hw_ptr, align 8
  %add35 = add i32 %23, %count.addr.0
  store i32 %add35, ptr %hw_ptr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %count.addr.0)
  %cmp3879 = icmp sgt i32 %count.addr.0, 3
  br i1 %cmp3879, label %for.body39.lr.ph, label %if.end33.for.end49_crit_edge

if.end33.for.end49_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end49

for.body39.lr.ph:                                 ; preds = %if.end33
  %shr3682 = lshr i32 %count.addr.0, 2
  %and41 = and i32 %add.i, 1048575
  %add42 = or i32 %and41, -18874368
  %24 = inttoptr i32 %add42 to ptr
  br label %for.body39

for.body39:                                       ; preds = %for.body39.for.body39_crit_edge, %for.body39.lr.ph
  %count.addr.181 = phi i32 [ %shr3682, %for.body39.lr.ph ], [ %dec48, %for.body39.for.body39_crit_edge ]
  %addr.280 = phi ptr [ %addr.1, %for.body39.lr.ph ], [ %incdec.ptr46, %for.body39.for.body39_crit_edge ]
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %24) #6, !srcloc !62
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  %incdec.ptr46 = getelementptr i32, ptr %addr.280, i32 1
  %27 = ptrtoint ptr %addr.280 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %addr.280, align 4
  %dec48 = add nsw i32 %count.addr.181, -1
  %cmp38 = icmp ugt i32 %count.addr.181, 1
  br i1 %cmp38, label %for.body39.for.body39_crit_edge, label %for.body39.for.end49_crit_edge

for.body39.for.end49_crit_edge:                   ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end49

for.body39.for.body39_crit_edge:                  ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body39

for.end49:                                        ; preds = %for.body39.for.end49_crit_edge, %if.end33.for.end49_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  %28 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx1.i, align 4
  %and.i.i74 = and i32 %29, 1048575
  %add.i.i75 = or i32 %and.i.i74, -18874368
  %30 = inttoptr i32 %add.i.i75 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %30, i32 0) #6, !srcloc !67
  br label %cleanup

cleanup:                                          ; preds = %for.end49, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vx2_old_write_codec_bit(ptr nocapture noundef readonly %chip, i32 noundef %codec, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx1.i.i = getelementptr %struct.snd_vx222, ptr %chip, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx1.i.i, align 4
  %add.i.i = add i32 %1, 56
  %and.i = and i32 %add.i.i, 1048575
  %add.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add.i to ptr
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %2) #6, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.015 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %data.addr.014 = phi i32 [ %data, %entry ], [ %shl, %for.body.for.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  %4 = shl i32 %data.addr.014, 8
  %5 = and i32 %4, -2147483648
  %6 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx1.i.i, align 4
  %add.i.i7 = add i32 %7, 44
  %and.i8 = and i32 %add.i.i7, 1048575
  %add.i9 = or i32 %and.i8, -18874368
  %8 = inttoptr i32 %add.i9 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %8, i32 %5) #6, !srcloc !67
  %inc = add nuw nsw i32 %i.015, 1
  %shl = shl i32 %data.addr.014, 1
  %exitcond.not = icmp eq i32 %inc, 24
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx1.i.i, align 4
  %add.i.i11 = add i32 %10, 40
  %and.i12 = and i32 %add.i.i11, 1048575
  %add.i13 = or i32 %and.i12, -18874368
  %11 = inttoptr i32 %add.i13 to ptr
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %11) #6, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vx2_test_xilinx(ptr nocapture noundef readonly %_chip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vx2_test_xilinx.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vx2_test_xilinx, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !74

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %_chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_chip, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vx2_test_xilinx.__UNIQUE_ID_ddebug238, ptr noundef %3, ptr noundef nonnull @.str.8) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %regCDSP = getelementptr inbounds %struct.snd_vx222, ptr %_chip, i32 0, i32 3
  %4 = ptrtoint ptr %regCDSP to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %regCDSP, align 4
  %or = or i32 %5, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  %6 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  %arrayidx1.i.i = getelementptr %struct.snd_vx222, ptr %_chip, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx1.i.i, align 4
  %add.i.i = add i32 %8, 32
  %and.i = and i32 %add.i.i, 1048575
  %add.i = or i32 %and.i, -18874368
  %9 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %9, i32 %6) #6, !srcloc !67
  %10 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx1.i.i, align 4
  %add.i.i167 = add i32 %11, 8
  %and.i168 = and i32 %add.i.i167, 1048575
  %add.i169 = or i32 %and.i168, -18874368
  %12 = inttoptr i32 %add.i169 to ptr
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %12) #6, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  %14 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx1.i.i, align 4
  %add.i.i171 = add i32 %15, 48
  %and.i172 = and i32 %add.i.i171, 1048575
  %add.i173 = or i32 %and.i172, -18874368
  %16 = inttoptr i32 %add.i173 to ptr
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %16) #6, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  %18 = and i32 %17, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.not = icmp eq i32 %18, 0
  br i1 %cmp.not, label %if.end25, label %do.body7

do.body7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vx2_test_xilinx.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vx2_test_xilinx, %if.then19)) #6
          to label %cleanup [label %if.then19], !srcloc !74

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %_chip to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %_chip, align 4
  %dev21 = getelementptr inbounds %struct.snd_card, ptr %20, i32 0, i32 27
  %21 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev21, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vx2_test_xilinx.__UNIQUE_ID_ddebug239, ptr noundef %22, ptr noundef nonnull @.str.9) #6
  br label %cleanup

if.end25:                                         ; preds = %do.end
  %23 = ptrtoint ptr %regCDSP to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %regCDSP, align 4
  %and27 = and i32 %24, -3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  %25 = tail call i32 @llvm.bswap.i32(i32 %and27) #6
  %26 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx1.i.i, align 4
  %add.i.i175 = add i32 %27, 32
  %and.i176 = and i32 %add.i.i175, 1048575
  %add.i177 = or i32 %and.i176, -18874368
  %28 = inttoptr i32 %add.i177 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %28, i32 %25) #6, !srcloc !67
  %29 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx1.i.i, align 4
  %add.i.i179 = add i32 %30, 8
  %and.i180 = and i32 %add.i.i179, 1048575
  %add.i181 = or i32 %and.i180, -18874368
  %31 = inttoptr i32 %add.i181 to ptr
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %31) #6, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  %33 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx1.i.i, align 4
  %add.i.i183 = add i32 %34, 48
  %and.i184 = and i32 %add.i.i183, 1048575
  %add.i185 = or i32 %and.i184, -18874368
  %35 = inttoptr i32 %add.i185 to ptr
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %35) #6, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  %37 = and i32 %36, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool31.not = icmp eq i32 %37, 0
  br i1 %tobool31.not, label %do.body33, label %if.end51

do.body33:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vx2_test_xilinx.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vx2_test_xilinx, %if.then45)) #6
          to label %cleanup [label %if.then45], !srcloc !74

if.then45:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %_chip to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %_chip, align 4
  %dev47 = getelementptr inbounds %struct.snd_card, ptr %39, i32 0, i32 27
  %40 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev47, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vx2_test_xilinx.__UNIQUE_ID_ddebug240, ptr noundef %41, ptr noundef nonnull @.str.10) #6
  br label %cleanup

if.end51:                                         ; preds = %if.end25
  %type = getelementptr inbounds %struct.vx_core, ptr %_chip, i32 0, i32 2
  %42 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp52 = icmp eq i32 %43, 0
  br i1 %cmp52, label %if.then53, label %if.end51.do.body107_crit_edge

if.end51.do.body107_crit_edge:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body107

if.then53:                                        ; preds = %if.end51
  %44 = ptrtoint ptr %regCDSP to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %regCDSP, align 4
  %or55 = or i32 %45, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  %46 = tail call i32 @llvm.bswap.i32(i32 %or55) #6
  %47 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx1.i.i, align 4
  %add.i.i187 = add i32 %48, 32
  %and.i188 = and i32 %add.i.i187, 1048575
  %add.i189 = or i32 %and.i188, -18874368
  %49 = inttoptr i32 %add.i189 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %49, i32 %46) #6, !srcloc !67
  %50 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx1.i.i, align 4
  %add.i.i191 = add i32 %51, 8
  %and.i192 = and i32 %add.i.i191, 1048575
  %add.i193 = or i32 %and.i192, -18874368
  %52 = inttoptr i32 %add.i193 to ptr
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %52) #6, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  %54 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx1.i.i, align 4
  %add.i.i195 = add i32 %55, 48
  %and.i196 = and i32 %add.i.i195, 1048575
  %add.i197 = or i32 %and.i196, -18874368
  %56 = inttoptr i32 %add.i197 to ptr
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %56) #6, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  %58 = and i32 %57, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp59.not = icmp eq i32 %58, 0
  br i1 %cmp59.not, label %if.end79, label %do.body61

do.body61:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vx2_test_xilinx.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vx2_test_xilinx, %if.then73)) #6
          to label %cleanup [label %if.then73], !srcloc !74

if.then73:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %_chip to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %_chip, align 4
  %dev75 = getelementptr inbounds %struct.snd_card, ptr %60, i32 0, i32 27
  %61 = ptrtoint ptr %dev75 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev75, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vx2_test_xilinx.__UNIQUE_ID_ddebug241, ptr noundef %62, ptr noundef nonnull @.str.11) #6
  br label %cleanup

if.end79:                                         ; preds = %if.then53
  %63 = ptrtoint ptr %regCDSP to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %regCDSP, align 4
  %and81 = and i32 %64, -129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  %65 = tail call i32 @llvm.bswap.i32(i32 %and81) #6
  %66 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx1.i.i, align 4
  %add.i.i199 = add i32 %67, 32
  %and.i200 = and i32 %add.i.i199, 1048575
  %add.i201 = or i32 %and.i200, -18874368
  %68 = inttoptr i32 %add.i201 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %68, i32 %65) #6, !srcloc !67
  %69 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx1.i.i, align 4
  %add.i.i203 = add i32 %70, 8
  %and.i204 = and i32 %add.i.i203, 1048575
  %add.i205 = or i32 %and.i204, -18874368
  %71 = inttoptr i32 %add.i205 to ptr
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %71) #6, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  %73 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx1.i.i, align 4
  %add.i.i207 = add i32 %74, 48
  %and.i208 = and i32 %add.i.i207, 1048575
  %add.i209 = or i32 %and.i208, -18874368
  %75 = inttoptr i32 %add.i209 to ptr
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %75) #6, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  %77 = and i32 %76, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool85.not = icmp eq i32 %77, 0
  br i1 %tobool85.not, label %do.body87, label %if.end79.do.body107_crit_edge

if.end79.do.body107_crit_edge:                    ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body107

do.body87:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vx2_test_xilinx.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vx2_test_xilinx, %if.then99)) #6
          to label %cleanup [label %if.then99], !srcloc !74

if.then99:                                        ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #8
  %78 = ptrtoint ptr %_chip to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %_chip, align 4
  %dev101 = getelementptr inbounds %struct.snd_card, ptr %79, i32 0, i32 27
  %80 = ptrtoint ptr %dev101 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev101, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vx2_test_xilinx.__UNIQUE_ID_ddebug242, ptr noundef %81, ptr noundef nonnull @.str.12) #6
  br label %cleanup

do.body107:                                       ; preds = %if.end79.do.body107_crit_edge, %if.end51.do.body107_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vx2_test_xilinx.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vx2_test_xilinx, %if.then119)) #6
          to label %cleanup [label %if.then119], !srcloc !74

if.then119:                                       ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #8
  %82 = ptrtoint ptr %_chip to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %_chip, align 4
  %dev121 = getelementptr inbounds %struct.snd_card, ptr %83, i32 0, i32 27
  %84 = ptrtoint ptr %dev121 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev121, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vx2_test_xilinx.__UNIQUE_ID_ddebug243, ptr noundef %85, ptr noundef nonnull @.str.13) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then119, %do.body107, %if.then99, %do.body87, %if.then73, %do.body61, %if.then45, %do.body33, %if.then19, %do.body7
  %retval.0 = phi i32 [ -19, %if.then19 ], [ -19, %if.then45 ], [ -19, %if.then73 ], [ -19, %if.then99 ], [ 0, %if.then119 ], [ -19, %do.body7 ], [ -19, %do.body33 ], [ -19, %do.body61 ], [ -19, %do.body87 ], [ 0, %do.body107 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_vx_dsp_boot(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_vx_dsp_load(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_xilinx_data(ptr nocapture noundef readonly %chip, i32 noundef %port, i32 noundef %counts, i8 noundef zeroext %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %counts)
  %cmp31.not = icmp eq i32 %counts, 0
  br i1 %cmp31.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %arrayidx.i.i = getelementptr [27 x i32], ptr @vx2_reg_index, i32 0, i32 %port
  %arrayidx2.i.i = getelementptr [27 x i32], ptr @vx2_reg_offset, i32 0, i32 %port
  %conv = zext i8 %data to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.032 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx1.i.i = getelementptr %struct.snd_vx222, ptr %chip, i32 0, i32 2, i32 %1
  %2 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1.i.i, align 4
  %4 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2.i.i, align 4
  %add.i.i = add i32 %5, %3
  %and.i = and i32 %add.i.i, 1048575
  %add.i = or i32 %and.i, -18874368
  %6 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %6, i32 304092928) #6, !srcloc !67
  %7 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx1.i.i, align 4
  %add.i.i4 = add i32 %8, %5
  %and.i5 = and i32 %add.i.i4, 1048575
  %add.i6 = or i32 %and.i5, -18874368
  %9 = inttoptr i32 %add.i6 to ptr
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %9) #6, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748) #6
  %shl = shl nuw i32 1, %i.032
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 1515538, i32 1515570
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  %12 = tail call i32 @llvm.bswap.i32(i32 %.) #6
  %13 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx1.i.i, align 4
  %add.i.i10 = add i32 %14, %5
  %and.i11 = and i32 %add.i.i10, 1048575
  %add.i12 = or i32 %and.i11, -18874368
  %15 = inttoptr i32 %add.i12 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %15, i32 %12) #6, !srcloc !67
  %16 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx1.i.i, align 4
  %add.i.i16 = add i32 %17, %5
  %and.i17 = and i32 %add.i.i16, 1048575
  %add.i18 = or i32 %and.i17, -18874368
  %18 = inttoptr i32 %add.i18 to ptr
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %18) #6, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  %or3 = or i32 %., 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  %20 = tail call i32 @llvm.bswap.i32(i32 %or3) #6
  %21 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx1.i.i, align 4
  %add.i.i22 = add i32 %22, %5
  %and.i23 = and i32 %add.i.i22, 1048575
  %add.i24 = or i32 %and.i23, -18874368
  %23 = inttoptr i32 %add.i24 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %23, i32 %20) #6, !srcloc !67
  %24 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx1.i.i, align 4
  %add.i.i28 = add i32 %25, %5
  %and.i29 = and i32 %add.i.i28, 1048575
  %add.i30 = or i32 %and.i29, -18874368
  %26 = inttoptr i32 %add.i30 to ptr
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %26) #6, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748) #6
  %inc = add nuw i32 %i.032, 1
  %exitcond.not = icmp eq i32 %inc, %counts
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vx2_set_input_level(ptr nocapture noundef %chip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mic_level = getelementptr inbounds %struct.snd_vx222, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %mic_level to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mic_level, align 4
  %add = add i32 %1, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 210, i32 %add)
  %cmp70 = icmp sgt i32 %add, 210
  br i1 %cmp70, label %while.end, label %entry.if.end22_crit_edge

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

while.end:                                        ; preds = %entry
  %2 = add nuw i32 %1, 98
  %smin = call i32 @llvm.smin.i32(i32 %add, i32 246)
  %3 = sub nuw i32 %2, %smin
  %4 = udiv i32 %3, 36
  %5 = add nuw nsw i32 %4, 1
  %.neg = mul nsw i32 %4, -36
  %6 = add nuw nsw i32 %1, 27
  %7 = add nsw i32 %.neg, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 107, i32 %3)
  %cmp1 = icmp ugt i32 %3, 107
  br i1 %cmp1, label %do.end, label %while.end.if.end22_crit_edge, !prof !68

while.end.if.end22_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

do.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 828, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end22:                                         ; preds = %while.end.if.end22_crit_edge, %entry.if.end22_crit_edge
  %preamp.0.lcssa80 = phi i32 [ %5, %while.end.if.end22_crit_edge ], [ 0, %entry.if.end22_crit_edge ]
  %miclevel.0.lcssa79 = phi i32 [ %7, %while.end.if.end22_crit_edge ], [ %add, %entry.if.end22_crit_edge ]
  %regSELMIC = getelementptr inbounds %struct.snd_vx222, ptr %chip, i32 0, i32 5
  %8 = ptrtoint ptr %regSELMIC to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %regSELMIC, align 4
  %and = and i32 %9, -13
  %shl = shl nuw nsw i32 %preamp.0.lcssa80, 2
  %and23 = and i32 %shl, 12
  %or = or i32 %and, %and23
  store i32 %or, ptr %regSELMIC, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  %10 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  %arrayidx1.i.i = getelementptr %struct.snd_vx222, ptr %chip, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx1.i.i, align 4
  %add.i.i = add i32 %12, 64
  %and.i = and i32 %add.i.i, 1048575
  %add.i = or i32 %and.i, -18874368
  %13 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %13, i32 %10) #6, !srcloc !67
  %shl26 = shl i32 %miclevel.0.lcssa79, 16
  %input_level = getelementptr inbounds %struct.snd_vx222, ptr %chip, i32 0, i32 6
  %arrayidx = getelementptr %struct.snd_vx222, ptr %chip, i32 0, i32 6, i32 1
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %shl27 = shl i32 %15, 8
  %or28 = or i32 %shl27, %shl26
  %16 = ptrtoint ptr %input_level to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %input_level, align 4
  %or31 = or i32 %or28, %17
  %18 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx1.i.i, align 4
  %add.i.i59 = add i32 %19, 44
  %and.i60 = and i32 %add.i.i59, 1048575
  %add.i61 = or i32 %and.i60, -18874368
  %20 = inttoptr i32 %add.i61 to ptr
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %20) #6, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end22
  %i.075 = phi i32 [ 0, %if.end22 ], [ %inc35, %for.body.for.body_crit_edge ]
  %data.074 = phi i32 [ %or31, %if.end22 ], [ %shl36, %for.body.for.body_crit_edge ]
  %22 = and i32 %data.074, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  %23 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx1.i.i, align 4
  %add.i.i63 = add i32 %24, 44
  %and.i64 = and i32 %add.i.i63, 1048575
  %add.i65 = or i32 %and.i64, -18874368
  %25 = inttoptr i32 %add.i65 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %25, i32 %22) #6, !srcloc !67
  %inc35 = add nuw nsw i32 %i.075, 1
  %shl36 = shl i32 %data.074, 1
  %exitcond.not = icmp eq i32 %inc35, 32
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx1.i.i, align 4
  %add.i.i67 = add i32 %27, 40
  %and.i68 = and i32 %add.i.i67, 1048575
  %add.i69 = or i32 %and.i68, -18874368
  %28 = inttoptr i32 %add.i69 to ptr
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %28) #6, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @vx_input_level_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 255, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vx_input_level_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mixer_mutex = getelementptr inbounds %struct.vx_core, ptr %1, i32 0, i32 31
  tail call void @mutex_lock_nested(ptr noundef %mixer_mutex, i32 noundef 0) #6
  %input_level = getelementptr inbounds %struct.snd_vx222, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %input_level to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %input_level, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %value, align 8
  %arrayidx3 = getelementptr %struct.snd_vx222, ptr %1, i32 0, i32 6, i32 1
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx3, align 4
  %arrayidx5 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %arrayidx5, align 4
  tail call void @mutex_unlock(ptr noundef %mixer_mutex) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vx_input_level_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %3)
  %4 = icmp ugt i32 %3, 255
  br i1 %4, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx5 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %6)
  %7 = icmp ugt i32 %6, 255
  br i1 %7, label %if.end.cleanup_crit_edge, label %if.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %mixer_mutex = getelementptr inbounds %struct.vx_core, ptr %1, i32 0, i32 31
  tail call void @mutex_lock_nested(ptr noundef %mixer_mutex, i32 noundef 0) #6
  %input_level = getelementptr inbounds %struct.snd_vx222, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %input_level to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %input_level, align 4
  %10 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp16.not = icmp eq i32 %9, %11
  br i1 %cmp16.not, label %lor.lhs.false17, label %if.end12.if.then23_crit_edge

if.end12.if.then23_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then23

lor.lhs.false17:                                  ; preds = %if.end12
  %arrayidx19 = getelementptr %struct.snd_vx222, ptr %1, i32 0, i32 6, i32 1
  %12 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx19, align 4
  %14 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp22.not = icmp eq i32 %13, %15
  br i1 %cmp22.not, label %lor.lhs.false17.cleanup.sink.split_crit_edge, label %lor.lhs.false17.if.then23_crit_edge

lor.lhs.false17.if.then23_crit_edge:              ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then23

lor.lhs.false17.cleanup.sink.split_crit_edge:     ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.then23:                                        ; preds = %lor.lhs.false17.if.then23_crit_edge, %if.end12.if.then23_crit_edge
  %16 = ptrtoint ptr %input_level to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %11, ptr %input_level, align 4
  %17 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx5, align 4
  %arrayidx31 = getelementptr %struct.snd_vx222, ptr %1, i32 0, i32 6, i32 1
  %19 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %arrayidx31, align 4
  tail call fastcc void @vx2_set_input_level(ptr noundef %1)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then23, %lor.lhs.false17.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 1, %if.then23 ], [ 0, %lor.lhs.false17.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mixer_mutex) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @vx_mic_level_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 255, ptr %max, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vx_mic_level_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mic_level = getelementptr inbounds %struct.snd_vx222, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %mic_level to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mic_level, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vx_mic_level_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %3)
  %4 = icmp ugt i32 %3, 255
  br i1 %4, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %mixer_mutex = getelementptr inbounds %struct.vx_core, ptr %1, i32 0, i32 31
  tail call void @mutex_lock_nested(ptr noundef %mixer_mutex, i32 noundef 0) #6
  %mic_level = getelementptr inbounds %struct.snd_vx222, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %mic_level to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mic_level, align 4
  %7 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp6.not = icmp eq i32 %6, %8
  br i1 %cmp6.not, label %if.end.cleanup.sink.split_crit_edge, label %if.then7

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %mic_level to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %mic_level, align 4
  tail call fastcc void @vx2_set_input_level(ptr noundef %1)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then7, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 1, %if.then7 ], [ 0, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mixer_mutex) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !23, !24, !25, !26, !28, !29, !31, !32, !34, !35, !37, !38, !40, !41, !43, !45, !47, !49}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @vx222_ops, !1, !"vx222_ops", i1 false, i1 false}
!1 = !{!"../sound/pci/vx222/vx222_ops.c", i32 991, i32 25}
!2 = !{ptr @vx222_old_ops, !3, !"vx222_old_ops", i1 false, i1 false}
!3 = !{!"../sound/pci/vx222/vx222_ops.c", i32 1011, i32 25}
!4 = !{ptr @vx2_reg_index, !5, !"vx2_reg_index", i1 false, i1 false}
!5 = !{!"../sound/pci/vx222/vx222_ops.c", i32 48, i32 18}
!6 = !{ptr @vx2_reg_offset, !7, !"vx2_reg_offset", i1 false, i1 false}
!7 = !{!"../sound/pci/vx222/vx222_ops.c", i32 22, i32 18}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/pci/vx222/vx222_ops.c", i32 679, i32 6}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/pci/vx222/vx222_ops.c", i32 690, i32 3}
!12 = !{ptr @vx2_akm_gains_lut, !13, !"vx2_akm_gains_lut", i1 false, i1 false}
!13 = !{!"../sound/pci/vx222/vx222_ops.c", i32 513, i32 17}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/pci/vx222/vx222_ops.c", i32 392, i32 3}
!16 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @vx2_load_xilinx_binary._entry, !15, !"_entry", i1 false, i1 false}
!20 = !{ptr @vx2_load_xilinx_binary._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../sound/pci/vx222/vx222_ops.c", i32 167, i32 2}
!23 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @vx2_test_xilinx.__UNIQUE_ID_ddebug238, !22, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/pci/vx222/vx222_ops.c", i32 177, i32 3}
!28 = !{ptr @vx2_test_xilinx.__UNIQUE_ID_ddebug239, !27, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/pci/vx222/vx222_ops.c", i32 186, i32 3}
!31 = !{ptr @vx2_test_xilinx.__UNIQUE_ID_ddebug240, !30, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/pci/vx222/vx222_ops.c", i32 197, i32 4}
!34 = !{ptr @vx2_test_xilinx.__UNIQUE_ID_ddebug241, !33, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/pci/vx222/vx222_ops.c", i32 206, i32 4}
!37 = !{ptr @vx2_test_xilinx.__UNIQUE_ID_ddebug242, !36, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/pci/vx222/vx222_ops.c", i32 210, i32 2}
!40 = !{ptr @vx2_test_xilinx.__UNIQUE_ID_ddebug243, !39, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/pci/vx222/vx222_ops.c", i32 941, i32 11}
!43 = !{ptr @vx_control_input_level, !44, !"vx_control_input_level", i1 false, i1 false}
!44 = !{!"../sound/pci/vx222/vx222_ops.c", i32 937, i32 38}
!45 = !{ptr @db_scale_mic, !46, !"db_scale_mic", i1 false, i1 false}
!46 = !{!"../sound/pci/vx222/vx222_ops.c", i32 851, i32 14}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/pci/vx222/vx222_ops.c", i32 952, i32 11}
!49 = !{ptr @vx_control_mic_level, !50, !"vx_control_mic_level", i1 false, i1 false}
!50 = !{!"../sound/pci/vx222/vx222_ops.c", i32 948, i32 38}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{i64 4814830}
!61 = !{i64 2154298796}
!62 = !{i64 4815050}
!63 = !{i64 2154299872}
!64 = !{i64 2154299023}
!65 = !{i64 4814435}
!66 = !{i64 2154300135}
!67 = !{i64 4814632}
!68 = !{!"branch_weights", i32 1, i32 2000}
!69 = !{!"branch_weights", i32 2000, i32 1}
!70 = !{i64 2154319462}
!71 = !{i64 2154319917}
!72 = !{i64 2154321285}
!73 = !{i64 2154321911}
!74 = !{i64 2148789708, i64 2148789713, i64 2148789726, i64 2148789770, i64 2148789804, i64 2148789825}
