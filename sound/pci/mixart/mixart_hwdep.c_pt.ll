; ModuleID = '/llk/IR_all_yes/sound/pci/mixart/mixart_hwdep.c_pt.bc'
source_filename = "../sound/pci/mixart/mixart_hwdep.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mixart_mgr = type { i32, [4 x ptr], ptr, i32, [2 x %struct.mem_area], i32, %struct.wait_queue_head, [16 x i32], i32, i32, %struct.atomic_t, %struct.mutex, %struct.mutex, %struct.mutex, i32, i32, %struct.snd_dma_buffer, %struct.snd_dma_buffer, %struct.mixart_uid, i32, i32, %struct.mutex }
%struct.mem_area = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.mixart_uid = type { i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.68 = type { ptr }
%struct.mixart_msg = type { i32, %struct.mixart_uid, ptr, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.snd_mixart_elf32_ehdr = type { [16 x i8], i16, i16, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16 }
%struct.mixart_audio_info_req = type { i32, i32, i32 }
%struct.mixart_enum_connector_resp = type { i32, i32, i32, i32, [16 x %struct.mixart_uid] }
%struct.snd_mixart = type { ptr, ptr, i32, ptr, ptr, ptr, %struct.mixart_pipe, %struct.mixart_pipe, %struct.mixart_pipe, %struct.mixart_pipe, [2 x [4 x %struct.mixart_stream]], [2 x %struct.mixart_stream], %struct.mixart_uid, %struct.mixart_uid, [2 x i32], [2 x i32], [2 x i32], [8 x [2 x i32]], [8 x [2 x i32]], [2 x [2 x i32]], [2 x i32], [2 x i32] }
%struct.mixart_pipe = type { %struct.mixart_uid, i32, %struct.mixart_uid, %struct.mixart_uid, i32, i32, i32 }
%struct.mixart_stream = type { ptr, ptr, i32, i32, i64, i32, i32, i32 }
%struct.mixart_return_uid = type { i32, %struct.mixart_uid }
%struct.mixart_uid_enumeration = type { i32, i32, i32, i32, [16 x %struct.mixart_uid] }

@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"miXart8.xlx\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"miXart8.elf\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"miXart8AES.xlx\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mixart/%s\00", [22 x i8] zeroinitializer }, align 32
@snd_mixart_setup_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 571, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"miXart: can't load firmware %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"snd_mixart_setup_firmware\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sound/pci/mixart/mixart_hwdep.c\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_mixart_setup_firmware._entry_ptr = internal global ptr @snd_mixart_setup_firmware._entry, section ".printk_index", align 4
@__UNIQUE_ID_firmware242 = internal constant [39 x i8] c"snd_mixart.firmware=mixart/miXart8.xlx\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware243 = internal constant [39 x i8] c"snd_mixart.firmware=mixart/miXart8.elf\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware244 = internal constant [42 x i8] c"snd_mixart.firmware=mixart/miXart8AES.xlx\00", section ".modinfo", align 1
@mixart_dsp_load._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.6, i32 352, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"miXart is resetting !\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mixart_dsp_load\00", [16 x i8] zeroinitializer }, align 32
@mixart_dsp_load._entry_ptr = internal global ptr @mixart_dsp_load._entry, section ".printk_index", align 4
@mixart_dsp_load.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.10, ptr @.str.6, ptr @.str.12, i8 0, i8 90, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"snd_mixart\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"xilinx is already loaded !\0A\00", [36 x i8] zeroinitializer }, align 32
@mixart_dsp_load._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.10, ptr @.str.6, i32 368, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"xilinx load error ! status = %d\0A\00", [63 x i8] zeroinitializer }, align 32
@mixart_dsp_load._entry_ptr.15 = internal global ptr @mixart_dsp_load._entry.13, section ".printk_index", align 4
@mixart_dsp_load.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.10, ptr @.str.6, ptr @.str.16, i8 0, i8 99, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"elf file already loaded !\0A\00", [37 x i8] zeroinitializer }, align 32
@mixart_dsp_load._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.10, ptr @.str.6, i32 406, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"elf load error ! status = %d\0A\00", [34 x i8] zeroinitializer }, align 32
@mixart_dsp_load._entry_ptr.19 = internal global ptr @mixart_dsp_load._entry.17, section ".printk_index", align 4
@mixart_dsp_load._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.10, ptr @.str.6, i32 414, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"xilinx was not loaded or could not be started\0A\00", [49 x i8] zeroinitializer }, align 32
@mixart_dsp_load._entry_ptr.22 = internal global ptr @mixart_dsp_load._entry.20, section ".printk_index", align 4
@mixart_dsp_load._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.10, ptr @.str.6, i32 435, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"elf could not be started\0A\00", [38 x i8] zeroinitializer }, align 32
@mixart_dsp_load._entry_ptr.25 = internal global ptr @mixart_dsp_load._entry.23, section ".printk_index", align 4
@mixart_dsp_load._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.10, ptr @.str.6, i32 450, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"xilinx or elf not successfully loaded\0A\00", [57 x i8] zeroinitializer }, align 32
@mixart_dsp_load._entry_ptr.28 = internal global ptr @mixart_dsp_load._entry.26, section ".printk_index", align 4
@mixart_dsp_load._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.10, ptr @.str.6, i32 457, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"error starting elf file\0A\00", [39 x i8] zeroinitializer }, align 32
@mixart_dsp_load._entry_ptr.31 = internal global ptr @mixart_dsp_load._entry.29, section ".printk_index", align 4
@mixart_dsp_load._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.10, ptr @.str.6, i32 475, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"daughter load error ! status = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@mixart_dsp_load._entry_ptr.34 = internal global ptr @mixart_dsp_load._entry.32, section ".printk_index", align 4
@mixart_dsp_load._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.10, ptr @.str.6, i32 494, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"daughter board load error\0A\00", [37 x i8] zeroinitializer }, align 32
@mixart_dsp_load._entry_ptr.37 = internal global ptr @mixart_dsp_load._entry.35, section ".printk_index", align 4
@mixart_dsp_load._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.10, ptr @.str.6, i32 517, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"daughter board could not be initialised\0A\00", [55 x i8] zeroinitializer }, align 32
@mixart_dsp_load._entry_ptr.40 = internal global ptr @mixart_dsp_load._entry.38, section ".printk_index", align 4
@mixart_dsp_load._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.10, ptr @.str.6, i32 527, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"miXart could not be set up\0A\00", [36 x i8] zeroinitializer }, align 32
@mixart_dsp_load._entry_ptr.43 = internal global ptr @mixart_dsp_load._entry.41, section ".printk_index", align 4
@mixart_dsp_load.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.10, ptr @.str.6, ptr @.str.44, i8 0, i8 -119, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"miXart firmware downloaded and successfully set up\0A\00", [44 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@mixart_first_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.6, i32 326, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"error MSG_SYSTEM_SEND_SYNCHRO_CMD\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mixart_first_init\00", [46 x i8] zeroinitializer }, align 32
@mixart_first_init._entry_ptr = internal global ptr @mixart_first_init._entry, section ".printk_index", align 4
@mixart_enum_connectors._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.6, i32 158, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"error MSG_SYSTEM_ENUM_PLAY_CONNECTOR\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mixart_enum_connectors\00", [41 x i8] zeroinitializer }, align 32
@mixart_enum_connectors._entry_ptr = internal global ptr @mixart_enum_connectors._entry, section ".printk_index", align 4
@mixart_enum_connectors._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.6, i32 188, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"error MSG_CONNECTOR_GET_AUDIO_INFO\0A\00", [60 x i8] zeroinitializer }, align 32
@mixart_enum_connectors._entry_ptr.51 = internal global ptr @mixart_enum_connectors._entry.49, section ".printk_index", align 4
@mixart_enum_connectors._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.48, ptr @.str.6, i32 202, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"error MSG_SYSTEM_ENUM_RECORD_CONNECTOR\0A\00", [56 x i8] zeroinitializer }, align 32
@mixart_enum_connectors._entry_ptr.54 = internal global ptr @mixart_enum_connectors._entry.52, section ".printk_index", align 4
@mixart_enum_connectors._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.6, i32 232, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@mixart_enum_connectors._entry_ptr.56 = internal global ptr @mixart_enum_connectors._entry.55, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mixart_enum_physio.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.57, ptr @.str.6, ptr @.str.58, i8 0, i8 67, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mixart_enum_physio\00", [45 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"error MSG_CONSOLE_GET_CLOCK_UID : err=%x\0A\00", [54 x i8] zeroinitializer }, align 32
@mixart_enum_physio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.6, i32 286, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"error MSG_SYSTEM_ENUM_PHYSICAL_IO err(%x) error_code(%x)\0A\00", [38 x i8] zeroinitializer }, align 32
@mixart_enum_physio._entry_ptr = internal global ptr @mixart_enum_physio._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 14]
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 560, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 560, i32 18 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 560, i32 33 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 568, i32 17 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 570, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 352, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 361, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 366, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 398, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 404, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 413, i32 4 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 435, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 449, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 457, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 473, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 494, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 516, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 527, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 550, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 326, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 157, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 187, i32 4 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 201, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 231, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 268, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.216 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.217 = private constant [35 x i8] c"../sound/pci/mixart/mixart_hwdep.c\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 284, i32 3 }
@llvm.compiler.used = appending global [73 x ptr] [ptr @__UNIQUE_ID_firmware242, ptr @__UNIQUE_ID_firmware243, ptr @__UNIQUE_ID_firmware244, ptr @mixart_dsp_load._entry, ptr @mixart_dsp_load._entry.13, ptr @mixart_dsp_load._entry.17, ptr @mixart_dsp_load._entry.20, ptr @mixart_dsp_load._entry.23, ptr @mixart_dsp_load._entry.26, ptr @mixart_dsp_load._entry.29, ptr @mixart_dsp_load._entry.32, ptr @mixart_dsp_load._entry.35, ptr @mixart_dsp_load._entry.38, ptr @mixart_dsp_load._entry.41, ptr @mixart_dsp_load._entry_ptr, ptr @mixart_dsp_load._entry_ptr.15, ptr @mixart_dsp_load._entry_ptr.19, ptr @mixart_dsp_load._entry_ptr.22, ptr @mixart_dsp_load._entry_ptr.25, ptr @mixart_dsp_load._entry_ptr.28, ptr @mixart_dsp_load._entry_ptr.31, ptr @mixart_dsp_load._entry_ptr.34, ptr @mixart_dsp_load._entry_ptr.37, ptr @mixart_dsp_load._entry_ptr.40, ptr @mixart_dsp_load._entry_ptr.43, ptr @mixart_enum_connectors._entry, ptr @mixart_enum_connectors._entry.49, ptr @mixart_enum_connectors._entry.52, ptr @mixart_enum_connectors._entry.55, ptr @mixart_enum_connectors._entry_ptr, ptr @mixart_enum_connectors._entry_ptr.51, ptr @mixart_enum_connectors._entry_ptr.54, ptr @mixart_enum_connectors._entry_ptr.56, ptr @mixart_enum_physio._entry, ptr @mixart_enum_physio._entry_ptr, ptr @mixart_first_init._entry, ptr @mixart_first_init._entry_ptr, ptr @snd_mixart_setup_firmware._entry, ptr @snd_mixart_setup_firmware._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.53, ptr @.str.57, ptr @.str.58, ptr @.str.59], section "llvm.metadata"
@0 = internal global [52 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mixart_setup_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixart_dsp_load._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixart_dsp_load._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixart_dsp_load._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixart_dsp_load._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixart_dsp_load._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixart_dsp_load._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixart_dsp_load._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixart_dsp_load._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixart_dsp_load._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixart_dsp_load._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixart_dsp_load._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixart_first_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixart_enum_connectors._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixart_enum_connectors._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixart_enum_connectors._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixart_enum_connectors._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixart_enum_physio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_mixart_setup_firmware(ptr noundef %mgr) local_unnamed_addr #0 align 64 {
entry:
  %path = alloca [32 x i8], align 1
  %fw_entry = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %path) #6
  %0 = call ptr @memset(ptr %path, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_entry) #6
  %1 = ptrtoint ptr %fw_entry to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw_entry, align 4, !annotation !117
  %pci = getelementptr inbounds %struct.mixart_mgr, ptr %mgr, i32 0, i32 2
  %dsp_loaded = getelementptr inbounds %struct.mixart_mgr, ptr %mgr, i32 0, i32 14
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %path, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str)
  %2 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %call2 = call i32 @request_firmware(ptr noundef nonnull %fw_entry, ptr noundef nonnull %path, ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %if.end9.1.do.end_crit_edge, %if.end9.do.end_crit_edge, %entry.do.end_crit_edge
  %4 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci, align 4
  %dev4 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.4, ptr noundef nonnull %path) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %fw_entry to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fw_entry, align 4
  %call6 = call fastcc i32 @mixart_dsp_load(ptr noundef %mgr, i32 noundef 0, ptr noundef %7)
  %8 = ptrtoint ptr %fw_entry to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fw_entry, align 4
  call void @release_firmware(ptr noundef %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %10 = ptrtoint ptr %dsp_loaded to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dsp_loaded, align 4
  %or = or i32 %11, 1
  store i32 %or, ptr %dsp_loaded, align 4
  %call.1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %path, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1)
  %12 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pci, align 4
  %dev.1 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %call2.1 = call i32 @request_firmware(ptr noundef nonnull %fw_entry, ptr noundef nonnull %path, ptr noundef %dev.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.1)
  %tobool.not.1 = icmp eq i32 %call2.1, 0
  br i1 %tobool.not.1, label %if.end.1, label %if.end9.do.end_crit_edge

