; ModuleID = '/llk/IR_all_yes/sound/pci/pcxhr/pcxhr_hwdep.c_pt.bc'
source_filename = "../sound/pci/pcxhr/pcxhr_hwdep.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pcxhr_rmh = type { i16, i16, i16, i16, [8 x i32], [16 x i32] }
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
%struct.snd_pcxhr = type { ptr, ptr, i32, ptr, %struct.pcxhr_pipe, [2 x %struct.pcxhr_pipe], [4 x %struct.pcxhr_stream], [2 x %struct.pcxhr_stream], i32, i32, [2 x i32], [2 x i32], [2 x i32], [4 x [2 x i32]], [4 x [2 x i32]], [2 x i32], [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, [5 x i8] }
%struct.pcxhr_pipe = type { i32, i32, i32 }
%struct.pcxhr_stream = type { ptr, i32, ptr, i32, i64, i32, i32, i32, i32 }

@pcxhr_setup_firmware.fw_files = internal constant { [6 x [5 x ptr]], [40 x i8] } { [6 x [5 x ptr]] [[5 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], [5 x ptr] [ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, ptr @.str.4], [5 x ptr] [ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.8, ptr @.str.9], [5 x ptr] [ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.11, ptr @.str.9], [5 x ptr] [ptr null, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], [5 x ptr] [ptr null, ptr @.str.16, ptr @.str.13, ptr @.str.14, ptr @.str.15]], [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"xlxint.dat\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xlxc882hr.dat\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dspe882.e56\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dspb882hr.b56\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dspd882.d56\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xlxc882e.dat\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dspb882e.b56\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xlxc1222hr.dat\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dspb1222hr.b56\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dspd1222.d56\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xlxc1222e.dat\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dspb1222e.b56\00", [18 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"xlxc222.dat\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dspe924.e56\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dspb924.b56\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dspd222.d56\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"xlxc924.dat\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pcxhr/%s\00", [23 x i8] zeroinitializer }, align 32
@pcxhr_setup_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.20, i32 381, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"pcxhr: can't load firmware %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pcxhr_setup_firmware\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sound/pci/pcxhr/pcxhr_hwdep.c\00", [34 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pcxhr_setup_firmware._entry_ptr = internal global ptr @pcxhr_setup_firmware._entry, section ".printk_index", align 4
@__UNIQUE_ID_firmware243 = internal constant [36 x i8] c"snd_pcxhr.firmware=pcxhr/xlxint.dat\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware244 = internal constant [39 x i8] c"snd_pcxhr.firmware=pcxhr/xlxc882hr.dat\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware245 = internal constant [38 x i8] c"snd_pcxhr.firmware=pcxhr/xlxc882e.dat\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware246 = internal constant [37 x i8] c"snd_pcxhr.firmware=pcxhr/dspe882.e56\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware247 = internal constant [39 x i8] c"snd_pcxhr.firmware=pcxhr/dspb882hr.b56\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware248 = internal constant [38 x i8] c"snd_pcxhr.firmware=pcxhr/dspb882e.b56\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware249 = internal constant [37 x i8] c"snd_pcxhr.firmware=pcxhr/dspd882.d56\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware250 = internal constant [40 x i8] c"snd_pcxhr.firmware=pcxhr/xlxc1222hr.dat\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware251 = internal constant [39 x i8] c"snd_pcxhr.firmware=pcxhr/xlxc1222e.dat\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware252 = internal constant [40 x i8] c"snd_pcxhr.firmware=pcxhr/dspb1222hr.b56\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware253 = internal constant [39 x i8] c"snd_pcxhr.firmware=pcxhr/dspb1222e.b56\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware254 = internal constant [38 x i8] c"snd_pcxhr.firmware=pcxhr/dspd1222.d56\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware255 = internal constant [37 x i8] c"snd_pcxhr.firmware=pcxhr/xlxc222.dat\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware256 = internal constant [37 x i8] c"snd_pcxhr.firmware=pcxhr/xlxc924.dat\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware257 = internal constant [37 x i8] c"snd_pcxhr.firmware=pcxhr/dspe924.e56\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware258 = internal constant [37 x i8] c"snd_pcxhr.firmware=pcxhr/dspb924.b56\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware259 = internal constant [37 x i8] c"snd_pcxhr.firmware=pcxhr/dspd222.d56\00", section ".modinfo", align 1
@pcxhr_dsp_load.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.24, ptr @.str.20, ptr @.str.25, i8 0, i8 70, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"snd_pcxhr\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pcxhr_dsp_load\00", [17 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"loading dsp [%d] size = %zd\0A\00", [35 x i8] zeroinitializer }, align 32
@pcxhr_dsp_load._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.20, i32 306, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wrong file index\0A\00", [46 x i8] zeroinitializer }, align 32
@pcxhr_dsp_load._entry_ptr = internal global ptr @pcxhr_dsp_load._entry, section ".printk_index", align 4
@pcxhr_dsp_load._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.24, ptr @.str.20, i32 313, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pcxhr could not be set up\0A\00", [37 x i8] zeroinitializer }, align 32
@pcxhr_dsp_load._entry_ptr.29 = internal global ptr @pcxhr_dsp_load._entry.27, section ".printk_index", align 4
@pcxhr_dsp_load._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.24, ptr @.str.20, i32 318, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"pcxhr pipes could not be set up\0A\00", [63 x i8] zeroinitializer }, align 32
@pcxhr_dsp_load._entry_ptr.32 = internal global ptr @pcxhr_dsp_load._entry.30, section ".printk_index", align 4
@pcxhr_dsp_load._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.24, ptr @.str.20, i32 340, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"pcxhr pipes could not be started\0A\00", [62 x i8] zeroinitializer }, align 32
@pcxhr_dsp_load._entry_ptr.35 = internal global ptr @pcxhr_dsp_load._entry.33, section ".printk_index", align 4
@pcxhr_dsp_load.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.24, ptr @.str.20, ptr @.str.36, i8 0, i8 86, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"pcxhr firmware downloaded and successfully set up\0A\00", [45 x i8] zeroinitializer }, align 32
@pcxhr_init_board.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.37, ptr @.str.20, ptr @.str.38, i8 0, i8 16, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pcxhr_init_board\00", [47 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"supported formats : playback=%x capture=%x\0A\00", [52 x i8] zeroinitializer }, align 32
@pcxhr_init_board.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.37, ptr @.str.20, ptr @.str.39, i8 0, i8 19, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"PCXHR DSP version is %d.%d.%d\0A\00", [33 x i8] zeroinitializer }, align 32
@pcxhr_dsp_allocate_pipe.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.40, ptr @.str.20, ptr @.str.41, i8 0, i8 43, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pcxhr_dsp_allocate_pipe\00", [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"snd_add_ref_pipe pin(%d) pcm%c0\0A\00", [63 x i8] zeroinitializer }, align 32
@pcxhr_dsp_allocate_pipe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.20, i32 187, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"error pipe allocation (CMD_RES_PIPE) err=%x!\0A\00", [50 x i8] zeroinitializer }, align 32
@pcxhr_dsp_allocate_pipe._entry_ptr = internal global ptr @pcxhr_dsp_allocate_pipe._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.43 = private unnamed_addr constant [9 x i8] c"fw_files\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 354, i32 28 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 355, i32 10 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 355, i32 24 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 356, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 356, i32 18 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 356, i32 35 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 357, i32 24 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 358, i32 18 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 359, i32 24 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 360, i32 18 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 360, i32 36 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 361, i32 24 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 362, i32 18 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 363, i32 16 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 364, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 364, i32 18 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 364, i32 33 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 365, i32 16 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 377, i32 17 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 379, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 281, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 306, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 313, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 318, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 340, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 343, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 62, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 75, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 171, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.173 = private constant [33 x i8] c"../sound/pci/pcxhr/pcxhr_hwdep.c\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 186, i32 3 }
@llvm.compiler.used = appending global [67 x ptr] [ptr @__UNIQUE_ID_firmware243, ptr @__UNIQUE_ID_firmware244, ptr @__UNIQUE_ID_firmware245, ptr @__UNIQUE_ID_firmware246, ptr @__UNIQUE_ID_firmware247, ptr @__UNIQUE_ID_firmware248, ptr @__UNIQUE_ID_firmware249, ptr @__UNIQUE_ID_firmware250, ptr @__UNIQUE_ID_firmware251, ptr @__UNIQUE_ID_firmware252, ptr @__UNIQUE_ID_firmware253, ptr @__UNIQUE_ID_firmware254, ptr @__UNIQUE_ID_firmware255, ptr @__UNIQUE_ID_firmware256, ptr @__UNIQUE_ID_firmware257, ptr @__UNIQUE_ID_firmware258, ptr @__UNIQUE_ID_firmware259, ptr @pcxhr_dsp_allocate_pipe._entry, ptr @pcxhr_dsp_allocate_pipe._entry_ptr, ptr @pcxhr_dsp_load._entry, ptr @pcxhr_dsp_load._entry.27, ptr @pcxhr_dsp_load._entry.30, ptr @pcxhr_dsp_load._entry.33, ptr @pcxhr_dsp_load._entry_ptr, ptr @pcxhr_dsp_load._entry_ptr.29, ptr @pcxhr_dsp_load._entry_ptr.32, ptr @pcxhr_dsp_load._entry_ptr.35, ptr @pcxhr_setup_firmware._entry, ptr @pcxhr_setup_firmware._entry_ptr, ptr @pcxhr_setup_firmware.fw_files, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcxhr_setup_firmware.fw_files to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcxhr_setup_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcxhr_dsp_load._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcxhr_dsp_load._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcxhr_dsp_load._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcxhr_dsp_load._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcxhr_dsp_allocate_pipe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pcxhr_reset_board(ptr noundef %mgr) local_unnamed_addr #0 align 64 {
entry:
  %rmh = alloca %struct.pcxhr_rmh, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %rmh) #5
  %0 = call ptr @memset(ptr %rmh, i32 255, i32 104)
  %dsp_loaded = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 12
  %1 = ptrtoint ptr %dsp_loaded to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dsp_loaded, align 4
  %and = and i32 %2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.then:                                          ; preds = %entry
  %is_hr_stereo = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 18
  %3 = ptrtoint ptr %is_hr_stereo to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %is_hr_stereo, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool1.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool1.not, label %if.then2, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  call void @pcxhr_init_rmh(ptr noundef nonnull %rmh, i32 noundef 4) #5
  %cmd = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 4
  %4 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cmd, align 4
  %or = or i32 %5, 2
  store i32 %or, ptr %cmd, align 4
  %call = call i32 @pcxhr_send_msg(ptr noundef %mgr, ptr noundef nonnull %rmh) #5
  %call3 = call i32 @pcxhr_write_io_num_reg_cont(ptr noundef %mgr, i32 noundef 131072, i32 noundef 0, ptr noundef null) #5
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %6 = ptrtoint ptr %dsp_loaded to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dsp_loaded, align 4
  %and6 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end4.if.end9_crit_edge, label %if.then8

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  call void @pcxhr_reset_dsp(ptr noundef %mgr) #5
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end4.if.end9_crit_edge
  %8 = ptrtoint ptr %dsp_loaded to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dsp_loaded, align 4
  %and11 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end9.if.end15_crit_edge, label %if.then13

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  call void @pcxhr_reset_xilinx_com(ptr noundef %mgr) #5
  %10 = ptrtoint ptr %dsp_loaded to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %dsp_loaded, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end9.if.end15_crit_edge
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %rmh) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcxhr_init_rmh(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcxhr_send_msg(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcxhr_write_io_num_reg_cont(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcxhr_reset_dsp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcxhr_reset_xilinx_com(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pcxhr_setup_firmware(ptr noundef %mgr) local_unnamed_addr #0 align 64 {
entry:
  %path = alloca [32 x i8], align 1
  %fw_entry = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %path) #5
  %0 = call ptr @memset(ptr %path, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_entry) #5
  %1 = ptrtoint ptr %fw_entry to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw_entry, align 4, !annotation !128
  %fw_file_set = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 16
  %2 = ptrtoint ptr %fw_file_set to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_file_set, align 4
  %pci = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  %dsp_loaded = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.031 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx1 = getelementptr [6 x [5 x ptr]], ptr @pcxhr_setup_firmware.fw_files, i32 0, i32 %3, i32 %i.031
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx1, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end:                                           ; preds = %for.body
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %path, ptr noundef nonnull @.str.17, ptr noundef nonnull %5)
  %6 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %call5 = call i32 @request_firmware(ptr noundef nonnull %fw_entry, ptr noundef nonnull %path, ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end11, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci, align 4
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.18, ptr noundef nonnull %path) #8
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %10 = ptrtoint ptr %fw_entry to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fw_entry, align 4
  %call12 = call fastcc i32 @pcxhr_dsp_load(ptr noundef %mgr, i32 noundef %i.031, ptr noundef %11)
  %12 = ptrtoint ptr %fw_entry to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fw_entry, align 4
  call void @release_firmware(ptr noundef %13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.end11.cleanup_crit_edge, label %if.end15

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %shl = shl nuw nsw i32 1, %i.031
  %14 = ptrtoint ptr %dsp_loaded to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dsp_loaded, align 4
  %or = or i32 %15, %shl
  store i32 %or, ptr %dsp_loaded, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end15, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.031, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -2, %do.end ], [ 0, %for.inc.cleanup_crit_edge ], [ %call12, %if.end11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_entry) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %path) #5
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pcxhr_dsp_load(ptr noundef %mgr, i32 noundef %index, ptr noundef %dsp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcxhr_dsp_load.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcxhr_dsp_load, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !129

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pci = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %dsp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dsp, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcxhr_dsp_load.__UNIQUE_ID_ddebug241, ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %index, i32 noundef %3) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = zext i32 %index to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %index, label %do.end17 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 2, label %sw.bb6
    i32 3, label %sw.bb8
    i32 4, label %sw.bb10
  ]

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @pcxhr_reset_xilinx_com(ptr noundef %mgr) #5
  %call3 = tail call i32 @pcxhr_load_xilinx_binary(ptr noundef %mgr, ptr noundef %dsp, i32 noundef 0) #5
  br label %cleanup82

