; ModuleID = '/llk/IR_all_yes/sound/pci/pcxhr/pcxhr_core.c_pt.bc'
source_filename = "../sound/pci/pcxhr/pcxhr_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pcxhr_cmd_info = type { i32, i16, i16 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pcxhr_mgr = type { i32, [6 x ptr], ptr, i32, i32, [3 x i32], [40 x i8], ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, %struct.snd_dma_buffer, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.68, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.68 = type { ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.pcxhr_rmh = type { i16, i16, i16, i16, [8 x i32], [16 x i32] }
%struct.snd_pcxhr = type { ptr, ptr, i32, ptr, %struct.pcxhr_pipe, [2 x %struct.pcxhr_pipe], [4 x %struct.pcxhr_stream], [2 x %struct.pcxhr_stream], i32, i32, [2 x i32], [2 x i32], [2 x i32], [4 x [2 x i32]], [4 x [2 x i32]], [2 x i32], [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, [5 x i8] }
%struct.pcxhr_pipe = type { i32, i32, i32 }
%struct.pcxhr_stream = type { ptr, i32, ptr, i32, i64, i32, i32, i32, i32 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
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

@pcxhr_load_xilinx_binary._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 285, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"error loading first xilinx\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pcxhr_load_xilinx_binary\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sound/pci/pcxhr/pcxhr_core.c\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pcxhr_load_xilinx_binary._entry_ptr = internal global ptr @pcxhr_load_xilinx_binary._entry, section ".printk_index", align 4
@pcxhr_load_eeprom_binary.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 96, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"snd_pcxhr\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pcxhr_load_eeprom_binary\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"no need to load eeprom boot\0A\00", [35 x i8] zeroinitializer }, align 32
@pcxhr_dsp_cmds = internal constant { [27 x %struct.pcxhr_cmd_info], [40 x i8] } { [27 x %struct.pcxhr_cmd_info] [%struct.pcxhr_cmd_info { i32 65536, i16 1, i16 0 }, %struct.pcxhr_cmd_info { i32 131072, i16 4, i16 0 }, %struct.pcxhr_cmd_info { i32 262144, i16 1, i16 0 }, %struct.pcxhr_cmd_info { i32 458753, i16 0, i16 0 }, %struct.pcxhr_cmd_info { i32 589824, i16 1, i16 1 }, %struct.pcxhr_cmd_info { i32 606208, i16 1, i16 1 }, %struct.pcxhr_cmd_info { i32 655360, i16 1, i16 1 }, %struct.pcxhr_cmd_info { i32 851968, i16 0, i16 0 }, %struct.pcxhr_cmd_info { i32 917504, i16 0, i16 0 }, %struct.pcxhr_cmd_info { i32 1048576, i16 4, i16 0 }, %struct.pcxhr_cmd_info { i32 1114112, i16 0, i16 0 }, %struct.pcxhr_cmd_info { i32 4194304, i16 0, i16 0 }, %struct.pcxhr_cmd_info { i32 4259840, i16 0, i16 0 }, %struct.pcxhr_cmd_info { i32 4333825, i16 0, i16 0 }, %struct.pcxhr_cmd_info { i32 4653060, i16 0, i16 0 }, %struct.pcxhr_cmd_info { i32 4825088, i16 2, i16 0 }, %struct.pcxhr_cmd_info { i32 4915200, i16 1, i16 0 }, %struct.pcxhr_cmd_info { i32 8396800, i16 0, i16 0 }, %struct.pcxhr_cmd_info { i32 8527872, i16 0, i16 0 }, %struct.pcxhr_cmd_info { i32 8593408, i16 0, i16 0 }, %struct.pcxhr_cmd_info { i32 8650752, i16 0, i16 0 }, %struct.pcxhr_cmd_info { i32 8781824, i16 0, i16 0 }, %struct.pcxhr_cmd_info { i32 8847360, i16 0, i16 0 }, %struct.pcxhr_cmd_info { i32 9445376, i16 2, i16 0 }, %struct.pcxhr_cmd_info { i32 12722176, i16 0, i16 0 }, %struct.pcxhr_cmd_info { i32 393216, i16 5, i16 0 }, %struct.pcxhr_cmd_info { i32 983040, i16 0, i16 0 }], [40 x i8] zeroinitializer }, align 32
@pcxhr_set_pipe_state.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 -29, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pcxhr_set_pipe_state\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"pcxhr_set_pipe_state %s (mask %x current %x)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"START\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"STOP\00", [27 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@pcxhr_set_pipe_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.8, ptr @.str.2, i32 940, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"error pipe start/stop\0A\00", [41 x i8] zeroinitializer }, align 32
@pcxhr_set_pipe_state._entry_ptr = internal global ptr @pcxhr_set_pipe_state._entry, section ".printk_index", align 4
@pcxhr_set_pipe_state.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.8, ptr @.str.2, ptr @.str.13, i8 0, i8 -18, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"***SET PIPE STATE*** TIME = %ld (err = %x)\0A\00", [52 x i8] zeroinitializer }, align 32
@pcxhr_write_io_num_reg_cont.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 -14, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pcxhr_write_io_num_reg_cont\00", [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"IO_NUM_REG_CONT mask %x already is set to %x\0A\00", [50 x i8] zeroinitializer }, align 32
@pcxhr_interrupt.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 1, i8 53, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pcxhr_interrupt\00", [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ERROR TIMER TOGGLE\0A\00", [44 x i8] zeroinitializer }, align 32
@pcxhr_interrupt.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.16, ptr @.str.2, ptr @.str.18, i8 1, i8 59, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"FATAL DSP ERROR : %x\0A\00", [42 x i8] zeroinitializer }, align 32
@pcxhr_threaded_irq.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 1, i8 65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pcxhr_threaded_irq\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"WARNING DSP timestamp old(%d) new(%d)\00", [58 x i8] zeroinitializer }, align 32
@pcxhr_threaded_irq.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.19, ptr @.str.2, ptr @.str.21, i8 1, i8 66, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"-> timestamp wraparound OK: diff=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@pcxhr_threaded_irq.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.19, ptr @.str.2, ptr @.str.22, i8 1, i8 67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"-> resynchronize all streams\0A\00", [34 x i8] zeroinitializer }, align 32
@pcxhr_threaded_irq.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.19, ptr @.str.2, ptr @.str.23, i8 1, i8 69, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ERROR DSP TIME NO DIFF time(%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@pcxhr_threaded_irq.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.19, ptr @.str.2, ptr @.str.24, i8 1, i8 70, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ERROR DSP TIME TOO BIG old(%d) add(%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@pcxhr_threaded_irq.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.19, ptr @.str.2, ptr @.str.25, i8 1, i8 71, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ERROR DSP TIME increased by %d\0A\00", [32 x i8] zeroinitializer }, align 32
@pcxhr_download_dsp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 352, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"dsp loading error at position %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pcxhr_download_dsp\00", [45 x i8] zeroinitializer }, align 32
@pcxhr_download_dsp._entry_ptr = internal global ptr @pcxhr_download_dsp._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@pcxhr_check_reg_bit.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 0, i8 31, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pcxhr_check_reg_bit\00", [44 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ATTENTION! check_reg(%x) loopcount=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@pcxhr_check_reg_bit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.2, i32 132, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"pcxhr_check_reg_bit: timeout, reg=%x, mask=0x%x, val=%x\0A\00", [39 x i8] zeroinitializer }, align 32
@pcxhr_check_reg_bit._entry_ptr = internal global ptr @pcxhr_check_reg_bit._entry, section ".printk_index", align 4
@pcxhr_send_it_dsp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 207, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"pcxhr_send_it_dsp : TIMEOUT CVR\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pcxhr_send_it_dsp\00", [46 x i8] zeroinitializer }, align 32
@pcxhr_send_it_dsp._entry_ptr = internal global ptr @pcxhr_send_it_dsp._entry, section ".printk_index", align 4
@pcxhr_send_it_dsp._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.2, i32 219, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"pcxhr_send_it_dsp : TIMEOUT HF5\0A\00", [63 x i8] zeroinitializer }, align 32
@pcxhr_send_it_dsp._entry_ptr.35 = internal global ptr @pcxhr_send_it_dsp._entry.33, section ".printk_index", align 4
@pcxhr_send_msg_nolock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 607, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"pcxhr_send_message : ED_DSP_CRASHED\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pcxhr_send_msg_nolock\00", [42 x i8] zeroinitializer }, align 32
@pcxhr_send_msg_nolock._entry_ptr = internal global ptr @pcxhr_send_msg_nolock._entry, section ".printk_index", align 4
@pcxhr_send_msg_nolock.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.37, ptr @.str.2, ptr @.str.38, i8 0, i8 -98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MSG cmd[0]=%x (%s)\0A\00", [44 x i8] zeroinitializer }, align 32
@cmd_names = internal constant { [27 x ptr], [52 x i8] } { [27 x ptr] [ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72], [52 x i8] zeroinitializer }, align 32
@pcxhr_send_msg_nolock.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.37, ptr @.str.2, ptr @.str.39, i8 0, i8 -90, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"    cmd[%d]=%x\0A\00", [16 x i8] zeroinitializer }, align 32
@pcxhr_send_msg_nolock._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.37, ptr @.str.2, i32 691, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ERROR RMH: ISR:RXDF=1 (ISR = %x)\0A\00", [62 x i8] zeroinitializer }, align 32
@pcxhr_send_msg_nolock._entry_ptr.42 = internal global ptr @pcxhr_send_msg_nolock._entry.40, section ".printk_index", align 4
@pcxhr_send_msg_nolock._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.37, ptr @.str.2, i32 699, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ERROR RMH(%d): 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@pcxhr_send_msg_nolock._entry_ptr.45 = internal global ptr @pcxhr_send_msg_nolock._entry.43, section ".printk_index", align 4
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CMD_VERSION\00", [20 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CMD_SUPPORTED\00", [18 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CMD_TEST_IT\00", [20 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CMD_SEND_IRQA\00", [18 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"CMD_ACCESS_IO_WRITE\00", [44 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CMD_ACCESS_IO_READ\00", [45 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CMD_ASYNC\00", [22 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CMD_MODIFY_CLOCK\00", [47 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CMD_RESYNC_AUDIO_INPUTS\00", [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"CMD_GET_DSP_RESOURCES\00", [42 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CMD_SET_TIMER_INTERRUPT\00", [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CMD_RES_PIPE\00", [19 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CMD_FREE_PIPE\00", [18 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CMD_CONF_PIPE\00", [18 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CMD_STOP_PIPE\00", [18 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"CMD_PIPE_SAMPLE_COUNT\00", [42 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CMD_CAN_START_PIPE\00", [45 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CMD_START_STREAM\00", [47 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"CMD_STREAM_OUT_LEVEL_ADJUST\00", [36 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CMD_STOP_STREAM\00", [16 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"CMD_UPDATE_R_BUFFERS\00", [43 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"CMD_FORMAT_STREAM_OUT\00", [42 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"CMD_FORMAT_STREAM_IN\00", [43 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CMD_STREAM_SAMPLE_COUNT\00", [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"CMD_AUDIO_LEVEL_ADJUST\00", [41 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CMD_GET_TIME_CODE\00", [46 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CMD_MANAGE_SIGNAL\00", [46 x i8] zeroinitializer }, align 32
@pcxhr_read_rmh_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.2, i32 554, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"ERROR RMH stat: ISR:RXDF=1 (ISR = %x; i=%d )\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pcxhr_read_rmh_status\00", [42 x i8] zeroinitializer }, align 32
@pcxhr_read_rmh_status._entry_ptr = internal global ptr @pcxhr_read_rmh_status._entry, section ".printk_index", align 4
@pcxhr_read_rmh_status.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.74, ptr @.str.2, ptr @.str.75, i8 0, i8 -111, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"    stat[%d]=%x\0A\00", [47 x i8] zeroinitializer }, align 32
@pcxhr_read_rmh_status.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.74, ptr @.str.2, ptr @.str.76, i8 0, i8 -109, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"PCXHR : rmh->stat_len=%x too big\0A\00", [62 x i8] zeroinitializer }, align 32
@pcxhr_pipes_running.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.77, ptr @.str.2, ptr @.str.78, i8 0, i8 -63, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pcxhr_pipes_running\00", [44 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"CMD_PIPE_STATE MBOX2=0x%06x\0A\00", [35 x i8] zeroinitializer }, align 32
@pcxhr_prepair_pipe_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.2, i32 806, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"error pipe start (CMD_CAN_START_PIPE) err=%x!\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pcxhr_prepair_pipe_start\00", [39 x i8] zeroinitializer }, align 32
@pcxhr_prepair_pipe_start._entry_ptr = internal global ptr @pcxhr_prepair_pipe_start._entry, section ".printk_index", align 4
@pcxhr_toggle_pipes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.2, i32 872, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"error pipe start (CMD_CONF_PIPE) err=%x!\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pcxhr_toggle_pipes\00", [45 x i8] zeroinitializer }, align 32
@pcxhr_toggle_pipes._entry_ptr = internal global ptr @pcxhr_toggle_pipes._entry, section ".printk_index", align 4
@pcxhr_toggle_pipes._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.82, ptr @.str.2, i32 885, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"error pipe start (CMD_SEND_IRQA) err=%x!\0A\00", [54 x i8] zeroinitializer }, align 32
@pcxhr_toggle_pipes._entry_ptr.85 = internal global ptr @pcxhr_toggle_pipes._entry.83, section ".printk_index", align 4
@pcxhr_stop_pipes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.2, i32 843, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"error pipe stop (CMD_STOP_PIPE) err=%x!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pcxhr_stop_pipes\00", [47 x i8] zeroinitializer }, align 32
@pcxhr_stop_pipes._entry_ptr = internal global ptr @pcxhr_stop_pipes._entry, section ".printk_index", align 4
@pcxhr_update_timer_pos._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.2, i32 1206, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ERROR new_sample_count too small ??? %ld\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pcxhr_update_timer_pos\00", [41 x i8] zeroinitializer }, align 32
@pcxhr_update_timer_pos._entry_ptr = internal global ptr @pcxhr_update_timer_pos._entry, section ".printk_index", align 4
@pcxhr_stream_read_position.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.90, ptr @.str.2, ptr @.str.91, i8 1, i8 29, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pcxhr_stream_read_position\00", [37 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"stream %c%d : abs samples real(%llu) timer(%llu)\0A\00", [46 x i8] zeroinitializer }, align 32
@pcxhr_msg_thread.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.92, ptr @.str.2, ptr @.str.93, i8 1, i8 4, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pcxhr_msg_thread\00", [47 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"PCXHR_IRQ_FREQ_CHANGE event occurred\0A\00", [58 x i8] zeroinitializer }, align 32
@pcxhr_msg_thread.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.92, ptr @.str.2, ptr @.str.94, i8 1, i8 5, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"PCXHR_IRQ_TIME_CODE event occurred\0A\00", [60 x i8] zeroinitializer }, align 32
@pcxhr_msg_thread.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.92, ptr @.str.2, ptr @.str.95, i8 1, i8 6, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"PCXHR_IRQ_NOTIFY event occurred\0A\00", [63 x i8] zeroinitializer }, align 32
@pcxhr_msg_thread.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.92, ptr @.str.2, ptr @.str.96, i8 1, i8 7, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"CMD_TEST_IT : err=%x, stat=%x\0A\00", [33 x i8] zeroinitializer }, align 32
@pcxhr_msg_thread.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.92, ptr @.str.2, ptr @.str.97, i8 1, i8 8, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"PCXHR_IRQ_ASYNC event occurred\0A\00", [32 x i8] zeroinitializer }, align 32
@pcxhr_msg_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.92, ptr @.str.2, i32 1067, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ERROR pcxhr_msg_thread=%x;\0A\00", [36 x i8] zeroinitializer }, align 32
@pcxhr_msg_thread._entry_ptr = internal global ptr @pcxhr_msg_thread._entry, section ".printk_index", align 4
@pcxhr_msg_thread.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.92, ptr @.str.2, ptr @.str.99, i8 1, i8 14, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"TASKLET : End%sPipe %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Record\00", [25 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Play\00", [27 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Pipe\00", [27 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Stream\00", [25 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Audio\00", [26 x i8] zeroinitializer }, align 32
@pcxhr_handle_async_err.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.105, ptr @.str.2, ptr @.str.106, i8 0, i8 -1, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pcxhr_handle_async_err\00", [41 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"CMD_ASYNC : Error %s %s Pipe %d err=%x\0A\00", [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 3585, i64 3600]
@__sancov_gen_cov_switch_values.107 = internal global [4 x i64] [i64 2, i64 32, i64 3585, i64 3600]
@__sancov_gen_cov_switch_values.108 = internal global [4 x i64] [i64 2, i64 32, i64 3585, i64 3600]
@__sancov_gen_cov_switch_values.109 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 285, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 387, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant [15 x i8] c"pcxhr_dsp_cmds\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 469, i32 36 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 908, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 940, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 953, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 967, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1237, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1260, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1283, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1287, i32 5 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1292, i32 5 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1299, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1303, i32 4 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1308, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 351, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 123, i32 5 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 130, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 207, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 218, i32 4 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 606, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 633, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant [10 x i8] c"cmd_names\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 500, i32 27 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 663, i32 5 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 690, i32 4 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 698, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 501, i32 20 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 502, i32 21 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 503, i32 20 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 504, i32 21 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 505, i32 27 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 506, i32 26 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 507, i32 18 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 508, i32 24 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 509, i32 30 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 510, i32 28 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 511, i32 30 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 512, i32 20 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 513, i32 21 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 514, i32 21 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 515, i32 21 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 516, i32 28 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 517, i32 26 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 518, i32 24 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 519, i32 34 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 520, i32 23 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 521, i32 27 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 522, i32 28 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 523, i32 27 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 524, i32 30 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 525, i32 29 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 526, i32 25 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 527, i32 25 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 552, i32 4 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 582, i32 4 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 588, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 774, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 803, i32 5 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 870, i32 5 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 883, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 841, i32 5 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1204, i32 4 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1137, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1041, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1044, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1047, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1053, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1057, i32 3 }
@___asan_gen_.431 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1066, i32 4 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1079, i32 5 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1010, i32 22 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1011, i32 24 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1012, i32 23 }
@___asan_gen_.458 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.459 = private constant [32 x i8] c"../sound/pci/pcxhr/pcxhr_core.c\00", align 1
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 1021, i32 2 }
@llvm.compiler.used = appending global [133 x ptr] [ptr @pcxhr_check_reg_bit._entry, ptr @pcxhr_check_reg_bit._entry_ptr, ptr @pcxhr_download_dsp._entry, ptr @pcxhr_download_dsp._entry_ptr, ptr @pcxhr_load_xilinx_binary._entry, ptr @pcxhr_load_xilinx_binary._entry_ptr, ptr @pcxhr_msg_thread._entry, ptr @pcxhr_msg_thread._entry_ptr, ptr @pcxhr_prepair_pipe_start._entry, ptr @pcxhr_prepair_pipe_start._entry_ptr, ptr @pcxhr_read_rmh_status._entry, ptr @pcxhr_read_rmh_status._entry_ptr, ptr @pcxhr_send_it_dsp._entry, ptr @pcxhr_send_it_dsp._entry.33, ptr @pcxhr_send_it_dsp._entry_ptr, ptr @pcxhr_send_it_dsp._entry_ptr.35, ptr @pcxhr_send_msg_nolock._entry, ptr @pcxhr_send_msg_nolock._entry.40, ptr @pcxhr_send_msg_nolock._entry.43, ptr @pcxhr_send_msg_nolock._entry_ptr, ptr @pcxhr_send_msg_nolock._entry_ptr.42, ptr @pcxhr_send_msg_nolock._entry_ptr.45, ptr @pcxhr_set_pipe_state._entry, ptr @pcxhr_set_pipe_state._entry_ptr, ptr @pcxhr_stop_pipes._entry, ptr @pcxhr_stop_pipes._entry_ptr, ptr @pcxhr_toggle_pipes._entry, ptr @pcxhr_toggle_pipes._entry.83, ptr @pcxhr_toggle_pipes._entry_ptr, ptr @pcxhr_toggle_pipes._entry_ptr.85, ptr @pcxhr_update_timer_pos._entry, ptr @pcxhr_update_timer_pos._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @pcxhr_dsp_cmds, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @cmd_names, ptr @.str.39, ptr @.str.41, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.84, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106], section "llvm.metadata"
@0 = internal global [117 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcxhr_load_xilinx_binary._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcxhr_dsp_cmds to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcxhr_set_pipe_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcxhr_download_dsp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcxhr_check_reg_bit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcxhr_send_it_dsp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcxhr_send_it_dsp._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcxhr_send_msg_nolock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmd_names to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcxhr_send_msg_nolock._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcxhr_send_msg_nolock._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcxhr_read_rmh_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcxhr_prepair_pipe_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcxhr_toggle_pipes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcxhr_toggle_pipes._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcxhr_stop_pipes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcxhr_update_timer_pos._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcxhr_msg_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pcxhr_reset_xilinx_com(ptr nocapture noundef readonly %mgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !244
  tail call void @arm_heavy_mb() #5
  %arrayidx = getelementptr %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, 108
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %2, i32 2121665552) #5, !srcloc !245
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pcxhr_reset_dsp(ptr nocapture noundef readonly %mgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %1, 104
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add1.i to ptr
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %2) #5, !srcloc !246
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !247
  %4 = and i32 %3, -196609
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !248
  tail call void @arm_heavy_mb() #5
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  %add6.i = add i32 %6, 104
  %and7.i = and i32 %add6.i, 1048575
  %add8.i = or i32 %and7.i, -18874368
  %7 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %7, i32 %4) #5, !srcloc !245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !249
  tail call void @arm_heavy_mb() #5
  %arrayidx = getelementptr %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 5, i32 2
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, 32
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %10 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 0) #5, !srcloc !250
  tail call void @msleep(i32 noundef 2) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !251
  tail call void @arm_heavy_mb() #5
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %add6 = add i32 %12, 32
  %and7 = and i32 %add6, 1048575
  %add8 = or i32 %and7, -18874368
  %13 = inttoptr i32 %add8 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 3) #5, !srcloc !250
  tail call void @msleep(i32 noundef 2) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !252
  tail call void @arm_heavy_mb() #5
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %add14 = add i32 %15, 64
  %and15 = and i32 %add14, 1048575
  %add16 = or i32 %and15, -18874368
  %16 = inttoptr i32 %add16 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %16, i32 0) #5, !srcloc !245
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pcxhr_enable_dsp(ptr nocapture noundef readonly %mgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %1, 104
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add1.i to ptr
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %2) #5, !srcloc !246
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !247
  %4 = or i32 %3, 196608
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !248
  tail call void @arm_heavy_mb() #5
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  %add6.i = add i32 %6, 104
  %and7.i = and i32 %add6.i, 1048575
  %add8.i = or i32 %and7.i, -18874368
  %7 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %7, i32 %4) #5, !srcloc !245
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pcxhr_load_xilinx_binary(ptr nocapture noundef readonly %mgr, ptr nocapture noundef readonly %xilinx, i32 noundef %second) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, 108
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %2) #5, !srcloc !246
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !253
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %second)
  %tobool.not = icmp eq i32 %second, 0
  br i1 %tobool.not, label %entry.if.end14_crit_edge, label %if.then

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then:                                          ; preds = %entry
  %and3 = and i32 %4, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %cmp = icmp eq i32 %and3, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %pci = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  %5 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %or = or i32 %4, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !254
  tail call void @arm_heavy_mb() #5
  %7 = tail call i32 @llvm.bswap.i32(i32 %or)
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add10 = add i32 %9, 108
  %and11 = and i32 %add10, 1048575
  %add12 = or i32 %and11, -18874368
  %10 = inttoptr i32 %add12 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %10, i32 %7) #5, !srcloc !245
  tail call void @msleep(i32 noundef 2) #5
  br label %if.end14

if.end14:                                         ; preds = %if.end, %entry.if.end14_crit_edge
  %chipsc.0 = phi i32 [ %or, %if.end ], [ %4, %entry.if.end14_crit_edge ]
  %11 = ptrtoint ptr %xilinx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %xilinx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp1684.not = icmp eq i32 %12, 0
  br i1 %cmp1684.not, label %if.end14.for.end_crit_edge, label %for.body.preheader

if.end14.for.end_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.preheader:                               ; preds = %if.end14
  %data15 = getelementptr inbounds %struct.firmware, ptr %xilinx, i32 0, i32 1
  %13 = ptrtoint ptr %data15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data15, align 4
  br label %for.body