if.end9.do.end_crit_edge:                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.1:                                         ; preds = %if.end9
  %14 = ptrtoint ptr %fw_entry to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fw_entry, align 4
  %call6.1 = call fastcc i32 @mixart_dsp_load(ptr noundef %mgr, i32 noundef 1, ptr noundef %15)
  %16 = ptrtoint ptr %fw_entry to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fw_entry, align 4
  call void @release_firmware(ptr noundef %17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.1)
  %cmp7.1 = icmp slt i32 %call6.1, 0
  br i1 %cmp7.1, label %if.end.1.cleanup_crit_edge, label %if.end9.1

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9.1:                                        ; preds = %if.end.1
  %18 = ptrtoint ptr %dsp_loaded to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dsp_loaded, align 4
  %or.1 = or i32 %19, 2
  store i32 %or.1, ptr %dsp_loaded, align 4
  %call.2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %path, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2)
  %20 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pci, align 4
  %dev.2 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %call2.2 = call i32 @request_firmware(ptr noundef nonnull %fw_entry, ptr noundef nonnull %path, ptr noundef %dev.2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.2)
  %tobool.not.2 = icmp eq i32 %call2.2, 0
  br i1 %tobool.not.2, label %if.end.2, label %if.end9.1.do.end_crit_edge

if.end9.1.do.end_crit_edge:                       ; preds = %if.end9.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.2:                                         ; preds = %if.end9.1
  %22 = ptrtoint ptr %fw_entry to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fw_entry, align 4
  %call6.2 = call fastcc i32 @mixart_dsp_load(ptr noundef %mgr, i32 noundef 2, ptr noundef %23)
  %24 = ptrtoint ptr %fw_entry to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fw_entry, align 4
  call void @release_firmware(ptr noundef %25) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.2)
  %cmp7.2 = icmp slt i32 %call6.2, 0
  br i1 %cmp7.2, label %if.end.2.cleanup_crit_edge, label %if.end9.2

if.end.2.cleanup_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9.2:                                        ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %dsp_loaded to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dsp_loaded, align 4
  %or.2 = or i32 %27, 4
  store i32 %or.2, ptr %dsp_loaded, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9.2, %if.end.2.cleanup_crit_edge, %if.end.1.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -2, %do.end ], [ %call6, %if.end.cleanup_crit_edge ], [ %call6.1, %if.end.1.cleanup_crit_edge ], [ %call6.2, %if.end.2.cleanup_crit_edge ], [ 0, %if.end9.2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_entry) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %path) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mixart_dsp_load(ptr noundef %mgr, i32 noundef %index, ptr nocapture noundef readonly %dsp) unnamed_addr #0 align 64 {
entry:
  %request.i.i = alloca %struct.mixart_msg, align 4
  %k.i = alloca i32, align 4
  %request.i = alloca %struct.mixart_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %virt = getelementptr inbounds %struct.mixart_mgr, ptr %mgr, i32 0, i32 4, i32 0, i32 1
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %virt, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8356
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !118
  %3 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %virt, align 4
  %add.ptr4 = getelementptr i8, ptr %4, i32 8368
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #6, !srcloc !118
  %6 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %virt, align 4
  %add.ptr9 = getelementptr i8, ptr %7, i32 10656
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #6, !srcloc !118
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %2)
  %cmp = icmp eq i32 %2, 5
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pci = getelementptr inbounds %struct.mixart_mgr, ptr %mgr, i32 0, i32 2
  %9 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #9
  br label %cleanup275

if.end:                                           ; preds = %entry
  %11 = zext i32 %index to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %index, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb62
  ]

sw.bb:                                            ; preds = %if.end
  %12 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %2, label %do.end28 [
    i32 4, label %do.body13
    i32 0, label %if.end31
  ]

do.body13:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mixart_dsp_load.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mixart_dsp_load, %if.then17)) #6
          to label %cleanup275 [label %if.then17], !srcloc !119

if.then17:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #8
  %pci18 = getelementptr inbounds %struct.mixart_mgr, ptr %mgr, i32 0, i32 2
  %13 = ptrtoint ptr %pci18 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pci18, align 4
  %dev19 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mixart_dsp_load.__UNIQUE_ID_ddebug239, ptr noundef %dev19, ptr noundef nonnull @.str.12) #6
  br label %cleanup275

do.end28:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %pci29 = getelementptr inbounds %struct.mixart_mgr, ptr %mgr, i32 0, i32 2
  %15 = ptrtoint ptr %pci29 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pci29, align 4
  %dev30 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev30, ptr noundef nonnull @.str.14, i32 noundef %2) #9
  br label %cleanup275

if.end31:                                         ; preds = %sw.bb
  %data = getelementptr inbounds %struct.firmware, ptr %dsp, i32 0, i32 1
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cmp33 = icmp eq i32 %20, -1
  br i1 %cmp33, label %if.end31.cleanup275_crit_edge, label %if.end35

if.end31.cleanup275_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup275

if.end35:                                         ; preds = %if.end31
  %21 = ptrtoint ptr %dsp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dsp, align 4
  %rem = and i32 %22, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool36.not = icmp eq i32 %rem, 0
  br i1 %tobool36.not, label %if.end38, label %if.end35.cleanup275_crit_edge

if.end35.cleanup275_crit_edge:                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup275

if.end38:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %virt, align 4
  %add.ptr42 = getelementptr i8, ptr %24, i32 8356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 1) #6, !srcloc !120
  %25 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %virt, align 4
  %add.ptr46 = getelementptr i8, ptr %26, i32 8348
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 6291456) #6, !srcloc !120
  %27 = ptrtoint ptr %dsp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dsp, align 4
  %29 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %virt, align 4
  %add.ptr51 = getelementptr i8, ptr %30, i32 8352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 %28) #6, !srcloc !120
  %31 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %virt, align 4
  %add.ptr55 = getelementptr i8, ptr %32, i32 6291456
  %33 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data, align 4
  %35 = ptrtoint ptr %dsp to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dsp, align 4
  tail call void @mmiocpy(ptr noundef %add.ptr55, ptr noundef %34, i32 noundef %36) #6
  %37 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %virt, align 4
  %add.ptr61 = getelementptr i8, ptr %38, i32 8356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61, i32 2) #6, !srcloc !120
  br label %cleanup275

sw.bb62:                                          ; preds = %if.end
  %39 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %5, label %do.end88 [
    i32 4, label %do.body65
    i32 0, label %if.end91
  ]

do.body65:                                        ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mixart_dsp_load.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mixart_dsp_load, %if.then77)) #6
          to label %cleanup275 [label %if.then77], !srcloc !119

if.then77:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #8
  %pci78 = getelementptr inbounds %struct.mixart_mgr, ptr %mgr, i32 0, i32 2
  %40 = ptrtoint ptr %pci78 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pci78, align 4
  %dev79 = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mixart_dsp_load.__UNIQUE_ID_ddebug240, ptr noundef %dev79, ptr noundef nonnull @.str.16) #6
  br label %cleanup275