sw.bb4:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @pcxhr_reset_xilinx_com(ptr noundef %mgr) #5
  %call5 = tail call i32 @pcxhr_load_xilinx_binary(ptr noundef %mgr, ptr noundef %dsp, i32 noundef 1) #5
  br label %cleanup82

sw.bb6:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @pcxhr_reset_dsp(ptr noundef %mgr) #5
  %call7 = tail call i32 @pcxhr_load_eeprom_binary(ptr noundef %mgr, ptr noundef %dsp) #5
  br label %cleanup82

sw.bb8:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %call9 = tail call i32 @pcxhr_load_boot_binary(ptr noundef %mgr, ptr noundef %dsp) #5
  br label %cleanup82

sw.bb10:                                          ; preds = %do.end
  %call11 = tail call i32 @pcxhr_load_dsp_binary(ptr noundef %mgr, ptr noundef %dsp) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %sw.epilog, label %sw.bb10.cleanup82_crit_edge

sw.bb10.cleanup82_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup82

do.end17:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %pci18 = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  %5 = ptrtoint ptr %pci18 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pci18, align 4
  %dev19 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19, ptr noundef nonnull @.str.26) #8
  br label %cleanup82

sw.epilog:                                        ; preds = %sw.bb10
  %call20 = tail call fastcc i32 @pcxhr_init_board(ptr noundef %mgr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp = icmp slt i32 %call20, 0
  br i1 %cmp, label %do.end24, label %if.end27

do.end24:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %pci25 = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  %7 = ptrtoint ptr %pci25 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pci25, align 4
  %dev26 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26, ptr noundef nonnull @.str.28) #8
  br label %cleanup82