for.body:                                         ; preds = %while.end.for.body_crit_edge, %for.body.preheader
  %i.087 = phi i32 [ %inc, %while.end.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %chipsc.186 = phi i32 [ %or34, %while.end.for.body_crit_edge ], [ %chipsc.0, %for.body.preheader ]
  %image.085 = phi ptr [ %incdec.ptr, %while.end.for.body_crit_edge ], [ %14, %for.body.preheader ]
  %15 = ptrtoint ptr %image.085 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %image.085, align 1
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %for.body
  %chipsc.283 = phi i32 [ %chipsc.186, %for.body ], [ %or34, %while.body.while.body_crit_edge ]
  %mask.082 = phi i8 [ -128, %for.body ], [ %25, %while.body.while.body_crit_edge ]
  %and18 = and i32 %chipsc.283, -83886081
  %and2081 = and i8 %mask.082, %16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and2081)
  %tobool21.not = icmp eq i8 %and2081, 0
  %or23 = or i32 %and18, 67108864
  %spec.select = select i1 %tobool21.not, i32 %and18, i32 %or23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !255
  tail call void @arm_heavy_mb() #5
  %17 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  %add30 = add i32 %19, 108
  %and31 = and i32 %add30, 1048575
  %add32 = or i32 %and31, -18874368
  %20 = inttoptr i32 %add32 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %20, i32 %17) #5, !srcloc !245
  %or34 = or i32 %spec.select, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !256
  tail call void @arm_heavy_mb() #5
  %21 = tail call i32 @llvm.bswap.i32(i32 %or34)
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx, align 4
  %add40 = add i32 %23, 108
  %and41 = and i32 %add40, 1048575
  %add42 = or i32 %and41, -18874368
  %24 = inttoptr i32 %add42 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %24, i32 %21) #5, !srcloc !245
  %25 = lshr i8 %mask.082, 1
  %tobool17.not = icmp ult i8 %mask.082, 2
  br i1 %tobool17.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %while.body
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 308, i32 noundef 0) #5
  %call.i = tail call i32 @__cond_resched() #5
  %inc = add nuw i32 %i.087, 1
  %incdec.ptr = getelementptr i8, ptr %image.085, i32 1
  %26 = ptrtoint ptr %xilinx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %xilinx, align 4
  %cmp16 = icmp ult i32 %inc, %27
  br i1 %cmp16, label %while.end.for.body_crit_edge, label %while.end.for.end_crit_edge

while.end.for.end_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

while.end.for.body_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %while.end.for.end_crit_edge, %if.end14.for.end_crit_edge
  %chipsc.1.lcssa = phi i32 [ %chipsc.0, %if.end14.for.end_crit_edge ], [ %or34, %while.end.for.end_crit_edge ]
  %and48 = and i32 %chipsc.1.lcssa, -83886081
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !257
  tail call void @arm_heavy_mb() #5
  %28 = tail call i32 @llvm.bswap.i32(i32 %and48)
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx, align 4
  %add54 = add i32 %30, 108
  %and55 = and i32 %add54, 1048575
  %add56 = or i32 %and55, -18874368
  %31 = inttoptr i32 %add56 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %31, i32 %28) #5, !srcloc !245
  tail call void @msleep(i32 noundef 2) #5
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pcxhr_load_eeprom_binary(ptr nocapture noundef readonly %mgr, ptr nocapture noundef readonly %eeprom) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, 64
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %2) #5, !srcloc !246
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !258
  %4 = and i32 %3, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %arrayidx34 = getelementptr %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 5, i32 2
  %5 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx34, align 4
  %and36 = and i32 %6, 1048575
  %add37 = or i32 %and36, -18874368
  %7 = inttoptr i32 %add37 to ptr
  br i1 %tobool.not, label %do.body30, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 -121) #5, !srcloc !250
  tail call void @msleep(i32 noundef 2) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !259
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx34, align 4
  %and17 = and i32 %9, 1048575
  %add18 = or i32 %and17, -18874368
  %10 = inttoptr i32 %add18 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 7) #5, !srcloc !250
  tail call void @msleep(i32 noundef 2) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcxhr_load_eeprom_binary.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcxhr_load_eeprom_binary, %if.then26)) #5
          to label %cleanup [label %if.then26], !srcloc !260

if.then26:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %pci = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  %11 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcxhr_load_eeprom_binary.__UNIQUE_ID_ddebug239, ptr noundef %dev, ptr noundef nonnull @.str.7) #5
  br label %cleanup

do.body30:                                        ; preds = %entry
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 7) #5, !srcloc !250
  %call39 = tail call fastcc i32 @pcxhr_download_dsp(ptr noundef %mgr, ptr noundef %eeprom)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %do.body30.cleanup_crit_edge

do.body30.cleanup_crit_edge:                      ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end42:                                         ; preds = %do.body30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %add1.i = add i32 %13, 20
  br label %do.body.i

do.body.i:                                        ; preds = %if.end20.i.do.body.i_crit_edge, %if.end42
  %i.0.i = phi i32 [ 0, %if.end42 ], [ %inc.i, %if.end20.i.do.body.i_crit_edge ]
  %14 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx34, align 4
  %add2.i = add i32 %15, 8
  %and.i = and i32 %add2.i, 1048575
  %add3.i = or i32 %and.i, -18874368
  %16 = inttoptr i32 %add3.i to ptr
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #5, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !262
  %and61.i = and i8 %17, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and61.i)
  %cmp8.i.not = icmp eq i8 %and61.i, 0
  br i1 %cmp8.i.not, label %if.end20.i, label %if.then.i

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %i.0.i)
  %cmp10.i = icmp sgt i32 %i.0.i, 100
  br i1 %cmp10.i, label %do.body13.i, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body13.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcxhr_check_reg_bit.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcxhr_load_eeprom_binary, %if.then18.i)) #5
          to label %cleanup [label %if.then18.i], !srcloc !260

if.then18.i:                                      ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #7
  %pci.i = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  %18 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pci.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcxhr_check_reg_bit.__UNIQUE_ID_ddebug238, ptr noundef %dev.i, ptr noundef nonnull @.str.29, i32 noundef 8, i32 noundef %i.0.i) #5
  br label %cleanup

if.end20.i:                                       ; preds = %do.body.i
  %inc.i = add i32 %i.0.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add1.i, %20
  %cmp22.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp22.i, label %if.end20.i.do.body.i_crit_edge, label %do.end27.i

if.end20.i.do.body.i_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

do.end27.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  %pci28.i = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  %21 = ptrtoint ptr %pci28.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pci28.i, align 4
  %dev29.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %conv31.i = zext i8 %17 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev29.i, ptr noundef nonnull @.str.30, i32 noundef 8, i32 noundef 16, i32 noundef %conv31.i) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end27.i, %if.then18.i, %do.body13.i, %if.then.i.cleanup_crit_edge, %do.body30.cleanup_crit_edge, %if.then26, %do.body
  %retval.0 = phi i32 [ 0, %if.then26 ], [ %call39, %do.body30.cleanup_crit_edge ], [ 0, %do.body ], [ -5, %do.end27.i ], [ 0, %if.then18.i ], [ 0, %if.then.i.cleanup_crit_edge ], [ 0, %do.body13.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pcxhr_download_dsp(ptr nocapture noundef readonly %mgr, ptr nocapture noundef readonly %dsp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dsp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dsp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp ne i32 %1, 0
  %rem = urem i32 %1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  %or.cond = and i1 %cmp, %tobool.not
  br i1 %or.cond, label %if.end3, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %entry
  %data4 = getelementptr inbounds %struct.firmware, ptr %dsp, i32 0, i32 1
  %2 = ptrtoint ptr %data4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data4, align 4
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %do.end, label %for.cond.preheader, !prof !263

for.cond.preheader:                               ; preds = %if.end3
  %4 = ptrtoint ptr %dsp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dsp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp32123.not = icmp eq i32 %5, 0
  br i1 %cmp32123.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %arrayidx.i = getelementptr %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 5, i32 2
  %pci.i = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  br label %for.body

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 332, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

for.body:                                         ; preds = %do.body56.for.body_crit_edge, %for.body.lr.ph
  %6 = phi i32 [ %5, %for.body.lr.ph ], [ %44, %do.body56.for.body_crit_edge ]
  %i.0124 = phi i32 [ 0, %for.body.lr.ph ], [ %add86, %do.body56.for.body_crit_edge ]
  %7 = ptrtoint ptr %data4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data4, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 %i.0124
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0124)
  %cmp34 = icmp eq i32 %i.0124, 0
  br i1 %cmp34, label %if.then35, label %for.body.if.end49_crit_edge

for.body.if.end49_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

if.then35:                                        ; preds = %for.body
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %add.ptr, align 1
  %conv = zext i8 %10 to i32
  %shl = shl nuw nsw i32 %conv, 16
  %arrayidx36 = getelementptr i8, ptr %add.ptr, i32 1
  %11 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx36, align 1
  %conv37 = zext i8 %12 to i32
  %shl38 = shl nuw nsw i32 %conv37, 8
  %add = or i32 %shl38, %shl
  %arrayidx39 = getelementptr i8, ptr %add.ptr, i32 2
  %13 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx39, align 1
  %conv40 = zext i8 %14 to i32
  %add41 = or i32 %add, %conv40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add41)
  %tobool42.not = icmp eq i32 %add41, 0
  br i1 %tobool42.not, label %if.then35.if.end49_crit_edge, label %land.lhs.true

if.then35.if.end49_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

land.lhs.true:                                    ; preds = %if.then35
  %15 = mul nuw nsw i32 %add41, 3
  %mul = add nuw nsw i32 %15, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %mul)
  %cmp45.not = icmp eq i32 %6, %mul
  br i1 %cmp45.not, label %land.lhs.true.if.end49_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.if.end49_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

if.end49:                                         ; preds = %land.lhs.true.if.end49_crit_edge, %if.then35.if.end49_crit_edge, %for.body.if.end49_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %add1.i = add i32 %16, 20
  br label %do.body.i

do.body.i:                                        ; preds = %if.end20.i.do.body.i_crit_edge, %if.end49
  %i.0.i = phi i32 [ 0, %if.end49 ], [ %inc.i, %if.end20.i.do.body.i_crit_edge ]
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  %add2.i = add i32 %18, 8
  %and.i = and i32 %add2.i, 1048575
  %add3.i = or i32 %and.i, -18874368
  %19 = inttoptr i32 %add3.i to ptr
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %19) #5, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !262
  %and61.i = and i8 %20, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and61.i)
  %cmp8.i.not = icmp eq i8 %and61.i, 0
  br i1 %cmp8.i.not, label %if.end20.i, label %if.then.i

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %i.0.i)
  %cmp10.i = icmp sgt i32 %i.0.i, 100
  br i1 %cmp10.i, label %do.body13.i, label %if.then.i.do.body56_crit_edge

if.then.i.do.body56_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body56

do.body13.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcxhr_check_reg_bit.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcxhr_download_dsp, %if.then18.i)) #5
          to label %do.body56 [label %if.then18.i], !srcloc !260

if.then18.i:                                      ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pci.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcxhr_check_reg_bit.__UNIQUE_ID_ddebug238, ptr noundef %dev.i, ptr noundef nonnull @.str.29, i32 noundef 8, i32 noundef %i.0.i) #5
  br label %do.body56

if.end20.i:                                       ; preds = %do.body.i
  %inc.i = add i32 %i.0.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add1.i, %23
  %cmp22.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp22.i, label %if.end20.i.do.body.i_crit_edge, label %do.end54

if.end20.i.do.body.i_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

do.end54:                                         ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pci.i, align 4
  %dev29.i = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %conv31.i = zext i8 %20 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev29.i, ptr noundef nonnull @.str.30, i32 noundef 8, i32 noundef 4, i32 noundef %conv31.i) #8
  %26 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pci.i, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %i.0124) #8
  br label %cleanup

do.body56:                                        ; preds = %if.then18.i, %do.body13.i, %if.then.i.do.body56_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !264
  tail call void @arm_heavy_mb() #5
  %28 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %add.ptr, align 1
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i, align 4
  %add61 = add i32 %31, 20
  %and = and i32 %add61, 1048575
  %add62 = or i32 %and, -18874368
  %32 = inttoptr i32 %add62 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 %29) #5, !srcloc !250
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !265
  tail call void @arm_heavy_mb() #5
  %arrayidx67 = getelementptr i8, ptr %add.ptr, i32 1
  %33 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx67, align 1
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i, align 4
  %add70 = add i32 %36, 24
  %and71 = and i32 %add70, 1048575
  %add72 = or i32 %and71, -18874368
  %37 = inttoptr i32 %add72 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %37, i8 %34) #5, !srcloc !250
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !266
  tail call void @arm_heavy_mb() #5
  %arrayidx77 = getelementptr i8, ptr %add.ptr, i32 2
  %38 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx77, align 1
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.i, align 4
  %add80 = add i32 %41, 28
  %and81 = and i32 %add80, 1048575
  %add82 = or i32 %and81, -18874368
  %42 = inttoptr i32 %add82 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 %39) #5, !srcloc !250
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 361, i32 noundef 0) #5
  %call.i = tail call i32 @__cond_resched() #5
  %add86 = add i32 %i.0124, 3
  %43 = ptrtoint ptr %dsp to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dsp, align 4
  %cmp32 = icmp ult i32 %add86, %44
  br i1 %cmp32, label %do.body56.for.body_crit_edge, label %do.body56.for.end_crit_edge

do.body56.for.end_crit_edge:                      ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

do.body56.for.body_crit_edge:                     ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %do.body56.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @msleep(i32 noundef 2) #5
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end54, %land.lhs.true.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -5, %do.end54 ], [ 0, %for.end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pcxhr_check_reg_bit(ptr nocapture noundef readonly %mgr, i32 noundef %reg, i8 noundef zeroext %mask, i8 noundef zeroext %bit, ptr nocapture noundef %read) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add1 = add i32 %0, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %reg)
  %cmp = icmp ugt i32 %reg, 32
  %cond = select i1 %cmp, i32 1, i32 2
  %arrayidx = getelementptr %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 5, i32 %cond
  br label %do.body

do.body:                                          ; preds = %if.end20.do.body_crit_edge, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %if.end20.do.body_crit_edge ]
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %add2 = add i32 %2, %reg
  %and = and i32 %add2, 1048575
  %add3 = or i32 %and, -18874368
  %3 = inttoptr i32 %add3 to ptr
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %3) #5, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !262
  %5 = ptrtoint ptr %read to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %read, align 1
  %and61 = and i8 %4, %mask
  call void @__sanitizer_cov_trace_cmp1(i8 %and61, i8 %bit)
  %cmp8 = icmp eq i8 %and61, %bit
  br i1 %cmp8, label %if.then, label %if.end20

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %i.0)
  %cmp10 = icmp sgt i32 %i.0, 100
  br i1 %cmp10, label %do.body13, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body13:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcxhr_check_reg_bit.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcxhr_check_reg_bit, %if.then18)) #5
          to label %cleanup [label %if.then18], !srcloc !260

if.then18:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #7
  %pci = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  %6 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcxhr_check_reg_bit.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %reg, i32 noundef %i.0) #5
  br label %cleanup

if.end20:                                         ; preds = %do.body
  %inc = add i32 %i.0, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add1, %8
  %cmp22 = icmp sgt i32 %sub, -1
  br i1 %cmp22, label %if.end20.do.body_crit_edge, label %do.end27

if.end20.do.body_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.end27:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %conv5.le = zext i8 %mask to i32
  %pci28 = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  %9 = ptrtoint ptr %pci28 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pci28, align 4
  %dev29 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %conv31 = zext i8 %4 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev29, ptr noundef nonnull @.str.30, i32 noundef %reg, i32 noundef %conv5.le, i32 noundef %conv31) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end27, %if.then18, %do.body13, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end27 ], [ 0, %if.then18 ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %do.body13 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pcxhr_load_boot_binary(ptr nocapture noundef readonly %mgr, ptr nocapture noundef readonly %boot) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %addr = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 19, i32 2
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %addr, align 4
  %and = and i32 %1, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body23, label %do.end, !prof !267

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 410, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

do.body23:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !268
  tail call void @arm_heavy_mb() #5
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %3 = shl i32 %2, 8
  %arrayidx = getelementptr %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, 68
  %and26 = and i32 %add, 1048575
  %add27 = or i32 %and26, -18874368
  %6 = inttoptr i32 %add27 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %6, i32 %3) #5, !srcloc !245
  %call28 = tail call fastcc i32 @pcxhr_send_it_dsp(ptr noundef %mgr, i32 noundef 68108, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %do.body32, label %do.body23.cleanup_crit_edge

do.body23.cleanup_crit_edge:                      ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body32:                                        ; preds = %do.body23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !269
  tail call void @arm_heavy_mb() #5
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %add37 = add i32 %8, 64
  %and38 = and i32 %add37, 1048575
  %add39 = or i32 %and38, -18874368
  %9 = inttoptr i32 %add39 to ptr
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %9) #5, !srcloc !246
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !270
  %11 = and i32 %10, -16777217
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %add46 = add i32 %13, 64
  %and47 = and i32 %add46, 1048575
  %add48 = or i32 %and47, -18874368
  %14 = inttoptr i32 %add48 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %14, i32 %11) #5, !srcloc !245
  %call50 = tail call fastcc i32 @pcxhr_download_dsp(ptr noundef %mgr, ptr noundef %boot)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %do.body32.cleanup_crit_edge

do.body32.cleanup_crit_edge:                      ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end53:                                         ; preds = %do.body32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %add1.i = add i32 %15, 20
  br label %do.body.i

do.body.i:                                        ; preds = %if.end20.i.do.body.i_crit_edge, %if.end53
  %i.0.i = phi i32 [ 0, %if.end53 ], [ %inc.i, %if.end20.i.do.body.i_crit_edge ]
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %add2.i = add i32 %17, 64
  %and.i = and i32 %add2.i, 1048575
  %add3.i = or i32 %and.i, -18874368
  %18 = inttoptr i32 %add3.i to ptr
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %18) #5, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !262
  %and61.i = and i8 %19, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and61.i)
  %cmp8.i.not = icmp eq i8 %and61.i, 0
  br i1 %cmp8.i.not, label %if.end20.i, label %if.then.i

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %i.0.i)
  %cmp10.i = icmp sgt i32 %i.0.i, 100
  br i1 %cmp10.i, label %do.body13.i, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body13.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcxhr_check_reg_bit.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcxhr_load_boot_binary, %if.then18.i)) #5
          to label %cleanup [label %if.then18.i], !srcloc !260

if.then18.i:                                      ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #7
  %pci.i = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  %20 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pci.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcxhr_check_reg_bit.__UNIQUE_ID_ddebug238, ptr noundef %dev.i, ptr noundef nonnull @.str.29, i32 noundef 64, i32 noundef %i.0.i) #5
  br label %cleanup

if.end20.i:                                       ; preds = %do.body.i
  %inc.i = add i32 %i.0.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add1.i, %22
  %cmp22.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp22.i, label %if.end20.i.do.body.i_crit_edge, label %do.end27.i

if.end20.i.do.body.i_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

do.end27.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  %pci28.i = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  %23 = ptrtoint ptr %pci28.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pci28.i, align 4
  %dev29.i = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %conv31.i = zext i8 %19 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev29.i, ptr noundef nonnull @.str.30, i32 noundef 64, i32 noundef 1, i32 noundef %conv31.i) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end27.i, %if.then18.i, %do.body13.i, %if.then.i.cleanup_crit_edge, %do.body32.cleanup_crit_edge, %do.body23.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call28, %do.body23.cleanup_crit_edge ], [ %call50, %do.body32.cleanup_crit_edge ], [ -5, %do.end27.i ], [ 0, %if.then18.i ], [ 0, %if.then.i.cleanup_crit_edge ], [ 0, %do.body13.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pcxhr_send_it_dsp(ptr nocapture noundef readonly %mgr, i32 noundef %itdsp, i32 noundef %atomic) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %itdsp, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !271
  tail call void @arm_heavy_mb() #5
  %arrayidx = getelementptr %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, 64
  %and1 = and i32 %add, 1048575
  %add2 = or i32 %and1, -18874368
  %2 = inttoptr i32 %add2 to ptr
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %2) #5, !srcloc !246
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !272
  %4 = and i32 %3, -16777217
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %add7 = add i32 %6, 64
  %and8 = and i32 %add7, 1048575
  %add9 = or i32 %and8, -18874368
  %7 = inttoptr i32 %add9 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %7, i32 %4) #5, !srcloc !245
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %and11 = and i32 %itdsp, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %cmp = icmp eq i32 %and11, 0
  br i1 %cmp, label %if.then12, label %if.end.if.end34_crit_edge

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %and13 = and i32 %itdsp, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %spec.select = select i1 %tobool14.not, i8 7, i8 15
  %and18 = lshr i32 %itdsp, 5
  %8 = trunc i32 %and18 to i8
  %9 = and i8 %8, 16
  %10 = or i8 %9, %spec.select
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !273
  tail call void @arm_heavy_mb() #5
  %arrayidx29 = getelementptr %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 5, i32 2
  %11 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx29, align 4
  %and31 = and i32 %12, 1048575
  %add32 = or i32 %and31, -18874368
  %13 = inttoptr i32 %add32 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %10) #5, !srcloc !250
  br label %if.end34

if.end34:                                         ; preds = %if.then12, %if.end.if.end34_crit_edge
  %14 = trunc i32 %itdsp to i8
  %15 = lshr i8 %14, 1
  %conv37 = or i8 %15, -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !274
  tail call void @arm_heavy_mb() #5
  %arrayidx42 = getelementptr %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 5, i32 2
  %16 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx42, align 4
  %add43 = add i32 %17, 4
  %and44 = and i32 %add43, 1048575
  %add45 = or i32 %and44, -18874368
  %18 = inttoptr i32 %add45 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 %conv37) #5, !srcloc !250
  %and47 = and i32 %itdsp, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.end34.if.end54_crit_edge, label %if.then49

if.end34.if.end54_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end54

if.then49:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %atomic)
  %tobool50.not = icmp eq i32 %atomic, 0
  br i1 %tobool50.not, label %if.end54.thread, label %while.body.preheader

while.body.preheader:                             ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 214748000) #5
  br label %if.end54

if.end54:                                         ; preds = %while.body.preheader, %if.end34.if.end54_crit_edge
  %and55 = and i32 %itdsp, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.end54.if.end68_crit_edge, label %if.then57

if.end54.if.end68_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end68

if.end54.thread:                                  ; preds = %if.then49
  tail call void @msleep(i32 noundef 25) #5
  %and55135 = and i32 %itdsp, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55135)
  %tobool56.not136 = icmp eq i32 %and55135, 0
  br i1 %tobool56.not136, label %if.end54.thread.if.end68_crit_edge, label %if.end54.thread.if.else66_crit_edge

if.end54.thread.if.else66_crit_edge:              ; preds = %if.end54.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else66

if.end54.thread.if.end68_crit_edge:               ; preds = %if.end54.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end68

if.then57:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %atomic)
  %tobool58.not = icmp eq i32 %atomic, 0
  br i1 %tobool58.not, label %if.then57.if.else66_crit_edge, label %if.then57.while.body64_crit_edge

if.then57.while.body64_crit_edge:                 ; preds = %if.then57
  br label %while.body64

if.then57.if.else66_crit_edge:                    ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else66

while.body64:                                     ; preds = %while.body64.while.body64_crit_edge, %if.then57.while.body64_crit_edge
  %__ms60.0157 = phi i32 [ %dec62, %while.body64.while.body64_crit_edge ], [ 65, %if.then57.while.body64_crit_edge ]
  %dec62 = add nsw i32 %__ms60.0157, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748000) #5
  %tobool63.not = icmp eq i32 %dec62, 0
  br i1 %tobool63.not, label %while.body64.if.end68_crit_edge, label %while.body64.while.body64_crit_edge

while.body64.while.body64_crit_edge:              ; preds = %while.body64
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body64

while.body64.if.end68_crit_edge:                  ; preds = %while.body64
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end68

if.else66:                                        ; preds = %if.then57.if.else66_crit_edge, %if.end54.thread.if.else66_crit_edge
  tail call void @msleep(i32 noundef 25) #5
  br label %if.end68

if.end68:                                         ; preds = %if.else66, %while.body64.if.end68_crit_edge, %if.end54.thread.if.end68_crit_edge, %if.end54.if.end68_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %45 = load volatile i32, ptr @jiffies, align 128
  %add1.i = add i32 %45, 20
  br label %do.body.i

do.body.i:                                        ; preds = %if.end20.i.do.body.i_crit_edge, %if.end68
  %i.0.i = phi i32 [ 0, %if.end68 ], [ %inc.i, %if.end20.i.do.body.i_crit_edge ]
  %46 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx42, align 4
  %add2.i = add i32 %47, 4
  %and.i = and i32 %add2.i, 1048575
  %add3.i = or i32 %and.i, -18874368
  %48 = inttoptr i32 %add3.i to ptr
  %49 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %48) #5, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !262
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %49)
  %cmp8.i = icmp sgt i8 %49, -1
  br i1 %cmp8.i, label %if.then.i, label %if.end20.i

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %i.0.i)
  %cmp10.i = icmp sgt i32 %i.0.i, 100
  br i1 %cmp10.i, label %do.body13.i, label %if.then.i.if.end75_crit_edge

if.then.i.if.end75_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end75

do.body13.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcxhr_check_reg_bit.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcxhr_send_it_dsp, %if.then18.i)) #5
          to label %if.end75 [label %if.then18.i], !srcloc !260