do.end88:                                         ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #8
  %pci89 = getelementptr inbounds %struct.mixart_mgr, ptr %mgr, i32 0, i32 2
  %42 = ptrtoint ptr %pci89 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pci89, align 4
  %dev90 = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev90, ptr noundef nonnull @.str.18, i32 noundef %5) #9
  br label %cleanup275

if.end91:                                         ; preds = %sw.bb62
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %44 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %44, 500
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.end91
  tail call void @__might_resched(ptr noundef nonnull @.str.6, i32 noundef 44, i32 noundef 0) #6
  %call.i.i = tail call i32 @__cond_resched() #6
  %45 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %virt, align 4
  %add.ptr.i = getelementptr i8, ptr %46, i32 8356
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !118
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %47)
  %cmp3.not.i = icmp eq i32 %47, 4
  br i1 %cmp3.not.i, label %if.end100, label %do.cond.i

do.cond.i:                                        ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %48 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %48
  %cmp7.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp7.i, label %do.cond.i.do.body.i_crit_edge, label %do.end97

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

do.end97:                                         ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  %pci98 = getelementptr inbounds %struct.mixart_mgr, ptr %mgr, i32 0, i32 2
  %49 = ptrtoint ptr %pci98 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pci98, align 4
  %dev99 = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev99, ptr noundef nonnull @.str.21) #9
  br label %cleanup275

if.end100:                                        ; preds = %do.body.i
  %51 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %virt, align 4
  %add.ptr104 = getelementptr i8, ptr %52, i32 8192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr104, i32 0) #6, !srcloc !120
  %53 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %virt, align 4
  %add.ptr108 = getelementptr i8, ptr %54, i32 12288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr108, i32 0) #6, !srcloc !120
  %55 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %virt, align 4
  %add.ptr112 = getelementptr i8, ptr %56, i32 8368
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr112, i32 1) #6, !srcloc !120
  %data.i = getelementptr inbounds %struct.firmware, ptr %dsp, i32 0, i32 1
  %57 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data.i, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %58, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %60)
  %cmp3.not.i377 = icmp eq i8 %60, 127
  br i1 %cmp3.not.i377, label %for.cond.i, label %if.end100.cleanup275_crit_edge

if.end100.cleanup275_crit_edge:                   ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup275

for.cond.i:                                       ; preds = %if.end100
  %arrayidx1.1.i = getelementptr [16 x i8], ptr %58, i32 0, i32 1
  %61 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx1.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 69, i8 %62)
  %cmp3.not.1.i = icmp eq i8 %62, 69
  br i1 %cmp3.not.1.i, label %for.cond.1.i, label %for.cond.i.cleanup275_crit_edge

for.cond.i.cleanup275_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup275

for.cond.1.i:                                     ; preds = %for.cond.i
  %arrayidx1.2.i = getelementptr [16 x i8], ptr %58, i32 0, i32 2
  %63 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx1.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 76, i8 %64)
  %cmp3.not.2.i = icmp eq i8 %64, 76
  br i1 %cmp3.not.2.i, label %for.cond.2.i, label %for.cond.1.i.cleanup275_crit_edge

for.cond.1.i.cleanup275_crit_edge:                ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup275

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %arrayidx1.3.i = getelementptr [16 x i8], ptr %58, i32 0, i32 3
  %65 = ptrtoint ptr %arrayidx1.3.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx1.3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 70, i8 %66)
  %cmp3.not.3.i = icmp eq i8 %66, 70
  br i1 %cmp3.not.3.i, label %for.cond.3.i, label %for.cond.2.i.cleanup275_crit_edge

for.cond.2.i.cleanup275_crit_edge:                ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup275

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %e_phoff.i = getelementptr inbounds %struct.snd_mixart_elf32_ehdr, ptr %58, i32 0, i32 5
  %67 = ptrtoint ptr %e_phoff.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %e_phoff.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp5.not.i = icmp eq i32 %68, 0
  br i1 %cmp5.not.i, label %for.cond.3.i.if.end116_crit_edge, label %for.cond8.preheader.i

for.cond.3.i.if.end116_crit_edge:                 ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end116

for.cond8.preheader.i:                            ; preds = %for.cond.3.i
  %e_phnum.i = getelementptr inbounds %struct.snd_mixart_elf32_ehdr, ptr %58, i32 0, i32 10
  %69 = ptrtoint ptr %e_phnum.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %e_phnum.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %70)
  %cmp1051.not.i = icmp eq i16 %70, 0
  br i1 %cmp1051.not.i, label %for.cond8.preheader.i.if.end116_crit_edge, label %for.body12.lr.ph.i

for.cond8.preheader.i.if.end116_crit_edge:        ; preds = %for.cond8.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end116

for.body12.lr.ph.i:                               ; preds = %for.cond8.preheader.i
  %e_phentsize.i = getelementptr inbounds %struct.snd_mixart_elf32_ehdr, ptr %58, i32 0, i32 9
  br label %for.body12.i

for.body12.i:                                     ; preds = %if.end28.i.for.body12.i_crit_edge, %for.body12.lr.ph.i
  %i.152.i = phi i32 [ 0, %for.body12.lr.ph.i ], [ %inc30.i, %if.end28.i.for.body12.i_crit_edge ]
  %71 = ptrtoint ptr %e_phoff.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %e_phoff.i, align 4
  %73 = ptrtoint ptr %e_phentsize.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %e_phentsize.i, align 2
  %conv14.i = zext i16 %74 to i32
  %mul.i = mul i32 %i.152.i, %conv14.i
  %add.i379 = add i32 %mul.i, %72
  %75 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %data.i, align 4
  %add.ptr.i380 = getelementptr i8, ptr %76, i32 %add.i379
  %77 = ptrtoint ptr %add.ptr.i380 to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %elf_programheader.sroa.0.0.copyload.i = load i32, ptr %add.ptr.i380, align 1
  %elf_programheader.sroa.10.0.add.ptr.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i380, i32 16
  %78 = ptrtoint ptr %elf_programheader.sroa.10.0.add.ptr.sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %78, i32 4)
  %elf_programheader.sroa.10.0.copyload.i = load i32, ptr %elf_programheader.sroa.10.0.add.ptr.sroa_idx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %elf_programheader.sroa.0.0.copyload.i)
  %cmp16.not.i = icmp eq i32 %elf_programheader.sroa.0.0.copyload.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %elf_programheader.sroa.10.0.copyload.i)
  %cmp19.not.i = icmp eq i32 %elf_programheader.sroa.10.0.copyload.i, 0
  %or.cond.i = select i1 %cmp16.not.i, i1 true, i1 %cmp19.not.i
  br i1 %or.cond.i, label %for.body12.i.if.end28.i_crit_edge, label %if.then21.i

for.body12.i.if.end28.i_crit_edge:                ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28.i

if.then21.i:                                      ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #8
  %elf_programheader.sroa.7.0.add.ptr.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i380, i32 8
  %79 = ptrtoint ptr %elf_programheader.sroa.7.0.add.ptr.sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %79, i32 4)
  %elf_programheader.sroa.7.0.copyload.i = load i32, ptr %elf_programheader.sroa.7.0.add.ptr.sroa_idx.i, align 1
  %elf_programheader.sroa.5.0.add.ptr.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i380, i32 4
  %80 = ptrtoint ptr %elf_programheader.sroa.5.0.add.ptr.sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %80, i32 4)
  %elf_programheader.sroa.5.0.copyload.i = load i32, ptr %elf_programheader.sroa.5.0.add.ptr.sroa_idx.i, align 1
  %81 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %virt, align 4
  %add.ptr23.i = getelementptr i8, ptr %82, i32 %elf_programheader.sroa.7.0.copyload.i
  %add.ptr25.i = getelementptr i8, ptr %76, i32 %elf_programheader.sroa.5.0.copyload.i
  tail call void @mmiocpy(ptr noundef %add.ptr23.i, ptr noundef %add.ptr25.i, i32 noundef %elf_programheader.sroa.10.0.copyload.i) #6
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then21.i, %for.body12.i.if.end28.i_crit_edge
  %inc30.i = add nuw nsw i32 %i.152.i, 1
  %83 = ptrtoint ptr %e_phnum.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %e_phnum.i, align 4
  %conv9.i = zext i16 %84 to i32
  %cmp10.i = icmp ult i32 %inc30.i, %conv9.i
  br i1 %cmp10.i, label %if.end28.i.for.body12.i_crit_edge, label %if.end28.i.if.end116_crit_edge

if.end28.i.if.end116_crit_edge:                   ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end116

if.end28.i.for.body12.i_crit_edge:                ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body12.i

if.end116:                                        ; preds = %if.end28.i.if.end116_crit_edge, %for.cond8.preheader.i.if.end116_crit_edge, %for.cond.3.i.if.end116_crit_edge
  %85 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %virt, align 4
  %add.ptr120 = getelementptr i8, ptr %86, i32 8368
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr120, i32 2) #6, !srcloc !120
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %87 = load volatile i32, ptr @jiffies, align 128
  %add.i382 = add i32 %87, 300
  br label %do.body.i387

do.body.i387:                                     ; preds = %do.cond.i390.do.body.i387_crit_edge, %if.end116
  tail call void @__might_resched(ptr noundef nonnull @.str.6, i32 noundef 44, i32 noundef 0) #6
  %call.i.i384 = tail call i32 @__cond_resched() #6
  %88 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %virt, align 4
  %add.ptr.i385 = getelementptr i8, ptr %89, i32 8368
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i385) #6, !srcloc !118
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %90)
  %cmp3.not.i386 = icmp eq i32 %90, 4
  br i1 %cmp3.not.i386, label %if.end129, label %do.cond.i390

do.cond.i390:                                     ; preds = %do.body.i387
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %91 = load volatile i32, ptr @jiffies, align 128
  %sub.i388 = sub i32 %add.i382, %91
  %cmp7.i389 = icmp sgt i32 %sub.i388, -1
  br i1 %cmp7.i389, label %do.cond.i390.do.body.i387_crit_edge, label %do.end126

do.cond.i390.do.body.i387_crit_edge:              ; preds = %do.cond.i390
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i387

do.end126:                                        ; preds = %do.cond.i390
  call void @__sanitizer_cov_trace_pc() #8
  %pci127 = getelementptr inbounds %struct.mixart_mgr, ptr %mgr, i32 0, i32 2
  %92 = ptrtoint ptr %pci127 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pci127, align 4
  %dev128 = getelementptr inbounds %struct.pci_dev, ptr %93, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev128, ptr noundef nonnull @.str.24) #9
  br label %cleanup275