if.end27:                                         ; preds = %sw.epilog
  %9 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mgr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp63.not.i = icmp eq i32 %10, 0
  br i1 %cmp63.not.i, label %if.end27.pcxhr_start_pipes.exit_crit_edge, label %if.end27.for.body.i_crit_edge

if.end27.for.body.i_crit_edge:                    ; preds = %if.end27
  br label %for.body.i

if.end27.pcxhr_start_pipes.exit_crit_edge:        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %pcxhr_start_pipes.exit

for.body.i:                                       ; preds = %for.inc25.i.for.body.i_crit_edge, %if.end27.for.body.i_crit_edge
  %i.064.i = phi i32 [ %inc26.i, %for.inc25.i.for.body.i_crit_edge ], [ 0, %if.end27.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 1, i32 %i.064.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %nb_streams_play.i = getelementptr inbounds %struct.snd_pcxhr, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %nb_streams_play.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nb_streams_play.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %for.body.i.if.end10.i_crit_edge, label %if.then.i

for.body.i.if.end10.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i

if.then.i:                                        ; preds = %for.body.i
  %playback_pipe.i = getelementptr inbounds %struct.snd_pcxhr, ptr %12, i32 0, i32 4
  %mul.i = shl i32 %i.064.i, 1
  %call.i = tail call fastcc i32 @pcxhr_dsp_allocate_pipe(ptr noundef %mgr, ptr noundef %playback_pipe.i, i32 noundef 0, i32 noundef %mul.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %for.cond4.preheader.i, label %if.then.i.pcxhr_config_pipes.exit_crit_edge

if.then.i.pcxhr_config_pipes.exit_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pcxhr_config_pipes.exit

for.cond4.preheader.i:                            ; preds = %if.then.i
  %15 = ptrtoint ptr %nb_streams_play.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nb_streams_play.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp659.i = icmp sgt i32 %16, 0
  br i1 %cmp659.i, label %for.cond4.preheader.i.for.body7.i_crit_edge, label %for.cond4.preheader.i.if.end10.i_crit_edge

for.cond4.preheader.i.if.end10.i_crit_edge:       ; preds = %for.cond4.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i

for.cond4.preheader.i.for.body7.i_crit_edge:      ; preds = %for.cond4.preheader.i
  br label %for.body7.i

for.body7.i:                                      ; preds = %for.body7.i.for.body7.i_crit_edge, %for.cond4.preheader.i.for.body7.i_crit_edge
  %j.060.i = phi i32 [ %inc.i, %for.body7.i.for.body7.i_crit_edge ], [ 0, %for.cond4.preheader.i.for.body7.i_crit_edge ]
  %pipe9.i = getelementptr %struct.snd_pcxhr, ptr %12, i32 0, i32 6, i32 %j.060.i, i32 2
  %17 = ptrtoint ptr %pipe9.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %playback_pipe.i, ptr %pipe9.i, align 8
  %inc.i = add nuw nsw i32 %j.060.i, 1
  %18 = ptrtoint ptr %nb_streams_play.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nb_streams_play.i, align 8
  %cmp6.i = icmp slt i32 %inc.i, %19
  br i1 %cmp6.i, label %for.body7.i.for.body7.i_crit_edge, label %for.body7.i.if.end10.i_crit_edge

for.body7.i.if.end10.i_crit_edge:                 ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i

for.body7.i.for.body7.i_crit_edge:                ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body7.i

if.end10.i:                                       ; preds = %for.body7.i.if.end10.i_crit_edge, %for.cond4.preheader.i.if.end10.i_crit_edge, %for.body.i.if.end10.i_crit_edge
  %nb_streams_capt.i = getelementptr inbounds %struct.snd_pcxhr, ptr %12, i32 0, i32 9
  %20 = ptrtoint ptr %nb_streams_capt.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nb_streams_capt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp1261.i = icmp sgt i32 %21, 0
  br i1 %cmp1261.i, label %for.body13.lr.ph.i, label %if.end10.i.for.inc25.i_crit_edge

if.end10.i.for.inc25.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc25.i

for.body13.lr.ph.i:                               ; preds = %if.end10.i
  %mul15.i = shl i32 %i.064.i, 1
  br label %for.body13.i

for.body13.i:                                     ; preds = %if.end19.i.for.body13.i_crit_edge, %for.body13.lr.ph.i
  %j.162.i = phi i32 [ 0, %for.body13.lr.ph.i ], [ %inc23.i, %if.end19.i.for.body13.i_crit_edge ]
  %arrayidx14.i = getelementptr %struct.snd_pcxhr, ptr %12, i32 0, i32 5, i32 %j.162.i
  %add.i = add i32 %j.162.i, %mul15.i
  %call16.i = tail call fastcc i32 @pcxhr_dsp_allocate_pipe(ptr noundef %mgr, ptr noundef %arrayidx14.i, i32 noundef 1, i32 noundef %add.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %for.body13.i.pcxhr_config_pipes.exit_crit_edge

for.body13.i.pcxhr_config_pipes.exit_crit_edge:   ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pcxhr_config_pipes.exit

if.end19.i:                                       ; preds = %for.body13.i
  %pipe21.i = getelementptr %struct.snd_pcxhr, ptr %12, i32 0, i32 7, i32 %j.162.i, i32 2
  %22 = ptrtoint ptr %pipe21.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %arrayidx14.i, ptr %pipe21.i, align 8
  %inc23.i = add nuw nsw i32 %j.162.i, 1
  %23 = ptrtoint ptr %nb_streams_capt.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nb_streams_capt.i, align 4
  %cmp12.i = icmp slt i32 %inc23.i, %24
  br i1 %cmp12.i, label %if.end19.i.for.body13.i_crit_edge, label %if.end19.i.for.inc25.i_crit_edge

if.end19.i.for.inc25.i_crit_edge:                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc25.i

if.end19.i.for.body13.i_crit_edge:                ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body13.i

for.inc25.i:                                      ; preds = %if.end19.i.for.inc25.i_crit_edge, %if.end10.i.for.inc25.i_crit_edge
  %inc26.i = add nuw i32 %i.064.i, 1
  %25 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mgr, align 4
  %cmp.i = icmp ult i32 %inc26.i, %26
  br i1 %cmp.i, label %for.inc25.i.for.body.i_crit_edge, label %for.inc25.i.for.cond.preheader_crit_edge

for.inc25.i.for.cond.preheader_crit_edge:         ; preds = %for.inc25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.preheader

for.inc25.i.for.body.i_crit_edge:                 ; preds = %for.inc25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

pcxhr_config_pipes.exit:                          ; preds = %for.body13.i.pcxhr_config_pipes.exit_crit_edge, %if.then.i.pcxhr_config_pipes.exit_crit_edge
  %retval.0.i129 = phi i32 [ %call16.i, %for.body13.i.pcxhr_config_pipes.exit_crit_edge ], [ %call.i, %if.then.i.pcxhr_config_pipes.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i129)
  %cmp29 = icmp slt i32 %retval.0.i129, 0
  br i1 %cmp29, label %do.end33, label %for.cond.preheaderthread-pre-split

for.cond.preheaderthread-pre-split:               ; preds = %pcxhr_config_pipes.exit
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pr = load i32, ptr %mgr, align 4
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %for.cond.preheaderthread-pre-split, %for.inc25.i.for.cond.preheader_crit_edge
  %28 = phi i32 [ %.pr, %for.cond.preheaderthread-pre-split ], [ %26, %for.inc25.i.for.cond.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp37145.not = icmp eq i32 %28, 0
  br i1 %cmp37145.not, label %for.cond.preheader.pcxhr_start_pipes.exit_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.pcxhr_start_pipes.exit_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %pcxhr_start_pipes.exit

do.end33:                                         ; preds = %pcxhr_config_pipes.exit
  call void @__sanitizer_cov_trace_pc() #7
  %pci34 = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  %29 = ptrtoint ptr %pci34 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pci34, align 4
  %dev35 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev35, ptr noundef nonnull @.str.31) #8
  br label %cleanup82

for.cond:                                         ; preds = %cleanup
  %inc = add nuw i32 %card_index.0146, 1
  %31 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mgr, align 4
  %cmp37 = icmp ult i32 %inc, %32
  br i1 %cmp37, label %for.cond.for.body_crit_edge, label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %card_index.0146 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 1, i32 %card_index.0146
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx, align 4
  %call39 = tail call i32 @pcxhr_create_pcm(ptr noundef %34) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %for.body.cleanup82_crit_edge, label %if.end42

for.body.cleanup82_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup82

if.end42:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %card_index.0146)
  %cmp43 = icmp eq i32 %card_index.0146, 0
  br i1 %cmp43, label %if.then44, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then44:                                        ; preds = %if.end42
  %mgr45 = getelementptr inbounds %struct.snd_pcxhr, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %mgr45 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mgr45, align 4
  %call46 = tail call i32 @pcxhr_create_mixer(ptr noundef %36) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %if.then44.cleanup82_crit_edge, label %if.then44.cleanup_crit_edge

if.then44.cleanup_crit_edge:                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then44.cleanup82_crit_edge:                    ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup82

cleanup:                                          ; preds = %if.then44.cleanup_crit_edge, %if.end42.cleanup_crit_edge
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %34, align 8
  %call51 = tail call i32 @snd_card_register(ptr noundef %38) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %cleanup.cleanup82_crit_edge, label %for.cond

cleanup.cleanup82_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup82

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp26.not.i = icmp eq i32 %32, 0
  br i1 %cmp26.not.i, label %for.end.pcxhr_start_pipes.exit_crit_edge, label %for.end.for.body.i133_crit_edge

for.end.for.body.i133_crit_edge:                  ; preds = %for.end
  br label %for.body.i133

for.end.pcxhr_start_pipes.exit_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %pcxhr_start_pipes.exit

for.body.i133:                                    ; preds = %for.inc9.i.for.body.i133_crit_edge, %for.end.for.body.i133_crit_edge
  %capture_mask.029.i = phi i32 [ %capture_mask.1.lcssa.i, %for.inc9.i.for.body.i133_crit_edge ], [ 0, %for.end.for.body.i133_crit_edge ]
  %playback_mask.028.i = phi i32 [ %playback_mask.1.i, %for.inc9.i.for.body.i133_crit_edge ], [ 0, %for.end.for.body.i133_crit_edge ]
  %i.027.i = phi i32 [ %inc10.i, %for.inc9.i.for.body.i133_crit_edge ], [ 0, %for.end.for.body.i133_crit_edge ]
  %arrayidx.i130 = getelementptr %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 1, i32 %i.027.i
  %39 = ptrtoint ptr %arrayidx.i130 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i130, align 4
  %nb_streams_play.i131 = getelementptr inbounds %struct.snd_pcxhr, ptr %40, i32 0, i32 8
  %41 = ptrtoint ptr %nb_streams_play.i131 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %nb_streams_play.i131, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i132 = icmp eq i32 %42, 0
  br i1 %tobool.not.i132, label %for.body.i133.if.end.i_crit_edge, label %if.then.i134

for.body.i133.if.end.i_crit_edge:                 ; preds = %for.body.i133
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i134:                                     ; preds = %for.body.i133
  call void @__sanitizer_cov_trace_pc() #7
  %first_audio.i = getelementptr inbounds %struct.snd_pcxhr, ptr %40, i32 0, i32 4, i32 2
  %43 = ptrtoint ptr %first_audio.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %first_audio.i, align 8
  %shl.i = shl nuw i32 1, %44
  %or.i = or i32 %shl.i, %playback_mask.028.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i134, %for.body.i133.if.end.i_crit_edge
  %playback_mask.1.i = phi i32 [ %or.i, %if.then.i134 ], [ %playback_mask.028.i, %for.body.i133.if.end.i_crit_edge ]
  %nb_streams_capt.i135 = getelementptr inbounds %struct.snd_pcxhr, ptr %40, i32 0, i32 9
  %45 = ptrtoint ptr %nb_streams_capt.i135 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %nb_streams_capt.i135, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp323.i = icmp sgt i32 %46, 0
  br i1 %cmp323.i, label %if.end.i.for.body4.i_crit_edge, label %if.end.i.for.inc9.i_crit_edge

if.end.i.for.inc9.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc9.i

if.end.i.for.body4.i_crit_edge:                   ; preds = %if.end.i
  br label %for.body4.i

for.body4.i:                                      ; preds = %for.body4.i.for.body4.i_crit_edge, %if.end.i.for.body4.i_crit_edge
  %capture_mask.125.i = phi i32 [ %or8.i, %for.body4.i.for.body4.i_crit_edge ], [ %capture_mask.029.i, %if.end.i.for.body4.i_crit_edge ]
  %j.024.i = phi i32 [ %inc.i136, %for.body4.i.for.body4.i_crit_edge ], [ 0, %if.end.i.for.body4.i_crit_edge ]
  %first_audio6.i = getelementptr %struct.snd_pcxhr, ptr %40, i32 0, i32 5, i32 %j.024.i, i32 2
  %47 = ptrtoint ptr %first_audio6.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %first_audio6.i, align 4
  %shl7.i = shl nuw i32 1, %48
  %or8.i = or i32 %shl7.i, %capture_mask.125.i
  %inc.i136 = add nuw nsw i32 %j.024.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i136, %46
  br i1 %exitcond.not.i, label %for.body4.i.for.inc9.i_crit_edge, label %for.body4.i.for.body4.i_crit_edge

for.body4.i.for.body4.i_crit_edge:                ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body4.i

for.body4.i.for.inc9.i_crit_edge:                 ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc9.i

for.inc9.i:                                       ; preds = %for.body4.i.for.inc9.i_crit_edge, %if.end.i.for.inc9.i_crit_edge
  %capture_mask.1.lcssa.i = phi i32 [ %capture_mask.029.i, %if.end.i.for.inc9.i_crit_edge ], [ %or8.i, %for.body4.i.for.inc9.i_crit_edge ]
  %inc10.i = add nuw i32 %i.027.i, 1
  %exitcond32.not.i = icmp eq i32 %inc10.i, %32
  br i1 %exitcond32.not.i, label %for.inc9.i.pcxhr_start_pipes.exit_crit_edge, label %for.inc9.i.for.body.i133_crit_edge

for.inc9.i.for.body.i133_crit_edge:               ; preds = %for.inc9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i133

for.inc9.i.pcxhr_start_pipes.exit_crit_edge:      ; preds = %for.inc9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pcxhr_start_pipes.exit

pcxhr_start_pipes.exit:                           ; preds = %for.inc9.i.pcxhr_start_pipes.exit_crit_edge, %for.end.pcxhr_start_pipes.exit_crit_edge, %for.cond.preheader.pcxhr_start_pipes.exit_crit_edge, %if.end27.pcxhr_start_pipes.exit_crit_edge
  %playback_mask.0.lcssa.i = phi i32 [ 0, %for.end.pcxhr_start_pipes.exit_crit_edge ], [ 0, %for.cond.preheader.pcxhr_start_pipes.exit_crit_edge ], [ 0, %if.end27.pcxhr_start_pipes.exit_crit_edge ], [ %playback_mask.1.i, %for.inc9.i.pcxhr_start_pipes.exit_crit_edge ]
  %capture_mask.0.lcssa.i = phi i32 [ 0, %for.end.pcxhr_start_pipes.exit_crit_edge ], [ 0, %for.cond.preheader.pcxhr_start_pipes.exit_crit_edge ], [ 0, %if.end27.pcxhr_start_pipes.exit_crit_edge ], [ %capture_mask.1.lcssa.i, %for.inc9.i.pcxhr_start_pipes.exit_crit_edge ]
  %call.i137 = tail call i32 @pcxhr_set_pipe_state(ptr noundef %mgr, i32 noundef %playback_mask.0.lcssa.i, i32 noundef %capture_mask.0.lcssa.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i137)
  %cmp56 = icmp slt i32 %call.i137, 0
  br i1 %cmp56, label %do.end60, label %do.body64

do.end60:                                         ; preds = %pcxhr_start_pipes.exit
  call void @__sanitizer_cov_trace_pc() #7
  %pci61 = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  %49 = ptrtoint ptr %pci61 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pci61, align 4
  %dev62 = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev62, ptr noundef nonnull @.str.34) #8
  br label %cleanup82

do.body64:                                        ; preds = %pcxhr_start_pipes.exit
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcxhr_dsp_load.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcxhr_dsp_load, %if.then76)) #5
          to label %cleanup82 [label %if.then76], !srcloc !129