if.then18.i:                                      ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #7
  %pci.i = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  %50 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pci.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcxhr_check_reg_bit.__UNIQUE_ID_ddebug238, ptr noundef %dev.i, ptr noundef nonnull @.str.29, i32 noundef 4, i32 noundef %i.0.i) #5
  br label %if.end75

if.end20.i:                                       ; preds = %do.body.i
  %inc.i = add i32 %i.0.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %52 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add1.i, %52
  %cmp22.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp22.i, label %if.end20.i.do.body.i_crit_edge, label %do.end74

if.end20.i.do.body.i_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

do.end74:                                         ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  %pci28.i = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  %53 = ptrtoint ptr %pci28.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pci28.i, align 4
  %dev29.i = getelementptr inbounds %struct.pci_dev, ptr %54, i32 0, i32 44
  %conv31.i = zext i8 %49 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev29.i, ptr noundef nonnull @.str.30, i32 noundef 4, i32 noundef 128, i32 noundef %conv31.i) #8
  %55 = ptrtoint ptr %pci28.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pci28.i, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %56, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31) #8
  br label %cleanup

if.end75:                                         ; preds = %if.then18.i, %do.body13.i, %if.then.i.if.end75_crit_edge
  br i1 %tobool.not, label %if.end75.cleanup_crit_edge, label %if.then78

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then78:                                        ; preds = %if.end75
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %57 = load volatile i32, ptr @jiffies, align 128
  %add1.i108 = add i32 %57, 20
  %arrayidx.i109 = getelementptr %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 5, i32 1
  br label %do.body.i116

do.body.i116:                                     ; preds = %if.end20.i126.do.body.i116_crit_edge, %if.then78
  %i.0.i110 = phi i32 [ 0, %if.then78 ], [ %inc.i123, %if.end20.i126.do.body.i116_crit_edge ]
  %58 = ptrtoint ptr %arrayidx.i109 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.i109, align 4
  %add2.i111 = add i32 %59, 64
  %and.i112 = and i32 %add2.i111, 1048575
  %add3.i113 = or i32 %and.i112, -18874368
  %60 = inttoptr i32 %add3.i113 to ptr
  %61 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %60) #5, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !262
  %and61.i114 = and i8 %61, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and61.i114)
  %cmp8.i115.not = icmp eq i8 %and61.i114, 0
  br i1 %cmp8.i115.not, label %if.end20.i126, label %if.then.i118

if.then.i118:                                     ; preds = %do.body.i116
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %i.0.i110)
  %cmp10.i117 = icmp sgt i32 %i.0.i110, 100
  br i1 %cmp10.i117, label %do.body13.i119, label %if.then.i118.cleanup_crit_edge

if.then.i118.cleanup_crit_edge:                   ; preds = %if.then.i118
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body13.i119:                                   ; preds = %if.then.i118
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcxhr_check_reg_bit.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcxhr_send_it_dsp, %if.then18.i122)) #5
          to label %cleanup [label %if.then18.i122], !srcloc !260

if.then18.i122:                                   ; preds = %do.body13.i119
  call void @__sanitizer_cov_trace_pc() #7
  %pci.i120 = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  %62 = ptrtoint ptr %pci.i120 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pci.i120, align 4
  %dev.i121 = getelementptr inbounds %struct.pci_dev, ptr %63, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcxhr_check_reg_bit.__UNIQUE_ID_ddebug238, ptr noundef %dev.i121, ptr noundef nonnull @.str.29, i32 noundef 64, i32 noundef %i.0.i110) #5
  br label %cleanup

if.end20.i126:                                    ; preds = %do.body.i116
  %inc.i123 = add i32 %i.0.i110, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %64 = load volatile i32, ptr @jiffies, align 128
  %sub.i124 = sub i32 %add1.i108, %64
  %cmp22.i125 = icmp sgt i32 %sub.i124, -1
  br i1 %cmp22.i125, label %if.end20.i126.do.body.i116_crit_edge, label %do.end84

if.end20.i126.do.body.i116_crit_edge:             ; preds = %if.end20.i126
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i116

do.end84:                                         ; preds = %if.end20.i126
  call void @__sanitizer_cov_trace_pc() #7
  %pci28.i127 = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  %65 = ptrtoint ptr %pci28.i127 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pci28.i127, align 4
  %dev29.i128 = getelementptr inbounds %struct.pci_dev, ptr %66, i32 0, i32 44
  %conv31.i129 = zext i8 %61 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev29.i128, ptr noundef nonnull @.str.30, i32 noundef 64, i32 noundef 1, i32 noundef %conv31.i129) #8
  %67 = ptrtoint ptr %pci28.i127 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pci28.i127, align 4
  %dev86 = getelementptr inbounds %struct.pci_dev, ptr %68, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev86, ptr noundef nonnull @.str.34) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end84, %if.then18.i122, %do.body13.i119, %if.then.i118.cleanup_crit_edge, %if.end75.cleanup_crit_edge, %do.end74
  %retval.0 = phi i32 [ -5, %do.end74 ], [ -5, %do.end84 ], [ 0, %if.end75.cleanup_crit_edge ], [ 0, %do.body13.i119 ], [ 0, %if.then18.i122 ], [ 0, %if.then.i118.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pcxhr_load_dsp_binary(ptr nocapture noundef readonly %mgr, ptr nocapture noundef readonly %dsp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @pcxhr_send_it_dsp(ptr noundef %mgr, i32 noundef 133388, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @pcxhr_send_it_dsp(ptr noundef %mgr, i32 noundef 67596, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call fastcc i32 @pcxhr_download_dsp(ptr noundef %mgr, ptr noundef %dsp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add1.i = add i32 %0, 20
  %arrayidx.i = getelementptr %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 5, i32 2
  br label %do.body.i

do.body.i:                                        ; preds = %if.end20.i.do.body.i_crit_edge, %if.end8
  %i.0.i = phi i32 [ 0, %if.end8 ], [ %inc.i, %if.end20.i.do.body.i_crit_edge ]
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx.i, align 4
  %add2.i = add i32 %2, 8
  %and.i = and i32 %add2.i, 1048575
  %add3.i = or i32 %and.i, -18874368
  %3 = inttoptr i32 %add3.i to ptr
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %3) #5, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !262
  %and61.i = and i8 %4, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and61.i)
  %cmp8.i.not = icmp eq i8 %and61.i, 0
  br i1 %cmp8.i.not, label %if.end20.i, label %if.then.i

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %i.0.i)
  %cmp10.i = icmp sgt i32 %i.0.i, 100
  br i1 %cmp10.i, label %do.body13.i, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body13.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcxhr_check_reg_bit.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcxhr_load_dsp_binary, %if.then18.i)) #5
          to label %cleanup [label %if.then18.i], !srcloc !260

if.then18.i:                                      ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #7
  %pci.i = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  %5 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pci.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcxhr_check_reg_bit.__UNIQUE_ID_ddebug238, ptr noundef %dev.i, ptr noundef nonnull @.str.29, i32 noundef 8, i32 noundef %i.0.i) #5
  br label %cleanup

if.end20.i:                                       ; preds = %do.body.i
  %inc.i = add i32 %i.0.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add1.i, %7
  %cmp22.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp22.i, label %if.end20.i.do.body.i_crit_edge, label %do.end27.i

if.end20.i.do.body.i_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

do.end27.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  %pci28.i = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  %8 = ptrtoint ptr %pci28.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci28.i, align 4
  %dev29.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %conv31.i = zext i8 %4 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev29.i, ptr noundef nonnull @.str.30, i32 noundef 8, i32 noundef 16, i32 noundef %conv31.i) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end27.i, %if.then18.i, %do.body13.i, %if.then.i.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ -5, %do.end27.i ], [ 0, %if.then18.i ], [ 0, %if.then.i.cleanup_crit_edge ], [ 0, %do.body13.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pcxhr_init_rmh(ptr nocapture noundef writeonly %rmh, i32 noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %cmd)
  %cmp = icmp sgt i32 %cmd, 26
  br i1 %cmp, label %do.end, label %if.end21.critedge, !prof !263

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 719, i32 noundef 9, ptr noundef null) #5
  br label %return

if.end21.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr [27 x %struct.pcxhr_cmd_info], ptr @pcxhr_dsp_cmds, i32 0, i32 %cmd
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %cmd22 = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 4
  %2 = ptrtoint ptr %cmd22 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %cmd22, align 4
  %3 = ptrtoint ptr %rmh to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 1, ptr %rmh, align 4
  %st_length = getelementptr [27 x %struct.pcxhr_cmd_info], ptr @pcxhr_dsp_cmds, i32 0, i32 %cmd, i32 1
  %4 = ptrtoint ptr %st_length to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %st_length, align 4
  %stat_len = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 1
  %6 = ptrtoint ptr %stat_len to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %stat_len, align 2
  %st_type = getelementptr [27 x %struct.pcxhr_cmd_info], ptr @pcxhr_dsp_cmds, i32 0, i32 %cmd, i32 2
  %7 = ptrtoint ptr %st_type to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %st_type, align 2
  %dsp_stat = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 2
  %9 = ptrtoint ptr %dsp_stat to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %dsp_stat, align 4
  %conv = trunc i32 %cmd to i16
  %cmd_idx = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 3
  %10 = ptrtoint ptr %cmd_idx to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %cmd_idx, align 2
  br label %return

return:                                           ; preds = %if.end21.critedge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pcxhr_set_pipe_cmd_params(ptr nocapture noundef %rmh, i32 noundef %capture, i32 noundef %param1, i32 noundef %param2, i32 noundef %param3) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %param1)
  %cmp = icmp ugt i32 %param1, 31
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !263

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 733, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %capture)
  %tobool19.not = icmp eq i32 %capture, 0
  br i1 %tobool19.not, label %if.end.if.end21_crit_edge, label %if.then20

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %cmd = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 4
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd, align 4
  %or = or i32 %1, 2048
  store i32 %or, ptr %cmd, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end.if.end21_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %param1)
  %tobool22.not = icmp eq i32 %param1, 0
  br i1 %tobool22.not, label %if.end21.if.end27_crit_edge, label %if.then23

if.end21.if.end27_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %shl = shl i32 %param1, 5
  %cmd24 = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 4
  %2 = ptrtoint ptr %cmd24 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cmd24, align 4
  %or26 = or i32 %3, %shl
  store i32 %or26, ptr %cmd24, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %if.end21.if.end27_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %param2)
  %tobool28.not = icmp eq i32 %param2, 0
  br i1 %tobool28.not, label %if.end27.if.end64_crit_edge, label %if.then29

if.end27.if.end64_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %param2)
  %cmp31 = icmp ugt i32 %param2, 31
  br i1 %cmp31, label %do.end47, label %if.then29.if.end53_crit_edge, !prof !263

if.then29.if.end53_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

do.end47:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 739, i32 noundef 9, ptr noundef null) #5
  br label %if.end53

if.end53:                                         ; preds = %do.end47, %if.then29.if.end53_crit_edge
  %cmd61 = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 4
  %4 = ptrtoint ptr %cmd61 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cmd61, align 4
  %or63 = or i32 %5, %param2
  store i32 %or63, ptr %cmd61, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.end53, %if.end27.if.end64_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %param3)
  %tobool65.not = icmp eq i32 %param3, 0
  br i1 %tobool65.not, label %if.end64.if.end100_crit_edge, label %if.then66

if.end64.if.end100_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end100

if.then66:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %param3)
  %cmp68 = icmp ugt i32 %param3, 16777215
  br i1 %cmp68, label %do.end84, label %if.then66.if.end90_crit_edge, !prof !263

if.then66.if.end90_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end90

do.end84:                                         ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 743, i32 noundef 9, ptr noundef null) #5
  br label %if.end90

if.end90:                                         ; preds = %do.end84, %if.then66.if.end90_crit_edge
  %arrayidx99 = getelementptr %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %param3, ptr %arrayidx99, align 4
  %7 = ptrtoint ptr %rmh to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 2, ptr %rmh, align 4
  br label %if.end100

if.end100:                                        ; preds = %if.end90, %if.end64.if.end100_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pcxhr_send_msg(ptr noundef %mgr, ptr nocapture noundef %rmh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_lock = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %msg_lock, i32 noundef 0) #5
  %call = tail call fastcc i32 @pcxhr_send_msg_nolock(ptr noundef %mgr, ptr noundef %rmh)
  tail call void @mutex_unlock(ptr noundef %msg_lock) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pcxhr_send_msg_nolock(ptr noundef readonly %mgr, ptr nocapture noundef %rmh) unnamed_addr #0 align 64 {
entry:
  %reg = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg) #5
  %0 = ptrtoint ptr %rmh to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %rmh, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %1)
  %cmp = icmp ugt i16 %1, 7
  br i1 %cmp, label %do.end, label %if.end22, !prof !263

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 602, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end22:                                         ; preds = %entry
  %call = tail call fastcc i32 @pcxhr_send_it_dsp(ptr noundef %mgr, i32 noundef 1140, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool23.not = icmp eq i32 %call, 0
  br i1 %tobool23.not, label %if.end28, label %do.end27

do.end27:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %pci = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  %2 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.36) #8
  br label %cleanup

if.end28:                                         ; preds = %if.end22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %add1.i = add i32 %4, 20
  %arrayidx.i = getelementptr %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 5, i32 2
  br label %do.body.i

do.body.i:                                        ; preds = %if.end20.i.do.body.i_crit_edge, %if.end28
  %i.0.i = phi i32 [ 0, %if.end28 ], [ %inc.i, %if.end20.i.do.body.i_crit_edge ]
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  %add2.i = add i32 %6, 8
  %and.i = and i32 %add2.i, 1048575
  %add3.i = or i32 %and.i, -18874368
  %7 = inttoptr i32 %add3.i to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #5, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !262
  %and61.i = and i8 %8, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and61.i)
  %cmp8.i.not = icmp eq i8 %and61.i, 0
  br i1 %cmp8.i.not, label %if.end20.i, label %if.then.i

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %i.0.i)
  %cmp10.i = icmp sgt i32 %i.0.i, 100
  br i1 %cmp10.i, label %do.body13.i, label %if.then.i.if.end32_crit_edge

if.then.i.if.end32_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

do.body13.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcxhr_check_reg_bit.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcxhr_send_msg_nolock, %if.then18.i)) #5
          to label %if.end32 [label %if.then18.i], !srcloc !260

if.then18.i:                                      ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #7
  %pci.i = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  %9 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pci.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcxhr_check_reg_bit.__UNIQUE_ID_ddebug238, ptr noundef %dev.i, ptr noundef nonnull @.str.29, i32 noundef 8, i32 noundef %i.0.i) #5
  br label %if.end32

if.end20.i:                                       ; preds = %do.body.i
  %inc.i = add i32 %i.0.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add1.i, %11
  %cmp22.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp22.i, label %if.end20.i.do.body.i_crit_edge, label %pcxhr_check_reg_bit.exit.thread446

if.end20.i.do.body.i_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

pcxhr_check_reg_bit.exit.thread446:               ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  %pci28.i = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  %12 = ptrtoint ptr %pci28.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pci28.i, align 4
  %dev29.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %conv31.i = zext i8 %8 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev29.i, ptr noundef nonnull @.str.30, i32 noundef 8, i32 noundef 16, i32 noundef %conv31.i) #8
  br label %cleanup

if.end32:                                         ; preds = %if.then18.i, %do.body13.i, %if.then.i.if.end32_crit_edge
  %call33 = tail call fastcc i32 @pcxhr_send_it_dsp(ptr noundef %mgr, i32 noundef 1142, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end36:                                         ; preds = %if.end32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %add1.i369 = add i32 %14, 20
  br label %do.body.i377

do.body.i377:                                     ; preds = %if.end20.i387.do.body.i377_crit_edge, %if.end36
  %i.0.i371 = phi i32 [ 0, %if.end36 ], [ %inc.i384, %if.end20.i387.do.body.i377_crit_edge ]
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i, align 4
  %add2.i372 = add i32 %16, 8
  %and.i373 = and i32 %add2.i372, 1048575
  %add3.i374 = or i32 %and.i373, -18874368
  %17 = inttoptr i32 %add3.i374 to ptr
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %17) #5, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !262
  %and61.i375 = and i8 %18, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and61.i375)
  %cmp8.i376 = icmp eq i8 %and61.i375, 0
  br i1 %cmp8.i376, label %if.then.i379, label %if.end20.i387

if.then.i379:                                     ; preds = %do.body.i377
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %i.0.i371)
  %cmp10.i378 = icmp sgt i32 %i.0.i371, 100
  br i1 %cmp10.i378, label %do.body13.i380, label %if.then.i379.if.end40_crit_edge

if.then.i379.if.end40_crit_edge:                  ; preds = %if.then.i379
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

do.body13.i380:                                   ; preds = %if.then.i379
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcxhr_check_reg_bit.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcxhr_send_msg_nolock, %if.then18.i383)) #5
          to label %if.end40 [label %if.then18.i383], !srcloc !260

if.then18.i383:                                   ; preds = %do.body13.i380
  call void @__sanitizer_cov_trace_pc() #7
  %pci.i381 = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  %19 = ptrtoint ptr %pci.i381 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pci.i381, align 4
  %dev.i382 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcxhr_check_reg_bit.__UNIQUE_ID_ddebug238, ptr noundef %dev.i382, ptr noundef nonnull @.str.29, i32 noundef 8, i32 noundef %i.0.i371) #5
  br label %if.end40

if.end20.i387:                                    ; preds = %do.body.i377
  %inc.i384 = add i32 %i.0.i371, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %sub.i385 = sub i32 %add1.i369, %21
  %cmp22.i386 = icmp sgt i32 %sub.i385, -1
  br i1 %cmp22.i386, label %if.end20.i387.do.body.i377_crit_edge, label %pcxhr_check_reg_bit.exit393.thread451

if.end20.i387.do.body.i377_crit_edge:             ; preds = %if.end20.i387
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i377

pcxhr_check_reg_bit.exit393.thread451:            ; preds = %if.end20.i387
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %reg to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %18, ptr %reg, align 1
  %pci28.i388 = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  %23 = ptrtoint ptr %pci28.i388 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pci28.i388, align 4
  %dev29.i389 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %conv31.i390 = zext i8 %18 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev29.i389, ptr noundef nonnull @.str.30, i32 noundef 8, i32 noundef 16, i32 noundef %conv31.i390) #8
  br label %cleanup

if.end40:                                         ; preds = %if.then18.i383, %do.body13.i380, %if.then.i379.if.end40_crit_edge
  %cmd = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 4
  %25 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cmd, align 4
  %27 = ptrtoint ptr %rmh to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %rmh, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %28)
  %cmp43 = icmp ugt i16 %28, 1
  %or = or i32 %26, 32768
  %and = and i32 %26, 16744447
  %data.0 = select i1 %cmp43, i32 %or, i32 %and
  %cmd_idx = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 3
  %29 = ptrtoint ptr %cmd_idx to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %cmd_idx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 27, i16 %30)
  %cmp48 = icmp ult i16 %30, 27
  br i1 %cmp48, label %do.body51, label %if.end40.if.end69_crit_edge

if.end40.if.end69_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

do.body51:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcxhr_send_msg_nolock.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcxhr_send_msg_nolock, %if.then61)) #5
          to label %if.end69 [label %if.then61], !srcloc !260

if.then61:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #7
  %pci62 = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  %31 = ptrtoint ptr %pci62 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pci62, align 4
  %dev63 = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  %33 = ptrtoint ptr %cmd_idx to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %cmd_idx, align 2
  %idxprom = zext i16 %34 to i32
  %arrayidx65 = getelementptr [27 x ptr], ptr @cmd_names, i32 0, i32 %idxprom
  %35 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx65, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcxhr_send_msg_nolock.__UNIQUE_ID_ddebug242, ptr noundef %dev63, ptr noundef nonnull @.str.38, i32 noundef %data.0, ptr noundef %36) #5
  br label %if.end69

if.end69:                                         ; preds = %if.then61, %do.body51, %if.end40.if.end69_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %37 = load volatile i32, ptr @jiffies, align 128
  %add1.i394 = add i32 %37, 20
  br label %do.body.i402

do.body.i402:                                     ; preds = %if.end20.i412.do.body.i402_crit_edge, %if.end69
  %i.0.i396 = phi i32 [ 0, %if.end69 ], [ %inc.i409, %if.end20.i412.do.body.i402_crit_edge ]
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i, align 4
  %add2.i397 = add i32 %39, 8
  %and.i398 = and i32 %add2.i397, 1048575
  %add3.i399 = or i32 %and.i398, -18874368
  %40 = inttoptr i32 %add3.i399 to ptr
  %41 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %40) #5, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !262
  %and61.i400 = and i8 %41, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and61.i400)
  %cmp8.i401.not = icmp eq i8 %and61.i400, 0
  br i1 %cmp8.i401.not, label %if.end20.i412, label %if.then.i404

if.then.i404:                                     ; preds = %do.body.i402
  %42 = ptrtoint ptr %reg to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %reg, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %i.0.i396)
  %cmp10.i403 = icmp sgt i32 %i.0.i396, 100
  br i1 %cmp10.i403, label %do.body13.i405, label %if.then.i404.do.body74_crit_edge

if.then.i404.do.body74_crit_edge:                 ; preds = %if.then.i404
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body74

do.body13.i405:                                   ; preds = %if.then.i404
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcxhr_check_reg_bit.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcxhr_send_msg_nolock, %if.then18.i408)) #5
          to label %do.body74 [label %if.then18.i408], !srcloc !260

if.then18.i408:                                   ; preds = %do.body13.i405
  call void @__sanitizer_cov_trace_pc() #7
  %pci.i406 = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  %43 = ptrtoint ptr %pci.i406 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pci.i406, align 4
  %dev.i407 = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcxhr_check_reg_bit.__UNIQUE_ID_ddebug238, ptr noundef %dev.i407, ptr noundef nonnull @.str.29, i32 noundef 8, i32 noundef %i.0.i396) #5
  br label %do.body74

if.end20.i412:                                    ; preds = %do.body.i402
  %inc.i409 = add i32 %i.0.i396, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %45 = load volatile i32, ptr @jiffies, align 128
  %sub.i410 = sub i32 %add1.i394, %45
  %cmp22.i411 = icmp sgt i32 %sub.i410, -1
  br i1 %cmp22.i411, label %if.end20.i412.do.body.i402_crit_edge, label %pcxhr_check_reg_bit.exit418.thread457

if.end20.i412.do.body.i402_crit_edge:             ; preds = %if.end20.i412
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i402

pcxhr_check_reg_bit.exit418.thread457:            ; preds = %if.end20.i412
  call void @__sanitizer_cov_trace_pc() #7
  %pci28.i413 = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  %46 = ptrtoint ptr %pci28.i413 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pci28.i413, align 4
  %dev29.i414 = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44
  %conv31.i415 = zext i8 %41 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev29.i414, ptr noundef nonnull @.str.30, i32 noundef 8, i32 noundef 4, i32 noundef %conv31.i415) #8
  br label %cleanup

do.body74:                                        ; preds = %if.then18.i408, %do.body13.i405, %if.then.i404.do.body74_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !275
  tail call void @arm_heavy_mb() #5
  %shr = lshr i32 %data.0, 16
  %conv78 = trunc i32 %shr to i8
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i, align 4
  %add = add i32 %49, 20
  %and80 = and i32 %add, 1048575
  %add81 = or i32 %and80, -18874368
  %50 = inttoptr i32 %add81 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %50, i8 %conv78) #5, !srcloc !250
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !276
  tail call void @arm_heavy_mb() #5
  %shr86 = lshr i32 %data.0, 8
  %conv88 = trunc i32 %shr86 to i8
  %51 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i, align 4
  %add91 = add i32 %52, 24
  %and92 = and i32 %add91, 1048575
  %add93 = or i32 %and92, -18874368
  %53 = inttoptr i32 %add93 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %53, i8 %conv88) #5, !srcloc !250
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !277
  tail call void @arm_heavy_mb() #5
  %conv99 = trunc i32 %data.0 to i8
  %54 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.i, align 4
  %add102 = add i32 %55, 28
  %and103 = and i32 %add102, 1048575
  %add104 = or i32 %and103, -18874368
  %56 = inttoptr i32 %add104 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %56, i8 %conv99) #5, !srcloc !250
  %57 = ptrtoint ptr %rmh to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %rmh, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %58)
  %cmp108 = icmp ugt i16 %58, 1
  br i1 %cmp108, label %if.then110, label %do.body74.if.end221_crit_edge

do.body74.if.end221_crit_edge:                    ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end221