if.end129:                                        ; preds = %do.body.i387
  call void @__sanitizer_cov_trace_pc() #8
  %addr = getelementptr inbounds %struct.mixart_mgr, ptr %mgr, i32 0, i32 16, i32 2
  %94 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %addr, align 4
  %96 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %virt, align 4
  %add.ptr133 = getelementptr i8, ptr %97, i32 12288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr133, i32 %95) #6, !srcloc !120
  br label %cleanup275

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp135.not = icmp eq i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %cmp136.not = icmp eq i32 %2, 4
  %or.cond = select i1 %cmp135.not, i1 %cmp136.not, i1 false
  br i1 %or.cond, label %if.end143, label %do.end140

do.end140:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  %pci141 = getelementptr inbounds %struct.mixart_mgr, ptr %mgr, i32 0, i32 2
  %98 = ptrtoint ptr %pci141 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %pci141, align 4
  %dev142 = getelementptr inbounds %struct.pci_dev, ptr %99, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev142, ptr noundef nonnull @.str.27) #9
  br label %cleanup275

if.end143:                                        ; preds = %sw.default
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %100 = load volatile i32, ptr @jiffies, align 128
  %add.i393 = add i32 %100, 30
  br label %do.body.i398

do.body.i398:                                     ; preds = %do.cond.i401.do.body.i398_crit_edge, %if.end143
  tail call void @__might_resched(ptr noundef nonnull @.str.6, i32 noundef 44, i32 noundef 0) #6
  %call.i.i395 = tail call i32 @__cond_resched() #6
  %101 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %virt, align 4
  %add.ptr.i396 = getelementptr i8, ptr %102, i32 10640
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i396) #6, !srcloc !118
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %cmp3.not.i397 = icmp eq i32 %103, 0
  br i1 %cmp3.not.i397, label %do.cond.i401, label %if.end152

do.cond.i401:                                     ; preds = %do.body.i398
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %104 = load volatile i32, ptr @jiffies, align 128
  %sub.i399 = sub i32 %add.i393, %104
  %cmp7.i400 = icmp sgt i32 %sub.i399, -1
  br i1 %cmp7.i400, label %do.cond.i401.do.body.i398_crit_edge, label %do.end149

do.cond.i401.do.body.i398_crit_edge:              ; preds = %do.cond.i401
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i398

do.end149:                                        ; preds = %do.cond.i401
  call void @__sanitizer_cov_trace_pc() #8
  %pci150 = getelementptr inbounds %struct.mixart_mgr, ptr %mgr, i32 0, i32 2
  %105 = ptrtoint ptr %pci150 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %pci150, align 4
  %dev151 = getelementptr inbounds %struct.pci_dev, ptr %106, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev151, ptr noundef nonnull @.str.30) #9
  br label %cleanup275

if.end152:                                        ; preds = %do.body.i398
  %107 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %virt, align 4
  %add.ptr156 = getelementptr i8, ptr %108, i32 10644
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr156) #6, !srcloc !118
  %and = and i32 %109, 15
  %board_type = getelementptr inbounds %struct.mixart_mgr, ptr %mgr, i32 0, i32 15
  %110 = ptrtoint ptr %board_type to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %and, ptr %board_type, align 4
  %111 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %111, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %and, label %if.end152.cleanup275_crit_edge [
    i32 0, label %if.end152.sw.epilog_crit_edge
    i32 14, label %if.end165
  ]

if.end152.sw.epilog_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end152.cleanup275_crit_edge:                   ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup275

if.end165:                                        ; preds = %if.end152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp166.not = icmp eq i32 %8, 0
  br i1 %cmp166.not, label %if.end173, label %do.end170

do.end170:                                        ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #8
  %pci171 = getelementptr inbounds %struct.mixart_mgr, ptr %mgr, i32 0, i32 2
  %112 = ptrtoint ptr %pci171 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %pci171, align 4
  %dev172 = getelementptr inbounds %struct.pci_dev, ptr %113, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev172, ptr noundef nonnull @.str.33, i32 noundef %8) #9
  br label %cleanup275

if.end173:                                        ; preds = %if.end165
  %data174 = getelementptr inbounds %struct.firmware, ptr %dsp, i32 0, i32 1
  %114 = ptrtoint ptr %data174 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %data174, align 4
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %115, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %117)
  %cmp176 = icmp eq i32 %117, -1
  br i1 %cmp176, label %if.end173.cleanup275_crit_edge, label %if.end178

if.end173.cleanup275_crit_edge:                   ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup275

if.end178:                                        ; preds = %if.end173
  %118 = ptrtoint ptr %dsp to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %dsp, align 4
  %rem180 = and i32 %119, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem180)
  %tobool181.not = icmp eq i32 %rem180, 0
  br i1 %tobool181.not, label %if.end183, label %if.end178.cleanup275_crit_edge

if.end178.cleanup275_crit_edge:                   ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup275

if.end183:                                        ; preds = %if.end178
  %120 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %virt, align 4
  %add.ptr188 = getelementptr i8, ptr %121, i32 10652
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr188, i32 %119) #6, !srcloc !120
  %122 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %virt, align 4
  %add.ptr192 = getelementptr i8, ptr %123, i32 10656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr192, i32 1) #6, !srcloc !120
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %124 = load volatile i32, ptr @jiffies, align 128
  %add.i404 = add i32 %124, 30
  br label %do.body.i409

do.body.i409:                                     ; preds = %do.cond.i412.do.body.i409_crit_edge, %if.end183
  tail call void @__might_resched(ptr noundef nonnull @.str.6, i32 noundef 44, i32 noundef 0) #6
  %call.i.i406 = tail call i32 @__cond_resched() #6
  %125 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %virt, align 4
  %add.ptr.i407 = getelementptr i8, ptr %126, i32 10656
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i407) #6, !srcloc !118
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %127)
  %cmp3.not.i408 = icmp eq i32 %127, 2
  br i1 %cmp3.not.i408, label %if.end201, label %do.cond.i412

do.cond.i412:                                     ; preds = %do.body.i409
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %128 = load volatile i32, ptr @jiffies, align 128
  %sub.i410 = sub i32 %add.i404, %128
  %cmp7.i411 = icmp sgt i32 %sub.i410, -1
  br i1 %cmp7.i411, label %do.cond.i412.do.body.i409_crit_edge, label %do.end198

do.cond.i412.do.body.i409_crit_edge:              ; preds = %do.cond.i412
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i409

do.end198:                                        ; preds = %do.cond.i412
  call void @__sanitizer_cov_trace_pc() #8
  %pci199 = getelementptr inbounds %struct.mixart_mgr, ptr %mgr, i32 0, i32 2
  %129 = ptrtoint ptr %pci199 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %pci199, align 4
  %dev200 = getelementptr inbounds %struct.pci_dev, ptr %130, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev200, ptr noundef nonnull @.str.36) #9
  br label %cleanup275

if.end201:                                        ; preds = %do.body.i409
  %131 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %virt, align 4
  %add.ptr205 = getelementptr i8, ptr %132, i32 10648
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr205) #6, !srcloc !118
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool207.not = icmp eq i32 %133, 0
  br i1 %tobool207.not, label %if.end201.cleanup275_crit_edge, label %if.end209

if.end201.cleanup275_crit_edge:                   ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup275

if.end209:                                        ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #8
  %134 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %virt, align 4
  %add.ptr213 = getelementptr i8, ptr %135, i32 %133
  %136 = ptrtoint ptr %data174 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %data174, align 4
  %138 = ptrtoint ptr %dsp to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %dsp, align 4
  tail call void @mmiocpy(ptr noundef %add.ptr213, ptr noundef %137, i32 noundef %139) #6
  %140 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %virt, align 4
  %add.ptr219 = getelementptr i8, ptr %141, i32 10656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr219, i32 4) #6, !srcloc !120
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end209, %if.end152.sw.epilog_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %142 = load volatile i32, ptr @jiffies, align 128
  %add.i415 = add i32 %142, 300
  br label %do.body.i420

do.body.i420:                                     ; preds = %do.cond.i423.do.body.i420_crit_edge, %sw.epilog
  tail call void @__might_resched(ptr noundef nonnull @.str.6, i32 noundef 44, i32 noundef 0) #6
  %call.i.i417 = tail call i32 @__cond_resched() #6
  %143 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %virt, align 4
  %add.ptr.i418 = getelementptr i8, ptr %144, i32 10656
  %145 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i418) #6, !srcloc !118
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %145)
  %cmp3.not.i419 = icmp eq i32 %145, 3
  br i1 %cmp3.not.i419, label %if.end228, label %do.cond.i423

do.cond.i423:                                     ; preds = %do.body.i420
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %146 = load volatile i32, ptr @jiffies, align 128
  %sub.i421 = sub i32 %add.i415, %146
  %cmp7.i422 = icmp sgt i32 %sub.i421, -1
  br i1 %cmp7.i422, label %do.cond.i423.do.body.i420_crit_edge, label %do.end225

do.cond.i423.do.body.i420_crit_edge:              ; preds = %do.cond.i423
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i420

do.end225:                                        ; preds = %do.cond.i423
  call void @__sanitizer_cov_trace_pc() #8
  %pci226 = getelementptr inbounds %struct.mixart_mgr, ptr %mgr, i32 0, i32 2
  %147 = ptrtoint ptr %pci226 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %pci226, align 4
  %dev227 = getelementptr inbounds %struct.pci_dev, ptr %148, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev227, ptr noundef nonnull @.str.39) #9
  br label %cleanup275