if.then76:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #7
  %pci77 = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  %51 = ptrtoint ptr %pci77 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pci77, align 4
  %dev78 = getelementptr inbounds %struct.pci_dev, ptr %52, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcxhr_dsp_load.__UNIQUE_ID_ddebug242, ptr noundef %dev78, ptr noundef nonnull @.str.36) #5
  br label %cleanup82

cleanup82:                                        ; preds = %if.then76, %do.body64, %do.end60, %cleanup.cleanup82_crit_edge, %if.then44.cleanup82_crit_edge, %for.body.cleanup82_crit_edge, %do.end33, %do.end24, %do.end17, %sw.bb10.cleanup82_crit_edge, %sw.bb8, %sw.bb6, %sw.bb4, %sw.bb
  %retval.2 = phi i32 [ -14, %do.end17 ], [ %call20, %do.end24 ], [ %retval.0.i129, %do.end33 ], [ %call.i137, %do.end60 ], [ %call9, %sw.bb8 ], [ %call7, %sw.bb6 ], [ %call5, %sw.bb4 ], [ %call3, %sw.bb ], [ %call11, %sw.bb10.cleanup82_crit_edge ], [ 0, %if.then76 ], [ 0, %do.body64 ], [ %call39, %for.body.cleanup82_crit_edge ], [ %call46, %if.then44.cleanup82_crit_edge ], [ %call51, %cleanup.cleanup82_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcxhr_load_xilinx_binary(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcxhr_load_eeprom_binary(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcxhr_load_boot_binary(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcxhr_load_dsp_binary(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pcxhr_init_board(ptr noundef %mgr) unnamed_addr #0 align 64 {
entry:
  %rmh = alloca %struct.pcxhr_rmh, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %rmh) #5
  %0 = call ptr @memset(ptr %rmh, i32 255, i32 104)
  %mono_capture = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 18
  %1 = ptrtoint ptr %mono_capture to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %mono_capture, align 4
  %capture_chips1 = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 15
  %2 = ptrtoint ptr %capture_chips1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %capture_chips1, align 4
  %4 = lshr i8 %bf.load, 2
  %.lobit = and i8 %4, 1
  %5 = zext i8 %.lobit to i32
  %card_streams.0 = shl i32 %3, %5
  %playback_chips = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 14
  %6 = ptrtoint ptr %playback_chips to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %playback_chips, align 4
  %mul2 = shl i32 %7, 2
  %add = add i32 %mul2, %card_streams.0
  tail call void @pcxhr_enable_dsp(ptr noundef %mgr) #5
  call void @pcxhr_init_rmh(ptr noundef nonnull %rmh, i32 noundef 1) #5
  %call = call i32 @pcxhr_send_msg(ptr noundef %mgr, ptr noundef nonnull %rmh) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end5, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %entry
  %stat = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 5
  %8 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stat, align 4
  %and = and i32 %9, 31
  %10 = ptrtoint ptr %playback_chips to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %playback_chips, align 4
  %mul7 = shl i32 %11, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %mul7)
  %cmp = icmp ult i32 %and, %mul7
  br i1 %cmp, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %shr = lshr i32 %9, 10
  %and12 = and i32 %shr, 31
  %capture_chips13 = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 15
  %12 = ptrtoint ptr %capture_chips13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %capture_chips13, align 4
  %mul14 = shl i32 %13, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and12, i32 %mul14)
  %cmp15 = icmp ult i32 %and12, %mul14
  br i1 %cmp15, label %if.end9.cleanup_crit_edge, label %if.end17

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end17:                                         ; preds = %if.end9
  %arrayidx19 = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx19, align 4
  %and20 = and i32 %15, 95
  call void @__sanitizer_cov_trace_cmp4(i32 %and20, i32 %add)
  %cmp21 = icmp ult i32 %and20, %add
  %16 = and i32 %15, 11776
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp28 = icmp eq i32 %16, 0
  %or.cond = or i1 %cmp21, %cmp28
  br i1 %or.cond, label %if.end17.cleanup_crit_edge, label %do.body

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %if.end17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcxhr_init_board.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcxhr_init_board, %if.then35)) #5
          to label %do.end [label %if.then35], !srcloc !129