if.then110:                                       ; preds = %do.body74
  %call113 = call fastcc i32 @pcxhr_check_reg_bit(ptr noundef %mgr, i32 noundef 8, i8 noundef zeroext 4, i8 noundef zeroext 4, ptr noundef nonnull %reg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %do.body117, label %if.then110.cleanup_crit_edge

if.then110.cleanup_crit_edge:                     ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body117:                                       ; preds = %if.then110
  %conv107 = zext i16 %58 to i32
  %sub = add nsw i32 %conv107, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !278
  tail call void @arm_heavy_mb() #5
  %59 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.i, align 4
  %add125 = add i32 %60, 20
  %and126 = and i32 %add125, 1048575
  %add127 = or i32 %and126, -18874368
  %61 = inttoptr i32 %add127 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %61, i8 0) #5, !srcloc !250
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !279
  tail call void @arm_heavy_mb() #5
  %shr132 = lshr i32 %sub, 8
  %conv134 = trunc i32 %shr132 to i8
  %62 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx.i, align 4
  %add137 = add i32 %63, 24
  %and138 = and i32 %add137, 1048575
  %add139 = or i32 %and138, -18874368
  %64 = inttoptr i32 %add139 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %64, i8 %conv134) #5, !srcloc !250
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !280
  tail call void @arm_heavy_mb() #5
  %conv145 = trunc i32 %sub to i8
  %65 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx.i, align 4
  %add148 = add i32 %66, 28
  %and149 = and i32 %add148, 1048575
  %add150 = or i32 %and149, -18874368
  %67 = inttoptr i32 %add150 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %67, i8 %conv145) #5, !srcloc !250
  %68 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %68)
  %reg.promoted = load i8, ptr %reg, align 1
  %69 = ptrtoint ptr %rmh to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %rmh, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %70)
  %cmp154487 = icmp ugt i16 %70, 1
  br i1 %cmp154487, label %for.body.lr.ph, label %do.body117.if.end221.loopexit_crit_edge

do.body117.if.end221.loopexit_crit_edge:          ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end221.loopexit

for.body.lr.ph:                                   ; preds = %do.body117
  %pci176 = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %do.body186.for.body_crit_edge, %for.body.lr.ph
  %i.0489 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %do.body186.for.body_crit_edge ]
  %arrayidx157 = getelementptr %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 4, i32 %i.0489
  %71 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx157, align 4
  %73 = ptrtoint ptr %cmd_idx to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %cmd_idx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 27, i16 %74)
  %cmp160 = icmp ult i16 %74, 27
  br i1 %cmp160, label %do.body163, label %for.body.if.end181_crit_edge

for.body.if.end181_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end181

do.body163:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcxhr_send_msg_nolock.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcxhr_send_msg_nolock, %if.then175)) #5
          to label %if.end181 [label %if.then175], !srcloc !260

if.then175:                                       ; preds = %do.body163
  call void @__sanitizer_cov_trace_pc() #7
  %75 = ptrtoint ptr %pci176 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pci176, align 4
  %dev177 = getelementptr inbounds %struct.pci_dev, ptr %76, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcxhr_send_msg_nolock.__UNIQUE_ID_ddebug243, ptr noundef %dev177, ptr noundef nonnull @.str.39, i32 noundef %i.0489, i32 noundef %72) #5
  br label %if.end181

if.end181:                                        ; preds = %if.then175, %do.body163, %for.body.if.end181_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %77 = load volatile i32, ptr @jiffies, align 128
  %add1.i419 = add i32 %77, 20
  br label %do.body.i427

do.body.i427:                                     ; preds = %if.end20.i437.do.body.i427_crit_edge, %if.end181
  %i.0.i421 = phi i32 [ 0, %if.end181 ], [ %inc.i434, %if.end20.i437.do.body.i427_crit_edge ]
  %78 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx.i, align 4
  %add2.i422 = add i32 %79, 8
  %and.i423 = and i32 %add2.i422, 1048575
  %add3.i424 = or i32 %and.i423, -18874368
  %80 = inttoptr i32 %add3.i424 to ptr
  %81 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %80) #5, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !262
  %and61.i425 = and i8 %81, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and61.i425)
  %cmp8.i426.not = icmp eq i8 %and61.i425, 0
  br i1 %cmp8.i426.not, label %if.end20.i437, label %if.then.i429

if.then.i429:                                     ; preds = %do.body.i427
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %i.0.i421)
  %cmp10.i428 = icmp sgt i32 %i.0.i421, 100
  br i1 %cmp10.i428, label %do.body13.i430, label %if.then.i429.do.body186_crit_edge

if.then.i429.do.body186_crit_edge:                ; preds = %if.then.i429
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body186

do.body13.i430:                                   ; preds = %if.then.i429
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcxhr_check_reg_bit.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcxhr_send_msg_nolock, %if.then18.i433)) #5
          to label %do.body186 [label %if.then18.i433], !srcloc !260

if.then18.i433:                                   ; preds = %do.body13.i430
  call void @__sanitizer_cov_trace_pc() #7
  %82 = ptrtoint ptr %pci176 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %pci176, align 4
  %dev.i432 = getelementptr inbounds %struct.pci_dev, ptr %83, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcxhr_check_reg_bit.__UNIQUE_ID_ddebug238, ptr noundef %dev.i432, ptr noundef nonnull @.str.29, i32 noundef 8, i32 noundef %i.0.i421) #5
  br label %do.body186

if.end20.i437:                                    ; preds = %do.body.i427
  %inc.i434 = add i32 %i.0.i421, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %84 = load volatile i32, ptr @jiffies, align 128
  %sub.i435 = sub i32 %add1.i419, %84
  %cmp22.i436 = icmp sgt i32 %sub.i435, -1
  br i1 %cmp22.i436, label %if.end20.i437.do.body.i427_crit_edge, label %pcxhr_check_reg_bit.exit443.thread463

if.end20.i437.do.body.i427_crit_edge:             ; preds = %if.end20.i437
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i427

pcxhr_check_reg_bit.exit443.thread463:            ; preds = %if.end20.i437
  call void @__sanitizer_cov_trace_pc() #7
  %85 = ptrtoint ptr %pci176 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pci176, align 4
  %dev29.i439 = getelementptr inbounds %struct.pci_dev, ptr %86, i32 0, i32 44
  %conv31.i440 = zext i8 %81 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev29.i439, ptr noundef nonnull @.str.30, i32 noundef 8, i32 noundef 4, i32 noundef %conv31.i440) #8
  br label %cleanup

do.body186:                                       ; preds = %if.then18.i433, %do.body13.i430, %if.then.i429.do.body186_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !281
  tail call void @arm_heavy_mb() #5
  %shr189 = lshr i32 %72, 16
  %conv191 = trunc i32 %shr189 to i8
  %87 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx.i, align 4
  %add194 = add i32 %88, 20
  %and195 = and i32 %add194, 1048575
  %add196 = or i32 %and195, -18874368
  %89 = inttoptr i32 %add196 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %89, i8 %conv191) #5, !srcloc !250
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !282
  tail call void @arm_heavy_mb() #5
  %shr201 = lshr i32 %72, 8
  %conv203 = trunc i32 %shr201 to i8
  %90 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx.i, align 4
  %add206 = add i32 %91, 24
  %and207 = and i32 %add206, 1048575
  %add208 = or i32 %and207, -18874368
  %92 = inttoptr i32 %add208 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %92, i8 %conv203) #5, !srcloc !250
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !283
  tail call void @arm_heavy_mb() #5
  %conv214 = trunc i32 %72 to i8
  %93 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx.i, align 4
  %add217 = add i32 %94, 28
  %and218 = and i32 %add217, 1048575
  %add219 = or i32 %and218, -18874368
  %95 = inttoptr i32 %add219 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %95, i8 %conv214) #5, !srcloc !250
  %inc = add nuw nsw i32 %i.0489, 1
  %96 = ptrtoint ptr %rmh to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %rmh, align 4
  %conv153 = zext i16 %97 to i32
  %cmp154 = icmp ult i32 %inc, %conv153
  br i1 %cmp154, label %do.body186.for.body_crit_edge, label %do.body186.if.end221.loopexit_crit_edge

do.body186.if.end221.loopexit_crit_edge:          ; preds = %do.body186
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end221.loopexit

do.body186.for.body_crit_edge:                    ; preds = %do.body186
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end221.loopexit:                               ; preds = %do.body186.if.end221.loopexit_crit_edge, %do.body117.if.end221.loopexit_crit_edge
  %.lcssa482484.lcssa = phi i8 [ %reg.promoted, %do.body117.if.end221.loopexit_crit_edge ], [ %81, %do.body186.if.end221.loopexit_crit_edge ]
  %98 = ptrtoint ptr %reg to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %.lcssa482484.lcssa, ptr %reg, align 1
  br label %if.end221

if.end221:                                        ; preds = %if.end221.loopexit, %do.body74.if.end221_crit_edge
  %call222 = call fastcc i32 @pcxhr_check_reg_bit(ptr noundef %mgr, i32 noundef 8, i8 noundef zeroext 16, i8 noundef zeroext 16, ptr noundef nonnull %reg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call222)
  %tobool223.not = icmp eq i32 %call222, 0
  br i1 %tobool223.not, label %if.end225, label %if.end221.cleanup_crit_edge

if.end221.cleanup_crit_edge:                      ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end225:                                        ; preds = %if.end221
  %99 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %reg, align 1
  %101 = and i8 %100, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool228.not = icmp eq i8 %101, 0
  br i1 %tobool228.not, label %if.else279, label %if.then229

if.then229:                                       ; preds = %if.end225
  %call230 = call fastcc i32 @pcxhr_check_reg_bit(ptr noundef %mgr, i32 noundef 8, i8 noundef zeroext 1, i8 noundef zeroext 1, ptr noundef nonnull %reg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call230)
  %tobool231.not = icmp eq i32 %call230, 0
  br i1 %tobool231.not, label %if.end239, label %do.end235

do.end235:                                        ; preds = %if.then229
  call void @__sanitizer_cov_trace_pc() #7
  %pci236 = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  %102 = ptrtoint ptr %pci236 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %pci236, align 4
  %dev237 = getelementptr inbounds %struct.pci_dev, ptr %103, i32 0, i32 44
  %104 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %reg, align 1
  %conv238 = zext i8 %105 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev237, ptr noundef nonnull @.str.41, i32 noundef %conv238) #8
  br label %cleanup

if.end239:                                        ; preds = %if.then229
  call void @__sanitizer_cov_trace_pc() #7
  %106 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx.i, align 4
  %add242 = add i32 %107, 20
  %and243 = and i32 %add242, 1048575
  %add244 = or i32 %and243, -18874368
  %108 = inttoptr i32 %add244 to ptr
  %109 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %108) #5, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !284
  %conv248 = zext i8 %109 to i32
  %shl = shl nuw nsw i32 %conv248, 16
  %110 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx.i, align 4
  %add252 = add i32 %111, 24
  %and253 = and i32 %add252, 1048575
  %add254 = or i32 %and253, -18874368
  %112 = inttoptr i32 %add254 to ptr
  %113 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %112) #5, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !285
  %conv258 = zext i8 %113 to i32
  %shl259 = shl nuw nsw i32 %conv258, 8
  %or260 = or i32 %shl259, %shl
  %114 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx.i, align 4
  %add264 = add i32 %115, 28
  %and265 = and i32 %add264, 1048575
  %add266 = or i32 %and265, -18874368
  %116 = inttoptr i32 %add266 to ptr
  %117 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %116) #5, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !286
  %conv270 = zext i8 %117 to i32
  %or271 = or i32 %or260, %conv270
  %pci275 = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  %118 = ptrtoint ptr %pci275 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %pci275, align 4
  %dev276 = getelementptr inbounds %struct.pci_dev, ptr %119, i32 0, i32 44
  %120 = ptrtoint ptr %cmd_idx to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %cmd_idx, align 2
  %conv278 = zext i16 %121 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev276, ptr noundef nonnull @.str.44, i32 noundef %conv278, i32 noundef %or271) #8
  br label %if.end281

if.else279:                                       ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #7
  %call280 = tail call fastcc i32 @pcxhr_read_rmh_status(ptr noundef %mgr, ptr noundef %rmh)
  br label %if.end281

if.end281:                                        ; preds = %if.else279, %if.end239
  %err.0 = phi i32 [ -22, %if.end239 ], [ %call280, %if.else279 ]
  %call282 = tail call fastcc i32 @pcxhr_send_it_dsp(ptr noundef %mgr, i32 noundef 1116, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call282)
  %cmp283 = icmp slt i32 %call282, 0
  %.err.0 = select i1 %cmp283, i32 -5, i32 %err.0
  br label %cleanup

cleanup:                                          ; preds = %if.end281, %do.end235, %if.end221.cleanup_crit_edge, %pcxhr_check_reg_bit.exit443.thread463, %if.then110.cleanup_crit_edge, %pcxhr_check_reg_bit.exit418.thread457, %pcxhr_check_reg_bit.exit393.thread451, %if.end32.cleanup_crit_edge, %pcxhr_check_reg_bit.exit.thread446, %do.end27, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call, %do.end27 ], [ %call230, %do.end235 ], [ %call33, %if.end32.cleanup_crit_edge ], [ %call113, %if.then110.cleanup_crit_edge ], [ %call222, %if.end221.cleanup_crit_edge ], [ %.err.0, %if.end281 ], [ -5, %pcxhr_check_reg_bit.exit.thread446 ], [ -5, %pcxhr_check_reg_bit.exit393.thread451 ], [ -5, %pcxhr_check_reg_bit.exit418.thread457 ], [ -5, %pcxhr_check_reg_bit.exit443.thread463 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pcxhr_set_pipe_state(ptr noundef %mgr, i32 noundef %playback_mask, i32 noundef %capture_mask, i32 noundef %start) local_unnamed_addr #0 align 64 {
entry:
  %rmh.i141 = alloca %struct.pcxhr_rmh, align 4
  %rmh.i107 = alloca %struct.pcxhr_rmh, align 4
  %rmh.i = alloca %struct.pcxhr_rmh, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #5
  %shl = shl i32 %capture_mask, 12
  %or = or i32 %shl, %playback_mask
  %arrayidx.i = getelementptr %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %1, 72
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add1.i to ptr
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %2) #5, !srcloc !246
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !287
  %4 = and i32 %3, -256
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcxhr_pipes_running.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcxhr_set_pipe_state, %if.then.i)) #5
          to label %pcxhr_pipes_running.exit [label %if.then.i], !srcloc !260

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pci.i = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  %6 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcxhr_pipes_running.__UNIQUE_ID_ddebug244, ptr noundef %dev.i, ptr noundef nonnull @.str.78, i32 noundef %5) #5
  br label %pcxhr_pipes_running.exit

pcxhr_pipes_running.exit:                         ; preds = %if.then.i, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcxhr_set_pipe_state.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcxhr_set_pipe_state, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !260

if.then:                                          ; preds = %pcxhr_pipes_running.exit
  call void @__sanitizer_cov_trace_pc() #7
  %pci = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  %8 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %start)
  %tobool5.not = icmp eq i32 %start, 0
  %cond = select i1 %tobool5.not, ptr @.str.11, ptr @.str.10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcxhr_set_pipe_state.__UNIQUE_ID_ddebug245, ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef nonnull %cond, i32 noundef %or, i32 noundef %5) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %pcxhr_pipes_running.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %start)
  %tobool6.not = icmp eq i32 %start, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %do.end
  %neg = xor i32 %5, -1
  %and = and i32 %or, %neg
  %10 = getelementptr inbounds i8, ptr %rmh.i, i32 12
  %cmd22.i.i = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh.i, i32 0, i32 4
  %stat_len.i.i = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh.i, i32 0, i32 1
  %dsp_stat.i.i = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh.i, i32 0, i32 2
  %cmd_idx.i.i = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh.i, i32 0, i32 3
  %msg_lock.i.i = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 9
  %stat.i = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh.i, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %if.end14.for.body_crit_edge, %if.then7
  %i.0193 = phi i32 [ 0, %if.then7 ], [ %inc, %if.end14.for.body_crit_edge ]
  %state.0192 = phi i32 [ %and, %if.then7 ], [ %state.2, %if.end14.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %rmh.i) #5
  %11 = call ptr @memset(ptr %10, i32 255, i32 92)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state.0192)
  %tobool.not33.i = icmp eq i32 %state.0192, 0
  br i1 %tobool.not33.i, label %if.end11.thread, label %for.body.while.body.i_crit_edge

for.body.while.body.i_crit_edge:                  ; preds = %for.body
  br label %while.body.i

if.end11.thread:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %rmh.i) #5
  br label %if.end16

while.body.i:                                     ; preds = %if.end9.i.while.body.i_crit_edge, %for.body.while.body.i_crit_edge
  %state.1 = phi i32 [ %state.2, %if.end9.i.while.body.i_crit_edge ], [ 0, %for.body.while.body.i_crit_edge ]
  %audio.035.i = phi i32 [ %inc.i, %if.end9.i.while.body.i_crit_edge ], [ 0, %for.body.while.body.i_crit_edge ]
  %audio_mask.addr.034.i = phi i32 [ %shr.i, %if.end9.i.while.body.i_crit_edge ], [ %state.0192, %for.body.while.body.i_crit_edge ]
  %and.i102 = and i32 %audio_mask.addr.034.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i102)
  %tobool1.not.i = icmp eq i32 %and.i102, 0
  br i1 %tobool1.not.i, label %while.body.i.if.end9.i_crit_edge, label %if.then.i103

while.body.i.if.end9.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then.i103:                                     ; preds = %while.body.i
  %12 = ptrtoint ptr %cmd22.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4915200, ptr %cmd22.i.i, align 4
  %13 = ptrtoint ptr %rmh.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %rmh.i, align 4
  %14 = ptrtoint ptr %stat_len.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %stat_len.i.i, align 2
  %15 = ptrtoint ptr %dsp_stat.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %dsp_stat.i.i, align 4
  %16 = ptrtoint ptr %cmd_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 16, ptr %cmd_idx.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %audio.035.i)
  %cmp.i = icmp slt i32 %audio.035.i, 12
  br i1 %cmp.i, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %if.then.i103
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %audio.035.i)
  %cmp.i.i = icmp ugt i32 %audio.035.i, 31
  br i1 %cmp.i.i, label %if.then2.i.if.end.sink.split.sink.split.i_crit_edge, label %if.end.i.i, !prof !263

if.then2.i.if.end.sink.split.sink.split.i_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.sink.split.sink.split.i

if.end.i.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %audio.035.i)
  %tobool22.not.i.i = icmp eq i32 %audio.035.i, 0
  br i1 %tobool22.not.i.i, label %if.end.i.i.if.end.i_crit_edge, label %if.end.i.i.if.end.sink.split.i_crit_edge

if.end.i.i.if.end.sink.split.i_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.sink.split.i

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.else.i:                                        ; preds = %if.then.i103
  %sub.i = add nsw i32 %audio.035.i, -12
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %sub.i)
  %cmp.i22.i = icmp ugt i32 %sub.i, 31
  br i1 %cmp.i22.i, label %if.else.i.if.end.sink.split.sink.split.i_crit_edge, label %if.end.i24.i, !prof !263

if.else.i.if.end.sink.split.sink.split.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.sink.split.sink.split.i

if.end.i24.i:                                     ; preds = %if.else.i
  %17 = ptrtoint ptr %cmd22.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 4917248, ptr %cmd22.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool22.not.i25.i = icmp eq i32 %sub.i, 0
  br i1 %tobool22.not.i25.i, label %if.end.i24.i.if.end.i_crit_edge, label %if.end.i24.i.if.end.sink.split.i_crit_edge

if.end.i24.i.if.end.sink.split.i_crit_edge:       ; preds = %if.end.i24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.sink.split.i

if.end.i24.i.if.end.i_crit_edge:                  ; preds = %if.end.i24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.end.sink.split.sink.split.i:                   ; preds = %if.else.i.if.end.sink.split.sink.split.i_crit_edge, %if.then2.i.if.end.sink.split.sink.split.i_crit_edge
  %sub.sink.ph.i = phi i32 [ %audio.035.i, %if.then2.i.if.end.sink.split.sink.split.i_crit_edge ], [ %sub.i, %if.else.i.if.end.sink.split.sink.split.i_crit_edge ]
  %.sink.ph.i = phi i32 [ 4915200, %if.then2.i.if.end.sink.split.sink.split.i_crit_edge ], [ 4917248, %if.else.i.if.end.sink.split.sink.split.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 733, i32 noundef 9, ptr noundef null) #5
  br label %if.end.sink.split.i

if.end.sink.split.i:                              ; preds = %if.end.sink.split.sink.split.i, %if.end.i24.i.if.end.sink.split.i_crit_edge, %if.end.i.i.if.end.sink.split.i_crit_edge
  %sub.sink.i = phi i32 [ %audio.035.i, %if.end.i.i.if.end.sink.split.i_crit_edge ], [ %sub.i, %if.end.i24.i.if.end.sink.split.i_crit_edge ], [ %sub.sink.ph.i, %if.end.sink.split.sink.split.i ]
  %.sink.i = phi i32 [ 4915200, %if.end.i.i.if.end.sink.split.i_crit_edge ], [ 4917248, %if.end.i24.i.if.end.sink.split.i_crit_edge ], [ %.sink.ph.i, %if.end.sink.split.sink.split.i ]
  %shl.i26.i = shl i32 %sub.sink.i, 5
  %or26.i28.i = or i32 %shl.i26.i, %.sink.i
  %18 = ptrtoint ptr %cmd22.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or26.i28.i, ptr %cmd22.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.sink.split.i, %if.end.i24.i.if.end.i_crit_edge, %if.end.i.i.if.end.i_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %msg_lock.i.i, i32 noundef 0) #5
  %call.i.i = call fastcc i32 @pcxhr_send_msg_nolock(ptr noundef %mgr, ptr noundef nonnull %rmh.i) #5
  tail call void @mutex_unlock(ptr noundef %msg_lock.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool3.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %pcxhr_prepair_pipe_start.exit

if.end5.i:                                        ; preds = %if.end.i
  %19 = ptrtoint ptr %stat.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %stat.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp6.i = icmp eq i32 %20, 0
  br i1 %cmp6.i, label %if.then7.i, label %if.end5.i.if.end9.i_crit_edge

if.end5.i.if.end9.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  %shl.i = shl nuw i32 1, %audio.035.i
  %or.i = or i32 %shl.i, %state.1
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then7.i, %if.end5.i.if.end9.i_crit_edge, %while.body.i.if.end9.i_crit_edge
  %state.2 = phi i32 [ %state.1, %while.body.i.if.end9.i_crit_edge ], [ %or.i, %if.then7.i ], [ %state.1, %if.end5.i.if.end9.i_crit_edge ]
  %shr.i = ashr i32 %audio_mask.addr.034.i, 1
  %inc.i = add i32 %audio.035.i, 1
  %tobool.not.i = icmp ult i32 %audio_mask.addr.034.i, 2
  br i1 %tobool.not.i, label %if.end11, label %if.end9.i.while.body.i_crit_edge

if.end9.i.while.body.i_crit_edge:                 ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

pcxhr_prepair_pipe_start.exit:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %pci.i104 = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  %21 = ptrtoint ptr %pci.i104 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pci.i104, align 4
  %dev.i105 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i105, ptr noundef nonnull @.str.79, i32 noundef %call.i.i) #8
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %rmh.i) #5
  br label %cleanup

if.end11:                                         ; preds = %if.end9.i
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %rmh.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state.2)
  %cmp12 = icmp eq i32 %state.2, 0
  br i1 %cmp12, label %if.end11.if.end16_crit_edge, label %if.end14

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.end14:                                         ; preds = %if.end11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #5
  %inc = add nuw nsw i32 %i.0193, 1
  %exitcond.not = icmp eq i32 %inc, 20
  br i1 %exitcond.not, label %if.end14.if.end16_crit_edge, label %if.end14.for.body_crit_edge

if.end14.for.body_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end14.if.end16_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %and15 = and i32 %5, %or
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.end14.if.end16_crit_edge, %if.end11.if.end16_crit_edge, %if.end11.thread
  %spec.select = phi i32 [ %and, %if.end11.thread ], [ 0, %if.else ], [ %and, %if.end11.if.end16_crit_edge ], [ %and, %if.end14.if.end16_crit_edge ]
  %audio_mask.0 = phi i32 [ %and, %if.end11.thread ], [ %and15, %if.else ], [ %and, %if.end11.if.end16_crit_edge ], [ %and, %if.end14.if.end16_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %audio_mask.0)
  %cmp17 = icmp eq i32 %audio_mask.0, 0
  br i1 %cmp17, label %if.end16.cleanup_crit_edge, label %while.body.lr.ph.i113

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body.lr.ph.i113:                            ; preds = %if.end16
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %rmh.i107) #5
  %24 = call ptr @memset(ptr %rmh.i107, i32 255, i32 104)
  %cmd22.i.i108 = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh.i107, i32 0, i32 4
  %stat_len.i.i109 = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh.i107, i32 0, i32 1
  %dsp_stat.i.i110 = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh.i107, i32 0, i32 2
  %cmd_idx.i.i111 = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh.i107, i32 0, i32 3
  %arrayidx99.i34.i = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh.i107, i32 0, i32 4, i32 1
  %msg_lock.i.i112 = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 9
  br label %while.body.i116

while.body.i116:                                  ; preds = %if.end7.i.while.body.i116_crit_edge, %while.body.lr.ph.i113
  %audio.044.i = phi i32 [ 0, %while.body.lr.ph.i113 ], [ %inc.i129, %if.end7.i.while.body.i116_crit_edge ]
  %audio_mask.addr.043.i = phi i32 [ %audio_mask.0, %while.body.lr.ph.i113 ], [ %shr.i128, %if.end7.i.while.body.i116_crit_edge ]
  %and.i114 = and i32 %audio_mask.addr.043.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i114)
  %tobool1.not.i115 = icmp eq i32 %and.i114, 0
  br i1 %tobool1.not.i115, label %while.body.i116.if.end7.i_crit_edge, label %if.then.i118