if.end228:                                        ; preds = %do.body.i420
  tail call void @snd_mixart_init_mailbox(ptr noundef %mgr) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %k.i) #6
  %149 = ptrtoint ptr %k.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 -1, ptr %k.i, align 4, !annotation !117
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %request.i) #6
  %150 = getelementptr inbounds %struct.mixart_msg, ptr %request.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %request.i.i) #6
  %151 = getelementptr inbounds %struct.mixart_msg, ptr %request.i.i, i32 0, i32 1
  %152 = getelementptr inbounds %struct.mixart_msg, ptr %request.i.i, i32 0, i32 2
  %153 = getelementptr inbounds %struct.mixart_msg, ptr %request.i.i, i32 0, i32 3
  %154 = call ptr @memset(ptr %request.i.i, i32 255, i32 20)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %155 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %155, i32 noundef 3264, i32 noundef 144) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %156 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i187.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %156, i32 noundef 3264, i32 noundef 12) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %157 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i188.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %157, i32 noundef 3264, i32 noundef 148) #10
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i, null
  %tobool3.not.i.i = icmp eq ptr %call7.i187.i.i, null
  %or.cond.i.i = select i1 %tobool.not.i.i, i1 true, i1 %tobool3.not.i.i
  %tobool5.not.i.i = icmp eq ptr %call7.i188.i.i, null
  %or.cond183.i.i = select i1 %or.cond.i.i, i1 true, i1 %tobool5.not.i.i
  br i1 %or.cond183.i.i, label %if.end228.mixart_enum_connectors.exit.i_crit_edge, label %if.end.i.i

if.end228.mixart_enum_connectors.exit.i_crit_edge: ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #8
  br label %mixart_enum_connectors.exit.i

if.end.i.i:                                       ; preds = %if.end228
  %158 = ptrtoint ptr %call7.i187.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 1102053376, ptr %call7.i187.i.i, align 8
  %micro_max_level.i.i = getelementptr inbounds %struct.mixart_audio_info_req, ptr %call7.i187.i.i, i32 0, i32 1
  %159 = ptrtoint ptr %micro_max_level.i.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 -1046478848, ptr %micro_max_level.i.i, align 4
  %cd_max_level.i.i = getelementptr inbounds %struct.mixart_audio_info_req, ptr %call7.i187.i.i, i32 0, i32 2
  %160 = ptrtoint ptr %cd_max_level.i.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 0, ptr %cd_max_level.i.i, align 8
  %161 = ptrtoint ptr %request.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 1441815, ptr %request.i.i, align 4
  %162 = call ptr @memset(ptr %151, i32 0, i32 16)
  %call6.i.i = call i32 @snd_mixart_send_msg(ptr noundef %mgr, ptr noundef nonnull %request.i.i, i32 noundef 144, ptr noundef nonnull %call7.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %cmp.i.i = icmp slt i32 %call6.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.__error.sink.split.i.i_crit_edge, label %lor.lhs.false7.i.i

if.end.i.i.__error.sink.split.i.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__error.sink.split.i.i

lor.lhs.false7.i.i:                               ; preds = %if.end.i.i
  %163 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %call7.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %tobool8.not.i.i = icmp eq i32 %164, 0
  br i1 %tobool8.not.i.i, label %lor.lhs.false9.i.i, label %lor.lhs.false7.i.i.__error.sink.split.i.i_crit_edge

lor.lhs.false7.i.i.__error.sink.split.i.i_crit_edge: ; preds = %lor.lhs.false7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__error.sink.split.i.i

lor.lhs.false9.i.i:                               ; preds = %lor.lhs.false7.i.i
  %uid_count.i.i = getelementptr inbounds %struct.mixart_enum_connector_resp, ptr %call7.i.i.i, i32 0, i32 2
  %165 = ptrtoint ptr %uid_count.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %uid_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %166)
  %cmp10.i.i = icmp ugt i32 %166, 16
  br i1 %cmp10.i.i, label %lor.lhs.false9.i.i.__error.sink.split.i.i_crit_edge, label %for.cond.preheader.i.i

lor.lhs.false9.i.i.__error.sink.split.i.i_crit_edge: ; preds = %lor.lhs.false9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__error.sink.split.i.i

for.cond.preheader.i.i:                           ; preds = %lor.lhs.false9.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %cmp14193.not.i.i = icmp eq i32 %166, 0
  br i1 %cmp14193.not.i.i, label %for.cond.preheader.i.i.for.end.i.i_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.cond.i.i:                                     ; preds = %if.end20.i.i
  %inc.i.i = add nuw i32 %k.0194.i.i, 1
  %167 = ptrtoint ptr %uid_count.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %uid_count.i.i, align 8
  %cmp14.i.i = icmp ult i32 %inc.i.i, %168
  br i1 %cmp14.i.i, label %for.cond.i.i.for.body.i.i_crit_edge, label %for.cond.i.i.for.end.i.i_crit_edge

for.cond.i.i.for.end.i.i_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %k.0194.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %k.0194.i.i)
  %cmp15.i.i = icmp ult i32 %k.0194.i.i, 8
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.else.i.i

if.then16.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %div182.i.i = lshr i32 %k.0194.i.i, 1
  %arrayidx.i.i = getelementptr %struct.mixart_mgr, ptr %mgr, i32 0, i32 1, i32 %div182.i.i
  %169 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %arrayidx.i.i, align 4
  %pipe_out_ana.i.i = getelementptr inbounds %struct.snd_mixart, ptr %170, i32 0, i32 7
  br label %if.end20.i.i

if.else.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i = add i32 %k.0194.i.i, -8
  %div18181.i.i = lshr i32 %sub.i.i, 1
  %arrayidx19.i.i = getelementptr %struct.mixart_mgr, ptr %mgr, i32 0, i32 1, i32 %div18181.i.i
  %171 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %arrayidx19.i.i, align 4
  %pipe_out_dig.i.i = getelementptr inbounds %struct.snd_mixart, ptr %172, i32 0, i32 9
  br label %if.end20.i.i

if.end20.i.i:                                     ; preds = %if.else.i.i, %if.then16.i.i
  %pipe.0.i.i = phi ptr [ %pipe_out_ana.i.i, %if.then16.i.i ], [ %pipe_out_dig.i.i, %if.else.i.i ]
  %and.i.i = and i32 %k.0194.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool21.not.i.i = icmp eq i32 %and.i.i, 0
  %uid_left_connector.i.i = getelementptr inbounds %struct.mixart_pipe, ptr %pipe.0.i.i, i32 0, i32 2
  %uid_right_connector.i.i = getelementptr inbounds %struct.mixart_pipe, ptr %pipe.0.i.i, i32 0, i32 3
  %uid_left_connector.sink.i.i = select i1 %tobool21.not.i.i, ptr %uid_left_connector.i.i, ptr %uid_right_connector.i.i
  %arrayidx27.i.i = getelementptr %struct.mixart_enum_connector_resp, ptr %call7.i.i.i, i32 0, i32 4, i32 %k.0194.i.i
  %173 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_load8_noabort(i32 %173)
  %174 = load i64, ptr %arrayidx27.i.i, align 8
  %175 = ptrtoint ptr %uid_left_connector.sink.i.i to i32
  call void @__asan_storeN_noabort(i32 %175, i32 8)
  store i64 %174, ptr %uid_left_connector.sink.i.i, align 4
  %176 = ptrtoint ptr %request.i.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 327688, ptr %request.i.i, align 4
  %177 = load i64, ptr %arrayidx27.i.i, align 8
  %178 = ptrtoint ptr %151 to i32
  call void @__asan_storeN_noabort(i32 %178, i32 8)
  store i64 %177, ptr %151, align 4
  %179 = ptrtoint ptr %152 to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %call7.i187.i.i, ptr %152, align 4
  %180 = ptrtoint ptr %153 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 12, ptr %153, align 4
  %call35.i.i = call i32 @snd_mixart_send_msg(ptr noundef %mgr, ptr noundef nonnull %request.i.i, i32 noundef 148, ptr noundef nonnull %call7.i188.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i.i)
  %cmp36.i.i = icmp slt i32 %call35.i.i, 0
  br i1 %cmp36.i.i, label %if.end20.i.i.__error.sink.split.i.i_crit_edge, label %for.cond.i.i

if.end20.i.i.__error.sink.split.i.i_crit_edge:    ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__error.sink.split.i.i

for.end.i.i:                                      ; preds = %for.cond.i.i.for.end.i.i_crit_edge, %for.cond.preheader.i.i.for.end.i.i_crit_edge
  %181 = ptrtoint ptr %request.i.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 1441816, ptr %request.i.i, align 4
  %182 = call ptr @memset(ptr %151, i32 0, i32 16)
  %call51.i.i = call i32 @snd_mixart_send_msg(ptr noundef %mgr, ptr noundef nonnull %request.i.i, i32 noundef 144, ptr noundef nonnull %call7.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i.i)
  %cmp52.i.i = icmp slt i32 %call51.i.i, 0
  br i1 %cmp52.i.i, label %for.end.i.i.__error.sink.split.i.i_crit_edge, label %lor.lhs.false53.i.i

for.end.i.i.__error.sink.split.i.i_crit_edge:     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__error.sink.split.i.i

lor.lhs.false53.i.i:                              ; preds = %for.end.i.i
  %183 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %call7.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %tobool55.not.i.i = icmp eq i32 %184, 0
  br i1 %tobool55.not.i.i, label %lor.lhs.false56.i.i, label %lor.lhs.false53.i.i.__error.sink.split.i.i_crit_edge

lor.lhs.false53.i.i.__error.sink.split.i.i_crit_edge: ; preds = %lor.lhs.false53.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__error.sink.split.i.i

lor.lhs.false56.i.i:                              ; preds = %lor.lhs.false53.i.i
  %185 = ptrtoint ptr %uid_count.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %uid_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %186)
  %cmp58.i.i = icmp ugt i32 %186, 16
  br i1 %cmp58.i.i, label %lor.lhs.false56.i.i.__error.sink.split.i.i_crit_edge, label %for.cond66.preheader.i.i

lor.lhs.false56.i.i.__error.sink.split.i.i_crit_edge: ; preds = %lor.lhs.false56.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__error.sink.split.i.i

for.cond66.preheader.i.i:                         ; preds = %lor.lhs.false56.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %cmp68197.not.i.i = icmp eq i32 %186, 0
  br i1 %cmp68197.not.i.i, label %for.cond66.preheader.i.i.mixart_enum_connectors.exit.i_crit_edge, label %for.cond66.preheader.i.i.for.body69.i.i_crit_edge

for.cond66.preheader.i.i.for.body69.i.i_crit_edge: ; preds = %for.cond66.preheader.i.i
  br label %for.body69.i.i

for.cond66.preheader.i.i.mixart_enum_connectors.exit.i_crit_edge: ; preds = %for.cond66.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mixart_enum_connectors.exit.i