if.then35:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %pci = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  %17 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %arrayidx37 = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 5, i32 2
  %19 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx37, align 4
  %arrayidx39 = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 5, i32 3
  %21 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx39, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcxhr_init_board.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.38, i32 noundef %20, i32 noundef %22) #5
  br label %do.end

do.end:                                           ; preds = %if.then35, %do.body
  call void @pcxhr_init_rmh(ptr noundef nonnull %rmh, i32 noundef 0) #5
  %firmware_num = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 17
  %23 = ptrtoint ptr %firmware_num to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %firmware_num, align 4
  %cmd = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 4
  %25 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cmd, align 4
  %or = or i32 %26, %24
  store i32 %or, ptr %cmd, align 4
  %granularity = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 4
  %27 = ptrtoint ptr %granularity to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %granularity, align 4
  %add42 = add i32 %28, 8388608
  %arrayidx44 = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 4, i32 1
  %29 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add42, ptr %arrayidx44, align 4
  %30 = ptrtoint ptr %rmh to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 2, ptr %rmh, align 4
  %call45 = call i32 @pcxhr_send_msg(ptr noundef %mgr, ptr noundef nonnull %rmh) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %do.body49, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body49:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcxhr_init_board.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcxhr_init_board, %if.then61)) #5
          to label %do.end77 [label %if.then61], !srcloc !129