while.body.i116.if.end7.i_crit_edge:              ; preds = %while.body.i116
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i

if.then.i118:                                     ; preds = %while.body.i116
  %25 = ptrtoint ptr %cmd22.i.i108 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 4333825, ptr %cmd22.i.i108, align 4
  %26 = ptrtoint ptr %stat_len.i.i109 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %stat_len.i.i109, align 2
  %27 = ptrtoint ptr %dsp_stat.i.i110 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %dsp_stat.i.i110, align 4
  %28 = ptrtoint ptr %cmd_idx.i.i111 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 13, ptr %cmd_idx.i.i111, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %audio.044.i)
  %cmp.i117 = icmp slt i32 %audio.044.i, 12
  br i1 %cmp.i117, label %if.then2.i119, label %if.else.i121

if.then2.i119:                                    ; preds = %if.then.i118
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %audio.044.i)
  %cmp68.i.i = icmp ugt i32 %audio.044.i, 23
  br i1 %cmp68.i.i, label %if.then2.i119.if.end.sink.split.i122_crit_edge, label %if.then2.i119.if.end.i124_crit_edge, !prof !263

if.then2.i119.if.end.i124_crit_edge:              ; preds = %if.then2.i119
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i124

if.then2.i119.if.end.sink.split.i122_crit_edge:   ; preds = %if.then2.i119
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.sink.split.i122

if.else.i121:                                     ; preds = %if.then.i118
  %sub.i120 = add nsw i32 %audio.044.i, -12
  %29 = ptrtoint ptr %cmd22.i.i108 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 4335873, ptr %cmd22.i.i108, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %sub.i120)
  %cmp68.i32.i = icmp ugt i32 %sub.i120, 23
  br i1 %cmp68.i32.i, label %if.else.i121.if.end.sink.split.i122_crit_edge, label %if.else.i121.if.end.i124_crit_edge, !prof !263

if.else.i121.if.end.i124_crit_edge:               ; preds = %if.else.i121
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i124

if.else.i121.if.end.sink.split.i122_crit_edge:    ; preds = %if.else.i121
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.sink.split.i122

if.end.sink.split.i122:                           ; preds = %if.else.i121.if.end.sink.split.i122_crit_edge, %if.then2.i119.if.end.sink.split.i122_crit_edge
  %sub.pn.ph.i = phi i32 [ %audio.044.i, %if.then2.i119.if.end.sink.split.i122_crit_edge ], [ %sub.i120, %if.else.i121.if.end.sink.split.i122_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 743, i32 noundef 9, ptr noundef null) #5
  br label %if.end.i124

if.end.i124:                                      ; preds = %if.end.sink.split.i122, %if.else.i121.if.end.i124_crit_edge, %if.then2.i119.if.end.i124_crit_edge
  %sub.pn.i = phi i32 [ %audio.044.i, %if.then2.i119.if.end.i124_crit_edge ], [ %sub.i120, %if.else.i121.if.end.i124_crit_edge ], [ %sub.pn.ph.i, %if.end.sink.split.i122 ]
  %storemerge.i = shl nuw i32 1, %sub.pn.i
  %30 = ptrtoint ptr %arrayidx99.i34.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %storemerge.i, ptr %arrayidx99.i34.i, align 4
  %31 = ptrtoint ptr %rmh.i107 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 2, ptr %rmh.i107, align 4
  tail call void @mutex_lock_nested(ptr noundef %msg_lock.i.i112, i32 noundef 0) #5
  %call.i.i123 = call fastcc i32 @pcxhr_send_msg_nolock(ptr noundef %mgr, ptr noundef nonnull %rmh.i107) #5
  tail call void @mutex_unlock(ptr noundef %msg_lock.i.i112) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i123)
  %tobool4.not.i = icmp eq i32 %call.i.i123, 0
  br i1 %tobool4.not.i, label %if.end.i124.if.end7.i_crit_edge, label %do.end.i127

if.end.i124.if.end7.i_crit_edge:                  ; preds = %if.end.i124
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i

do.end.i127:                                      ; preds = %if.end.i124
  call void @__sanitizer_cov_trace_pc() #7
  %pci.i125 = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  %32 = ptrtoint ptr %pci.i125 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pci.i125, align 4
  %dev.i126 = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i126, ptr noundef nonnull @.str.81, i32 noundef %call.i.i123) #8
  br label %pcxhr_toggle_pipes.exit.thread

if.end7.i:                                        ; preds = %if.end.i124.if.end7.i_crit_edge, %while.body.i116.if.end7.i_crit_edge
  %shr.i128 = ashr i32 %audio_mask.addr.043.i, 1
  %inc.i129 = add i32 %audio.044.i, 1
  %tobool.not.i130 = icmp ult i32 %audio_mask.addr.043.i, 2
  br i1 %tobool.not.i130, label %while.end.i, label %if.end7.i.while.body.i116_crit_edge

if.end7.i.while.body.i116_crit_edge:              ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i116

while.end.i:                                      ; preds = %if.end7.i
  %34 = ptrtoint ptr %cmd22.i.i108 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 458753, ptr %cmd22.i.i108, align 4
  %35 = ptrtoint ptr %rmh.i107 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 1, ptr %rmh.i107, align 4
  %36 = ptrtoint ptr %stat_len.i.i109 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %stat_len.i.i109, align 2
  %37 = ptrtoint ptr %dsp_stat.i.i110 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %dsp_stat.i.i110, align 4
  %38 = ptrtoint ptr %cmd_idx.i.i111 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 3, ptr %cmd_idx.i.i111, align 2
  tail call void @mutex_lock_nested(ptr noundef %msg_lock.i.i112, i32 noundef 0) #5
  %call.i41.i = call fastcc i32 @pcxhr_send_msg_nolock(ptr noundef %mgr, ptr noundef nonnull %rmh.i107) #5
  tail call void @mutex_unlock(ptr noundef %msg_lock.i.i112) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41.i)
  %tobool9.not.i = icmp eq i32 %call.i41.i, 0
  br i1 %tobool9.not.i, label %pcxhr_toggle_pipes.exit, label %do.end13.i

do.end13.i:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %pci14.i = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  %39 = ptrtoint ptr %pci14.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pci14.i, align 4
  %dev15.i = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15.i, ptr noundef nonnull @.str.84, i32 noundef %call.i41.i) #8
  br label %pcxhr_toggle_pipes.exit.thread

pcxhr_toggle_pipes.exit.thread:                   ; preds = %do.end13.i, %do.end.i127
  %retval.0.i131.ph = phi i32 [ %call.i41.i, %do.end13.i ], [ %call.i.i123, %do.end.i127 ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %rmh.i107) #5
  br label %cleanup

pcxhr_toggle_pipes.exit:                          ; preds = %while.end.i
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %rmh.i107) #5
  %pci.i136 = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  br label %while.cond

while.cond:                                       ; preds = %if.end39, %pcxhr_toggle_pipes.exit
  %i.1 = phi i32 [ %inc31, %if.end39 ], [ 0, %pcxhr_toggle_pipes.exit ]
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i, align 4
  %add.i133 = add i32 %42, 72
  %and.i134 = and i32 %add.i133, 1048575
  %add1.i135 = or i32 %and.i134, -18874368
  %43 = inttoptr i32 %add1.i135 to ptr
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %43) #5, !srcloc !246
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !287
  %45 = and i32 %44, -256
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcxhr_pipes_running.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcxhr_set_pipe_state, %if.then.i138)) #5
          to label %pcxhr_pipes_running.exit140 [label %if.then.i138], !srcloc !260

if.then.i138:                                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %pci.i136 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pci.i136, align 4
  %dev.i137 = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcxhr_pipes_running.__UNIQUE_ID_ddebug244, ptr noundef %dev.i137, ptr noundef nonnull @.str.78, i32 noundef %46) #5
  br label %pcxhr_pipes_running.exit140

pcxhr_pipes_running.exit140:                      ; preds = %if.then.i138, %while.cond
  %and25 = and i32 %46, %audio_mask.0
  call void @__sanitizer_cov_trace_cmp4(i32 %and25, i32 %spec.select)
  %cmp28 = icmp eq i32 %and25, %spec.select
  br i1 %cmp28, label %while.end, label %if.end30

if.end30:                                         ; preds = %pcxhr_pipes_running.exit140
  %exitcond194 = icmp eq i32 %i.1, 1999
  br i1 %exitcond194, label %do.end36, label %if.end39

do.end36:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  %49 = ptrtoint ptr %pci.i136 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pci.i136, align 4
  %dev38 = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev38, ptr noundef nonnull @.str.12) #8
  br label %cleanup

if.end39:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  %inc31 = add nuw nsw i32 %i.1, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 2147480) #5
  br label %while.cond

while.end:                                        ; preds = %pcxhr_pipes_running.exit140
  br i1 %tobool6.not, label %while.body.lr.ph.i147, label %while.end.if.end46_crit_edge

while.end.if.end46_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

while.body.lr.ph.i147:                            ; preds = %while.end
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %rmh.i141) #5
  %52 = getelementptr inbounds i8, ptr %rmh.i141, i32 12
  %53 = call ptr @memset(ptr %52, i32 255, i32 92)
  %cmd22.i.i142 = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh.i141, i32 0, i32 4
  %stat_len.i.i143 = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh.i141, i32 0, i32 1
  %dsp_stat.i.i144 = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh.i141, i32 0, i32 2
  %cmd_idx.i.i145 = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh.i141, i32 0, i32 3
  br label %while.body.i150

while.body.i150:                                  ; preds = %if.end6.i.while.body.i150_crit_edge, %while.body.lr.ph.i147
  %audio.030.i = phi i32 [ 0, %while.body.lr.ph.i147 ], [ %inc.i172, %if.end6.i.while.body.i150_crit_edge ]
  %audio_mask.addr.029.i = phi i32 [ %audio_mask.0, %while.body.lr.ph.i147 ], [ %shr.i171, %if.end6.i.while.body.i150_crit_edge ]
  %and.i148 = and i32 %audio_mask.addr.029.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i148)
  %tobool1.not.i149 = icmp eq i32 %and.i148, 0
  br i1 %tobool1.not.i149, label %while.body.i150.if.end6.i_crit_edge, label %if.then.i152

while.body.i150.if.end6.i_crit_edge:              ; preds = %while.body.i150
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i

if.then.i152:                                     ; preds = %while.body.i150
  %54 = ptrtoint ptr %cmd22.i.i142 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 4653060, ptr %cmd22.i.i142, align 4
  %55 = ptrtoint ptr %rmh.i141 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 1, ptr %rmh.i141, align 4
  %56 = ptrtoint ptr %stat_len.i.i143 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 0, ptr %stat_len.i.i143, align 2
  %57 = ptrtoint ptr %dsp_stat.i.i144 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 0, ptr %dsp_stat.i.i144, align 4
  %58 = ptrtoint ptr %cmd_idx.i.i145 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 14, ptr %cmd_idx.i.i145, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %audio.030.i)
  %cmp.i151 = icmp slt i32 %audio.030.i, 12
  br i1 %cmp.i151, label %if.then2.i154, label %if.else.i158

if.then2.i154:                                    ; preds = %if.then.i152
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %audio.030.i)
  %cmp.i.i153 = icmp ugt i32 %audio.030.i, 31
  br i1 %cmp.i.i153, label %if.then2.i154.if.end.sink.split.sink.split.i161_crit_edge, label %if.end.i.i156, !prof !263

if.then2.i154.if.end.sink.split.sink.split.i161_crit_edge: ; preds = %if.then2.i154
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.sink.split.sink.split.i161

if.end.i.i156:                                    ; preds = %if.then2.i154
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %audio.030.i)
  %tobool22.not.i.i155 = icmp eq i32 %audio.030.i, 0
  br i1 %tobool22.not.i.i155, label %if.end.i.i156.if.end.i167_crit_edge, label %if.end.i.i156.if.end.sink.split.i164_crit_edge

if.end.i.i156.if.end.sink.split.i164_crit_edge:   ; preds = %if.end.i.i156
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.sink.split.i164

if.end.i.i156.if.end.i167_crit_edge:              ; preds = %if.end.i.i156
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i167

if.else.i158:                                     ; preds = %if.then.i152
  %sub.i157 = add nsw i32 %audio.030.i, -12
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %sub.i157)
  %cmp.i17.i = icmp ugt i32 %sub.i157, 31
  br i1 %cmp.i17.i, label %if.else.i158.if.end.sink.split.sink.split.i161_crit_edge, label %if.end.i19.i, !prof !263

if.else.i158.if.end.sink.split.sink.split.i161_crit_edge: ; preds = %if.else.i158
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.sink.split.sink.split.i161

if.end.i19.i:                                     ; preds = %if.else.i158
  %59 = ptrtoint ptr %cmd22.i.i142 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 4655108, ptr %cmd22.i.i142, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i157)
  %tobool22.not.i20.i = icmp eq i32 %sub.i157, 0
  br i1 %tobool22.not.i20.i, label %if.end.i19.i.if.end.i167_crit_edge, label %if.end.i19.i.if.end.sink.split.i164_crit_edge

if.end.i19.i.if.end.sink.split.i164_crit_edge:    ; preds = %if.end.i19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.sink.split.i164

if.end.i19.i.if.end.i167_crit_edge:               ; preds = %if.end.i19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i167

if.end.sink.split.sink.split.i161:                ; preds = %if.else.i158.if.end.sink.split.sink.split.i161_crit_edge, %if.then2.i154.if.end.sink.split.sink.split.i161_crit_edge
  %sub.sink.ph.i159 = phi i32 [ %audio.030.i, %if.then2.i154.if.end.sink.split.sink.split.i161_crit_edge ], [ %sub.i157, %if.else.i158.if.end.sink.split.sink.split.i161_crit_edge ]
  %.sink.ph.i160 = phi i32 [ 4653060, %if.then2.i154.if.end.sink.split.sink.split.i161_crit_edge ], [ 4655108, %if.else.i158.if.end.sink.split.sink.split.i161_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 733, i32 noundef 9, ptr noundef null) #5
  br label %if.end.sink.split.i164

if.end.sink.split.i164:                           ; preds = %if.end.sink.split.sink.split.i161, %if.end.i19.i.if.end.sink.split.i164_crit_edge, %if.end.i.i156.if.end.sink.split.i164_crit_edge
  %sub.sink.i162 = phi i32 [ %audio.030.i, %if.end.i.i156.if.end.sink.split.i164_crit_edge ], [ %sub.i157, %if.end.i19.i.if.end.sink.split.i164_crit_edge ], [ %sub.sink.ph.i159, %if.end.sink.split.sink.split.i161 ]
  %.sink.i163 = phi i32 [ 4653060, %if.end.i.i156.if.end.sink.split.i164_crit_edge ], [ 4655108, %if.end.i19.i.if.end.sink.split.i164_crit_edge ], [ %.sink.ph.i160, %if.end.sink.split.sink.split.i161 ]
  %shl.i21.i = shl i32 %sub.sink.i162, 5
  %or26.i23.i = or i32 %shl.i21.i, %.sink.i163
  %60 = ptrtoint ptr %cmd22.i.i142 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %or26.i23.i, ptr %cmd22.i.i142, align 4
  br label %if.end.i167

if.end.i167:                                      ; preds = %if.end.sink.split.i164, %if.end.i19.i.if.end.i167_crit_edge, %if.end.i.i156.if.end.i167_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %msg_lock.i.i112, i32 noundef 0) #5
  %call.i.i165 = call fastcc i32 @pcxhr_send_msg_nolock(ptr noundef %mgr, ptr noundef nonnull %rmh.i141) #5
  tail call void @mutex_unlock(ptr noundef %msg_lock.i.i112) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i165)
  %tobool3.not.i166 = icmp eq i32 %call.i.i165, 0
  br i1 %tobool3.not.i166, label %if.end.i167.if.end6.i_crit_edge, label %pcxhr_stop_pipes.exit

if.end.i167.if.end6.i_crit_edge:                  ; preds = %if.end.i167
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.end.i167.if.end6.i_crit_edge, %while.body.i150.if.end6.i_crit_edge
  %shr.i171 = ashr i32 %audio_mask.addr.029.i, 1
  %inc.i172 = add i32 %audio.030.i, 1
  %tobool.not.i173 = icmp ult i32 %audio_mask.addr.029.i, 2
  br i1 %tobool.not.i173, label %pcxhr_stop_pipes.exit.thread, label %if.end6.i.while.body.i150_crit_edge

if.end6.i.while.body.i150_crit_edge:              ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i150

pcxhr_stop_pipes.exit.thread:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %rmh.i141) #5
  br label %if.end46

pcxhr_stop_pipes.exit:                            ; preds = %if.end.i167
  call void @__sanitizer_cov_trace_pc() #7
  %61 = ptrtoint ptr %pci.i136 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pci.i136, align 4
  %dev.i169 = getelementptr inbounds %struct.pci_dev, ptr %62, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i169, ptr noundef nonnull @.str.86, i32 noundef %call.i.i165) #8
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %rmh.i141) #5
  br label %cleanup

if.end46:                                         ; preds = %pcxhr_stop_pipes.exit.thread, %while.end.if.end46_crit_edge
  %call47 = tail call i64 @ktime_get() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcxhr_set_pipe_state.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcxhr_set_pipe_state, %if.then60)) #5
          to label %cleanup [label %if.then60], !srcloc !260

if.then60:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  %sub = sub i64 %call47, %call
  %63 = ptrtoint ptr %pci.i136 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pci.i136, align 4
  %dev62 = getelementptr inbounds %struct.pci_dev, ptr %64, i32 0, i32 44
  %conv = trunc i64 %sub to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcxhr_set_pipe_state.__UNIQUE_ID_ddebug246, ptr noundef %dev62, ptr noundef nonnull @.str.13, i32 noundef %conv, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then60, %if.end46, %pcxhr_stop_pipes.exit, %do.end36, %pcxhr_toggle_pipes.exit.thread, %if.end16.cleanup_crit_edge, %pcxhr_prepair_pipe_start.exit
  %retval.0 = phi i32 [ -16, %do.end36 ], [ %call.i.i, %pcxhr_prepair_pipe_start.exit ], [ 0, %if.end16.cleanup_crit_edge ], [ %call.i.i165, %pcxhr_stop_pipes.exit ], [ 0, %if.then60 ], [ %retval.0.i131.ph, %pcxhr_toggle_pipes.exit.thread ], [ 0, %if.end46 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pcxhr_write_io_num_reg_cont(ptr noundef %mgr, i32 noundef %mask, i32 noundef %value, ptr noundef writeonly %changed) local_unnamed_addr #0 align 64 {
entry:
  %rmh = alloca %struct.pcxhr_rmh, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %rmh) #5
  %0 = getelementptr inbounds i8, ptr %rmh, i32 20
  %1 = call ptr @memset(ptr %0, i32 255, i32 84)
  %msg_lock = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %msg_lock, i32 noundef 0) #5
  %io_num_reg_cont = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 28
  %2 = ptrtoint ptr %io_num_reg_cont to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %io_num_reg_cont, align 4
  %and = and i32 %3, %mask
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %value)
  %cmp = icmp eq i32 %and, %value
  br i1 %cmp, label %do.body, label %if.end8

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcxhr_write_io_num_reg_cont.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcxhr_write_io_num_reg_cont, %if.then3)) #5
          to label %do.end [label %if.then3], !srcloc !260

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %pci = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  %4 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcxhr_write_io_num_reg_cont.__UNIQUE_ID_ddebug247, ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %mask, i32 noundef %value) #5
  br label %do.end

do.end:                                           ; preds = %if.then3, %do.body
  %tobool4.not = icmp eq ptr %changed, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %do.end.cleanup.sink.split_crit_edge

do.end.cleanup.sink.split_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %entry
  %cmd22.i = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 4
  %6 = ptrtoint ptr %cmd22.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 589824, ptr %cmd22.i, align 4
  %stat_len.i = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 1
  %7 = ptrtoint ptr %stat_len.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 1, ptr %stat_len.i, align 2
  %dsp_stat.i = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 2
  %8 = ptrtoint ptr %dsp_stat.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %dsp_stat.i, align 4
  %cmd_idx.i = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 3
  %9 = ptrtoint ptr %cmd_idx.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 4, ptr %cmd_idx.i, align 2
  %arrayidx10 = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mask, ptr %arrayidx10, align 4
  %arrayidx12 = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 4, i32 2
  %11 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %value, ptr %arrayidx12, align 4
  %12 = ptrtoint ptr %rmh to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 3, ptr %rmh, align 4
  %call13 = call fastcc i32 @pcxhr_send_msg_nolock(ptr noundef %mgr, ptr noundef nonnull %rmh)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then15:                                        ; preds = %if.end8
  %neg = xor i32 %mask, -1
  %13 = ptrtoint ptr %io_num_reg_cont to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %io_num_reg_cont, align 4
  %and17 = and i32 %14, %neg
  %or19 = or i32 %and17, %value
  store i32 %or19, ptr %io_num_reg_cont, align 4
  %tobool20.not = icmp eq ptr %changed, null
  br i1 %tobool20.not, label %if.then15.cleanup_crit_edge, label %if.then15.cleanup.sink.split_crit_edge

if.then15.cleanup.sink.split_crit_edge:           ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.then15.cleanup.sink.split_crit_edge, %do.end.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 0, %do.end.cleanup.sink.split_crit_edge ], [ 1, %if.then15.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 0, %do.end.cleanup.sink.split_crit_edge ], [ %call13, %if.then15.cleanup.sink.split_crit_edge ]
  %15 = ptrtoint ptr %changed to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.sink, ptr %changed, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then15.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end.cleanup_crit_edge ], [ %call13, %if.then15.cleanup_crit_edge ], [ %call13, %if.end8.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  tail call void @mutex_unlock(ptr noundef %msg_lock) #5
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %rmh) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pcxhr_interrupt(i32 noundef %irq, ptr nocapture noundef %dev_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.pcxhr_mgr, ptr %dev_id, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, 104
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %2) #5, !srcloc !246
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !288
  %4 = and i32 %3, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %add7 = add i32 %6, 100
  %and8 = and i32 %add7, 1048575
  %add9 = or i32 %and8, -18874368
  %7 = inttoptr i32 %add9 to ptr
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %7) #5, !srcloc !246
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !290
  tail call void @arm_heavy_mb() #5
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %add15 = add i32 %11, 100
  %and16 = and i32 %add15, 1048575
  %add17 = or i32 %and16, -18874368
  %12 = inttoptr i32 %add17 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %12, i32 %8) #5, !srcloc !245
  %and19 = and i32 %9, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end.if.end37_crit_edge, label %if.then21

if.end.if.end37_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.then21:                                        ; preds = %if.end
  %timer_toggle23 = getelementptr inbounds %struct.pcxhr_mgr, ptr %dev_id, i32 0, i32 24
  %13 = ptrtoint ptr %timer_toggle23 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %timer_toggle23, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and19, i32 %14)
  %cmp = icmp eq i32 %and19, %14
  br i1 %cmp, label %do.body25, label %if.then21.if.end35_crit_edge

if.then21.if.end35_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

do.body25:                                        ; preds = %if.then21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcxhr_interrupt.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcxhr_interrupt, %if.then31)) #5
          to label %do.end34 [label %if.then31], !srcloc !260

if.then31:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #7
  %pci = getelementptr inbounds %struct.pcxhr_mgr, ptr %dev_id, i32 0, i32 2
  %15 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcxhr_interrupt.__UNIQUE_ID_ddebug256, ptr noundef %dev, ptr noundef nonnull @.str.17) #5
  br label %do.end34

do.end34:                                         ; preds = %if.then31, %do.body25
  %dsp_time_err = getelementptr inbounds %struct.pcxhr_mgr, ptr %dev_id, i32 0, i32 26
  %17 = ptrtoint ptr %dsp_time_err to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dsp_time_err, align 4
  %inc = add i32 %18, 1
  store i32 %inc, ptr %dsp_time_err, align 4
  br label %if.end35

if.end35:                                         ; preds = %do.end34, %if.then21.if.end35_crit_edge
  %19 = ptrtoint ptr %timer_toggle23 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and19, ptr %timer_toggle23, align 4
  %src_it_dsp = getelementptr inbounds %struct.pcxhr_mgr, ptr %dev_id, i32 0, i32 27
  %20 = ptrtoint ptr %src_it_dsp to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %9, ptr %src_it_dsp, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.end35, %if.end.if.end37_crit_edge
  %21 = xor i1 %tobool20.not, true
  %and38 = and i32 %9, 47872
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end37.if.end46_crit_edge, label %if.then40

if.end37.if.end46_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

if.then40:                                        ; preds = %if.end37
  %and41 = and i32 %9, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.then40.if.end44_crit_edge, label %if.then43

if.then40.if.end44_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