for.cond66.i.i:                                   ; preds = %if.end81.i.i
  %inc112.i.i = add nuw i32 %k.1198.i.i, 1
  %187 = ptrtoint ptr %uid_count.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %uid_count.i.i, align 8
  %cmp68.i.i = icmp ult i32 %inc112.i.i, %188
  br i1 %cmp68.i.i, label %for.cond66.i.i.for.body69.i.i_crit_edge, label %for.cond66.i.i.mixart_enum_connectors.exit.i_crit_edge

for.cond66.i.i.mixart_enum_connectors.exit.i_crit_edge: ; preds = %for.cond66.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mixart_enum_connectors.exit.i

for.cond66.i.i.for.body69.i.i_crit_edge:          ; preds = %for.cond66.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body69.i.i

for.body69.i.i:                                   ; preds = %for.cond66.i.i.for.body69.i.i_crit_edge, %for.cond66.preheader.i.i.for.body69.i.i_crit_edge
  %k.1198.i.i = phi i32 [ %inc112.i.i, %for.cond66.i.i.for.body69.i.i_crit_edge ], [ 0, %for.cond66.preheader.i.i.for.body69.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %k.1198.i.i)
  %cmp71.i.i = icmp ult i32 %k.1198.i.i, 8
  br i1 %cmp71.i.i, label %if.then72.i.i, label %if.else76.i.i

if.then72.i.i:                                    ; preds = %for.body69.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %div74180.i.i = lshr i32 %k.1198.i.i, 1
  %arrayidx75.i.i = getelementptr %struct.mixart_mgr, ptr %mgr, i32 0, i32 1, i32 %div74180.i.i
  %189 = ptrtoint ptr %arrayidx75.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %arrayidx75.i.i, align 4
  %pipe_in_ana.i.i = getelementptr inbounds %struct.snd_mixart, ptr %190, i32 0, i32 6
  br label %if.end81.i.i

if.else76.i.i:                                    ; preds = %for.body69.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub78.i.i = add i32 %k.1198.i.i, -8
  %div79179.i.i = lshr i32 %sub78.i.i, 1
  %arrayidx80.i.i = getelementptr %struct.mixart_mgr, ptr %mgr, i32 0, i32 1, i32 %div79179.i.i
  %191 = ptrtoint ptr %arrayidx80.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %arrayidx80.i.i, align 4
  %pipe_in_dig.i.i = getelementptr inbounds %struct.snd_mixart, ptr %192, i32 0, i32 8
  br label %if.end81.i.i

if.end81.i.i:                                     ; preds = %if.else76.i.i, %if.then72.i.i
  %pipe70.0.i.i = phi ptr [ %pipe_in_ana.i.i, %if.then72.i.i ], [ %pipe_in_dig.i.i, %if.else76.i.i ]
  %and82.i.i = and i32 %k.1198.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82.i.i)
  %tobool83.not.i.i = icmp eq i32 %and82.i.i, 0
  %uid_left_connector89.i.i = getelementptr inbounds %struct.mixart_pipe, ptr %pipe70.0.i.i, i32 0, i32 2
  %uid_right_connector85.i.i = getelementptr inbounds %struct.mixart_pipe, ptr %pipe70.0.i.i, i32 0, i32 3
  %uid_left_connector89.sink.i.i = select i1 %tobool83.not.i.i, ptr %uid_left_connector89.i.i, ptr %uid_right_connector85.i.i
  %arrayidx91.i.i = getelementptr %struct.mixart_enum_connector_resp, ptr %call7.i.i.i, i32 0, i32 4, i32 %k.1198.i.i
  %193 = ptrtoint ptr %arrayidx91.i.i to i32
  call void @__asan_load8_noabort(i32 %193)
  %194 = load i64, ptr %arrayidx91.i.i, align 8
  %195 = ptrtoint ptr %uid_left_connector89.sink.i.i to i32
  call void @__asan_storeN_noabort(i32 %195, i32 8)
  store i64 %194, ptr %uid_left_connector89.sink.i.i, align 4
  %196 = ptrtoint ptr %request.i.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 327688, ptr %request.i.i, align 4
  %197 = load i64, ptr %arrayidx91.i.i, align 8
  %198 = ptrtoint ptr %151 to i32
  call void @__asan_storeN_noabort(i32 %198, i32 8)
  store i64 %197, ptr %151, align 4
  %199 = ptrtoint ptr %152 to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr %call7.i187.i.i, ptr %152, align 4
  %200 = ptrtoint ptr %153 to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 12, ptr %153, align 4
  %call99.i.i = call i32 @snd_mixart_send_msg(ptr noundef %mgr, ptr noundef nonnull %request.i.i, i32 noundef 148, ptr noundef nonnull %call7.i188.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99.i.i)
  %cmp100.i.i = icmp slt i32 %call99.i.i, 0
  br i1 %cmp100.i.i, label %if.end81.i.i.__error.sink.split.i.i_crit_edge, label %for.cond66.i.i

if.end81.i.i.__error.sink.split.i.i_crit_edge:    ; preds = %if.end81.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__error.sink.split.i.i

__error.sink.split.i.i:                           ; preds = %if.end81.i.i.__error.sink.split.i.i_crit_edge, %lor.lhs.false56.i.i.__error.sink.split.i.i_crit_edge, %lor.lhs.false53.i.i.__error.sink.split.i.i_crit_edge, %for.end.i.i.__error.sink.split.i.i_crit_edge, %if.end20.i.i.__error.sink.split.i.i_crit_edge, %lor.lhs.false9.i.i.__error.sink.split.i.i_crit_edge, %lor.lhs.false7.i.i.__error.sink.split.i.i_crit_edge, %if.end.i.i.__error.sink.split.i.i_crit_edge
  %.str.50.sink.i.i = phi ptr [ @.str.47, %if.end.i.i.__error.sink.split.i.i_crit_edge ], [ @.str.47, %lor.lhs.false7.i.i.__error.sink.split.i.i_crit_edge ], [ @.str.47, %lor.lhs.false9.i.i.__error.sink.split.i.i_crit_edge ], [ @.str.53, %for.end.i.i.__error.sink.split.i.i_crit_edge ], [ @.str.53, %lor.lhs.false53.i.i.__error.sink.split.i.i_crit_edge ], [ @.str.53, %lor.lhs.false56.i.i.__error.sink.split.i.i_crit_edge ], [ @.str.50, %if.end81.i.i.__error.sink.split.i.i_crit_edge ], [ @.str.50, %if.end20.i.i.__error.sink.split.i.i_crit_edge ]
  %err.0.ph.i.i = phi i32 [ -22, %if.end.i.i.__error.sink.split.i.i_crit_edge ], [ -22, %lor.lhs.false7.i.i.__error.sink.split.i.i_crit_edge ], [ -22, %lor.lhs.false9.i.i.__error.sink.split.i.i_crit_edge ], [ -22, %for.end.i.i.__error.sink.split.i.i_crit_edge ], [ -22, %lor.lhs.false53.i.i.__error.sink.split.i.i_crit_edge ], [ -22, %lor.lhs.false56.i.i.__error.sink.split.i.i_crit_edge ], [ %call99.i.i, %if.end81.i.i.__error.sink.split.i.i_crit_edge ], [ %call35.i.i, %if.end20.i.i.__error.sink.split.i.i_crit_edge ]
  %pci105.i.i = getelementptr inbounds %struct.mixart_mgr, ptr %mgr, i32 0, i32 2
  %201 = ptrtoint ptr %pci105.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %pci105.i.i, align 4
  %dev106.i.i = getelementptr inbounds %struct.pci_dev, ptr %202, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev106.i.i, ptr noundef nonnull %.str.50.sink.i.i) #9
  br label %mixart_enum_connectors.exit.i

mixart_enum_connectors.exit.i:                    ; preds = %__error.sink.split.i.i, %for.cond66.i.i.mixart_enum_connectors.exit.i_crit_edge, %for.cond66.preheader.i.i.mixart_enum_connectors.exit.i_crit_edge, %if.end228.mixart_enum_connectors.exit.i_crit_edge
  %err.0.i.i = phi i32 [ -12, %if.end228.mixart_enum_connectors.exit.i_crit_edge ], [ 0, %for.cond66.preheader.i.i.mixart_enum_connectors.exit.i_crit_edge ], [ %err.0.ph.i.i, %__error.sink.split.i.i ], [ 0, %for.cond66.i.i.mixart_enum_connectors.exit.i_crit_edge ]
  call void @kfree(ptr noundef %call7.i.i.i) #6
  call void @kfree(ptr noundef %call7.i187.i.i) #6
  call void @kfree(ptr noundef %call7.i188.i.i) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %request.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i.i)
  %cmp.i = icmp slt i32 %err.0.i.i, 0
  br i1 %cmp.i, label %mixart_enum_connectors.exit.i.mixart_first_init.exit.thread_crit_edge, label %if.end.i

mixart_enum_connectors.exit.i.mixart_first_init.exit.thread_crit_edge: ; preds = %mixart_enum_connectors.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mixart_first_init.exit.thread

if.end.i:                                         ; preds = %mixart_enum_connectors.exit.i
  %call1.i = call fastcc i32 @mixart_enum_physio(ptr noundef %mgr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %if.end.i.mixart_first_init.exit.thread_crit_edge, label %if.end4.i

if.end.i.mixart_first_init.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mixart_first_init.exit.thread

if.end4.i:                                        ; preds = %if.end.i
  %203 = ptrtoint ptr %request.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 1441837, ptr %request.i, align 4
  %204 = call ptr @memset(ptr %150, i32 0, i32 16)
  %call5.i = call i32 @snd_mixart_send_msg(ptr noundef %mgr, ptr noundef nonnull %request.i, i32 noundef 4, ptr noundef nonnull %k.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.end4.i.do.end.i_crit_edge, label %lor.lhs.false.i

if.end4.i.do.end.i_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.end4.i
  %205 = ptrtoint ptr %k.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %k.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %206)
  %cmp7.not.i = icmp eq i32 %206, 0
  br i1 %cmp7.not.i, label %mixart_first_init.exit.thread465, label %lor.lhs.false.i.do.end.i_crit_edge

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

mixart_first_init.exit.thread465:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %request.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %k.i) #6
  br label %for.cond.preheader

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %if.end4.i.do.end.i_crit_edge
  %pci.i = getelementptr inbounds %struct.mixart_mgr, ptr %mgr, i32 0, i32 2
  %207 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %pci.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %208, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.45) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp9.i = icmp eq i32 %call5.i, 0
  br i1 %cmp9.i, label %do.end.i.mixart_first_init.exit.thread_crit_edge, label %mixart_first_init.exit