if.then61:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #7
  %pci62 = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  %31 = ptrtoint ptr %pci62 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pci62, align 4
  %dev63 = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  %33 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %stat, align 4
  %shr66 = lshr i32 %34, 16
  %and67 = and i32 %shr66, 255
  %shr70 = lshr i32 %34, 8
  %and71 = and i32 %shr70, 255
  %and74 = and i32 %34, 255
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcxhr_init_board.__UNIQUE_ID_ddebug239, ptr noundef %dev63, ptr noundef nonnull @.str.39, i32 noundef %and67, i32 noundef %and71, i32 noundef %and74) #5
  br label %do.end77

do.end77:                                         ; preds = %if.then61, %do.body49
  %35 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %stat, align 4
  %dsp_version = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 13
  %37 = ptrtoint ptr %dsp_version to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %dsp_version, align 4
  %38 = ptrtoint ptr %mono_capture to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load80 = load i8, ptr %mono_capture, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load80)
  %tobool83.not = icmp sgt i8 %bf.load80, -1
  br i1 %tobool83.not, label %if.else86, label %if.then84

if.then84:                                        ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #7
  %call85 = call i32 @hr222_sub_init(ptr noundef %mgr) #5
  br label %cleanup

if.else86:                                        ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #7
  %call87 = call fastcc i32 @pcxhr_sub_init(ptr noundef %mgr)
  br label %cleanup

cleanup:                                          ; preds = %if.else86, %if.then84, %do.end.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ -22, %if.end17.cleanup_crit_edge ], [ %call45, %do.end.cleanup_crit_edge ], [ %call85, %if.then84 ], [ %call87, %if.else86 ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %rmh) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcxhr_create_pcm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcxhr_create_mixer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcxhr_enable_dsp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hr222_sub_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pcxhr_sub_init(ptr noundef %mgr) unnamed_addr #0 align 64 {
entry:
  %rmh = alloca %struct.pcxhr_rmh, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %rmh) #5
  %0 = call ptr @memset(ptr %rmh, i32 255, i32 104)
  call void @pcxhr_init_rmh(ptr noundef nonnull %rmh, i32 noundef 5) #5
  %cmd = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 4
  %1 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cmd, align 4
  %or = or i32 %2, 5
  store i32 %or, ptr %cmd, align 4
  %arrayidx2 = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %arrayidx2, align 4
  %4 = ptrtoint ptr %rmh to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 2, ptr %rmh, align 4
  %call = call i32 @pcxhr_send_msg(ptr noundef %mgr, ptr noundef nonnull %rmh) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx3 = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 5, i32 1
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx3, align 4
  %and = and i32 %6, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then4, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %board_has_analog = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 18
  %7 = ptrtoint ptr %board_has_analog to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %board_has_analog, align 4
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %board_has_analog, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %call6 = call i32 @pcxhr_write_io_num_reg_cont(ptr noundef %mgr, i32 noundef 131072, i32 noundef 131072, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @pcxhr_init_rmh(ptr noundef nonnull %rmh, i32 noundef 5) #5
  %8 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cmd, align 4
  %or12 = or i32 %9, 2
  store i32 %or12, ptr %cmd, align 4
  %dsp_version = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 13
  %10 = ptrtoint ptr %dsp_version to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dsp_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 75776, i32 %11)
  %cmp13 = icmp ugt i32 %11, 75776
  br i1 %cmp13, label %if.then14, label %if.end9.if.end18_crit_edge