if.then43:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #7
  %dsp_time_last = getelementptr inbounds %struct.pcxhr_mgr, ptr %dev_id, i32 0, i32 25
  %22 = ptrtoint ptr %dsp_time_last to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 268435456, ptr %dsp_time_last, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.then40.if.end44_crit_edge
  %src_it_dsp45 = getelementptr inbounds %struct.pcxhr_mgr, ptr %dev_id, i32 0, i32 27
  %23 = ptrtoint ptr %src_it_dsp45 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %9, ptr %src_it_dsp45, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.end44, %if.end37.if.end46_crit_edge
  %wake_thread.1.off0 = phi i1 [ true, %if.end44 ], [ %21, %if.end37.if.end46_crit_edge ]
  %and47 = and i32 %9, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.end46.if.end68_crit_edge, label %do.body50

if.end46.if.end68_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end68

do.body50:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcxhr_interrupt.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcxhr_interrupt, %if.then62)) #5
          to label %if.end68 [label %if.then62], !srcloc !260

if.then62:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #7
  %pci63 = getelementptr inbounds %struct.pcxhr_mgr, ptr %dev_id, i32 0, i32 2
  %24 = ptrtoint ptr %pci63 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pci63, align 4
  %dev64 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcxhr_interrupt.__UNIQUE_ID_ddebug257, ptr noundef %dev64, ptr noundef nonnull @.str.18, i32 noundef %9) #5
  br label %if.end68

if.end68:                                         ; preds = %if.then62, %do.body50, %if.end46.if.end68_crit_edge
  %cond = select i1 %wake_thread.1.off0, i32 2, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.end68, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end68 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pcxhr_threaded_irq(i32 noundef %irq, ptr noundef %dev_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.pcxhr_mgr, ptr %dev_id, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %src_it_dsp = getelementptr inbounds %struct.pcxhr_mgr, ptr %dev_id, i32 0, i32 27
  %0 = ptrtoint ptr %src_it_dsp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %src_it_dsp, align 4
  %and = and i32 %1, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end158_crit_edge, label %if.then

entry.if.end158_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end158

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr %struct.pcxhr_mgr, ptr %dev_id, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %add = add i32 %3, 80
  %and1 = and i32 %add, 1048575
  %add2 = or i32 %and1, -18874368
  %4 = inttoptr i32 %add2 to ptr
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %4) #5, !srcloc !246
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !291
  %6 = and i32 %5, -256
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %dsp_time_last = getelementptr inbounds %struct.pcxhr_mgr, ptr %dev_id, i32 0, i32 25
  %8 = ptrtoint ptr %dsp_time_last to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dsp_time_last, align 4
  %sub = sub i32 %7, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp = icmp sgt i32 %sub, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %9)
  %cmp6.not = icmp eq i32 %9, 268435456
  %or.cond = or i1 %cmp6.not, %cmp
  br i1 %or.cond, label %if.then.if.end58_crit_edge, label %if.then7

if.then.if.end58_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58

if.then7:                                         ; preds = %if.then
  %add9 = add nsw i32 %sub, 16777216
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcxhr_threaded_irq.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcxhr_threaded_irq, %if.then15)) #5
          to label %do.end [label %if.then15], !srcloc !260

if.then15:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  %pci = getelementptr inbounds %struct.pcxhr_mgr, ptr %dev_id, i32 0, i32 2
  %10 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %12 = ptrtoint ptr %dsp_time_last to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dsp_time_last, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcxhr_threaded_irq.__UNIQUE_ID_ddebug258, ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %13, i32 noundef %7) #5
  br label %do.end

do.end:                                           ; preds = %if.then15, %if.then7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777216, i32 %sub)
  %cmp17 = icmp ugt i32 %sub, -16777216
  br i1 %cmp17, label %land.lhs.true18, label %do.end.do.body39_crit_edge

do.end.do.body39_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body39

land.lhs.true18:                                  ; preds = %do.end
  %granularity = getelementptr inbounds %struct.pcxhr_mgr, ptr %dev_id, i32 0, i32 4
  %14 = ptrtoint ptr %granularity to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %granularity, align 4
  %mul = shl i32 %15, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add9, i32 %mul)
  %cmp19.not = icmp sgt i32 %add9, %mul
  br i1 %cmp19.not, label %land.lhs.true18.do.body39_crit_edge, label %do.body21

land.lhs.true18.do.body39_crit_edge:              ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body39

do.body21:                                        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcxhr_threaded_irq.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcxhr_threaded_irq, %if.then33)) #5
          to label %if.end58 [label %if.then33], !srcloc !260

if.then33:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #7
  %pci34 = getelementptr inbounds %struct.pcxhr_mgr, ptr %dev_id, i32 0, i32 2
  %16 = ptrtoint ptr %pci34 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pci34, align 4
  %dev35 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcxhr_threaded_irq.__UNIQUE_ID_ddebug259, ptr noundef %dev35, ptr noundef nonnull @.str.21, i32 noundef %add9) #5
  br label %if.else79

do.body39:                                        ; preds = %land.lhs.true18.do.body39_crit_edge, %do.end.do.body39_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcxhr_threaded_irq.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcxhr_threaded_irq, %if.then51)) #5
          to label %do.end56 [label %if.then51], !srcloc !260

if.then51:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #7
  %pci52 = getelementptr inbounds %struct.pcxhr_mgr, ptr %dev_id, i32 0, i32 2
  %18 = ptrtoint ptr %pci52 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pci52, align 4
  %dev53 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcxhr_threaded_irq.__UNIQUE_ID_ddebug260, ptr noundef %dev53, ptr noundef nonnull @.str.22) #5
  br label %do.end56

do.end56:                                         ; preds = %if.then51, %do.body39
  %dsp_time_err = getelementptr inbounds %struct.pcxhr_mgr, ptr %dev_id, i32 0, i32 26
  %20 = ptrtoint ptr %dsp_time_err to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dsp_time_err, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr %dsp_time_err, align 4
  br label %if.else79

if.end58:                                         ; preds = %do.body21, %if.then.if.end58_crit_edge
  %dsp_time_diff.1 = phi i32 [ %sub, %if.then.if.end58_crit_edge ], [ %add9, %do.body21 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dsp_time_diff.1)
  %cmp59 = icmp eq i32 %dsp_time_diff.1, 0
  br i1 %cmp59, label %do.body61, label %if.end58.if.else79_crit_edge

if.end58.if.else79_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else79

do.body61:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcxhr_threaded_irq.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcxhr_threaded_irq, %if.then73)) #5
          to label %if.end129 [label %if.then73], !srcloc !260

if.then73:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #7
  %pci74 = getelementptr inbounds %struct.pcxhr_mgr, ptr %dev_id, i32 0, i32 2
  %22 = ptrtoint ptr %pci74 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pci74, align 4
  %dev75 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcxhr_threaded_irq.__UNIQUE_ID_ddebug261, ptr noundef %dev75, ptr noundef nonnull @.str.23, i32 noundef %7) #5
  br label %if.end129

if.else79:                                        ; preds = %if.end58.if.else79_crit_edge, %do.end56, %if.then33
  %dsp_time_diff.1234 = phi i32 [ %dsp_time_diff.1, %if.end58.if.else79_crit_edge ], [ %add9, %if.then33 ], [ %sub, %do.end56 ]
  %granularity80 = getelementptr inbounds %struct.pcxhr_mgr, ptr %dev_id, i32 0, i32 4
  %24 = ptrtoint ptr %granularity80 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %granularity80, align 4
  %mul81 = shl i32 %25, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %dsp_time_diff.1234, i32 %mul81)
  %cmp82.not = icmp slt i32 %dsp_time_diff.1234, %mul81
  br i1 %cmp82.not, label %if.else105, label %do.body84

do.body84:                                        ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcxhr_threaded_irq.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcxhr_threaded_irq, %if.then96)) #5
          to label %if.end129 [label %if.then96], !srcloc !260

if.then96:                                        ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #7
  %pci97 = getelementptr inbounds %struct.pcxhr_mgr, ptr %dev_id, i32 0, i32 2
  %26 = ptrtoint ptr %pci97 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pci97, align 4
  %dev98 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  %28 = ptrtoint ptr %dsp_time_last to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dsp_time_last, align 4
  %sub101 = sub i32 %7, %29
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcxhr_threaded_irq.__UNIQUE_ID_ddebug262, ptr noundef %dev98, ptr noundef nonnull @.str.24, i32 noundef %29, i32 noundef %sub101) #5
  br label %if.end129

if.else105:                                       ; preds = %if.else79
  %rem = srem i32 %dsp_time_diff.1234, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool107.not = icmp eq i32 %rem, 0
  br i1 %tobool107.not, label %if.else105.if.end129_crit_edge, label %do.body109

if.else105.if.end129_crit_edge:                   ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end129

do.body109:                                       ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcxhr_threaded_irq.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcxhr_threaded_irq, %if.then121)) #5
          to label %if.end129 [label %if.then121], !srcloc !260

if.then121:                                       ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #7
  %pci122 = getelementptr inbounds %struct.pcxhr_mgr, ptr %dev_id, i32 0, i32 2
  %30 = ptrtoint ptr %pci122 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pci122, align 4
  %dev123 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcxhr_threaded_irq.__UNIQUE_ID_ddebug263, ptr noundef %dev123, ptr noundef nonnull @.str.25, i32 noundef %dsp_time_diff.1234) #5
  br label %if.end129

if.end129:                                        ; preds = %if.then121, %do.body109, %if.else105.if.end129_crit_edge, %if.then96, %do.body84, %if.then73, %do.body61
  %dsp_time_diff.1233 = phi i32 [ %dsp_time_diff.1234, %if.then96 ], [ %dsp_time_diff.1234, %if.then121 ], [ %dsp_time_diff.1234, %if.else105.if.end129_crit_edge ], [ 0, %if.then73 ], [ 0, %do.body61 ], [ %dsp_time_diff.1234, %do.body84 ], [ %dsp_time_diff.1234, %do.body109 ]
  %32 = ptrtoint ptr %dsp_time_last to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %7, ptr %dsp_time_last, align 4
  %33 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dev_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp131240.not = icmp eq i32 %34, 0
  br i1 %cmp131240.not, label %if.end129.if.end158_crit_edge, label %if.end129.for.body_crit_edge

if.end129.for.body_crit_edge:                     ; preds = %if.end129
  br label %for.body

if.end129.if.end158_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end158

for.cond142.preheader:                            ; preds = %for.inc139
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp144244.not = icmp eq i32 %42, 0
  br i1 %cmp144244.not, label %for.cond142.preheader.if.end158_crit_edge, label %for.cond142.preheader.for.body145_crit_edge

for.cond142.preheader.for.body145_crit_edge:      ; preds = %for.cond142.preheader
  br label %for.body145

for.cond142.preheader.if.end158_crit_edge:        ; preds = %for.cond142.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end158

for.body:                                         ; preds = %for.inc139.for.body_crit_edge, %if.end129.for.body_crit_edge
  %i.0241 = phi i32 [ %inc140, %for.inc139.for.body_crit_edge ], [ 0, %if.end129.for.body_crit_edge ]
  %arrayidx133 = getelementptr %struct.pcxhr_mgr, ptr %dev_id, i32 0, i32 1, i32 %i.0241
  %35 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx133, align 4
  %nb_streams_capt = getelementptr inbounds %struct.snd_pcxhr, ptr %36, i32 0, i32 9
  %37 = ptrtoint ptr %nb_streams_capt to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nb_streams_capt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp135238 = icmp sgt i32 %38, 0
  br i1 %cmp135238, label %for.body.for.body136_crit_edge, label %for.body.for.inc139_crit_edge

for.body.for.inc139_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc139

for.body.for.body136_crit_edge:                   ; preds = %for.body
  br label %for.body136

for.body136:                                      ; preds = %for.body136.for.body136_crit_edge, %for.body.for.body136_crit_edge
  %j.0239 = phi i32 [ %inc138, %for.body136.for.body136_crit_edge ], [ 0, %for.body.for.body136_crit_edge ]
  %arrayidx137 = getelementptr %struct.snd_pcxhr, ptr %36, i32 0, i32 7, i32 %j.0239
  tail call fastcc void @pcxhr_update_timer_pos(ptr noundef %dev_id, ptr noundef %arrayidx137, i32 noundef %dsp_time_diff.1233)
  %inc138 = add nuw nsw i32 %j.0239, 1
  %39 = ptrtoint ptr %nb_streams_capt to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nb_streams_capt, align 4
  %cmp135 = icmp slt i32 %inc138, %40
  br i1 %cmp135, label %for.body136.for.body136_crit_edge, label %for.body136.for.inc139_crit_edge

for.body136.for.inc139_crit_edge:                 ; preds = %for.body136
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc139

for.body136.for.body136_crit_edge:                ; preds = %for.body136
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body136

for.inc139:                                       ; preds = %for.body136.for.inc139_crit_edge, %for.body.for.inc139_crit_edge
  %inc140 = add nuw i32 %i.0241, 1
  %41 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dev_id, align 4
  %cmp131 = icmp ult i32 %inc140, %42
  br i1 %cmp131, label %for.inc139.for.body_crit_edge, label %for.cond142.preheader

for.inc139.for.body_crit_edge:                    ; preds = %for.inc139
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body145:                                      ; preds = %for.inc155.for.body145_crit_edge, %for.cond142.preheader.for.body145_crit_edge
  %i.1245 = phi i32 [ %inc156, %for.inc155.for.body145_crit_edge ], [ 0, %for.cond142.preheader.for.body145_crit_edge ]
  %arrayidx147 = getelementptr %struct.pcxhr_mgr, ptr %dev_id, i32 0, i32 1, i32 %i.1245
  %43 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx147, align 4
  %nb_streams_play = getelementptr inbounds %struct.snd_pcxhr, ptr %44, i32 0, i32 8
  %45 = ptrtoint ptr %nb_streams_play to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %nb_streams_play, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp149242 = icmp sgt i32 %46, 0
  br i1 %cmp149242, label %for.body145.for.body150_crit_edge, label %for.body145.for.inc155_crit_edge

for.body145.for.inc155_crit_edge:                 ; preds = %for.body145
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc155

for.body145.for.body150_crit_edge:                ; preds = %for.body145
  br label %for.body150

for.body150:                                      ; preds = %for.body150.for.body150_crit_edge, %for.body145.for.body150_crit_edge
  %j.1243 = phi i32 [ %inc153, %for.body150.for.body150_crit_edge ], [ 0, %for.body145.for.body150_crit_edge ]
  %arrayidx151 = getelementptr %struct.snd_pcxhr, ptr %44, i32 0, i32 6, i32 %j.1243
  tail call fastcc void @pcxhr_update_timer_pos(ptr noundef %dev_id, ptr noundef %arrayidx151, i32 noundef %dsp_time_diff.1233)
  %inc153 = add nuw nsw i32 %j.1243, 1
  %47 = ptrtoint ptr %nb_streams_play to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %nb_streams_play, align 8
  %cmp149 = icmp slt i32 %inc153, %48
  br i1 %cmp149, label %for.body150.for.body150_crit_edge, label %for.body150.for.inc155_crit_edge

for.body150.for.inc155_crit_edge:                 ; preds = %for.body150
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc155

for.body150.for.body150_crit_edge:                ; preds = %for.body150
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body150

for.inc155:                                       ; preds = %for.body150.for.inc155_crit_edge, %for.body145.for.inc155_crit_edge
  %inc156 = add nuw i32 %i.1245, 1
  %49 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dev_id, align 4
  %cmp144 = icmp ult i32 %inc156, %50
  br i1 %cmp144, label %for.inc155.for.body145_crit_edge, label %for.inc155.if.end158_crit_edge

for.inc155.if.end158_crit_edge:                   ; preds = %for.inc155
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end158

for.inc155.for.body145_crit_edge:                 ; preds = %for.inc155
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body145

if.end158:                                        ; preds = %for.inc155.if.end158_crit_edge, %for.cond142.preheader.if.end158_crit_edge, %if.end129.if.end158_crit_edge, %entry.if.end158_crit_edge
  tail call fastcc void @pcxhr_msg_thread(ptr noundef %dev_id)
  tail call void @mutex_unlock(ptr noundef %lock) #5
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pcxhr_update_timer_pos(ptr noundef %mgr, ptr nocapture noundef %stream, i32 noundef %samples_to_add) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stream, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end60_crit_edge, label %land.lhs.true

entry.if.end60_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60

land.lhs.true:                                    ; preds = %entry
  %status = getelementptr inbounds %struct.pcxhr_stream, ptr %stream, i32 0, i32 3
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp eq i32 %3, 4
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end60_crit_edge

land.lhs.true.if.end60_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60

if.then:                                          ; preds = %land.lhs.true
  %runtime2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %samples_to_add)
  %cmp3 = icmp slt i32 %samples_to_add, 0
  br i1 %cmp3, label %if.then4, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %timer_is_synced = getelementptr inbounds %struct.pcxhr_stream, ptr %stream, i32 0, i32 7
  %6 = ptrtoint ptr %timer_is_synced to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %timer_is_synced, align 8
  %granularity = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 4
  %7 = ptrtoint ptr %granularity to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %granularity, align 4
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  %samples_to_add.addr.0 = phi i32 [ %8, %if.then4 ], [ %samples_to_add, %if.then.if.end_crit_edge ]
  %timer_is_synced5 = getelementptr inbounds %struct.pcxhr_stream, ptr %stream, i32 0, i32 7
  %9 = ptrtoint ptr %timer_is_synced5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %timer_is_synced5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool6.not = icmp eq i32 %10, 0
  br i1 %tobool6.not, label %if.then7, label %if.end.if.then22_crit_edge

if.end.if.then22_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then22

if.then7:                                         ; preds = %if.end
  %timer_abs_periods = getelementptr inbounds %struct.pcxhr_stream, ptr %stream, i32 0, i32 4
  %11 = ptrtoint ptr %timer_abs_periods to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %timer_abs_periods, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %12)
  %cmp8.not = icmp eq i64 %12, 0
  br i1 %cmp8.not, label %lor.lhs.false, label %if.then7.if.then10_crit_edge

if.then7.if.then10_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

lor.lhs.false:                                    ; preds = %if.then7
  %timer_period_frag = getelementptr inbounds %struct.pcxhr_stream, ptr %stream, i32 0, i32 5
  %13 = ptrtoint ptr %timer_period_frag to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %timer_period_frag, align 8
  %add = add i32 %14, %samples_to_add.addr.0
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 16
  %15 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %period_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %16)
  %cmp9.not = icmp ult i32 %add, %16
  br i1 %cmp9.not, label %lor.lhs.false.if.then22_crit_edge, label %lor.lhs.false.if.then10_crit_edge

lor.lhs.false.if.then10_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

lor.lhs.false.if.then22_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then22

if.then10:                                        ; preds = %lor.lhs.false.if.then10_crit_edge, %if.then7.if.then10_crit_edge
  %call = tail call fastcc i64 @pcxhr_stream_read_position(ptr noundef %mgr, ptr noundef %stream)
  %granularity11 = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 4
  %17 = ptrtoint ptr %granularity11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %granularity11, align 4
  %conv = sext i32 %18 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %call, i64 %conv)
  %cmp12.not = icmp ult i64 %call, %conv
  br i1 %cmp12.not, label %if.then10.if.end29_crit_edge, label %if.then14

if.then10.if.end29_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.then14:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  %sub = sub i64 %call, %conv
  %19 = ptrtoint ptr %timer_is_synced5 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %timer_is_synced5, align 8
  br label %if.end29

if.then22:                                        ; preds = %lor.lhs.false.if.then22_crit_edge, %if.end.if.then22_crit_edge
  %timer_abs_periods23 = getelementptr inbounds %struct.pcxhr_stream, ptr %stream, i32 0, i32 4
  %20 = ptrtoint ptr %timer_abs_periods23 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %timer_abs_periods23, align 8
  %timer_period_frag24 = getelementptr inbounds %struct.pcxhr_stream, ptr %stream, i32 0, i32 5
  %22 = ptrtoint ptr %timer_period_frag24 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %timer_period_frag24, align 8
  %conv25 = zext i32 %23 to i64
  %conv27 = sext i32 %samples_to_add.addr.0 to i64
  %add26 = add i64 %21, %conv27
  %add28 = add i64 %add26, %conv25
  br label %if.end29

if.end29:                                         ; preds = %if.then22, %if.then14, %if.then10.if.end29_crit_edge
  %new_sample_count.1 = phi i64 [ %add28, %if.then22 ], [ %sub, %if.then14 ], [ %call, %if.then10.if.end29_crit_edge ]
  %timer_abs_periods30 = getelementptr inbounds %struct.pcxhr_stream, ptr %stream, i32 0, i32 4
  %period_size31 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 16
  %24 = ptrtoint ptr %timer_abs_periods30 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %timer_abs_periods30, align 8
  %26 = ptrtoint ptr %period_size31 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %period_size31, align 4
  %conv32103 = zext i32 %27 to i64
  %add33104 = add i64 %25, %conv32103
  call void @__sanitizer_cov_trace_cmp8(i64 %add33104, i64 %new_sample_count.1)
  %cmp34105 = icmp ugt i64 %add33104, %new_sample_count.1
  br i1 %cmp34105, label %if.end29.while.end_crit_edge, label %cleanup.lr.ph

if.end29.while.end_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

cleanup.lr.ph:                                    ; preds = %if.end29
  %timer_buf_periods = getelementptr inbounds %struct.pcxhr_stream, ptr %stream, i32 0, i32 6
  %periods = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 17
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %cleanup.lr.ph
  %add33106 = phi i64 [ %add33104, %cleanup.lr.ph ], [ %add33, %cleanup.cleanup_crit_edge ]
  %28 = ptrtoint ptr %timer_buf_periods to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %timer_buf_periods, align 4
  %inc = add i32 %29, 1
  store i32 %inc, ptr %timer_buf_periods, align 4
  %30 = ptrtoint ptr %periods to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %periods, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %31)
  %cmp39.not = icmp ult i32 %inc, %31
  %spec.store.select = select i1 %cmp39.not, i32 %inc, i32 0
  %32 = ptrtoint ptr %timer_buf_periods to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %spec.store.select, ptr %timer_buf_periods, align 4
  %33 = ptrtoint ptr %timer_abs_periods30 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %add33106, ptr %timer_abs_periods30, align 8
  %34 = ptrtoint ptr %period_size31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %period_size31, align 4
  %conv32 = zext i32 %35 to i64
  %add33 = add i64 %add33106, %conv32
  %cmp34 = icmp ugt i64 %add33, %new_sample_count.1
  br i1 %cmp34, label %cleanup.while.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.end29.while.end_crit_edge
  %36 = ptrtoint ptr %timer_abs_periods30 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %timer_abs_periods30, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %new_sample_count.1, i64 %37)
  %cmp46.not = icmp ult i64 %new_sample_count.1, %37
  br i1 %cmp46.not, label %do.end, label %if.then48

if.then48:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  %sub50 = sub i64 %new_sample_count.1, %37
  %conv51 = trunc i64 %sub50 to i32
  %timer_period_frag52 = getelementptr inbounds %struct.pcxhr_stream, ptr %stream, i32 0, i32 5
  %38 = ptrtoint ptr %timer_period_frag52 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv51, ptr %timer_period_frag52, align 8
  br label %if.end54

do.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  %pci = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  %39 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44
  %conv53 = trunc i64 %new_sample_count.1 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.88, i32 noundef %conv53) #8
  br label %if.end54

if.end54:                                         ; preds = %do.end, %if.then48
  br i1 %cmp34105, label %if.end54.if.end60_crit_edge, label %if.then56

if.end54.if.end60_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60

if.then56:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  %lock = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %lock) #5
  %41 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %stream, align 8
  tail call void @snd_pcm_period_elapsed(ptr noundef %42) #5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  br label %if.end60

if.end60:                                         ; preds = %if.then56, %if.end54.if.end60_crit_edge, %land.lhs.true.if.end60_crit_edge, %entry.if.end60_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pcxhr_msg_thread(ptr noundef %mgr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %prmh1 = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 7
  %0 = ptrtoint ptr %prmh1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prmh1, align 4
  %src_it_dsp = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 27
  %2 = ptrtoint ptr %src_it_dsp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %src_it_dsp, align 4
  %and = and i32 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %do.body

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcxhr_msg_thread.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcxhr_msg_thread, %if.then5)) #5
          to label %if.end6 [label %if.then5], !srcloc !260

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %pci = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  %4 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcxhr_msg_thread.__UNIQUE_ID_ddebug249, ptr noundef %dev, ptr noundef nonnull @.str.93) #5
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %do.body, %entry.if.end6_crit_edge
  %6 = ptrtoint ptr %src_it_dsp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %src_it_dsp, align 4
  %and8 = and i32 %7, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end6.if.end29_crit_edge, label %do.body11

if.end6.if.end29_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

do.body11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcxhr_msg_thread.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcxhr_msg_thread, %if.then23)) #5
          to label %if.end29 [label %if.then23], !srcloc !260

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #7
  %pci24 = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  %8 = ptrtoint ptr %pci24 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci24, align 4
  %dev25 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcxhr_msg_thread.__UNIQUE_ID_ddebug250, ptr noundef %dev25, ptr noundef nonnull @.str.94) #5
  br label %if.end29