do.end.i.mixart_first_init.exit.thread_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mixart_first_init.exit.thread

mixart_first_init.exit.thread:                    ; preds = %do.end.i.mixart_first_init.exit.thread_crit_edge, %if.end.i.mixart_first_init.exit.thread_crit_edge, %mixart_enum_connectors.exit.i.mixart_first_init.exit.thread_crit_edge
  %retval.0.i426.ph = phi i32 [ %call1.i, %if.end.i.mixart_first_init.exit.thread_crit_edge ], [ %err.0.i.i, %mixart_enum_connectors.exit.i.mixart_first_init.exit.thread_crit_edge ], [ -22, %do.end.i.mixart_first_init.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %request.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %k.i) #6
  br label %do.end234

mixart_first_init.exit:                           ; preds = %do.end.i
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %request.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %k.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp230 = icmp slt i32 %call5.i, 0
  br i1 %cmp230, label %mixart_first_init.exit.do.end234_crit_edge, label %mixart_first_init.exit.for.cond.preheader_crit_edge

mixart_first_init.exit.for.cond.preheader_crit_edge: ; preds = %mixart_first_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.preheader

mixart_first_init.exit.do.end234_crit_edge:       ; preds = %mixart_first_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end234

for.cond.preheader:                               ; preds = %mixart_first_init.exit.for.cond.preheader_crit_edge, %mixart_first_init.exit.thread465
  %209 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %mgr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %210)
  %cmp238459.not = icmp eq i32 %210, 0
  br i1 %cmp238459.not, label %for.cond.preheader.do.body257_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.do.body257_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body257

do.end234:                                        ; preds = %mixart_first_init.exit.do.end234_crit_edge, %mixart_first_init.exit.thread
  %retval.0.i426448 = phi i32 [ %retval.0.i426.ph, %mixart_first_init.exit.thread ], [ %call5.i, %mixart_first_init.exit.do.end234_crit_edge ]
  %pci235 = getelementptr inbounds %struct.mixart_mgr, ptr %mgr, i32 0, i32 2
  %211 = ptrtoint ptr %pci235 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %pci235, align 4
  %dev236 = getelementptr inbounds %struct.pci_dev, ptr %212, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev236, ptr noundef nonnull @.str.42) #9
  br label %cleanup275

for.cond:                                         ; preds = %cleanup
  %inc = add nuw i32 %card_index.0460, 1
  %213 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %mgr, align 4
  %cmp238 = icmp ult i32 %inc, %214
  br i1 %cmp238, label %for.cond.for.body_crit_edge, label %for.cond.do.body257_crit_edge

for.cond.do.body257_crit_edge:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body257

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %card_index.0460 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx240 = getelementptr %struct.mixart_mgr, ptr %mgr, i32 0, i32 1, i32 %card_index.0460
  %215 = ptrtoint ptr %arrayidx240 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %arrayidx240, align 4
  %call241 = call i32 @snd_mixart_create_pcm(ptr noundef %216) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call241)
  %cmp242 = icmp slt i32 %call241, 0
  br i1 %cmp242, label %for.body.cleanup275_crit_edge, label %if.end244

for.body.cleanup275_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup275

if.end244:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %card_index.0460)
  %cmp245 = icmp eq i32 %card_index.0460, 0
  br i1 %cmp245, label %if.then246, label %if.end244.cleanup_crit_edge

if.end244.cleanup_crit_edge:                      ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then246:                                       ; preds = %if.end244
  %mgr247 = getelementptr inbounds %struct.snd_mixart, ptr %216, i32 0, i32 1
  %217 = ptrtoint ptr %mgr247 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %mgr247, align 4
  %call248 = call i32 @snd_mixart_create_mixer(ptr noundef %218) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call248)
  %cmp249 = icmp slt i32 %call248, 0
  br i1 %cmp249, label %if.then246.cleanup275_crit_edge, label %if.then246.cleanup_crit_edge

if.then246.cleanup_crit_edge:                     ; preds = %if.then246
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then246.cleanup275_crit_edge:                  ; preds = %if.then246
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup275

cleanup:                                          ; preds = %if.then246.cleanup_crit_edge, %if.end244.cleanup_crit_edge
  %219 = ptrtoint ptr %216 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %216, align 8
  %call253 = call i32 @snd_card_register(ptr noundef %220) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call253)
  %cmp254 = icmp slt i32 %call253, 0
  br i1 %cmp254, label %cleanup.cleanup275_crit_edge, label %for.cond

cleanup.cleanup275_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup275

do.body257:                                       ; preds = %for.cond.do.body257_crit_edge, %for.cond.preheader.do.body257_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mixart_dsp_load.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mixart_dsp_load, %if.then269)) #6
          to label %cleanup275 [label %if.then269], !srcloc !119

if.then269:                                       ; preds = %do.body257
  call void @__sanitizer_cov_trace_pc() #8
  %pci270 = getelementptr inbounds %struct.mixart_mgr, ptr %mgr, i32 0, i32 2
  %221 = ptrtoint ptr %pci270 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %pci270, align 4
  %dev271 = getelementptr inbounds %struct.pci_dev, ptr %222, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mixart_dsp_load.__UNIQUE_ID_ddebug241, ptr noundef %dev271, ptr noundef nonnull @.str.44) #6
  br label %cleanup275

cleanup275:                                       ; preds = %if.then269, %do.body257, %cleanup.cleanup275_crit_edge, %if.then246.cleanup275_crit_edge, %for.body.cleanup275_crit_edge, %do.end234, %do.end225, %if.end201.cleanup275_crit_edge, %do.end198, %if.end178.cleanup275_crit_edge, %if.end173.cleanup275_crit_edge, %do.end170, %if.end152.cleanup275_crit_edge, %do.end149, %do.end140, %if.end129, %do.end126, %for.cond.2.i.cleanup275_crit_edge, %for.cond.1.i.cleanup275_crit_edge, %for.cond.i.cleanup275_crit_edge, %if.end100.cleanup275_crit_edge, %do.end97, %do.end88, %if.then77, %do.body65, %if.end38, %if.end35.cleanup275_crit_edge, %if.end31.cleanup275_crit_edge, %do.end28, %if.then17, %do.body13, %do.end
  %retval.2 = phi i32 [ -11, %do.end ], [ -5, %do.end140 ], [ -16, %do.end149 ], [ -16, %do.end225 ], [ %retval.0.i426448, %do.end234 ], [ -5, %do.end170 ], [ -16, %do.end198 ], [ -5, %do.end88 ], [ -16, %do.end97 ], [ -16, %do.end126 ], [ 0, %if.end129 ], [ -5, %do.end28 ], [ 0, %if.end38 ], [ 0, %if.then17 ], [ -22, %if.end31.cleanup275_crit_edge ], [ -22, %if.end35.cleanup275_crit_edge ], [ 0, %if.then77 ], [ -22, %if.end152.cleanup275_crit_edge ], [ -22, %if.end173.cleanup275_crit_edge ], [ -22, %if.end178.cleanup275_crit_edge ], [ -22, %if.end201.cleanup275_crit_edge ], [ 0, %if.then269 ], [ 0, %do.body13 ], [ 0, %do.body65 ], [ 0, %do.body257 ], [ -22, %for.cond.2.i.cleanup275_crit_edge ], [ -22, %for.cond.1.i.cleanup275_crit_edge ], [ -22, %for.cond.i.cleanup275_crit_edge ], [ -22, %if.end100.cleanup275_crit_edge ], [ %call241, %for.body.cleanup275_crit_edge ], [ %call248, %if.then246.cleanup275_crit_edge ], [ %call253, %cleanup.cleanup275_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_mixart_init_mailbox(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_mixart_create_pcm(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_mixart_create_mixer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mixart_enum_physio(ptr noundef %mgr) unnamed_addr #0 align 64 {
entry:
  %request = alloca %struct.mixart_msg, align 4
  %get_console_mgr = alloca %struct.mixart_uid, align 8
  %console_mgr = alloca %struct.mixart_return_uid, align 4
  %phys_io = alloca %struct.mixart_uid_enumeration, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %request) #6
  %0 = getelementptr inbounds %struct.mixart_msg, ptr %request, i32 0, i32 1
  %1 = getelementptr inbounds %struct.mixart_msg, ptr %request, i32 0, i32 1, i32 1
  %2 = getelementptr inbounds %struct.mixart_msg, ptr %request, i32 0, i32 2
  %3 = getelementptr inbounds %struct.mixart_msg, ptr %request, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %get_console_mgr) #6
  %4 = getelementptr inbounds %struct.mixart_uid, ptr %get_console_mgr, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %console_mgr) #6
  %5 = ptrtoint ptr %console_mgr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %console_mgr, align 4, !annotation !117
  %6 = getelementptr inbounds %struct.mixart_return_uid, ptr %console_mgr, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4, !annotation !117
  %8 = getelementptr inbounds %struct.mixart_return_uid, ptr %console_mgr, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %8, align 4, !annotation !117
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %phys_io) #6
  %10 = call ptr @memset(ptr %phys_io, i32 255, i32 144)
  %11 = ptrtoint ptr %get_console_mgr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %get_console_mgr, align 8
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 458752, ptr %4, align 4
  %13 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 458755, ptr %request, align 4
  %14 = load i64, ptr %get_console_mgr, align 8
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 8)
  store i64 %14, ptr %0, align 4
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %get_console_mgr, ptr %2, align 4
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 8, ptr %3, align 4
  %call = call i32 @snd_mixart_send_msg(ptr noundef %mgr, ptr noundef nonnull %request, i32 noundef 12, ptr noundef nonnull %console_mgr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.do.body_crit_edge, label %lor.lhs.false

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %18 = ptrtoint ptr %console_mgr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %console_mgr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp1.not = icmp eq i32 %19, 0
  br i1 %cmp1.not, label %if.end7, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mixart_enum_physio.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mixart_enum_physio, %if.then5)) #6
          to label %cleanup [label %if.then5], !srcloc !119

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %pci = getelementptr inbounds %struct.mixart_mgr, ptr %mgr, i32 0, i32 2
  %20 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %22 = ptrtoint ptr %console_mgr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %console_mgr, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mixart_enum_physio.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.58, i32 noundef %23) #6
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  %uid_console_manager = getelementptr inbounds %struct.mixart_mgr, ptr %mgr, i32 0, i32 18
  %24 = ptrtoint ptr %6 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 8)
  %25 = load i64, ptr %6, align 4
  %26 = ptrtoint ptr %uid_console_manager to i32
  call void @__asan_storeN_noabort(i32 %26, i32 8)
  store i64 %25, ptr %uid_console_manager, align 4
  %27 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1441806, ptr %request, align 4
  %28 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %0, align 4
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %1, align 4
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %6, ptr %2, align 4
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 8, ptr %3, align 4
  %call16 = call i32 @snd_mixart_send_msg(ptr noundef %mgr, ptr noundef nonnull %request, i32 noundef 144, ptr noundef nonnull %phys_io) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.end7.do.end24_crit_edge, label %lor.lhs.false18