if.end9.if.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %arrayidx2, align 4
  %13 = ptrtoint ptr %rmh to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 2, ptr %rmh, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.end9.if.end18_crit_edge
  %call19 = call i32 @pcxhr_send_msg(ptr noundef %mgr, ptr noundef nonnull %rmh) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call19, %if.end18 ], [ %call, %entry.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %rmh) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pcxhr_dsp_allocate_pipe(ptr noundef %mgr, ptr nocapture noundef writeonly %pipe, i32 noundef %is_capture, i32 noundef %pin) unnamed_addr #0 align 64 {
entry:
  %rmh = alloca %struct.pcxhr_rmh, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %rmh) #5
  %0 = call ptr @memset(ptr %rmh, i32 255, i32 104)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_capture)
  %tobool.not = icmp eq i32 %is_capture, 0
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %mono_capture = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 18
  %1 = ptrtoint ptr %mono_capture to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %mono_capture, align 4
  %2 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not = icmp eq i8 %2, 0
  %. = select i1 %tobool1.not, i32 3, i32 1
  %.44 = select i1 %tobool1.not, i32 2, i32 1
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  %cmp13 = phi i32 [ %., %if.then ], [ 3, %entry.do.body_crit_edge ]
  %audio_count.0 = phi i32 [ %.44, %if.then ], [ 2, %entry.do.body_crit_edge ]
  %stream_count.0 = phi i32 [ 1, %if.then ], [ 4, %entry.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcxhr_dsp_allocate_pipe.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcxhr_dsp_allocate_pipe, %if.then8)) #5
          to label %do.end [label %if.then8], !srcloc !129

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %pci = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  %3 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %cond = select i1 %tobool.not, i32 112, i32 99
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcxhr_dsp_allocate_pipe.__UNIQUE_ID_ddebug240, ptr noundef %dev, ptr noundef nonnull @.str.41, i32 noundef %pin, i32 noundef %cond) #5
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %is_capture11 = getelementptr inbounds %struct.pcxhr_pipe, ptr %pipe, i32 0, i32 1
  %5 = ptrtoint ptr %is_capture11 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %is_capture, ptr %is_capture11, align 4
  %first_audio = getelementptr inbounds %struct.pcxhr_pipe, ptr %pipe, i32 0, i32 2
  %6 = ptrtoint ptr %first_audio to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %pin, ptr %first_audio, align 4
  call void @pcxhr_init_rmh(ptr noundef nonnull %rmh, i32 noundef 11) #5
  call void @pcxhr_set_pipe_cmd_params(ptr noundef nonnull %rmh, i32 noundef %is_capture, i32 noundef %pin, i32 noundef %audio_count.0, i32 noundef %stream_count.0) #5
  %arrayidx = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %or = or i32 %8, 131072
  store i32 %or, ptr %arrayidx, align 4
  %dsp_version = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 13
  %9 = ptrtoint ptr %dsp_version to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dsp_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 75776, i32 %10)
  %cmp = icmp ugt i32 %10, 75776
  br i1 %cmp, label %if.then12, label %do.end.if.end17_crit_edge

do.end.if.end17_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then12:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %rmh to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %rmh, align 4
  %inc = add i16 %12, 1
  store i16 %inc, ptr %rmh, align 4
  %idxprom = zext i16 %12 to i32
  %arrayidx16 = getelementptr %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 4, i32 %idxprom
  %13 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %cmp13, ptr %arrayidx16, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then12, %do.end.if.end17_crit_edge
  %call18 = call i32 @pcxhr_send_msg(ptr noundef %mgr, ptr noundef nonnull %rmh) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %do.end23, label %if.end26

do.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %pci24 = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  %14 = ptrtoint ptr %pci24 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pci24, align 4
  %dev25 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev25, ptr noundef nonnull @.str.42, i32 noundef %call18) #8
  br label %cleanup

if.end26:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %pipe to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %pipe, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %do.end23
  %retval.0 = phi i32 [ %call18, %do.end23 ], [ 0, %if.end26 ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %rmh) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcxhr_set_pipe_cmd_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcxhr_set_pipe_state(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !41, !42, !43, !44, !45, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !106, !107, !108, !110, !111, !113, !114, !115, !117, !118}