if.end29:                                         ; preds = %if.then23, %do.body11, %if.end6.if.end29_crit_edge
  %10 = ptrtoint ptr %src_it_dsp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %src_it_dsp, align 4
  %and31 = and i32 %11, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end29.if.end52_crit_edge, label %do.body34

if.end29.if.end52_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

do.body34:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcxhr_msg_thread.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcxhr_msg_thread, %if.then46)) #5
          to label %if.end52 [label %if.then46], !srcloc !260

if.then46:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #7
  %pci47 = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  %12 = ptrtoint ptr %pci47 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pci47, align 4
  %dev48 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcxhr_msg_thread.__UNIQUE_ID_ddebug251, ptr noundef %dev48, ptr noundef nonnull @.str.95) #5
  br label %if.end52

if.end52:                                         ; preds = %if.then46, %do.body34, %if.end29.if.end52_crit_edge
  %14 = ptrtoint ptr %src_it_dsp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %src_it_dsp, align 4
  %and54 = and i32 %15, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.end52.if.end76_crit_edge, label %if.then56

if.end52.if.end76_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end76

if.then56:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  %cmd22.i = getelementptr inbounds %struct.pcxhr_rmh, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %cmd22.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 262144, ptr %cmd22.i, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %1, align 4
  %stat_len.i = getelementptr inbounds %struct.pcxhr_rmh, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %stat_len.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %stat_len.i, align 2
  %dsp_stat.i = getelementptr inbounds %struct.pcxhr_rmh, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %dsp_stat.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %dsp_stat.i, align 4
  %cmd_idx.i = getelementptr inbounds %struct.pcxhr_rmh, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %cmd_idx.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 2, ptr %cmd_idx.i, align 2
  %msg_lock.i = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %msg_lock.i, i32 noundef 0) #5
  %call.i = tail call fastcc i32 @pcxhr_send_msg_nolock(ptr noundef %mgr, ptr noundef %1) #5
  tail call void @mutex_unlock(ptr noundef %msg_lock.i) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcxhr_msg_thread.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcxhr_msg_thread, %if.then70)) #5
          to label %if.end76 [label %if.then70], !srcloc !260

if.then70:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #7
  %pci71 = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  %21 = ptrtoint ptr %pci71 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pci71, align 4
  %dev72 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %stat = getelementptr inbounds %struct.pcxhr_rmh, ptr %1, i32 0, i32 5
  %23 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %stat, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcxhr_msg_thread.__UNIQUE_ID_ddebug252, ptr noundef %dev72, ptr noundef nonnull @.str.96, i32 noundef %call.i, i32 noundef %24) #5
  br label %if.end76

if.end76:                                         ; preds = %if.then70, %if.then56, %if.end52.if.end76_crit_edge
  %25 = ptrtoint ptr %src_it_dsp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %src_it_dsp, align 4
  %and78 = and i32 %26, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %if.end76.if.end206_crit_edge, label %do.body81

if.end76.if.end206_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end206

do.body81:                                        ; preds = %if.end76
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcxhr_msg_thread.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcxhr_msg_thread, %if.then93)) #5
          to label %do.end98 [label %if.then93], !srcloc !260

if.then93:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #7
  %pci94 = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  %27 = ptrtoint ptr %pci94 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pci94, align 4
  %dev95 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcxhr_msg_thread.__UNIQUE_ID_ddebug253, ptr noundef %dev95, ptr noundef nonnull @.str.97) #5
  br label %do.end98

do.end98:                                         ; preds = %if.then93, %do.body81
  %cmd22.i296 = getelementptr inbounds %struct.pcxhr_rmh, ptr %1, i32 0, i32 4
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 1, ptr %1, align 4
  %stat_len.i297 = getelementptr inbounds %struct.pcxhr_rmh, ptr %1, i32 0, i32 1
  %dsp_stat.i298 = getelementptr inbounds %struct.pcxhr_rmh, ptr %1, i32 0, i32 2
  %30 = ptrtoint ptr %dsp_stat.i298 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 1, ptr %dsp_stat.i298, align 4
  %cmd_idx.i299 = getelementptr inbounds %struct.pcxhr_rmh, ptr %1, i32 0, i32 3
  %31 = ptrtoint ptr %cmd_idx.i299 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 6, ptr %cmd_idx.i299, align 2
  %32 = ptrtoint ptr %cmd22.i296 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 655361, ptr %cmd22.i296, align 4
  %33 = ptrtoint ptr %stat_len.i297 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 256, ptr %stat_len.i297, align 2
  %msg_lock.i300 = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %msg_lock.i300, i32 noundef 0) #5
  %call.i301 = tail call fastcc i32 @pcxhr_send_msg_nolock(ptr noundef %mgr, ptr noundef %1) #5
  tail call void @mutex_unlock(ptr noundef %msg_lock.i300) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i301)
  %tobool101.not = icmp eq i32 %call.i301, 0
  br i1 %tobool101.not, label %do.end98.if.end108_crit_edge, label %do.end105

do.end98.if.end108_crit_edge:                     ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end108

do.end105:                                        ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #7
  %pci106 = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  %34 = ptrtoint ptr %pci106 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pci106, align 4
  %dev107 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev107, ptr noundef nonnull @.str.98, i32 noundef %call.i301) #8
  br label %if.end108

if.end108:                                        ; preds = %do.end105, %do.end98.if.end108_crit_edge
  %36 = ptrtoint ptr %stat_len.i297 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %stat_len.i297, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %37)
  %cmp373 = icmp ugt i16 %37, 1
  br i1 %cmp373, label %while.body.lr.ph, label %if.end108.if.end206_crit_edge

if.end108.if.end206_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end206

while.body.lr.ph:                                 ; preds = %if.end108
  %pci142 = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  %async_err_pipe_xrun.i = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 33
  %async_err_stream_xrun.i = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 32
  %async_err_other_last.i = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 34
  br label %while.body

while.cond.loopexit:                              ; preds = %if.end201.while.cond.loopexit_crit_edge, %for.cond182.preheader.while.cond.loopexit_crit_edge
  %i.2.lcssa = phi i32 [ %i.1.lcssa, %for.cond182.preheader.while.cond.loopexit_crit_edge ], [ %add202, %if.end201.while.cond.loopexit_crit_edge ]
  %38 = ptrtoint ptr %stat_len.i297 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %stat_len.i297, align 2
  %conv = zext i16 %39 to i32
  %cmp = icmp slt i32 %i.2.lcssa, %conv
  br i1 %cmp, label %while.cond.loopexit.while.body_crit_edge, label %while.cond.loopexit.if.end206_crit_edge

while.cond.loopexit.if.end206_crit_edge:          ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end206

while.cond.loopexit.while.body_crit_edge:         ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.body:                                       ; preds = %while.cond.loopexit.while.body_crit_edge, %while.body.lr.ph
  %i.0374 = phi i32 [ 1, %while.body.lr.ph ], [ %i.2.lcssa, %while.cond.loopexit.while.body_crit_edge ]
  %arrayidx112 = getelementptr %struct.pcxhr_rmh, ptr %1, i32 0, i32 5, i32 %i.0374
  %40 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx112, align 4
  %shr = lshr i32 %41, 5
  %and113 = and i32 %shr, 31
  %shr116 = lshr i32 %41, 10
  %and117 = and i32 %shr116, 31
  %and120 = and i32 %41, 31
  %and123 = and i32 %41, 4194304
  %and126 = and i32 %41, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and126)
  %tobool127.not = icmp eq i32 %and126, 0
  br i1 %tobool127.not, label %while.body.if.end148_crit_edge, label %do.body129

while.body.if.end148_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end148

do.body129:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcxhr_msg_thread.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcxhr_msg_thread, %if.then141)) #5
          to label %if.end148 [label %if.then141], !srcloc !260

if.then141:                                       ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %pci142 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pci142, align 4
  %dev143 = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and123)
  %tobool144.not = icmp eq i32 %and123, 0
  %cond = select i1 %tobool144.not, ptr @.str.101, ptr @.str.100
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcxhr_msg_thread.__UNIQUE_ID_ddebug254, ptr noundef %dev143, ptr noundef nonnull @.str.99, ptr noundef nonnull %cond, i32 noundef %and120) #5
  br label %if.end148

if.end148:                                        ; preds = %if.then141, %do.body129, %while.body.if.end148_crit_edge
  %inc = add nsw i32 %i.0374, 1
  %arrayidx150 = getelementptr %struct.pcxhr_rmh, ptr %1, i32 0, i32 5, i32 %inc
  %44 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx150, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool151.not = icmp eq i32 %45, 0
  br i1 %tobool151.not, label %cond.end, label %if.end148.if.then158_crit_edge

if.end148.if.then158_crit_edge:                   ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then158

cond.end:                                         ; preds = %if.end148
  %add = add i32 %i.0374, 2
  %arrayidx155 = getelementptr %struct.pcxhr_rmh, ptr %1, i32 0, i32 5, i32 %add
  %46 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx155, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool157.not = icmp eq i32 %47, 0
  br i1 %tobool157.not, label %cond.end.if.end160_crit_edge, label %cond.end.if.then158_crit_edge

cond.end.if.then158_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then158

cond.end.if.end160_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end160

if.then158:                                       ; preds = %cond.end.if.then158_crit_edge, %if.end148.if.then158_crit_edge
  %cond156354 = phi i32 [ %47, %cond.end.if.then158_crit_edge ], [ %45, %if.end148.if.then158_crit_edge ]
  %and.i = and i32 %cond156354, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %shr.i = lshr i32 %cond156354, 12
  %and2.i = and i32 %shr.i, 4095
  %err.addr.0.i = select i1 %tobool.not.i, i32 %and2.i, i32 %and.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.addr.0.i)
  %tobool3.not.i = icmp eq i32 %err.addr.0.i, 0
  br i1 %tobool3.not.i, label %if.then158.if.end160_crit_edge, label %do.body.i

if.then158.if.end160_crit_edge:                   ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end160

do.body.i:                                        ; preds = %if.then158
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcxhr_handle_async_err.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcxhr_msg_thread, %if.then9.i)) #5
          to label %do.end.i [label %if.then9.i], !srcloc !260

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %48 = ptrtoint ptr %pci142 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pci142, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and123)
  %tobool10.not.i = icmp eq i32 %and123, 0
  %cond.i = select i1 %tobool10.not.i, ptr @.str.101, ptr @.str.100
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcxhr_handle_async_err.__UNIQUE_ID_ddebug248, ptr noundef %dev.i, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.102, ptr noundef nonnull %cond.i, i32 noundef %and120, i32 noundef %err.addr.0.i) #5
  br label %do.end.i

do.end.i:                                         ; preds = %if.then9.i, %do.body.i
  %50 = zext i32 %err.addr.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values)
  switch i32 %err.addr.0.i, label %if.else17.i [
    i32 3585, label %if.then12.i
    i32 3600, label %if.then15.i
  ]

if.then12.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %51 = ptrtoint ptr %async_err_stream_xrun.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %async_err_stream_xrun.i, align 4
  %inc.i = add i32 %52, 1
  store i32 %inc.i, ptr %async_err_stream_xrun.i, align 4
  br label %if.end160

if.then15.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %53 = ptrtoint ptr %async_err_pipe_xrun.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %async_err_pipe_xrun.i, align 4
  %inc16.i = add i32 %54, 1
  store i32 %inc16.i, ptr %async_err_pipe_xrun.i, align 4
  br label %if.end160

if.else17.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %55 = ptrtoint ptr %async_err_other_last.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %err.addr.0.i, ptr %async_err_other_last.i, align 4
  br label %if.end160

if.end160:                                        ; preds = %if.else17.i, %if.then15.i, %if.then12.i, %if.then158.if.end160_crit_edge, %cond.end.if.end160_crit_edge
  %add161 = add i32 %i.0374, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117)
  %cmp162361.not = icmp eq i32 %and117, 0
  br i1 %cmp162361.not, label %if.end160.for.cond182.preheader_crit_edge, label %for.body.lr.ph

if.end160.for.cond182.preheader_crit_edge:        ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond182.preheader

for.body.lr.ph:                                   ; preds = %if.end160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and123)
  %tobool10.not.i311 = icmp eq i32 %and123, 0
  %cond.i312 = select i1 %tobool10.not.i311, ptr @.str.101, ptr @.str.100
  br label %for.body

for.cond182.preheader:                            ; preds = %if.end179.for.cond182.preheader_crit_edge, %if.end160.for.cond182.preheader_crit_edge
  %i.1.lcssa = phi i32 [ %add161, %if.end160.for.cond182.preheader_crit_edge ], [ %add180, %if.end179.for.cond182.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %cmp183366.not = icmp eq i32 %and113, 0
  br i1 %cmp183366.not, label %for.cond182.preheader.while.cond.loopexit_crit_edge, label %for.body185.lr.ph

for.cond182.preheader.while.cond.loopexit_crit_edge: ; preds = %for.cond182.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.loopexit

for.body185.lr.ph:                                ; preds = %for.cond182.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and123)
  %tobool10.not.i333 = icmp eq i32 %and123, 0
  %cond.i334 = select i1 %tobool10.not.i333, ptr @.str.101, ptr @.str.100
  br label %for.body185

for.body:                                         ; preds = %if.end179.for.body_crit_edge, %for.body.lr.ph
  %i.1363 = phi i32 [ %add161, %for.body.lr.ph ], [ %add180, %if.end179.for.body_crit_edge ]
  %j.0362 = phi i32 [ 0, %for.body.lr.ph ], [ %inc181, %if.end179.for.body_crit_edge ]
  %arrayidx165 = getelementptr %struct.pcxhr_rmh, ptr %1, i32 0, i32 5, i32 %i.1363
  %56 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx165, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool166.not = icmp eq i32 %57, 0
  br i1 %tobool166.not, label %cond.end174, label %for.body.if.then177_crit_edge

for.body.if.then177_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then177

cond.end174:                                      ; preds = %for.body
  %add172 = add i32 %i.1363, 1
  %arrayidx173 = getelementptr %struct.pcxhr_rmh, ptr %1, i32 0, i32 5, i32 %add172
  %58 = ptrtoint ptr %arrayidx173 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx173, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool176.not = icmp eq i32 %59, 0
  br i1 %tobool176.not, label %cond.end174.if.end179_crit_edge, label %cond.end174.if.then177_crit_edge

cond.end174.if.then177_crit_edge:                 ; preds = %cond.end174
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then177

cond.end174.if.end179_crit_edge:                  ; preds = %cond.end174
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end179

if.then177:                                       ; preds = %cond.end174.if.then177_crit_edge, %for.body.if.then177_crit_edge
  %cond175357 = phi i32 [ %59, %cond.end174.if.then177_crit_edge ], [ %57, %for.body.if.then177_crit_edge ]
  %and.i302 = and i32 %cond175357, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i302)
  %tobool.not.i303 = icmp eq i32 %and.i302, 0
  %shr.i304 = lshr i32 %cond175357, 12
  %and2.i305 = and i32 %shr.i304, 4095
  %err.addr.0.i306 = select i1 %tobool.not.i303, i32 %and2.i305, i32 %and.i302
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.addr.0.i306)
  %tobool3.not.i307 = icmp eq i32 %err.addr.0.i306, 0
  br i1 %tobool3.not.i307, label %if.then177.if.end179_crit_edge, label %do.body.i308

if.then177.if.end179_crit_edge:                   ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end179

do.body.i308:                                     ; preds = %if.then177
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcxhr_handle_async_err.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcxhr_msg_thread, %if.then9.i313)) #5
          to label %do.end.i314 [label %if.then9.i313], !srcloc !260

if.then9.i313:                                    ; preds = %do.body.i308
  call void @__sanitizer_cov_trace_pc() #7
  %60 = ptrtoint ptr %pci142 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pci142, align 4
  %dev.i310 = getelementptr inbounds %struct.pci_dev, ptr %61, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcxhr_handle_async_err.__UNIQUE_ID_ddebug248, ptr noundef %dev.i310, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.103, ptr noundef nonnull %cond.i312, i32 noundef %and120, i32 noundef %err.addr.0.i306) #5
  br label %do.end.i314

do.end.i314:                                      ; preds = %if.then9.i313, %do.body.i308
  %62 = zext i32 %err.addr.0.i306 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %err.addr.0.i306, label %if.else17.i322 [
    i32 3585, label %if.then12.i317
    i32 3600, label %if.then15.i320
  ]

if.then12.i317:                                   ; preds = %do.end.i314
  call void @__sanitizer_cov_trace_pc() #7
  %63 = ptrtoint ptr %async_err_stream_xrun.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %async_err_stream_xrun.i, align 4
  %inc.i316 = add i32 %64, 1
  store i32 %inc.i316, ptr %async_err_stream_xrun.i, align 4
  br label %if.end179

if.then15.i320:                                   ; preds = %do.end.i314
  call void @__sanitizer_cov_trace_pc() #7
  %65 = ptrtoint ptr %async_err_pipe_xrun.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %async_err_pipe_xrun.i, align 4
  %inc16.i319 = add i32 %66, 1
  store i32 %inc16.i319, ptr %async_err_pipe_xrun.i, align 4
  br label %if.end179

if.else17.i322:                                   ; preds = %do.end.i314
  call void @__sanitizer_cov_trace_pc() #7
  %67 = ptrtoint ptr %async_err_other_last.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %err.addr.0.i306, ptr %async_err_other_last.i, align 4
  br label %if.end179

if.end179:                                        ; preds = %if.else17.i322, %if.then15.i320, %if.then12.i317, %if.then177.if.end179_crit_edge, %cond.end174.if.end179_crit_edge
  %add180 = add i32 %i.1363, 2
  %inc181 = add nuw nsw i32 %j.0362, 1
  %exitcond.not = icmp eq i32 %inc181, %and117
  br i1 %exitcond.not, label %if.end179.for.cond182.preheader_crit_edge, label %if.end179.for.body_crit_edge

if.end179.for.body_crit_edge:                     ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end179.for.cond182.preheader_crit_edge:        ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond182.preheader

for.body185:                                      ; preds = %if.end201.for.body185_crit_edge, %for.body185.lr.ph
  %i.2368 = phi i32 [ %i.1.lcssa, %for.body185.lr.ph ], [ %add202, %if.end201.for.body185_crit_edge ]
  %j.1367 = phi i32 [ 0, %for.body185.lr.ph ], [ %inc204, %if.end201.for.body185_crit_edge ]
  %arrayidx187 = getelementptr %struct.pcxhr_rmh, ptr %1, i32 0, i32 5, i32 %i.2368
  %68 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx187, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool188.not = icmp eq i32 %69, 0
  br i1 %tobool188.not, label %cond.end196, label %for.body185.if.then199_crit_edge

for.body185.if.then199_crit_edge:                 ; preds = %for.body185
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then199

cond.end196:                                      ; preds = %for.body185
  %add194 = add i32 %i.2368, 1
  %arrayidx195 = getelementptr %struct.pcxhr_rmh, ptr %1, i32 0, i32 5, i32 %add194
  %70 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx195, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool198.not = icmp eq i32 %71, 0
  br i1 %tobool198.not, label %cond.end196.if.end201_crit_edge, label %cond.end196.if.then199_crit_edge

cond.end196.if.then199_crit_edge:                 ; preds = %cond.end196
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then199

cond.end196.if.end201_crit_edge:                  ; preds = %cond.end196
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end201

if.then199:                                       ; preds = %cond.end196.if.then199_crit_edge, %for.body185.if.then199_crit_edge
  %cond197360 = phi i32 [ %71, %cond.end196.if.then199_crit_edge ], [ %69, %for.body185.if.then199_crit_edge ]
  %and.i324 = and i32 %cond197360, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i324)
  %tobool.not.i325 = icmp eq i32 %and.i324, 0
  %shr.i326 = lshr i32 %cond197360, 12
  %and2.i327 = and i32 %shr.i326, 4095
  %err.addr.0.i328 = select i1 %tobool.not.i325, i32 %and2.i327, i32 %and.i324
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.addr.0.i328)
  %tobool3.not.i329 = icmp eq i32 %err.addr.0.i328, 0
  br i1 %tobool3.not.i329, label %if.then199.if.end201_crit_edge, label %do.body.i330

if.then199.if.end201_crit_edge:                   ; preds = %if.then199
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end201

do.body.i330:                                     ; preds = %if.then199
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcxhr_handle_async_err.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcxhr_msg_thread, %if.then9.i335)) #5
          to label %do.end.i336 [label %if.then9.i335], !srcloc !260

if.then9.i335:                                    ; preds = %do.body.i330
  call void @__sanitizer_cov_trace_pc() #7
  %72 = ptrtoint ptr %pci142 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pci142, align 4
  %dev.i332 = getelementptr inbounds %struct.pci_dev, ptr %73, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcxhr_handle_async_err.__UNIQUE_ID_ddebug248, ptr noundef %dev.i332, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.104, ptr noundef nonnull %cond.i334, i32 noundef %and120, i32 noundef %err.addr.0.i328) #5
  br label %do.end.i336

do.end.i336:                                      ; preds = %if.then9.i335, %do.body.i330
  %74 = zext i32 %err.addr.0.i328 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %err.addr.0.i328, label %if.else17.i344 [
    i32 3585, label %if.then12.i339
    i32 3600, label %if.then15.i342
  ]

if.then12.i339:                                   ; preds = %do.end.i336
  call void @__sanitizer_cov_trace_pc() #7
  %75 = ptrtoint ptr %async_err_stream_xrun.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %async_err_stream_xrun.i, align 4
  %inc.i338 = add i32 %76, 1
  store i32 %inc.i338, ptr %async_err_stream_xrun.i, align 4
  br label %if.end201

if.then15.i342:                                   ; preds = %do.end.i336
  call void @__sanitizer_cov_trace_pc() #7
  %77 = ptrtoint ptr %async_err_pipe_xrun.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %async_err_pipe_xrun.i, align 4
  %inc16.i341 = add i32 %78, 1
  store i32 %inc16.i341, ptr %async_err_pipe_xrun.i, align 4
  br label %if.end201

if.else17.i344:                                   ; preds = %do.end.i336
  call void @__sanitizer_cov_trace_pc() #7
  %79 = ptrtoint ptr %async_err_other_last.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %err.addr.0.i328, ptr %async_err_other_last.i, align 4
  br label %if.end201

if.end201:                                        ; preds = %if.else17.i344, %if.then15.i342, %if.then12.i339, %if.then199.if.end201_crit_edge, %cond.end196.if.end201_crit_edge
  %add202 = add i32 %i.2368, 2
  %inc204 = add nuw nsw i32 %j.1367, 1
  %exitcond375.not = icmp eq i32 %inc204, %and113
  br i1 %exitcond375.not, label %if.end201.while.cond.loopexit_crit_edge, label %if.end201.for.body185_crit_edge

if.end201.for.body185_crit_edge:                  ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body185

if.end201.while.cond.loopexit_crit_edge:          ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.loopexit

if.end206:                                        ; preds = %while.cond.loopexit.if.end206_crit_edge, %if.end108.if.end206_crit_edge, %if.end76.if.end206_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pcxhr_read_rmh_status(ptr nocapture noundef readonly %mgr, ptr nocapture noundef %rmh) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %stat_len = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 1
  %0 = ptrtoint ptr %stat_len to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %stat_len, align 2
  %2 = tail call i16 @llvm.umax.i16(i16 %1, i16 16)
  %max_stat_len.0 = zext i16 %2 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp6174.not = icmp eq i16 %1, 0
  br i1 %cmp6174.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %arrayidx.i = getelementptr %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 5, i32 2
  %pci.i = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  %dsp_stat = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 2
  %cmd_idx = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0175 = phi i32 [ 0, %for.body.lr.ph ], [ %inc86, %for.inc.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %add1.i = add i32 %3, 20
  br label %do.body.i

do.body.i:                                        ; preds = %if.end20.i.do.body.i_crit_edge, %for.body
  %i.0.i = phi i32 [ 0, %for.body ], [ %inc.i, %if.end20.i.do.body.i_crit_edge ]
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %add2.i = add i32 %5, 8
  %and.i = and i32 %add2.i, 1048575
  %add3.i = or i32 %and.i, -18874368
  %6 = inttoptr i32 %add3.i to ptr
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #5, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !262
  %and61.i = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and61.i)
  %cmp8.i.not = icmp eq i8 %and61.i, 0
  br i1 %cmp8.i.not, label %if.end20.i, label %if.then.i

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %i.0.i)
  %cmp10.i = icmp sgt i32 %i.0.i, 100
  br i1 %cmp10.i, label %do.body13.i, label %if.then.i.if.end10_crit_edge

if.then.i.if.end10_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

do.body13.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcxhr_check_reg_bit.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcxhr_read_rmh_status, %if.then18.i)) #5
          to label %if.end10 [label %if.then18.i], !srcloc !260

if.then18.i:                                      ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcxhr_check_reg_bit.__UNIQUE_ID_ddebug238, ptr noundef %dev.i, ptr noundef nonnull @.str.29, i32 noundef 8, i32 noundef %i.0.i) #5
  br label %if.end10