if.end7.do.end24_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24

lor.lhs.false18:                                  ; preds = %if.end7
  %32 = ptrtoint ptr %phys_io to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %phys_io, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp20.not = icmp eq i32 %33, 0
  br i1 %cmp20.not, label %if.end28, label %lor.lhs.false18.do.end24_crit_edge

lor.lhs.false18.do.end24_crit_edge:               ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24

do.end24:                                         ; preds = %lor.lhs.false18.do.end24_crit_edge, %if.end7.do.end24_crit_edge
  %pci25 = getelementptr inbounds %struct.mixart_mgr, ptr %mgr, i32 0, i32 2
  %34 = ptrtoint ptr %pci25 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pci25, align 4
  %dev26 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  %36 = ptrtoint ptr %phys_io to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %phys_io, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26, ptr noundef nonnull @.str.59, i32 noundef %call16, i32 noundef %37) #9
  br label %cleanup

if.end28:                                         ; preds = %lor.lhs.false18
  %nb_uid = getelementptr inbounds %struct.mixart_uid_enumeration, ptr %phys_io, i32 0, i32 2
  %38 = ptrtoint ptr %nb_uid to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nb_uid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %39)
  %cmp29 = icmp ult i32 %39, 8
  br i1 %cmp29, label %if.end28.cleanup_crit_edge, label %for.cond.preheader

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end28
  %40 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mgr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp3261.not = icmp eq i32 %41, 0
  br i1 %cmp3261.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %div59 = lshr i32 %39, 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %k.062 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mixart_mgr, ptr %mgr, i32 0, i32 1, i32 %k.062
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx, align 4
  %uid_in_analog_physio = getelementptr inbounds %struct.snd_mixart, ptr %43, i32 0, i32 13
  %arrayidx34 = getelementptr %struct.mixart_uid_enumeration, ptr %phys_io, i32 0, i32 4, i32 %k.062
  %44 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 8)
  %45 = load i64, ptr %arrayidx34, align 4
  %46 = ptrtoint ptr %uid_in_analog_physio to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %45, ptr %uid_in_analog_physio, align 8
  %47 = load ptr, ptr %arrayidx, align 4
  %uid_out_analog_physio = getelementptr inbounds %struct.snd_mixart, ptr %47, i32 0, i32 12
  %add = add i32 %k.062, %div59
  %arrayidx39 = getelementptr %struct.mixart_uid_enumeration, ptr %phys_io, i32 0, i32 4, i32 %add
  %48 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_loadN_noabort(i32 %48, i32 8)
  %49 = load i64, ptr %arrayidx39, align 4
  %50 = ptrtoint ptr %uid_out_analog_physio to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %49, ptr %uid_out_analog_physio, align 8
  %inc = add nuw i32 %k.062, 1
  %51 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %mgr, align 4
  %cmp32 = icmp ult i32 %inc, %52
  br i1 %cmp32, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %do.end24, %if.then5, %do.body
  %retval.0 = phi i32 [ -22, %do.end24 ], [ -22, %if.then5 ], [ -22, %if.end28.cleanup_crit_edge ], [ -22, %do.body ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %phys_io) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %console_mgr) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %get_console_mgr) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %request) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_mixart_send_msg(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !17, !18, !20, !22, !24, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !81, !82, !83, !84, !86, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !102, !103, !104, !106, !107}
!llvm.module.flags = !{!108, !109, !110, !111, !112, !113, !114, !115}
!llvm.ident = !{!116}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/pci/mixart/mixart_hwdep.c", i32 560, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/pci/mixart/mixart_hwdep.c", i32 560, i32 18}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/pci/mixart/mixart_hwdep.c", i32 560, i32 33}
!6 = distinct !{null, !7, !"fw_files", i1 false, i1 false}
!7 = !{!"../sound/pci/mixart/mixart_hwdep.c", i32 559, i32 28}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/pci/mixart/mixart_hwdep.c", i32 568, i32 17}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/pci/mixart/mixart_hwdep.c", i32 570, i32 4}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @snd_mixart_setup_firmware._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @snd_mixart_setup_firmware._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_firmware242, !19, !"__UNIQUE_ID_firmware242", i1 false, i1 false}
!19 = !{!"../sound/pci/mixart/mixart_hwdep.c", i32 584, i32 1}
!20 = !{ptr @__UNIQUE_ID_firmware243, !21, !"__UNIQUE_ID_firmware243", i1 false, i1 false}
!21 = !{!"../sound/pci/mixart/mixart_hwdep.c", i32 585, i32 1}
!22 = !{ptr @__UNIQUE_ID_firmware244, !23, !"__UNIQUE_ID_firmware244", i1 false, i1 false}
!23 = !{!"../sound/pci/mixart/mixart_hwdep.c", i32 586, i32 1}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/pci/mixart/mixart_hwdep.c", i32 352, i32 3}
!26 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @mixart_dsp_load._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @mixart_dsp_load._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/pci/mixart/mixart_hwdep.c", i32 361, i32 4}
!31 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @mixart_dsp_load.__UNIQUE_ID_ddebug239, !30, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/pci/mixart/mixart_hwdep.c", i32 366, i32 4}
!35 = !{ptr @mixart_dsp_load._entry.13, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @mixart_dsp_load._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/pci/mixart/mixart_hwdep.c", i32 398, i32 4}
!39 = !{ptr @mixart_dsp_load.__UNIQUE_ID_ddebug240, !38, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/pci/mixart/mixart_hwdep.c", i32 404, i32 4}
!42 = !{ptr @mixart_dsp_load._entry.17, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @mixart_dsp_load._entry_ptr.19, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/pci/mixart/mixart_hwdep.c", i32 413, i32 4}
!46 = !{ptr @mixart_dsp_load._entry.20, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @mixart_dsp_load._entry_ptr.22, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/pci/mixart/mixart_hwdep.c", i32 435, i32 4}
!50 = !{ptr @mixart_dsp_load._entry.23, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @mixart_dsp_load._entry_ptr.25, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/pci/mixart/mixart_hwdep.c", i32 449, i32 4}
!54 = !{ptr @mixart_dsp_load._entry.26, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @mixart_dsp_load._entry_ptr.28, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/pci/mixart/mixart_hwdep.c", i32 457, i32 4}
!58 = !{ptr @mixart_dsp_load._entry.29, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @mixart_dsp_load._entry_ptr.31, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/pci/mixart/mixart_hwdep.c", i32 473, i32 4}
!62 = !{ptr @mixart_dsp_load._entry.32, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @mixart_dsp_load._entry_ptr.34, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.36, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/pci/mixart/mixart_hwdep.c", i32 494, i32 4}
!66 = !{ptr @mixart_dsp_load._entry.35, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @mixart_dsp_load._entry_ptr.37, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.39, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/pci/mixart/mixart_hwdep.c", i32 516, i32 3}
!70 = !{ptr @mixart_dsp_load._entry.38, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @mixart_dsp_load._entry_ptr.40, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.42, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/pci/mixart/mixart_hwdep.c", i32 527, i32 3}
!74 = !{ptr @mixart_dsp_load._entry.41, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @mixart_dsp_load._entry_ptr.43, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.44, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/pci/mixart/mixart_hwdep.c", i32 550, i32 2}
!78 = !{ptr @mixart_dsp_load.__UNIQUE_ID_ddebug241, !77, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!79 = !{ptr @.str.45, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/pci/mixart/mixart_hwdep.c", i32 326, i32 3}
!81 = !{ptr @.str.46, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @mixart_first_init._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @mixart_first_init._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.47, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/pci/mixart/mixart_hwdep.c", i32 157, i32 3}
!86 = !{ptr @.str.48, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @mixart_enum_connectors._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @mixart_enum_connectors._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.50, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/pci/mixart/mixart_hwdep.c", i32 187, i32 4}
!91 = !{ptr @mixart_enum_connectors._entry.49, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @mixart_enum_connectors._entry_ptr.51, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.53, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/pci/mixart/mixart_hwdep.c", i32 201, i32 3}
!95 = !{ptr @mixart_enum_connectors._entry.52, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @mixart_enum_connectors._entry_ptr.54, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @mixart_enum_connectors._entry.55, !98, !"_entry", i1 false, i1 false}
!98 = !{!"../sound/pci/mixart/mixart_hwdep.c", i32 231, i32 4}
!99 = !{ptr @mixart_enum_connectors._entry_ptr.56, !98, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.57, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/pci/mixart/mixart_hwdep.c", i32 268, i32 3}
!102 = !{ptr @.str.58, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @mixart_enum_physio.__UNIQUE_ID_ddebug238, !101, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!104 = !{ptr @.str.59, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/pci/mixart/mixart_hwdep.c", i32 284, i32 3}
!106 = !{ptr @mixart_enum_physio._entry, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @mixart_enum_physio._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{i32 1, !"wchar_size", i32 2}
!109 = !{i32 1, !"min_enum_size", i32 4}
!110 = !{i32 8, !"branch-target-enforcement", i32 0}
!111 = !{i32 8, !"sign-return-address", i32 0}
!112 = !{i32 8, !"sign-return-address-all", i32 0}
!113 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!114 = !{i32 7, !"uwtable", i32 1}
!115 = !{i32 7, !"frame-pointer", i32 2}
!116 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!117 = !{!"auto-init"}
!118 = !{i64 4213708}
!119 = !{i64 2148732482, i64 2148732487, i64 2148732500, i64 2148732544, i64 2148732578, i64 2148732599}
!120 = !{i64 4213290}