!llvm.module.flags = !{!119, !120, !121, !122, !123, !124, !125, !126}
!llvm.ident = !{!127}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/pci/pcxhr/pcxhr_hwdep.c", i32 355, i32 10}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/pci/pcxhr/pcxhr_hwdep.c", i32 355, i32 24}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/pci/pcxhr/pcxhr_hwdep.c", i32 356, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/pci/pcxhr/pcxhr_hwdep.c", i32 356, i32 18}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/pci/pcxhr/pcxhr_hwdep.c", i32 356, i32 35}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/pci/pcxhr/pcxhr_hwdep.c", i32 357, i32 24}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/pci/pcxhr/pcxhr_hwdep.c", i32 358, i32 18}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/pci/pcxhr/pcxhr_hwdep.c", i32 359, i32 24}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/pci/pcxhr/pcxhr_hwdep.c", i32 360, i32 18}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/pci/pcxhr/pcxhr_hwdep.c", i32 360, i32 36}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/pci/pcxhr/pcxhr_hwdep.c", i32 361, i32 24}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/pci/pcxhr/pcxhr_hwdep.c", i32 362, i32 18}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/pci/pcxhr/pcxhr_hwdep.c", i32 363, i32 16}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/pci/pcxhr/pcxhr_hwdep.c", i32 364, i32 3}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/pci/pcxhr/pcxhr_hwdep.c", i32 364, i32 18}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/pci/pcxhr/pcxhr_hwdep.c", i32 364, i32 33}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/pci/pcxhr/pcxhr_hwdep.c", i32 365, i32 16}
!34 = !{ptr @pcxhr_setup_firmware.fw_files, !35, !"fw_files", i1 false, i1 false}
!35 = !{!"../sound/pci/pcxhr/pcxhr_hwdep.c", i32 354, i32 28}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/pci/pcxhr/pcxhr_hwdep.c", i32 377, i32 17}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/pci/pcxhr/pcxhr_hwdep.c", i32 379, i32 4}
!40 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @pcxhr_setup_firmware._entry, !39, !"_entry", i1 false, i1 false}
!45 = !{ptr @pcxhr_setup_firmware._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @__UNIQUE_ID_firmware243, !47, !"__UNIQUE_ID_firmware243", i1 false, i1 false}
!47 = !{!"../sound/pci/pcxhr/pcxhr_hwdep.c", i32 394, i32 1}
!48 = !{ptr @__UNIQUE_ID_firmware244, !49, !"__UNIQUE_ID_firmware244", i1 false, i1 false}
!49 = !{!"../sound/pci/pcxhr/pcxhr_hwdep.c", i32 395, i32 1}
!50 = !{ptr @__UNIQUE_ID_firmware245, !51, !"__UNIQUE_ID_firmware245", i1 false, i1 false}
!51 = !{!"../sound/pci/pcxhr/pcxhr_hwdep.c", i32 396, i32 1}
!52 = !{ptr @__UNIQUE_ID_firmware246, !53, !"__UNIQUE_ID_firmware246", i1 false, i1 false}
!53 = !{!"../sound/pci/pcxhr/pcxhr_hwdep.c", i32 397, i32 1}
!54 = !{ptr @__UNIQUE_ID_firmware247, !55, !"__UNIQUE_ID_firmware247", i1 false, i1 false}
!55 = !{!"../sound/pci/pcxhr/pcxhr_hwdep.c", i32 398, i32 1}
!56 = !{ptr @__UNIQUE_ID_firmware248, !57, !"__UNIQUE_ID_firmware248", i1 false, i1 false}
!57 = !{!"../sound/pci/pcxhr/pcxhr_hwdep.c", i32 399, i32 1}
!58 = !{ptr @__UNIQUE_ID_firmware249, !59, !"__UNIQUE_ID_firmware249", i1 false, i1 false}
!59 = !{!"../sound/pci/pcxhr/pcxhr_hwdep.c", i32 400, i32 1}
!60 = !{ptr @__UNIQUE_ID_firmware250, !61, !"__UNIQUE_ID_firmware250", i1 false, i1 false}
!61 = !{!"../sound/pci/pcxhr/pcxhr_hwdep.c", i32 402, i32 1}
!62 = !{ptr @__UNIQUE_ID_firmware251, !63, !"__UNIQUE_ID_firmware251", i1 false, i1 false}
!63 = !{!"../sound/pci/pcxhr/pcxhr_hwdep.c", i32 403, i32 1}
!64 = !{ptr @__UNIQUE_ID_firmware252, !65, !"__UNIQUE_ID_firmware252", i1 false, i1 false}
!65 = !{!"../sound/pci/pcxhr/pcxhr_hwdep.c", i32 404, i32 1}
!66 = !{ptr @__UNIQUE_ID_firmware253, !67, !"__UNIQUE_ID_firmware253", i1 false, i1 false}
!67 = !{!"../sound/pci/pcxhr/pcxhr_hwdep.c", i32 405, i32 1}
!68 = !{ptr @__UNIQUE_ID_firmware254, !69, !"__UNIQUE_ID_firmware254", i1 false, i1 false}
!69 = !{!"../sound/pci/pcxhr/pcxhr_hwdep.c", i32 406, i32 1}
!70 = !{ptr @__UNIQUE_ID_firmware255, !71, !"__UNIQUE_ID_firmware255", i1 false, i1 false}
!71 = !{!"../sound/pci/pcxhr/pcxhr_hwdep.c", i32 408, i32 1}
!72 = !{ptr @__UNIQUE_ID_firmware256, !73, !"__UNIQUE_ID_firmware256", i1 false, i1 false}
!73 = !{!"../sound/pci/pcxhr/pcxhr_hwdep.c", i32 409, i32 1}
!74 = !{ptr @__UNIQUE_ID_firmware257, !75, !"__UNIQUE_ID_firmware257", i1 false, i1 false}
!75 = !{!"../sound/pci/pcxhr/pcxhr_hwdep.c", i32 410, i32 1}
!76 = !{ptr @__UNIQUE_ID_firmware258, !77, !"__UNIQUE_ID_firmware258", i1 false, i1 false}
!77 = !{!"../sound/pci/pcxhr/pcxhr_hwdep.c", i32 411, i32 1}
!78 = !{ptr @__UNIQUE_ID_firmware259, !79, !"__UNIQUE_ID_firmware259", i1 false, i1 false}
!79 = !{!"../sound/pci/pcxhr/pcxhr_hwdep.c", i32 412, i32 1}
!80 = !{ptr @.str.23, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/pci/pcxhr/pcxhr_hwdep.c", i32 281, i32 2}
!82 = !{ptr @.str.24, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.25, !81, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @pcxhr_dsp_load.__UNIQUE_ID_ddebug241, !81, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!85 = !{ptr @.str.26, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/pci/pcxhr/pcxhr_hwdep.c", i32 306, i32 3}
!87 = !{ptr @pcxhr_dsp_load._entry, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @pcxhr_dsp_load._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.28, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/pci/pcxhr/pcxhr_hwdep.c", i32 313, i32 3}
!91 = !{ptr @pcxhr_dsp_load._entry.27, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @pcxhr_dsp_load._entry_ptr.29, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.31, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/pci/pcxhr/pcxhr_hwdep.c", i32 318, i32 3}
!95 = !{ptr @pcxhr_dsp_load._entry.30, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @pcxhr_dsp_load._entry_ptr.32, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.34, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/pci/pcxhr/pcxhr_hwdep.c", i32 340, i32 3}
!99 = !{ptr @pcxhr_dsp_load._entry.33, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @pcxhr_dsp_load._entry_ptr.35, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.36, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/pci/pcxhr/pcxhr_hwdep.c", i32 343, i32 2}
!103 = !{ptr @pcxhr_dsp_load.__UNIQUE_ID_ddebug242, !102, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!104 = !{ptr @.str.37, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/pci/pcxhr/pcxhr_hwdep.c", i32 62, i32 2}
!106 = !{ptr @.str.38, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @pcxhr_init_board.__UNIQUE_ID_ddebug238, !105, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!108 = !{ptr @.str.39, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/pci/pcxhr/pcxhr_hwdep.c", i32 75, i32 2}
!110 = !{ptr @pcxhr_init_board.__UNIQUE_ID_ddebug239, !109, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!111 = !{ptr @.str.40, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/pci/pcxhr/pcxhr_hwdep.c", i32 171, i32 2}
!113 = !{ptr @.str.41, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @pcxhr_dsp_allocate_pipe.__UNIQUE_ID_ddebug240, !112, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!115 = !{ptr @.str.42, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../sound/pci/pcxhr/pcxhr_hwdep.c", i32 186, i32 3}
!117 = !{ptr @pcxhr_dsp_allocate_pipe._entry, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @pcxhr_dsp_allocate_pipe._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{i32 1, !"wchar_size", i32 2}
!120 = !{i32 1, !"min_enum_size", i32 4}
!121 = !{i32 8, !"branch-target-enforcement", i32 0}
!122 = !{i32 8, !"sign-return-address", i32 0}
!123 = !{i32 8, !"sign-return-address-all", i32 0}
!124 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!125 = !{i32 7, !"uwtable", i32 1}
!126 = !{i32 7, !"frame-pointer", i32 2}
!127 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!128 = !{!"auto-init"}
!129 = !{i64 2148726090, i64 2148726095, i64 2148726108, i64 2148726152, i64 2148726186, i64 2148726207}