if.end20.i:                                       ; preds = %do.body.i
  %inc.i = add i32 %i.0.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add1.i, %10
  %cmp22.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp22.i, label %if.end20.i.do.body.i_crit_edge, label %do.end

if.end20.i.do.body.i_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

do.end:                                           ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pci.i, align 4
  %dev29.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %conv31.i = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev29.i, ptr noundef nonnull @.str.30, i32 noundef 8, i32 noundef 1, i32 noundef %conv31.i) #8
  %13 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pci.i, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.73, i32 noundef %conv31.i, i32 noundef %i.0175) #8
  br label %cleanup

if.end10:                                         ; preds = %if.then18.i, %do.body13.i, %if.then.i.if.end10_crit_edge
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i, align 4
  %add = add i32 %16, 20
  %and = and i32 %add, 1048575
  %add11 = or i32 %and, -18874368
  %17 = inttoptr i32 %add11 to ptr
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %17) #5, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !292
  %conv14 = zext i8 %18 to i32
  %shl = shl nuw nsw i32 %conv14, 16
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i, align 4
  %add18 = add i32 %20, 24
  %and19 = and i32 %add18, 1048575
  %add20 = or i32 %and19, -18874368
  %21 = inttoptr i32 %add20 to ptr
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %21) #5, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !293
  %conv24 = zext i8 %22 to i32
  %shl25 = shl nuw nsw i32 %conv24, 8
  %or = or i32 %shl25, %shl
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i, align 4
  %add29 = add i32 %24, 28
  %and30 = and i32 %add29, 1048575
  %add31 = or i32 %and30, -18874368
  %25 = inttoptr i32 %add31 to ptr
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %25) #5, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !294
  %conv35 = zext i8 %26 to i32
  %or36 = or i32 %or, %conv35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0175)
  %tobool37.not = icmp eq i32 %i.0175, 0
  br i1 %tobool37.not, label %if.then38, label %if.end10.if.end63_crit_edge

if.end10.if.end63_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end63

if.then38:                                        ; preds = %if.end10
  %27 = ptrtoint ptr %dsp_stat to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %dsp_stat, align 4
  %29 = zext i16 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.109)
  switch i16 %28, label %if.else53 [
    i16 0, label %if.then38.if.end63_crit_edge
    i16 1, label %if.then47
  ]

if.then38.if.end63_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end63

if.then47:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #7
  %30 = zext i8 %26 to i16
  %conv50 = add nuw nsw i16 %30, 1
  %31 = ptrtoint ptr %stat_len to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv50, ptr %stat_len, align 2
  br label %if.end63

if.else53:                                        ; preds = %if.then38
  %32 = ptrtoint ptr %stat_len to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 1, ptr %stat_len, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or36)
  %tobool55.not171 = icmp eq i32 %or36, 0
  br i1 %tobool55.not171, label %if.else53.if.end63_crit_edge, label %if.else53.while.body_crit_edge

if.else53.while.body_crit_edge:                   ; preds = %if.else53
  br label %while.body

if.else53.if.end63_crit_edge:                     ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end63

while.body:                                       ; preds = %if.end60.while.body_crit_edge, %if.else53.while.body_crit_edge
  %size_mask.0172 = phi i32 [ %shr, %if.end60.while.body_crit_edge ], [ %or36, %if.else53.while.body_crit_edge ]
  %and56 = and i32 %size_mask.0172, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %while.body.if.end60_crit_edge, label %if.then58

while.body.if.end60_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60

if.then58:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %stat_len to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %stat_len, align 2
  %inc = add i16 %34, 1
  store i16 %inc, ptr %stat_len, align 2
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %while.body.if.end60_crit_edge
  %shr = lshr i32 %size_mask.0172, 1
  %tobool55.not = icmp ult i32 %size_mask.0172, 2
  br i1 %tobool55.not, label %if.end60.if.end63_crit_edge, label %if.end60.while.body_crit_edge

if.end60.while.body_crit_edge:                    ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end60.if.end63_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end63

if.end63:                                         ; preds = %if.end60.if.end63_crit_edge, %if.else53.if.end63_crit_edge, %if.then47, %if.then38.if.end63_crit_edge, %if.end10.if.end63_crit_edge
  %data.0 = phi i32 [ %or36, %if.end10.if.end63_crit_edge ], [ %or, %if.then47 ], [ %or36, %if.then38.if.end63_crit_edge ], [ 0, %if.else53.if.end63_crit_edge ], [ %or36, %if.end60.if.end63_crit_edge ]
  %35 = ptrtoint ptr %cmd_idx to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %cmd_idx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 27, i16 %36)
  %cmp65 = icmp ult i16 %36, 27
  br i1 %cmp65, label %do.body68, label %if.end63.if.end80_crit_edge

if.end63.if.end80_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end80

do.body68:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcxhr_read_rmh_status.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcxhr_read_rmh_status, %if.then74)) #5
          to label %if.end80 [label %if.then74], !srcloc !260

if.then74:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pci.i, align 4
  %dev76 = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcxhr_read_rmh_status.__UNIQUE_ID_ddebug240, ptr noundef %dev76, ptr noundef nonnull @.str.75, i32 noundef %i.0175, i32 noundef %data.0) #5
  br label %if.end80

if.end80:                                         ; preds = %if.then74, %do.body68, %if.end63.if.end80_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0175, i32 %max_stat_len.0)
  %cmp81 = icmp ult i32 %i.0175, %max_stat_len.0
  br i1 %cmp81, label %if.then83, label %if.end80.for.inc_crit_edge

if.end80.for.inc_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then83:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx84 = getelementptr %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 5, i32 %i.0175
  %39 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %data.0, ptr %arrayidx84, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then83, %if.end80.for.inc_crit_edge
  %inc86 = add nuw nsw i32 %i.0175, 1
  %40 = ptrtoint ptr %stat_len to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %stat_len, align 2
  %conv5 = zext i16 %41 to i32
  %cmp6 = icmp ult i32 %inc86, %conv5
  br i1 %cmp6, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_cmp2(i16 %2, i16 %41)
  %cmp89 = icmp ult i16 %2, %41
  br i1 %cmp89, label %do.body92, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body92:                                        ; preds = %for.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcxhr_read_rmh_status.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcxhr_read_rmh_status, %if.then104)) #5
          to label %do.end111 [label %if.then104], !srcloc !260

if.then104:                                       ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #7
  %pci105 = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  %42 = ptrtoint ptr %pci105 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pci105, align 4
  %dev106 = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  %44 = ptrtoint ptr %stat_len to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %stat_len, align 2
  %conv108 = zext i16 %45 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcxhr_read_rmh_status.__UNIQUE_ID_ddebug241, ptr noundef %dev106, ptr noundef nonnull @.str.76, i32 noundef %conv108) #5
  br label %do.end111

do.end111:                                        ; preds = %if.then104, %do.body92
  %46 = ptrtoint ptr %stat_len to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %2, ptr %stat_len, align 2
  br label %cleanup

cleanup:                                          ; preds = %do.end111, %for.end.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %do.end111 ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @pcxhr_stream_read_position(ptr noundef %mgr, ptr nocapture noundef readonly %stream) unnamed_addr #0 align 64 {
entry:
  %rmh = alloca %struct.pcxhr_rmh, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %rmh) #5
  %0 = call ptr @memset(ptr %rmh, i32 255, i32 104)
  %pipe = getelementptr inbounds %struct.pcxhr_stream, ptr %stream, i32 0, i32 2
  %1 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pipe, align 8
  %is_capture = getelementptr inbounds %struct.pcxhr_pipe, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %is_capture to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %is_capture, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %stream, align 8
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %number, align 4
  %shl = shl nuw i32 1, %8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %shl, %cond.false ], [ 1, %entry.cond.end_crit_edge ]
  %cmd22.i = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 4
  %9 = ptrtoint ptr %cmd22.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 9445376, ptr %cmd22.i, align 4
  %stat_len.i = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 1
  %10 = ptrtoint ptr %stat_len.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 2, ptr %stat_len.i, align 2
  %dsp_stat.i = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 2
  %11 = ptrtoint ptr %dsp_stat.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %dsp_stat.i, align 4
  %cmd_idx.i = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 3
  %12 = ptrtoint ptr %cmd_idx.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 23, ptr %cmd_idx.i, align 2
  %first_audio = getelementptr inbounds %struct.pcxhr_pipe, ptr %2, i32 0, i32 2
  %13 = ptrtoint ptr %first_audio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %first_audio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %14)
  %cmp.i = icmp ugt i32 %14, 31
  br i1 %cmp.i, label %do.end.i, label %cond.end.if.end.i_crit_edge, !prof !263

cond.end.if.end.i_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

do.end.i:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 733, i32 noundef 9, ptr noundef null) #5
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %cond.end.if.end.i_crit_edge
  br i1 %tobool.not, label %if.end.i.if.end21.i_crit_edge, label %if.then20.i

if.end.i.if.end21.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21.i

if.then20.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %cmd22.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 9447424, ptr %cmd22.i, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then20.i, %if.end.i.if.end21.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool22.not.i = icmp eq i32 %14, 0
  br i1 %tobool22.not.i, label %if.end21.i.if.end27.i_crit_edge, label %if.then23.i

if.end21.i.if.end27.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27.i

if.then23.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  %shl.i = shl i32 %14, 5
  %16 = ptrtoint ptr %cmd22.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cmd22.i, align 4
  %or26.i = or i32 %17, %shl.i
  store i32 %or26.i, ptr %cmd22.i, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then23.i, %if.end21.i.if.end27.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %cond)
  %cmp68.i = icmp ugt i32 %cond, 16777215
  br i1 %cmp68.i, label %do.end84.i, label %if.end27.i.pcxhr_set_pipe_cmd_params.exit_crit_edge, !prof !263

if.end27.i.pcxhr_set_pipe_cmd_params.exit_crit_edge: ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pcxhr_set_pipe_cmd_params.exit

do.end84.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 743, i32 noundef 9, ptr noundef null) #5
  br label %pcxhr_set_pipe_cmd_params.exit

pcxhr_set_pipe_cmd_params.exit:                   ; preds = %do.end84.i, %if.end27.i.pcxhr_set_pipe_cmd_params.exit_crit_edge
  %arrayidx99.i = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %arrayidx99.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %cond, ptr %arrayidx99.i, align 4
  %19 = ptrtoint ptr %rmh to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 2, ptr %rmh, align 4
  %msg_lock.i = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %msg_lock.i, i32 noundef 0) #5
  %call.i = call fastcc i32 @pcxhr_send_msg_nolock(ptr noundef %mgr, ptr noundef nonnull %rmh) #5
  tail call void @mutex_unlock(ptr noundef %msg_lock.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %if.end, label %pcxhr_set_pipe_cmd_params.exit.cleanup_crit_edge

pcxhr_set_pipe_cmd_params.exit.cleanup_crit_edge: ; preds = %pcxhr_set_pipe_cmd_params.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %pcxhr_set_pipe_cmd_params.exit
  call void @__sanitizer_cov_trace_pc() #7
  %stat = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 5
  %20 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %stat, align 4
  %conv = zext i32 %21 to i64
  %shl5 = shl nuw nsw i64 %conv, 24
  %arrayidx7 = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 5, i32 1
  %22 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx7, align 4
  %conv8 = zext i32 %23 to i64
  %add = add nuw nsw i64 %shl5, %conv8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcxhr_stream_read_position.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcxhr_stream_read_position, %if.then13)) #5
          to label %cleanup [label %if.then13], !srcloc !260

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %pci = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  %24 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %26 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pipe, align 8
  %is_capture15 = getelementptr inbounds %struct.pcxhr_pipe, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %is_capture15 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %is_capture15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool16.not = icmp eq i32 %29, 0
  %cond17 = select i1 %tobool16.not, i32 80, i32 67
  %30 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %stream, align 8
  %number19 = getelementptr inbounds %struct.snd_pcm_substream, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %number19 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %number19, align 4
  %timer_abs_periods = getelementptr inbounds %struct.pcxhr_stream, ptr %stream, i32 0, i32 4
  %34 = ptrtoint ptr %timer_abs_periods to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %timer_abs_periods, align 8
  %timer_period_frag = getelementptr inbounds %struct.pcxhr_stream, ptr %stream, i32 0, i32 5
  %36 = ptrtoint ptr %timer_period_frag to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %timer_period_frag, align 8
  %conv20 = zext i32 %37 to i64
  %add21 = add i64 %35, %conv20
  %granularity = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 4
  %38 = ptrtoint ptr %granularity to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %granularity, align 4
  %conv22 = sext i32 %39 to i64
  %add23 = add i64 %add21, %conv22
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcxhr_stream_read_position.__UNIQUE_ID_ddebug255, ptr noundef %dev, ptr noundef nonnull @.str.91, i32 noundef %cond17, i32 noundef %33, i64 noundef %add, i64 noundef %add23) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.end, %pcxhr_set_pipe_cmd_params.exit.cleanup_crit_edge
  %retval.0 = phi i64 [ 0, %pcxhr_set_pipe_cmd_params.exit.cleanup_crit_edge ], [ %add, %if.then13 ], [ %add, %if.end ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %rmh) #5
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 117)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 117)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !18, !19, !21, !22, !23, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !39, !40, !41, !43, !44, !46, !47, !49, !50, !52, !53, !55, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !74, !76, !77, !78, !80, !82, !83, !84, !85, !87, !88, !90, !91, !93, !94, !95, !97, !98, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !158, !159, !160, !162, !163, !165, !166, !168, !169, !170, !172, !173, !174, !175, !177, !178, !179, !180, !182, !183, !184, !186, !187, !188, !189, !191, !192, !193, !194, !196, !197, !198, !200, !201, !202, !204, !205, !207, !208, !210, !211, !213, !214, !216, !217, !218, !220, !221, !222, !223, !225, !227, !229, !231, !233, !234}
!llvm.module.flags = !{!235, !236, !237, !238, !239, !240, !241, !242}
!llvm.ident = !{!243}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 285, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @pcxhr_load_xilinx_binary._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @pcxhr_load_xilinx_binary._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 387, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @pcxhr_load_eeprom_binary.__UNIQUE_ID_ddebug239, !9, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 908, i32 2}
!15 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @pcxhr_set_pipe_state.__UNIQUE_ID_ddebug245, !14, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!17 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.11, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 940, i32 4}
!21 = !{ptr @pcxhr_set_pipe_state._entry, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @pcxhr_set_pipe_state._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 953, i32 2}
!25 = !{ptr @pcxhr_set_pipe_state.__UNIQUE_ID_ddebug246, !24, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 967, i32 3}
!28 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @pcxhr_write_io_num_reg_cont.__UNIQUE_ID_ddebug247, !27, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 1237, i32 4}
!32 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @pcxhr_interrupt.__UNIQUE_ID_ddebug256, !31, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 1260, i32 3}
!36 = !{ptr @pcxhr_interrupt.__UNIQUE_ID_ddebug257, !35, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 1283, i32 4}
!39 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @pcxhr_threaded_irq.__UNIQUE_ID_ddebug258, !38, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 1287, i32 5}
!43 = !{ptr @pcxhr_threaded_irq.__UNIQUE_ID_ddebug259, !42, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 1292, i32 5}
!46 = !{ptr @pcxhr_threaded_irq.__UNIQUE_ID_ddebug260, !45, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 1299, i32 4}
!49 = !{ptr @pcxhr_threaded_irq.__UNIQUE_ID_ddebug261, !48, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 1303, i32 4}
!52 = !{ptr @pcxhr_threaded_irq.__UNIQUE_ID_ddebug262, !51, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 1308, i32 4}
!55 = !{ptr @pcxhr_threaded_irq.__UNIQUE_ID_ddebug263, !54, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 351, i32 4}
!58 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @pcxhr_download_dsp._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @pcxhr_download_dsp._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 123, i32 5}
!63 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @pcxhr_check_reg_bit.__UNIQUE_ID_ddebug238, !62, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 130, i32 2}
!67 = !{ptr @pcxhr_check_reg_bit._entry, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @pcxhr_check_reg_bit._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 207, i32 3}
!71 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @pcxhr_send_it_dsp._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @pcxhr_send_it_dsp._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 218, i32 4}
!76 = !{ptr @pcxhr_send_it_dsp._entry.33, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @pcxhr_send_it_dsp._entry_ptr.35, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @pcxhr_dsp_cmds, !79, !"pcxhr_dsp_cmds", i1 false, i1 false}
!79 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 469, i32 36}
!80 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 606, i32 3}
!82 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @pcxhr_send_msg_nolock._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @pcxhr_send_msg_nolock._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 633, i32 3}
!87 = !{ptr @pcxhr_send_msg_nolock.__UNIQUE_ID_ddebug242, !86, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!88 = !{ptr @.str.39, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 663, i32 5}
!90 = !{ptr @pcxhr_send_msg_nolock.__UNIQUE_ID_ddebug243, !89, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!91 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 690, i32 4}
!93 = !{ptr @pcxhr_send_msg_nolock._entry.40, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @pcxhr_send_msg_nolock._entry_ptr.42, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 698, i32 3}
!97 = !{ptr @pcxhr_send_msg_nolock._entry.43, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @pcxhr_send_msg_nolock._entry_ptr.45, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.46, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 501, i32 20}
!101 = !{ptr @.str.47, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 502, i32 21}
!103 = !{ptr @.str.48, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 503, i32 20}
!105 = !{ptr @.str.49, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 504, i32 21}
!107 = !{ptr @.str.50, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 505, i32 27}
!109 = !{ptr @.str.51, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 506, i32 26}
!111 = !{ptr @.str.52, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 507, i32 18}
!113 = !{ptr @.str.53, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 508, i32 24}
!115 = !{ptr @.str.54, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 509, i32 30}
!117 = !{ptr @.str.55, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 510, i32 28}
!119 = !{ptr @.str.56, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 511, i32 30}
!121 = !{ptr @.str.57, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 512, i32 20}
!123 = !{ptr @.str.58, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 513, i32 21}
!125 = !{ptr @.str.59, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 514, i32 21}
!127 = !{ptr @.str.60, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 515, i32 21}
!129 = !{ptr @.str.61, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 516, i32 28}
!131 = !{ptr @.str.62, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 517, i32 26}
!133 = !{ptr @.str.63, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 518, i32 24}
!135 = !{ptr @.str.64, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 519, i32 34}
!137 = !{ptr @.str.65, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 520, i32 23}
!139 = !{ptr @.str.66, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 521, i32 27}
!141 = !{ptr @.str.67, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 522, i32 28}
!143 = !{ptr @.str.68, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 523, i32 27}
!145 = !{ptr @.str.69, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 524, i32 30}
!147 = !{ptr @.str.70, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 525, i32 29}
!149 = !{ptr @.str.71, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 526, i32 25}
!151 = !{ptr @.str.72, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 527, i32 25}
!153 = !{ptr @cmd_names, !154, !"cmd_names", i1 false, i1 false}
!154 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 500, i32 27}
!155 = !{ptr @.str.73, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 552, i32 4}
!157 = !{ptr @.str.74, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @pcxhr_read_rmh_status._entry, !156, !"_entry", i1 false, i1 false}
!159 = !{ptr @pcxhr_read_rmh_status._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.75, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 582, i32 4}
!162 = !{ptr @pcxhr_read_rmh_status.__UNIQUE_ID_ddebug240, !161, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!163 = !{ptr @.str.76, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 588, i32 3}
!165 = !{ptr @pcxhr_read_rmh_status.__UNIQUE_ID_ddebug241, !164, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!166 = !{ptr @.str.77, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 774, i32 2}
!168 = !{ptr @.str.78, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @pcxhr_pipes_running.__UNIQUE_ID_ddebug244, !167, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!170 = !{ptr @.str.79, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 803, i32 5}
!172 = !{ptr @.str.80, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @pcxhr_prepair_pipe_start._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @pcxhr_prepair_pipe_start._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.81, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 870, i32 5}
!177 = !{ptr @.str.82, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @pcxhr_toggle_pipes._entry, !176, !"_entry", i1 false, i1 false}
!179 = !{ptr @pcxhr_toggle_pipes._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.84, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 883, i32 3}
!182 = !{ptr @pcxhr_toggle_pipes._entry.83, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @pcxhr_toggle_pipes._entry_ptr.85, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.86, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 841, i32 5}
!186 = !{ptr @.str.87, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @pcxhr_stop_pipes._entry, !185, !"_entry", i1 false, i1 false}
!188 = !{ptr @pcxhr_stop_pipes._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.88, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 1204, i32 4}
!191 = !{ptr @.str.89, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @pcxhr_update_timer_pos._entry, !190, !"_entry", i1 false, i1 false}
!193 = !{ptr @pcxhr_update_timer_pos._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.90, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 1137, i32 2}
!196 = !{ptr @.str.91, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @pcxhr_stream_read_position.__UNIQUE_ID_ddebug255, !195, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!198 = !{ptr @.str.92, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 1041, i32 3}
!200 = !{ptr @.str.93, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @pcxhr_msg_thread.__UNIQUE_ID_ddebug249, !199, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!202 = !{ptr @.str.94, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 1044, i32 3}
!204 = !{ptr @pcxhr_msg_thread.__UNIQUE_ID_ddebug250, !203, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!205 = !{ptr @.str.95, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 1047, i32 3}
!207 = !{ptr @pcxhr_msg_thread.__UNIQUE_ID_ddebug251, !206, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!208 = !{ptr @.str.96, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 1053, i32 3}
!210 = !{ptr @pcxhr_msg_thread.__UNIQUE_ID_ddebug252, !209, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!211 = !{ptr @.str.97, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 1057, i32 3}
!213 = !{ptr @pcxhr_msg_thread.__UNIQUE_ID_ddebug253, !212, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!214 = !{ptr @.str.98, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 1066, i32 4}
!216 = !{ptr @pcxhr_msg_thread._entry, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @pcxhr_msg_thread._entry_ptr, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.99, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 1079, i32 5}
!220 = !{ptr @pcxhr_msg_thread.__UNIQUE_ID_ddebug254, !219, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!221 = !{ptr @.str.100, !219, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @.str.101, !219, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @.str.102, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 1010, i32 22}
!225 = !{ptr @.str.103, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 1011, i32 24}
!227 = !{ptr @.str.104, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 1012, i32 23}
!229 = distinct !{null, !230, !"err_src_name", i1 false, i1 false}
!230 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 1009, i32 28}
!231 = !{ptr @.str.105, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../sound/pci/pcxhr/pcxhr_core.c", i32 1021, i32 2}
!233 = !{ptr @.str.106, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @pcxhr_handle_async_err.__UNIQUE_ID_ddebug248, !232, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!235 = !{i32 1, !"wchar_size", i32 2}
!236 = !{i32 1, !"min_enum_size", i32 4}
!237 = !{i32 8, !"branch-target-enforcement", i32 0}
!238 = !{i32 8, !"sign-return-address", i32 0}
!239 = !{i32 8, !"sign-return-address-all", i32 0}
!240 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!241 = !{i32 7, !"uwtable", i32 1}
!242 = !{i32 7, !"frame-pointer", i32 2}
!243 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!244 = !{i64 2154682350}
!245 = !{i64 4292206}
!246 = !{i64 4292624}
!247 = !{i64 2154683608}
!248 = !{i64 2154684080}
!249 = !{i64 2154684741}
!250 = !{i64 4292009}
!251 = !{i64 2154685301}
!252 = !{i64 2154685897}
!253 = !{i64 2154687109}
!254 = !{i64 2154689214}
!255 = !{i64 2154689959}
!256 = !{i64 2154690682}
!257 = !{i64 2154691525}
!258 = !{i64 2154696848}
!259 = !{i64 2154697841}
!260 = !{i64 2148792097, i64 2148792102, i64 2148792115, i64 2148792159, i64 2148792193, i64 2148792214}
!261 = !{i64 4292404}
!262 = !{i64 2154666842}
!263 = !{!"branch_weights", i32 1, i32 2000}
!264 = !{i64 2154694468}
!265 = !{i64 2154695038}
!266 = !{i64 2154695608}
!267 = !{!"branch_weights", i32 2000, i32 1}
!268 = !{i64 2154701910}
!269 = !{i64 2154704393}
!270 = !{i64 2154705156}
!271 = !{i64 2154673662}
!272 = !{i64 2154674432}
!273 = !{i64 2154675067}
!274 = !{i64 2154675643}
!275 = !{i64 2154718809}
!276 = !{i64 2154719393}
!277 = !{i64 2154719971}
!278 = !{i64 2154720576}
!279 = !{i64 2154721160}
!280 = !{i64 2154721738}
!281 = !{i64 2154724580}
!282 = !{i64 2154725164}
!283 = !{i64 2154725742}
!284 = !{i64 2154728145}
!285 = !{i64 2154728641}
!286 = !{i64 2154729137}
!287 = !{i64 2154734211}
!288 = !{i64 2154780185}
!289 = !{i64 2154781146}
!290 = !{i64 2154781582}
!291 = !{i64 2154787415}
!292 = !{i64 2154707940}
!293 = !{i64 2154708436}
!294 = !{i64 2154708932}
