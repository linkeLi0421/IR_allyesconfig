; ModuleID = '/llk/IR_all_yes/sound/soc/sof/intel/hda-loader.c_pt.bc'
source_filename = "../sound/soc/sof/intel/hda-loader.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.snd_sof_dev = type { ptr, %struct.spinlock, %struct.spinlock, %struct.snd_soc_component_driver, %struct.sof_dsp_power_state, %struct.mutex, i32, %struct.wait_queue_head, i32, i8, %struct.work_struct, i8, ptr, ptr, %struct.snd_sof_mailbox, %struct.snd_sof_mailbox, %struct.snd_sof_mailbox, %struct.snd_sof_mailbox, ptr, i32, i32, [8 x ptr], i32, i32, i32, ptr, %struct.list_head, i8, i8, %struct.snd_dma_buffer, %struct.snd_dma_buffer, %struct.sof_ipc_fw_ready, %struct.sof_ipc_fw_version, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, ptr, i32, i32, i32, %struct.snd_dma_buffer, %struct.snd_dma_buffer, i32, %struct.wait_queue_head, i32, i8, i8, i8, i8, i8, i32, [8 x i32], ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.sof_dsp_power_state = type { i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.snd_sof_mailbox = type { i32, i32 }
%struct.sof_ipc_fw_ready = type <{ %struct.sof_ipc_cmd_hdr, i32, i32, i32, i32, %struct.sof_ipc_fw_version, i64, [4 x i32] }>
%struct.sof_ipc_cmd_hdr = type { i32, i32 }
%struct.sof_ipc_fw_version = type { %struct.sof_ipc_hdr, i16, i16, i16, i16, [12 x i8], [10 x i8], [6 x i8], i32, i32, [3 x i32] }
%struct.sof_ipc_hdr = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_sof_pdata = type { ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sof_intel_hda_dev = type { i32, %struct.hda_bus, ptr, ptr, i32, i32, i8, ptr, %struct.delayed_work, %struct.sdw_intel_acpi_info, ptr, i8 }
%struct.hda_bus = type { %struct.hdac_bus, ptr, ptr, ptr, %struct.mutex, [8 x i32], i8, i32, i32 }
%struct.hdac_bus = type { ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, [16 x ptr], [128 x i32], i32, i32, %struct.work_struct, i32, i32, %struct.hdac_rb, %struct.hdac_rb, [8 x i32], %struct.wait_queue_head, %struct.snd_dma_buffer, %struct.snd_dma_buffer, i32, %struct.list_head, i16, i32, i32, i32, %struct.spinlock, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, i32, %struct.list_head, i8, i32 }
%struct.hdac_rb = type { ptr, i32, i16, i16, [8 x i32], [8 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.sdw_intel_acpi_info = type { ptr, i32, i32 }
%struct.hdac_stream = type { ptr, %struct.snd_dma_buffer, ptr, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i8, i64, i32, i32, %struct.timecounter, %struct.cyclecounter, i32, %struct.list_head, %struct.mutex }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.sof_dev_desc = type { ptr, ptr, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.sof_intel_dsp_desc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.snd_sof_dsp_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr }
%struct.sof_ext_man_elem_header = type { i32, i32 }
%struct.sof_ext_man_cavs_config_data = type { %struct.sof_ext_man_elem_header, [0 x %struct.sof_config_elem] }
%struct.sof_config_elem = type { i32, i32 }

@hda_dsp_cl_boot_firmware_iccmax._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 313, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"error: firmware size must be greater than firmware offset\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"hda_dsp_cl_boot_firmware_iccmax\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"sound/soc/sof/intel/hda-loader.c\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hda_dsp_cl_boot_firmware_iccmax._entry_ptr = internal global ptr @hda_dsp_cl_boot_firmware_iccmax._entry, section ".printk_index", align 4
@hda_dsp_cl_boot_firmware_iccmax._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 323, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"error: dma prepare for ICCMAX stream failed\0A\00", [51 x i8] zeroinitializer }, align 32
@hda_dsp_cl_boot_firmware_iccmax._entry_ptr.7 = internal global ptr @hda_dsp_cl_boot_firmware_iccmax._entry.5, section ".printk_index", align 4
@hda_dsp_cl_boot_firmware_iccmax._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 335, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"error: ICCMAX stream cleanup failed\0A\00", [59 x i8] zeroinitializer }, align 32
@hda_dsp_cl_boot_firmware_iccmax._entry_ptr.10 = internal global ptr @hda_dsp_cl_boot_firmware_iccmax._entry.8, section ".printk_index", align 4
@hda_dsp_cl_boot_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.11, ptr @.str.2, i32 361, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hda_dsp_cl_boot_firmware\00", [39 x i8] zeroinitializer }, align 32
@hda_dsp_cl_boot_firmware._entry_ptr = internal global ptr @hda_dsp_cl_boot_firmware._entry, section ".printk_index", align 4
@hda_dsp_cl_boot_firmware.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&sdev->boot_wait\00", [47 x i8] zeroinitializer }, align 32
@hda_dsp_cl_boot_firmware._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.11, ptr @.str.2, i32 375, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"error: dma prepare for fw loading failed\0A\00", [54 x i8] zeroinitializer }, align 32
@hda_dsp_cl_boot_firmware._entry_ptr.15 = internal global ptr @hda_dsp_cl_boot_firmware._entry.13, section ".printk_index", align 4
@hda_dsp_cl_boot_firmware.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.11, ptr @.str.2, ptr @.str.17, i8 0, i8 96, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"snd_sof_intel_hda_common\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Attempting iteration %d of Core En/ROM load...\0A\00", [48 x i8] zeroinitializer }, align 32
@hda_dsp_cl_boot_firmware._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.11, ptr @.str.2, i32 397, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"error: dsp init failed after %d attempts with err: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@hda_dsp_cl_boot_firmware._entry_ptr.20 = internal global ptr @hda_dsp_cl_boot_firmware._entry.18, section ".printk_index", align 4
@hda_dsp_cl_boot_firmware.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.11, ptr @.str.2, ptr @.str.21, i8 0, i8 107, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Firmware download successful, booting...\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Firmware download failed\00", [39 x i8] zeroinitializer }, align 32
@hda_dsp_cl_boot_firmware._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.11, ptr @.str.2, i32 442, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"error: Code loader DSP cleanup failed\0A\00", [57 x i8] zeroinitializer }, align 32
@hda_dsp_cl_boot_firmware._entry_ptr.25 = internal global ptr @hda_dsp_cl_boot_firmware._entry.23, section ".printk_index", align 4
@hda_dsp_post_fw_run._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 479, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"error: could not startup SoundWire links\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hda_dsp_post_fw_run\00", [44 x i8] zeroinitializer }, align 32
@hda_dsp_post_fw_run._entry_ptr = internal global ptr @hda_dsp_post_fw_run._entry, section ".printk_index", align 4
@hda_dsp_ext_man_get_cavs_config_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 502, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"cavs config data is inconsistent: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"hda_dsp_ext_man_get_cavs_config_data\00", [59 x i8] zeroinitializer }, align 32
@hda_dsp_ext_man_get_cavs_config_data._entry_ptr = internal global ptr @hda_dsp_ext_man_get_cavs_config_data._entry, section ".printk_index", align 4
@hda_dsp_ext_man_get_cavs_config_data.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 0, i8 -128, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"FW clock config: %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LPRO\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HPRO\00", [27 x i8] zeroinitializer }, align 32
@hda_dsp_ext_man_get_cavs_config_data._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.29, ptr @.str.2, i32 522, ptr @.str.35, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unsupported token type: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@hda_dsp_ext_man_get_cavs_config_data._entry_ptr.36 = internal global ptr @hda_dsp_ext_man_get_cavs_config_data._entry.33, section ".printk_index", align 4
@cl_stream_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 40, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"error: no stream available\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cl_stream_prepare\00", [46 x i8] zeroinitializer }, align 32
@cl_stream_prepare._entry_ptr = internal global ptr @cl_stream_prepare._entry, section ".printk_index", align 4
@cl_stream_prepare._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.2, i32 49, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"error: memory alloc failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@cl_stream_prepare._entry_ptr.41 = internal global ptr @cl_stream_prepare._entry.39, section ".printk_index", align 4
@cl_stream_prepare._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.38, ptr @.str.2, i32 60, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"error: iccmax stream prepare failed: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@cl_stream_prepare._entry_ptr.44 = internal global ptr @cl_stream_prepare._entry.42, section ".printk_index", align 4
@cl_stream_prepare._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.38, ptr @.str.2, i32 66, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"error: hdac prepare failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@cl_stream_prepare._entry_ptr.47 = internal global ptr @cl_stream_prepare._entry.45, section ".printk_index", align 4
@snd_sof_dsp_write._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.48, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.snd_sof_dsp_write = private unnamed_addr constant [18 x i8] c"snd_sof_dsp_write\00", align 1
@snd_sof_dsp_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @__func__.snd_sof_dsp_write, ptr @.str.50, i32 299, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"error: %s not defined\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sound/soc/sof/intel/../ops.h\00", [35 x i8] zeroinitializer }, align 32
@snd_sof_dsp_write._entry_ptr = internal global ptr @snd_sof_dsp_write._entry, section ".printk_index", align 4
@cl_dsp_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 100, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"error: dsp core 0/1 power up failed\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cl_dsp_init\00", [20 x i8] zeroinitializer }, align 32
@cl_dsp_init._entry_ptr = internal global ptr @cl_dsp_init._entry, section ".printk_index", align 4
@cl_dsp_init._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.2, i32 124, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"error: dsp core start failed %d\0A\00", [63 x i8] zeroinitializer }, align 32
@cl_dsp_init._entry_ptr.55 = internal global ptr @cl_dsp_init._entry.53, section ".printk_index", align 4
@cl_dsp_init.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.52, ptr @.str.2, ptr @.str.56, i8 0, i8 33, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"FW Poll Status: reg[%#x]=%#x successful\0A\00", [55 x i8] zeroinitializer }, align 32
@cl_dsp_init.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.52, ptr @.str.2, ptr @.str.57, i8 0, i8 33, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"FW Poll Status: reg[%#x]=%#x timedout\0A\00", [57 x i8] zeroinitializer }, align 32
@cl_dsp_init._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.52, ptr @.str.2, i32 141, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"error: %s: timeout for HIPCIE done\0A\00", [60 x i8] zeroinitializer }, align 32
@cl_dsp_init._entry_ptr.60 = internal global ptr @cl_dsp_init._entry.58, section ".printk_index", align 4
@cl_dsp_init._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.52, ptr @.str.2, i32 157, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"error: dsp core x power down failed\0A\00", [59 x i8] zeroinitializer }, align 32
@cl_dsp_init._entry_ptr.63 = internal global ptr @cl_dsp_init._entry.61, section ".printk_index", align 4
@cl_dsp_init.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.52, ptr @.str.2, ptr @.str.56, i8 0, i8 42, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cl_dsp_init.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.52, ptr @.str.2, ptr @.str.57, i8 0, i8 42, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cl_dsp_init._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.52, ptr @.str.2, i32 184, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"error: %s: timeout HDA_DSP_SRAM_REG_ROM_STATUS read\0A\00", [43 x i8] zeroinitializer }, align 32
@cl_dsp_init._entry_ptr.66 = internal global ptr @cl_dsp_init._entry.64, section ".printk_index", align 4
@.str.67 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Boot iteration failed: %d/%d\00", [35 x i8] zeroinitializer }, align 32
@snd_sof_dsp_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.68, ptr @.str.50, i32 319, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snd_sof_dsp_read\00", [47 x i8] zeroinitializer }, align 32
@snd_sof_dsp_read._entry_ptr = internal global ptr @snd_sof_dsp_read._entry, section ".printk_index", align 4
@cl_copy_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.2, i32 268, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"error: DMA trigger start failed\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cl_copy_fw\00", [21 x i8] zeroinitializer }, align 32
@cl_copy_fw._entry_ptr = internal global ptr @cl_copy_fw._entry, section ".printk_index", align 4
@cl_copy_fw.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.70, ptr @.str.2, ptr @.str.56, i8 0, i8 69, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cl_copy_fw.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.70, ptr @.str.2, ptr @.str.57, i8 0, i8 69, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cl_copy_fw._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.70, ptr @.str.2, i32 287, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@cl_copy_fw._entry_ptr.72 = internal global ptr @cl_copy_fw._entry.71, section ".printk_index", align 4
@cl_copy_fw._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.70, ptr @.str.2, i32 292, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"error: DMA trigger stop failed\0A\00", [32 x i8] zeroinitializer }, align 32
@cl_copy_fw._entry_ptr.75 = internal global ptr @cl_copy_fw._entry.73, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 313, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 323, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 335, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 361, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 369, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 375, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 384, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 396, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 429, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 431, i32 30 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 442, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 478, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 502, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 513, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 521, i32 4 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 40, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 49, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 60, i32 4 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 66, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 299, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 100, i32 4 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 123, i32 4 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 130, i32 8 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 139, i32 4 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 156, i32 4 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 182, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 193, i32 35 }
@___asan_gen_.272 = private unnamed_addr constant [32 x i8] c"../sound/soc/sof/intel/../ops.h\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 319, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 268, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 285, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.289 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.290 = private constant [36 x i8] c"../sound/soc/sof/intel/hda-loader.c\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.290, i32 292, i32 3 }
@llvm.compiler.used = appending global [96 x ptr] [ptr @cl_copy_fw._entry, ptr @cl_copy_fw._entry.71, ptr @cl_copy_fw._entry.73, ptr @cl_copy_fw._entry_ptr, ptr @cl_copy_fw._entry_ptr.72, ptr @cl_copy_fw._entry_ptr.75, ptr @cl_dsp_init._entry, ptr @cl_dsp_init._entry.53, ptr @cl_dsp_init._entry.58, ptr @cl_dsp_init._entry.61, ptr @cl_dsp_init._entry.64, ptr @cl_dsp_init._entry_ptr, ptr @cl_dsp_init._entry_ptr.55, ptr @cl_dsp_init._entry_ptr.60, ptr @cl_dsp_init._entry_ptr.63, ptr @cl_dsp_init._entry_ptr.66, ptr @cl_stream_prepare._entry, ptr @cl_stream_prepare._entry.39, ptr @cl_stream_prepare._entry.42, ptr @cl_stream_prepare._entry.45, ptr @cl_stream_prepare._entry_ptr, ptr @cl_stream_prepare._entry_ptr.41, ptr @cl_stream_prepare._entry_ptr.44, ptr @cl_stream_prepare._entry_ptr.47, ptr @hda_dsp_cl_boot_firmware._entry, ptr @hda_dsp_cl_boot_firmware._entry.13, ptr @hda_dsp_cl_boot_firmware._entry.18, ptr @hda_dsp_cl_boot_firmware._entry.23, ptr @hda_dsp_cl_boot_firmware._entry_ptr, ptr @hda_dsp_cl_boot_firmware._entry_ptr.15, ptr @hda_dsp_cl_boot_firmware._entry_ptr.20, ptr @hda_dsp_cl_boot_firmware._entry_ptr.25, ptr @hda_dsp_cl_boot_firmware_iccmax._entry, ptr @hda_dsp_cl_boot_firmware_iccmax._entry.5, ptr @hda_dsp_cl_boot_firmware_iccmax._entry.8, ptr @hda_dsp_cl_boot_firmware_iccmax._entry_ptr, ptr @hda_dsp_cl_boot_firmware_iccmax._entry_ptr.10, ptr @hda_dsp_cl_boot_firmware_iccmax._entry_ptr.7, ptr @hda_dsp_ext_man_get_cavs_config_data._entry, ptr @hda_dsp_ext_man_get_cavs_config_data._entry.33, ptr @hda_dsp_ext_man_get_cavs_config_data._entry_ptr, ptr @hda_dsp_ext_man_get_cavs_config_data._entry_ptr.36, ptr @hda_dsp_post_fw_run._entry, ptr @hda_dsp_post_fw_run._entry_ptr, ptr @snd_sof_dsp_read._entry, ptr @snd_sof_dsp_read._entry_ptr, ptr @snd_sof_dsp_write._entry, ptr @snd_sof_dsp_write._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.11, ptr @hda_dsp_cl_boot_firmware.__key, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @snd_sof_dsp_write._rs, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.74], section "llvm.metadata"
@0 = internal global [72 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_cl_boot_firmware_iccmax._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_cl_boot_firmware_iccmax._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_cl_boot_firmware_iccmax._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_cl_boot_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_cl_boot_firmware.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_cl_boot_firmware._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_cl_boot_firmware._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_cl_boot_firmware._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_post_fw_run._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_ext_man_get_cavs_config_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_dsp_ext_man_get_cavs_config_data._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cl_stream_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cl_stream_prepare._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cl_stream_prepare._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cl_stream_prepare._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_dsp_write._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_dsp_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cl_dsp_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cl_dsp_init._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cl_dsp_init._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cl_dsp_init._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cl_dsp_init._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_sof_dsp_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cl_copy_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cl_copy_fw._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cl_copy_fw._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hda_dsp_cl_boot_firmware_iccmax(ptr noundef %sdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %hw_pdata.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %hw_pdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_pdata.i, align 4
  %remap_addr = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %3, i32 0, i32 1, i32 0, i32 4
  %4 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %remap_addr, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 4168
  %aligned_mmio.i = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %3, i32 0, i32 1, i32 0, i32 28
  %6 = ptrtoint ptr %aligned_mmio.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i = load i16, ptr %aligned_mmio.i, align 4
  %7 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %bf.cast.not.i = icmp eq i16 %7, 0
  br i1 %bf.cast.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 @snd_hdac_aligned_read(ptr noundef %add.ptr, i32 noundef 255) #5
  br label %snd_hdac_reg_readb.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #5, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !149
  %conv.i = zext i8 %8 to i32
  br label %snd_hdac_reg_readb.exit

snd_hdac_reg_readb.exit:                          ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %call.i, %cond.true.i ], [ %conv.i, %cond.false.i ]
  %conv3.i = trunc i32 %cond.i to i8
  %9 = and i8 %conv3.i, 63
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %fw_offset = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %fw_offset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fw_offset, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp.not = icmp ugt i32 %13, %15
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %snd_hdac_reg_readb.exit
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str) #8
  br label %cleanup

if.end:                                           ; preds = %snd_hdac_reg_readb.exit
  %sub = sub i32 %13, %15
  %dmab_bdl = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 30
  %call9 = tail call fastcc ptr @cl_stream_prepare(ptr noundef %sdev, i32 noundef %sub, ptr noundef %dmab_bdl, i32 noundef 1)
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end14, label %if.end17

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.6) #8
  %20 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %call18 = tail call i32 @hda_dsp_cl_boot_firmware(ptr noundef %sdev)
  %call20 = tail call fastcc i32 @cl_cleanup(ptr noundef %sdev, ptr noundef %dmab_bdl, ptr noundef %call9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %do.end26, label %if.end17.if.end30_crit_edge

if.end17.if.end30_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

do.end26:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool.not = icmp eq i32 %call18, 0
  %spec.select = select i1 %tobool.not, i32 %call20, i32 %call18
  br label %if.end30

if.end30:                                         ; preds = %do.end26, %if.end17.if.end30_crit_edge
  %ret.0 = phi i32 [ %call18, %if.end17.if.end30_crit_edge ], [ %spec.select, %do.end26 ]
  %23 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %remap_addr, align 4
  %add.ptr32 = getelementptr i8, ptr %24, i32 4168
  %25 = ptrtoint ptr %aligned_mmio.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load.i70 = load i16, ptr %aligned_mmio.i, align 4
  %26 = and i16 %bf.load.i70, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %bf.cast.not.i71 = icmp eq i16 %26, 0
  br i1 %bf.cast.not.i71, label %cond.false.i75, label %cond.true.i73

cond.true.i73:                                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  %call.i72 = tail call i32 @snd_hdac_aligned_read(ptr noundef %add.ptr32, i32 noundef 255) #5
  br label %snd_hdac_reg_readb.exit78

cond.false.i75:                                   ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr32) #5, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !149
  %conv.i74 = zext i8 %27 to i32
  br label %snd_hdac_reg_readb.exit78

snd_hdac_reg_readb.exit78:                        ; preds = %cond.false.i75, %cond.true.i73
  %cond.i76 = phi i32 [ %call.i72, %cond.true.i73 ], [ %conv.i74, %cond.false.i75 ]
  %conv3.i77 = trunc i32 %cond.i76 to i8
  %28 = and i8 %conv3.i77, -64
  %or68 = or i8 %28, %9
  %29 = ptrtoint ptr %aligned_mmio.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %bf.load.i80 = load i16, ptr %aligned_mmio.i, align 4
  %30 = and i16 %bf.load.i80, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %bf.cast.not.i81 = icmp eq i16 %30, 0
  br i1 %bf.cast.not.i81, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %snd_hdac_reg_readb.exit78
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i82 = zext i8 %or68 to i32
  tail call void @snd_hdac_aligned_write(i32 noundef %conv.i82, ptr noundef %add.ptr32, i32 noundef 255) #5
  br label %cleanup

do.body.i:                                        ; preds = %snd_hdac_reg_readb.exit78
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !150
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr32, i8 %or68) #5, !srcloc !151
  br label %cleanup

cleanup:                                          ; preds = %do.body.i, %if.then.i, %do.end14, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %20, %do.end14 ], [ %ret.0, %if.then.i ], [ %ret.0, %do.body.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @cl_stream_prepare(ptr noundef %sdev, i32 noundef %size, ptr noundef %dmab, i32 noundef %direction) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev, align 4
  %call = tail call ptr @hda_dsp_stream_get(ptr noundef %sdev, i32 noundef %direction, i32 noundef 0) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.37) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %substream = getelementptr inbounds %struct.hdac_stream, ptr %call, i32 0, i32 10
  %4 = ptrtoint ptr %substream to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %substream, align 4
  %call.i = tail call i32 @snd_dma_alloc_dir_pages(i32 noundef 2, ptr noundef %1, i32 noundef 0, i32 noundef %size, ptr noundef %dmab) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end9, label %if.end11

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.40, i32 noundef %call.i) #8
  br label %error

if.end11:                                         ; preds = %if.end
  %period_bytes = getelementptr inbounds %struct.hdac_stream, ptr %call, i32 0, i32 5
  %7 = ptrtoint ptr %period_bytes to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %period_bytes, align 8
  %format_val = getelementptr inbounds %struct.hdac_stream, ptr %call, i32 0, i32 12
  %8 = ptrtoint ptr %format_val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 64, ptr %format_val, align 4
  %bufsize = getelementptr inbounds %struct.hdac_stream, ptr %call, i32 0, i32 4
  %9 = ptrtoint ptr %bufsize to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %size, ptr %bufsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %direction)
  %cmp12 = icmp eq i32 %direction, 1
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end11
  %call14 = tail call i32 @hda_dsp_iccmax_stream_hw_params(ptr noundef %sdev, ptr noundef nonnull %call, ptr noundef %dmab, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %do.end19, label %if.then13.cleanup_crit_edge

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end19:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.43, i32 noundef %call14) #8
  br label %error

if.else:                                          ; preds = %if.end11
  %call22 = tail call i32 @hda_dsp_stream_hw_params(ptr noundef %sdev, ptr noundef nonnull %call, ptr noundef %dmab, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %do.end27, label %if.end29

do.end27:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.46, i32 noundef %call22) #8
  br label %error

if.end29:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %call30 = tail call i32 @hda_dsp_stream_spib_config(ptr noundef %sdev, ptr noundef nonnull %call, i32 noundef 1, i32 noundef %size) #5
  br label %cleanup

error:                                            ; preds = %do.end27, %do.end19, %do.end9
  %ret.0 = phi i32 [ %call.i, %do.end9 ], [ %call14, %do.end19 ], [ %call22, %do.end27 ]
  %stream_tag = getelementptr inbounds %struct.hdac_stream, ptr %call, i32 0, i32 13
  %14 = ptrtoint ptr %stream_tag to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %stream_tag, align 8
  %conv = zext i8 %15 to i32
  %call32 = tail call i32 @hda_dsp_stream_put(ptr noundef %sdev, i32 noundef %direction, i32 noundef %conv) #5
  tail call void @snd_dma_free_pages(ptr noundef %dmab) #5
  %16 = inttoptr i32 %ret.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end29, %if.then13.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ %16, %error ], [ inttoptr (i32 -19 to ptr), %do.end ], [ %call, %if.then13.cleanup_crit_edge ], [ %call, %if.end29 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hda_dsp_cl_boot_firmware(ptr noundef %sdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %hw_pdata = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %hw_pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_pdata, align 4
  %desc2 = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %desc2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc2, align 4
  %chip_info3 = getelementptr inbounds %struct.sof_dev_desc, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %chip_info3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip_info3, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %fw_offset = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %fw_offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fw_offset, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp.not = icmp ugt i32 %11, %13
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str) #8
  br label %cleanup90

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.firmware, ptr %9, i32 0, i32 1
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %sub = sub i32 %11, %13
  %boot_wait = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 7
  tail call void @__init_waitqueue_head(ptr noundef %boot_wait, ptr noundef nonnull @.str.12, ptr noundef nonnull @hda_dsp_cl_boot_firmware.__key) #5
  %dmab = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 29
  %call = tail call fastcc ptr @cl_stream_prepare(ptr noundef %sdev, i32 noundef %sub, ptr noundef %dmab, i32 noundef 0)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end19, label %if.end22

do.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.14) #8
  %20 = ptrtoint ptr %call to i32
  br label %cleanup90

if.end22:                                         ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %17, i32 %13
  %area = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 29, i32 1
  %21 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %area, align 4
  %23 = call ptr @memcpy(ptr %22, ptr %add.ptr, i32 %sub)
  %stream_tag = getelementptr inbounds %struct.hdac_stream, ptr %call, i32 0, i32 13
  br label %do.body27

for.cond:                                         ; preds = %do.end35
  %exitcond.not = icmp eq i32 %add, 3
  br i1 %exitcond.not, label %do.end45, label %for.cond.do.body27_crit_edge

for.cond.do.body27_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body27

do.body27:                                        ; preds = %for.cond.do.body27_crit_edge, %if.end22
  %i.0154 = phi i32 [ 0, %if.end22 ], [ %add, %for.cond.do.body27_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hda_dsp_cl_boot_firmware.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hda_dsp_cl_boot_firmware, %if.then31)) #5
          to label %do.end35 [label %if.then31], !srcloc !152

if.then31:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hda_dsp_cl_boot_firmware.__UNIQUE_ID_ddebug253, ptr noundef %25, ptr noundef nonnull @.str.17, i32 noundef %i.0154) #5
  br label %do.end35

do.end35:                                         ; preds = %if.then31, %do.body27
  %add = add nuw nsw i32 %i.0154, 1
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add, ptr %3, align 4
  %27 = ptrtoint ptr %stream_tag to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %stream_tag, align 8
  %conv = zext i8 %28 to i32
  %call36 = tail call fastcc i32 @cl_dsp_init(ptr noundef %sdev, i32 noundef %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end50, label %for.cond

do.end45:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.19, i32 noundef 3, i32 noundef %call36) #8
  br label %cleanup

if.end50:                                         ; preds = %do.end35
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 3, ptr %3, align 4
  %call52 = tail call fastcc i32 @cl_copy_fw(ptr noundef %sdev, ptr noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %do.body55, label %if.else

do.body55:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hda_dsp_cl_boot_firmware.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hda_dsp_cl_boot_firmware, %if.then67)) #5
          to label %cleanup [label %if.then67], !srcloc !152

if.then67:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hda_dsp_cl_boot_firmware.__UNIQUE_ID_ddebug254, ptr noundef %33, ptr noundef nonnull @.str.21) #5
  br label %cleanup

if.else:                                          ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @snd_sof_dsp_dbg_dump(ptr noundef %sdev, ptr noundef nonnull @.str.22, i32 noundef 10) #5
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then67, %do.body55, %do.end45
  %ret.2 = phi i32 [ %call36, %do.end45 ], [ %call52, %if.else ], [ 0, %if.then67 ], [ 0, %do.body55 ]
  %call74 = tail call fastcc i32 @cl_cleanup(ptr noundef %sdev, ptr noundef %dmab, ptr noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp75 = icmp slt i32 %call74, 0
  br i1 %cmp75, label %do.end80, label %if.end85

do.end80:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2)
  %tobool82.not = icmp eq i32 %ret.2, 0
  %spec.select = select i1 %tobool82.not, i32 %call74, i32 %ret.2
  br label %if.end88

if.end85:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2)
  %tobool86.not = icmp eq i32 %ret.2, 0
  br i1 %tobool86.not, label %if.then87, label %if.end85.if.end88_crit_edge

if.end85.if.end88_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end88

if.then87:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #7
  %init_core_mask = getelementptr inbounds %struct.sof_intel_dsp_desc, ptr %7, i32 0, i32 2
  %36 = ptrtoint ptr %init_core_mask to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %init_core_mask, align 4
  br label %cleanup90

if.end88:                                         ; preds = %if.end85.if.end88_crit_edge, %do.end80
  %ret.3151 = phi i32 [ %ret.2, %if.end85.if.end88_crit_edge ], [ %spec.select, %do.end80 ]
  %call89 = tail call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %sdev, i32 noundef 1, i32 noundef 4, i32 noundef 1073741824, i32 noundef 0) #5
  br label %cleanup90

cleanup90:                                        ; preds = %if.end88, %if.then87, %do.end19, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %20, %do.end19 ], [ %ret.3151, %if.end88 ], [ %37, %if.then87 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cl_cleanup(ptr noundef %sdev, ptr noundef %dmab, ptr noundef %stream) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.hdac_stream, ptr %stream, i32 0, i32 14
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index, align 1
  %conv = zext i8 %1 to i32
  %mul = shl nuw nsw i32 %conv, 5
  %add = add nuw nsw i32 %mul, 128
  %direction = getelementptr inbounds %struct.hdac_stream, ptr %stream, i32 0, i32 3
  %2 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %direction, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @hda_dsp_stream_spib_config(ptr noundef %sdev, ptr noundef %stream, i32 noundef 0, i32 noundef 0) #5
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call3 = tail call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %sdev, i32 noundef 0, i32 noundef %add, i32 noundef 2, i32 noundef 0) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ %call, %if.then ], [ 0, %if.else ]
  %4 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %direction, align 8
  %stream_tag = getelementptr inbounds %struct.hdac_stream, ptr %stream, i32 0, i32 13
  %6 = ptrtoint ptr %stream_tag to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %stream_tag, align 8
  %conv5 = zext i8 %7 to i32
  %call6 = tail call i32 @hda_dsp_stream_put(ptr noundef %sdev, i32 noundef %5, i32 noundef %conv5) #5
  %running = getelementptr inbounds %struct.hdac_stream, ptr %stream, i32 0, i32 16
  %8 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %running, align 8
  %bf.clear = and i8 %bf.load, -65
  store i8 %bf.clear, ptr %running, align 8
  %substream = getelementptr inbounds %struct.hdac_stream, ptr %stream, i32 0, i32 10
  %9 = ptrtoint ptr %substream to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %substream, align 4
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %10 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdata.i, align 4
  %desc.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %desc.i, align 4
  %ops.i = getelementptr inbounds %struct.sof_dev_desc, ptr %13, i32 0, i32 14
  %14 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i, align 4
  %write.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %add7 = add nuw nsw i32 %mul, 152
  %arrayidx.i = getelementptr %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21, i32 0
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 %add7
  tail call void %17(ptr noundef %sdev, ptr noundef %add.ptr.i, i32 noundef 0) #5
  br label %snd_sof_dsp_write.exit

do.body.i:                                        ; preds = %if.end
  %call.i = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_dsp_write._rs, ptr noundef nonnull @__func__.snd_sof_dsp_write) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool6.not.i, label %do.body.i.snd_sof_dsp_write.exit_crit_edge, label %do.end.i

do.body.i.snd_sof_dsp_write.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_sof_dsp_write.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.snd_sof_dsp_write) #8
  br label %snd_sof_dsp_write.exit

snd_sof_dsp_write.exit:                           ; preds = %do.end.i, %do.body.i.snd_sof_dsp_write.exit_crit_edge, %if.then.i
  %22 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdata.i, align 4
  %desc.i27 = getelementptr inbounds %struct.snd_sof_pdata, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %desc.i27 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %desc.i27, align 4
  %ops.i28 = getelementptr inbounds %struct.sof_dev_desc, ptr %25, i32 0, i32 14
  %26 = ptrtoint ptr %ops.i28 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i28, align 4
  %write.i29 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %write.i29 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write.i29, align 4
  %tobool.not.i30 = icmp eq ptr %29, null
  br i1 %tobool.not.i30, label %do.body.i36, label %if.then.i33

if.then.i33:                                      ; preds = %snd_sof_dsp_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  %add8 = add nuw nsw i32 %mul, 156
  %arrayidx.i31 = getelementptr %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21, i32 0
  %30 = ptrtoint ptr %arrayidx.i31 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i31, align 4
  %add.ptr.i32 = getelementptr i8, ptr %31, i32 %add8
  tail call void %29(ptr noundef %sdev, ptr noundef %add.ptr.i32, i32 noundef 0) #5
  br label %snd_sof_dsp_write.exit38

do.body.i36:                                      ; preds = %snd_sof_dsp_write.exit
  %call.i34 = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_dsp_write._rs, ptr noundef nonnull @__func__.snd_sof_dsp_write) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34)
  %tobool6.not.i35 = icmp eq i32 %call.i34, 0
  br i1 %tobool6.not.i35, label %do.body.i36.snd_sof_dsp_write.exit38_crit_edge, label %do.end.i37

do.body.i36.snd_sof_dsp_write.exit38_crit_edge:   ; preds = %do.body.i36
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_sof_dsp_write.exit38

do.end.i37:                                       ; preds = %do.body.i36
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.snd_sof_dsp_write) #8
  br label %snd_sof_dsp_write.exit38

snd_sof_dsp_write.exit38:                         ; preds = %do.end.i37, %do.body.i36.snd_sof_dsp_write.exit38_crit_edge, %if.then.i33
  %34 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdata.i, align 4
  %desc.i40 = getelementptr inbounds %struct.snd_sof_pdata, ptr %35, i32 0, i32 6
  %36 = ptrtoint ptr %desc.i40 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %desc.i40, align 4
  %ops.i41 = getelementptr inbounds %struct.sof_dev_desc, ptr %37, i32 0, i32 14
  %38 = ptrtoint ptr %ops.i41 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops.i41, align 4
  %write.i42 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %39, i32 0, i32 8
  %40 = ptrtoint ptr %write.i42 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write.i42, align 4
  %tobool.not.i43 = icmp eq ptr %41, null
  br i1 %tobool.not.i43, label %do.body.i49, label %if.then.i46

if.then.i46:                                      ; preds = %snd_sof_dsp_write.exit38
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i44 = getelementptr %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21, i32 0
  %42 = ptrtoint ptr %arrayidx.i44 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i44, align 4
  %add.ptr.i45 = getelementptr i8, ptr %43, i32 %add
  tail call void %41(ptr noundef %sdev, ptr noundef %add.ptr.i45, i32 noundef 0) #5
  br label %snd_sof_dsp_write.exit51

do.body.i49:                                      ; preds = %snd_sof_dsp_write.exit38
  %call.i47 = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_dsp_write._rs, ptr noundef nonnull @__func__.snd_sof_dsp_write) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47)
  %tobool6.not.i48 = icmp eq i32 %call.i47, 0
  br i1 %tobool6.not.i48, label %do.body.i49.snd_sof_dsp_write.exit51_crit_edge, label %do.end.i50

do.body.i49.snd_sof_dsp_write.exit51_crit_edge:   ; preds = %do.body.i49
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_sof_dsp_write.exit51

do.end.i50:                                       ; preds = %do.body.i49
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.snd_sof_dsp_write) #8
  br label %snd_sof_dsp_write.exit51

snd_sof_dsp_write.exit51:                         ; preds = %do.end.i50, %do.body.i49.snd_sof_dsp_write.exit51_crit_edge, %if.then.i46
  tail call void @snd_dma_free_pages(ptr noundef %dmab) #5
  %area = getelementptr inbounds %struct.snd_dma_buffer, ptr %dmab, i32 0, i32 1
  %46 = ptrtoint ptr %area to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %area, align 4
  %bufsize = getelementptr inbounds %struct.hdac_stream, ptr %stream, i32 0, i32 4
  %47 = ptrtoint ptr %bufsize to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %bufsize, align 4
  %format_val = getelementptr inbounds %struct.hdac_stream, ptr %stream, i32 0, i32 12
  %48 = ptrtoint ptr %format_val to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %format_val, align 4
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cl_dsp_init(ptr noundef %sdev, i32 noundef %stream_tag) unnamed_addr #0 align 64 {
entry:
  %mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %hw_pdata = getelementptr inbounds %struct.snd_sof_pdata, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %hw_pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_pdata, align 4
  %desc = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #5
  %host_managed_cores_mask = getelementptr inbounds %struct.sof_intel_dsp_desc, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %host_managed_cores_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %host_managed_cores_mask, align 4
  %call = tail call i32 @hda_dsp_enable_core(ptr noundef %sdev, i32 noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %ssp_count = getelementptr inbounds %struct.sof_intel_dsp_desc, ptr %5, i32 0, i32 9
  %8 = ptrtoint ptr %ssp_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ssp_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp4389 = icmp sgt i32 %9, 0
  br i1 %cmp4389, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %ssp_base_offset = getelementptr inbounds %struct.sof_intel_dsp_desc, ptr %5, i32 0, i32 10
  br label %for.body

if.then:                                          ; preds = %entry
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp1 = icmp eq i32 %11, 3
  br i1 %cmp1, label %do.end, label %if.then.err_crit_edge

if.then.err_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.51) #8
  br label %err

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0390 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %14 = ptrtoint ptr %ssp_base_offset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ssp_base_offset, align 4
  %mul = shl i32 %i.0390, 12
  %add = or i32 %mul, 4
  %add5 = add i32 %add, %15
  %call6 = tail call zeroext i1 @snd_sof_dsp_update_bits_unlocked(ptr noundef %sdev, i32 noundef 4, i32 noundef %add5, i32 noundef 50331648, i32 noundef 50331648) #5
  %inc = add nuw nsw i32 %i.0390, 1
  %16 = ptrtoint ptr %ssp_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ssp_count, align 4
  %cmp4 = icmp slt i32 %inc, %17
  br i1 %cmp4, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %18 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdata, align 4
  %desc.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %desc.i, align 4
  %ops.i = getelementptr inbounds %struct.sof_dev_desc, ptr %21, i32 0, i32 14
  %22 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops.i, align 4
  %write.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write.i, align 4
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %ipc_req_mask = getelementptr inbounds %struct.sof_intel_dsp_desc, ptr %5, i32 0, i32 4
  %26 = ptrtoint ptr %ipc_req_mask to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ipc_req_mask, align 4
  %sub = shl i32 %stream_tag, 9
  %shl = add i32 %sub, -512
  %or = or i32 %shl, %27
  %or7 = or i32 %or, 16793600
  %ipc_req = getelementptr inbounds %struct.sof_intel_dsp_desc, ptr %5, i32 0, i32 3
  %28 = ptrtoint ptr %ipc_req to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ipc_req, align 4
  %arrayidx.i = getelementptr %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21, i32 4
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %31, i32 %29
  tail call void %25(ptr noundef %sdev, ptr noundef %add.ptr.i, i32 noundef %or7) #5
  br label %snd_sof_dsp_write.exit

do.body.i:                                        ; preds = %for.end
  %call.i = tail call i32 @___ratelimit(ptr noundef nonnull @snd_sof_dsp_write._rs, ptr noundef nonnull @__func__.snd_sof_dsp_write) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool6.not.i, label %do.body.i.snd_sof_dsp_write.exit_crit_edge, label %do.end.i

do.body.i.snd_sof_dsp_write.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_sof_dsp_write.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.snd_sof_dsp_write) #8
  br label %snd_sof_dsp_write.exit

snd_sof_dsp_write.exit:                           ; preds = %do.end.i, %do.body.i.snd_sof_dsp_write.exit_crit_edge, %if.then.i
  %call8 = tail call i32 @hda_dsp_core_run(ptr noundef %sdev, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end19

if.then10:                                        ; preds = %snd_sof_dsp_write.exit
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %35)
  %cmp12 = icmp eq i32 %35, 3
  br i1 %cmp12, label %do.end16, label %if.then10.err_crit_edge

if.then10.err_crit_edge:                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

do.end16:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.54, i32 noundef %call8) #8
  br label %err

if.end19:                                         ; preds = %snd_sof_dsp_write.exit
  %call20 = tail call i64 @ktime_get() #5
  %add.i = add i64 %call20, 500000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 135) #5
  %ipc_ack = getelementptr inbounds %struct.sof_intel_dsp_desc, ptr %5, i32 0, i32 5
  %arrayidx.i329 = getelementptr %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21, i32 4
  %ipc_ack_mask = getelementptr inbounds %struct.sof_intel_dsp_desc, ptr %5, i32 0, i32 6
  br label %for.cond34

for.cond34:                                       ; preds = %if.then77, %if.end19
  %38 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdata, align 4
  %desc.i326 = getelementptr inbounds %struct.snd_sof_pdata, ptr %39, i32 0, i32 6
  %40 = ptrtoint ptr %desc.i326 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %desc.i326, align 4
  %ops.i327 = getelementptr inbounds %struct.sof_dev_desc, ptr %41, i32 0, i32 14
  %42 = ptrtoint ptr %ops.i327 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ops.i327, align 4
  %read.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %43, i32 0, i32 9
  %44 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %read.i, align 4
  %tobool.not.i328 = icmp eq ptr %45, null
  br i1 %tobool.not.i328, label %do.end.i333, label %if.then.i332

if.then.i332:                                     ; preds = %for.cond34
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %ipc_ack to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ipc_ack, align 4
  %48 = ptrtoint ptr %arrayidx.i329 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i329, align 4
  %add.ptr.i330 = getelementptr i8, ptr %49, i32 %47
  %call.i331 = tail call i32 %45(ptr noundef %sdev, ptr noundef %add.ptr.i330) #5
  br label %snd_sof_dsp_read.exit

do.end.i333:                                      ; preds = %for.cond34
  call void @__sanitizer_cov_trace_pc() #7
  %50 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.68) #8
  br label %snd_sof_dsp_read.exit

snd_sof_dsp_read.exit:                            ; preds = %do.end.i333, %if.then.i332
  %retval.0.i334 = phi i32 [ %call.i331, %if.then.i332 ], [ -524, %do.end.i333 ]
  %52 = ptrtoint ptr %ipc_ack_mask to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ipc_ack_mask, align 4
  %and = and i32 %53, %retval.0.i334
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %53)
  %cmp37 = icmp eq i32 %and, %53
  br i1 %cmp37, label %do.body39, label %land.lhs.true

do.body39:                                        ; preds = %snd_sof_dsp_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cl_dsp_init.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cl_dsp_init, %if.then43)) #5
          to label %for.end80 [label %if.then43], !srcloc !152

if.then43:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #7
  %54 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sdev, align 4
  %56 = ptrtoint ptr %ipc_ack to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ipc_ack, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cl_dsp_init.__UNIQUE_ID_ddebug247, ptr noundef %55, ptr noundef nonnull @.str.56, i32 noundef %57, i32 noundef %retval.0.i334) #5
  br label %for.end80

land.lhs.true:                                    ; preds = %snd_sof_dsp_read.exit
  %call51 = tail call i64 @ktime_get() #5
  %cmp3.i = icmp sgt i64 %call51, %add.i
  br i1 %cmp3.i, label %if.then54, label %if.then77

if.then54:                                        ; preds = %land.lhs.true
  %58 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pdata, align 4
  %desc.i337 = getelementptr inbounds %struct.snd_sof_pdata, ptr %59, i32 0, i32 6
  %60 = ptrtoint ptr %desc.i337 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %desc.i337, align 4
  %ops.i338 = getelementptr inbounds %struct.sof_dev_desc, ptr %61, i32 0, i32 14
  %62 = ptrtoint ptr %ops.i338 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ops.i338, align 4
  %read.i339 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %63, i32 0, i32 9
  %64 = ptrtoint ptr %read.i339 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %read.i339, align 4
  %tobool.not.i340 = icmp eq ptr %65, null
  br i1 %tobool.not.i340, label %do.end.i345, label %if.then.i344

if.then.i344:                                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #7
  %66 = ptrtoint ptr %ipc_ack to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ipc_ack, align 4
  %68 = ptrtoint ptr %arrayidx.i329 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx.i329, align 4
  %add.ptr.i342 = getelementptr i8, ptr %69, i32 %67
  %call.i343 = tail call i32 %65(ptr noundef %sdev, ptr noundef %add.ptr.i342) #5
  br label %snd_sof_dsp_read.exit347

do.end.i345:                                      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #7
  %70 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.68) #8
  br label %snd_sof_dsp_read.exit347

snd_sof_dsp_read.exit347:                         ; preds = %do.end.i345, %if.then.i344
  %retval.0.i346 = phi i32 [ %call.i343, %if.then.i344 ], [ -524, %do.end.i345 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cl_dsp_init.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cl_dsp_init, %if.then69)) #5
          to label %for.end80 [label %if.then69], !srcloc !152

if.then69:                                        ; preds = %snd_sof_dsp_read.exit347
  call void @__sanitizer_cov_trace_pc() #7
  %72 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %sdev, align 4
  %74 = ptrtoint ptr %ipc_ack to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %ipc_ack, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cl_dsp_init.__UNIQUE_ID_ddebug248, ptr noundef %73, ptr noundef nonnull @.str.57, i32 noundef %75, i32 noundef %retval.0.i346) #5
  br label %for.end80

if.then77:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usleep_range_state(i32 noundef 126, i32 noundef 500, i32 noundef 2) #5
  br label %for.cond34

for.end80:                                        ; preds = %if.then69, %snd_sof_dsp_read.exit347, %if.then43, %do.body39
  %status.0 = phi i32 [ %retval.0.i334, %if.then43 ], [ %retval.0.i346, %if.then69 ], [ %retval.0.i334, %do.body39 ], [ %retval.0.i346, %snd_sof_dsp_read.exit347 ]
  %76 = ptrtoint ptr %ipc_ack_mask to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %ipc_ack_mask, align 4
  %and83 = and i32 %77, %status.0
  call void @__sanitizer_cov_trace_cmp4(i32 %and83, i32 %77)
  %cmp85 = icmp eq i32 %and83, %77
  br i1 %cmp85, label %if.end96, label %if.then87

if.then87:                                        ; preds = %for.end80
  %78 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %79)
  %cmp89 = icmp eq i32 %79, 3
  br i1 %cmp89, label %do.end93, label %if.then87.err_crit_edge

if.then87.err_crit_edge:                          ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

do.end93:                                         ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #7
  %80 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.52) #8
  br label %err

if.end96:                                         ; preds = %for.end80
  %82 = ptrtoint ptr %ipc_ack to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %ipc_ack, align 4
  tail call void @snd_sof_dsp_update_bits_forced(ptr noundef %sdev, i32 noundef 4, i32 noundef %83, i32 noundef %77, i32 noundef %77) #5
  %84 = ptrtoint ptr %host_managed_cores_mask to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %host_managed_cores_mask, align 4
  %init_core_mask = getelementptr inbounds %struct.sof_intel_dsp_desc, ptr %5, i32 0, i32 2
  %86 = ptrtoint ptr %init_core_mask to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %init_core_mask, align 4
  %neg = xor i32 %87, -1
  %and101 = and i32 %85, %neg
  %call102 = tail call i32 @hda_dsp_core_reset_power_down(ptr noundef %sdev, i32 noundef %and101) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %cmp103 = icmp slt i32 %call102, 0
  br i1 %cmp103, label %if.then104, label %if.end113

if.then104:                                       ; preds = %if.end96
  %88 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %89)
  %cmp106 = icmp eq i32 %89, 3
  br i1 %cmp106, label %do.end110, label %if.then104.err_crit_edge

if.then104.err_crit_edge:                         ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

do.end110:                                        ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #7
  %90 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %91, ptr noundef nonnull @.str.62) #8
  br label %err

if.end113:                                        ; preds = %if.end96
  tail call void @hda_dsp_ipc_int_enable(ptr noundef %sdev) #5
  %rom_init_timeout = getelementptr inbounds %struct.sof_intel_dsp_desc, ptr %5, i32 0, i32 8
  %92 = ptrtoint ptr %rom_init_timeout to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %rom_init_timeout, align 4
  %mul115 = mul i32 %93, 1000
  %conv = sext i32 %mul115 to i64
  %call118 = tail call i64 @ktime_get() #5
  %mul.i = mul nsw i64 %conv, 1000
  %add.i348 = add i64 %mul.i, %call118
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 171) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul115)
  %tobool157.not = icmp eq i32 %mul115, 0
  br label %for.cond133

for.cond133:                                      ; preds = %if.then184, %if.end113
  %94 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %pdata, align 4
  %desc.i350 = getelementptr inbounds %struct.snd_sof_pdata, ptr %95, i32 0, i32 6
  %96 = ptrtoint ptr %desc.i350 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %desc.i350, align 4
  %ops.i351 = getelementptr inbounds %struct.sof_dev_desc, ptr %97, i32 0, i32 14
  %98 = ptrtoint ptr %ops.i351 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ops.i351, align 4
  %read.i352 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %99, i32 0, i32 9
  %100 = ptrtoint ptr %read.i352 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %read.i352, align 4
  %tobool.not.i353 = icmp eq ptr %101, null
  br i1 %tobool.not.i353, label %snd_sof_dsp_read.exit360.thread, label %snd_sof_dsp_read.exit360

snd_sof_dsp_read.exit360.thread:                  ; preds = %for.cond133
  call void @__sanitizer_cov_trace_pc() #7
  %102 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %103, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.68) #8
  br label %if.end156

snd_sof_dsp_read.exit360:                         ; preds = %for.cond133
  %104 = ptrtoint ptr %arrayidx.i329 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx.i329, align 4
  %add.ptr.i355 = getelementptr i8, ptr %105, i32 524288
  %call.i356 = tail call i32 %101(ptr noundef %sdev, ptr noundef %add.ptr.i355) #5
  %and135 = and i32 %call.i356, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and135)
  %cmp136 = icmp eq i32 %and135, 1
  br i1 %cmp136, label %do.body139, label %snd_sof_dsp_read.exit360.if.end156_crit_edge

snd_sof_dsp_read.exit360.if.end156_crit_edge:     ; preds = %snd_sof_dsp_read.exit360
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end156

do.body139:                                       ; preds = %snd_sof_dsp_read.exit360
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cl_dsp_init.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cl_dsp_init, %if.then151)) #5
          to label %for.end188 [label %if.then151], !srcloc !152

if.then151:                                       ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #7
  %106 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cl_dsp_init.__UNIQUE_ID_ddebug249, ptr noundef %107, ptr noundef nonnull @.str.56, i32 noundef 524288, i32 noundef %call.i356) #5
  br label %for.end188

if.end156:                                        ; preds = %snd_sof_dsp_read.exit360.if.end156_crit_edge, %snd_sof_dsp_read.exit360.thread
  br i1 %tobool157.not, label %if.end156.if.then184_crit_edge, label %land.lhs.true158

if.end156.if.then184_crit_edge:                   ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then184

land.lhs.true158:                                 ; preds = %if.end156
  %call159 = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call159, i64 %add.i348)
  %cmp3.i362 = icmp sgt i64 %call159, %add.i348
  br i1 %cmp3.i362, label %if.then163, label %land.lhs.true158.if.then184_crit_edge

land.lhs.true158.if.then184_crit_edge:            ; preds = %land.lhs.true158
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then184

if.then163:                                       ; preds = %land.lhs.true158
  %108 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %pdata, align 4
  %desc.i366 = getelementptr inbounds %struct.snd_sof_pdata, ptr %109, i32 0, i32 6
  %110 = ptrtoint ptr %desc.i366 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %desc.i366, align 4
  %ops.i367 = getelementptr inbounds %struct.sof_dev_desc, ptr %111, i32 0, i32 14
  %112 = ptrtoint ptr %ops.i367 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %ops.i367, align 4
  %read.i368 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %113, i32 0, i32 9
  %114 = ptrtoint ptr %read.i368 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %read.i368, align 4
  %tobool.not.i369 = icmp eq ptr %115, null
  br i1 %tobool.not.i369, label %do.end.i374, label %if.then.i373

if.then.i373:                                     ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #7
  %116 = ptrtoint ptr %arrayidx.i329 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %arrayidx.i329, align 4
  %add.ptr.i371 = getelementptr i8, ptr %117, i32 524288
  %call.i372 = tail call i32 %115(ptr noundef %sdev, ptr noundef %add.ptr.i371) #5
  br label %snd_sof_dsp_read.exit376

do.end.i374:                                      ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #7
  %118 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %119, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.68) #8
  br label %snd_sof_dsp_read.exit376

snd_sof_dsp_read.exit376:                         ; preds = %do.end.i374, %if.then.i373
  %retval.0.i375 = phi i32 [ %call.i372, %if.then.i373 ], [ -524, %do.end.i374 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cl_dsp_init.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cl_dsp_init, %if.then177)) #5
          to label %for.end188 [label %if.then177], !srcloc !152

if.then177:                                       ; preds = %snd_sof_dsp_read.exit376
  call void @__sanitizer_cov_trace_pc() #7
  %120 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cl_dsp_init.__UNIQUE_ID_ddebug250, ptr noundef %121, ptr noundef nonnull @.str.57, i32 noundef 524288, i32 noundef %retval.0.i375) #5
  br label %for.end188

if.then184:                                       ; preds = %land.lhs.true158.if.then184_crit_edge, %if.end156.if.then184_crit_edge
  tail call void @usleep_range_state(i32 noundef 126, i32 noundef 500, i32 noundef 2) #5
  br label %for.cond133

for.end188:                                       ; preds = %if.then177, %snd_sof_dsp_read.exit376, %if.then151, %do.body139
  %status.1 = phi i32 [ %call.i356, %if.then151 ], [ %retval.0.i375, %if.then177 ], [ %call.i356, %do.body139 ], [ %retval.0.i375, %snd_sof_dsp_read.exit376 ]
  %and190 = and i32 %status.1, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and190)
  %cmp191 = icmp eq i32 %and190, 1
  br i1 %cmp191, label %if.then195, label %if.end209

if.then195:                                       ; preds = %for.end188
  %122 = ptrtoint ptr %init_core_mask to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %init_core_mask, align 4
  %enabled_cores_mask = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 41
  %124 = ptrtoint ptr %enabled_cores_mask to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %enabled_cores_mask, align 4
  %or197 = or i32 %125, %123
  store i32 %or197, ptr %enabled_cores_mask, align 4
  %126 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %or197, ptr %mask, align 4
  %call199 = call i32 @_find_next_bit_be(ptr noundef nonnull %mask, i32 noundef 8, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call199)
  %cmp201392 = icmp ult i32 %call199, 8
  br i1 %cmp201392, label %if.then195.for.body203_crit_edge, label %if.then195.cleanup_crit_edge

if.then195.cleanup_crit_edge:                     ; preds = %if.then195
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then195.for.body203_crit_edge:                 ; preds = %if.then195
  br label %for.body203

for.body203:                                      ; preds = %for.body203.for.body203_crit_edge, %if.then195.for.body203_crit_edge
  %j.0393 = phi i32 [ %call207, %for.body203.for.body203_crit_edge ], [ %call199, %if.then195.for.body203_crit_edge ]
  %arrayidx = getelementptr %struct.snd_sof_dev, ptr %sdev, i32 0, i32 57, i32 %j.0393
  %127 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx, align 4
  %inc204 = add i32 %128, 1
  store i32 %inc204, ptr %arrayidx, align 4
  %add206 = add nuw nsw i32 %j.0393, 1
  %call207 = call i32 @_find_next_bit_be(ptr noundef nonnull %mask, i32 noundef 8, i32 noundef %add206) #5
  %cmp201 = icmp ult i32 %call207, 8
  br i1 %cmp201, label %for.body203.for.body203_crit_edge, label %for.body203.cleanup_crit_edge

for.body203.cleanup_crit_edge:                    ; preds = %for.body203
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body203.for.body203_crit_edge:                ; preds = %for.body203
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body203

if.end209:                                        ; preds = %for.end188
  %129 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %130)
  %cmp211 = icmp eq i32 %130, 3
  br i1 %cmp211, label %do.end216, label %if.end209.err_crit_edge

if.end209.err_crit_edge:                          ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

do.end216:                                        ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #7
  %131 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %132, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.52) #8
  br label %err

err:                                              ; preds = %do.end216, %if.end209.err_crit_edge, %do.end110, %if.then104.err_crit_edge, %do.end93, %if.then87.err_crit_edge, %do.end16, %if.then10.err_crit_edge, %do.end, %if.then.err_crit_edge
  %ret.0 = phi i32 [ %call, %do.end ], [ %call, %if.then.err_crit_edge ], [ -110, %do.end93 ], [ -110, %if.then87.err_crit_edge ], [ %call102, %do.end110 ], [ %call102, %if.then104.err_crit_edge ], [ -110, %do.end216 ], [ -110, %if.end209.err_crit_edge ], [ -5, %do.end16 ], [ -5, %if.then10.err_crit_edge ]
  %133 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %134)
  %cmp220 = icmp eq i32 %134, 3
  %spec.select = select i1 %cmp220, i32 10, i32 26
  %call226 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.67, i32 noundef %134, i32 noundef 3) #5
  tail call void @snd_sof_dsp_dbg_dump(ptr noundef %sdev, ptr noundef %call226, i32 noundef %spec.select) #5
  %135 = ptrtoint ptr %host_managed_cores_mask to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %host_managed_cores_mask, align 4
  %call228 = tail call i32 @hda_dsp_core_reset_power_down(ptr noundef %sdev, i32 noundef %136) #5
  tail call void @kfree(ptr noundef %call226) #5
  br label %cleanup

cleanup:                                          ; preds = %err, %for.body203.cleanup_crit_edge, %if.then195.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %if.then195.cleanup_crit_edge ], [ 0, %for.body203.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cl_copy_fw(ptr noundef %sdev, ptr noundef %stream) unnamed_addr #0 align 64 {
if.end:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %index.i = getelementptr inbounds %struct.hdac_stream, ptr %stream, i32 0, i32 14
  %0 = ptrtoint ptr %index.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index.i, align 1
  %conv.i = zext i8 %1 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 5
  %add.i = add nuw nsw i32 %mul.i, 128
  %shl.i = shl nuw i32 1, %conv.i
  %call.i = tail call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %sdev, i32 noundef 0, i32 noundef 32, i32 noundef %shl.i, i32 noundef %shl.i) #5
  %call7.i = tail call zeroext i1 @snd_sof_dsp_update_bits(ptr noundef %sdev, i32 noundef 0, i32 noundef %add.i, i32 noundef 30, i32 noundef 30) #5
  %running.i = getelementptr inbounds %struct.hdac_stream, ptr %stream, i32 0, i32 16
  %2 = ptrtoint ptr %running.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %running.i, align 8
  %bf.set.i = or i8 %bf.load.i, 64
  store i8 %bf.set.i, ptr %running.i, align 8
  %call1 = tail call i64 @ktime_get() #5
  %add.i103 = add i64 %call1, 3000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 277) #5
  %pdata.i = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %arrayidx.i = getelementptr %struct.snd_sof_dev, ptr %sdev, i32 0, i32 21, i32 4
  br label %for.cond

for.cond:                                         ; preds = %if.then53, %if.end
  %3 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdata.i, align 4
  %desc.i = getelementptr inbounds %struct.snd_sof_pdata, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %desc.i, align 4
  %ops.i = getelementptr inbounds %struct.sof_dev_desc, ptr %6, i32 0, i32 14
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i, align 4
  %read.i = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %snd_sof_dsp_read.exit.thread, label %snd_sof_dsp_read.exit

snd_sof_dsp_read.exit.thread:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.68) #8
  br label %land.lhs.true

snd_sof_dsp_read.exit:                            ; preds = %for.cond
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 524288
  %call.i104 = tail call i32 %10(ptr noundef %sdev, ptr noundef %add.ptr.i) #5
  %and = and i32 %call.i104, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and)
  %cmp16 = icmp eq i32 %and, 5
  br i1 %cmp16, label %do.body18, label %snd_sof_dsp_read.exit.land.lhs.true_crit_edge

snd_sof_dsp_read.exit.land.lhs.true_crit_edge:    ; preds = %snd_sof_dsp_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

do.body18:                                        ; preds = %snd_sof_dsp_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cl_copy_fw.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cl_copy_fw, %if.then22)) #5
          to label %for.end [label %if.then22], !srcloc !152

if.then22:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cl_copy_fw.__UNIQUE_ID_ddebug251, ptr noundef %16, ptr noundef nonnull @.str.56, i32 noundef 524288, i32 noundef %call.i104) #5
  br label %for.end

land.lhs.true:                                    ; preds = %snd_sof_dsp_read.exit.land.lhs.true_crit_edge, %snd_sof_dsp_read.exit.thread
  %call29 = tail call i64 @ktime_get() #5
  %cmp3.i = icmp sgt i64 %call29, %add.i103
  br i1 %cmp3.i, label %if.then32, label %if.then53

if.then32:                                        ; preds = %land.lhs.true
  %17 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdata.i, align 4
  %desc.i108 = getelementptr inbounds %struct.snd_sof_pdata, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %desc.i108 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %desc.i108, align 4
  %ops.i109 = getelementptr inbounds %struct.sof_dev_desc, ptr %20, i32 0, i32 14
  %21 = ptrtoint ptr %ops.i109 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops.i109, align 4
  %read.i110 = getelementptr inbounds %struct.snd_sof_dsp_ops, ptr %22, i32 0, i32 9
  %23 = ptrtoint ptr %read.i110 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read.i110, align 4
  %tobool.not.i111 = icmp eq ptr %24, null
  br i1 %tobool.not.i111, label %do.end.i116, label %if.then.i115

if.then.i115:                                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i113 = getelementptr i8, ptr %26, i32 524288
  %call.i114 = tail call i32 %24(ptr noundef %sdev, ptr noundef %add.ptr.i113) #5
  br label %snd_sof_dsp_read.exit118

do.end.i116:                                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.68) #8
  br label %snd_sof_dsp_read.exit118

snd_sof_dsp_read.exit118:                         ; preds = %do.end.i116, %if.then.i115
  %retval.0.i117 = phi i32 [ %call.i114, %if.then.i115 ], [ -524, %do.end.i116 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cl_copy_fw.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cl_copy_fw, %if.then46)) #5
          to label %for.end [label %if.then46], !srcloc !152

if.then46:                                        ; preds = %snd_sof_dsp_read.exit118
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cl_copy_fw.__UNIQUE_ID_ddebug252, ptr noundef %30, ptr noundef nonnull @.str.57, i32 noundef 524288, i32 noundef %retval.0.i117) #5
  br label %for.end

if.then53:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usleep_range_state(i32 noundef 126, i32 noundef 500, i32 noundef 2) #5
  br label %for.cond

for.end:                                          ; preds = %if.then46, %snd_sof_dsp_read.exit118, %if.then22, %do.body18
  %reg.0 = phi i32 [ %call.i104, %if.then22 ], [ %retval.0.i117, %if.then46 ], [ %call.i104, %do.body18 ], [ %retval.0.i117, %snd_sof_dsp_read.exit118 ]
  %and56 = and i32 %reg.0, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and56)
  %cmp57 = icmp eq i32 %and56, 5
  %cond = select i1 %cmp57, i32 0, i32 -110
  br i1 %cmp57, label %for.end.if.end64_crit_edge, label %do.end62

for.end.if.end64_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64

do.end62:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.70) #8
  br label %if.end64

if.end64:                                         ; preds = %do.end62, %for.end.if.end64_crit_edge
  %call8.i = tail call i32 @hda_dsp_stream_trigger(ptr noundef %sdev, ptr noundef %stream, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp66 = icmp slt i32 %call8.i, 0
  br i1 %cmp66, label %do.end70, label %if.end64.cleanup_crit_edge

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end70:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.74) #8
  %spec.select = select i1 %cmp57, i32 %call8.i, i32 -110
  br label %cleanup

cleanup:                                          ; preds = %do.end70, %if.end64.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end64.cleanup_crit_edge ], [ %spec.select, %do.end70 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_sof_dsp_dbg_dump(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @snd_sof_dsp_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hda_dsp_pre_fw_run(ptr noundef %sdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @hda_dsp_ctrl_clock_power_gating(ptr noundef %sdev, i1 noundef zeroext false) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_ctrl_clock_power_gating(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hda_dsp_post_fw_run(ptr noundef %sdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call3 = tail call i32 @hda_dsp_ctrl_clock_power_gating(ptr noundef %sdev, i1 noundef zeroext true) #5
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hda_dsp_ext_man_get_cavs_config_data(ptr nocapture noundef readonly %sdev, ptr nocapture noundef readonly %hdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.sof_ext_man_elem_header, ptr %hdr, i32 0, i32 1
  %0 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %size, align 1
  %sub = add i32 %1, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub)
  %cmp = icmp ult i32 %sub, 8
  br i1 %cmp, label %do.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %div41 = lshr i32 %sub, 3
  %pdata = getelementptr inbounds %struct.snd_sof_dev, ptr %sdev, i32 0, i32 12
  %2 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata, align 4
  %hw_pdata = getelementptr inbounds %struct.snd_sof_pdata, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %hw_pdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_pdata, align 4
  %clk_config_lpro = getelementptr inbounds %struct.sof_intel_hda_dev, ptr %5, i32 0, i32 11
  %umax = call i32 @llvm.umax.i32(i32 %div41, i32 1)
  br label %for.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.28, i32 noundef 0) #8
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.044 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sof_ext_man_cavs_config_data, ptr %hdr, i32 0, i32 1, i32 %i.044
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %arrayidx, align 1
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %do.end20 [
    i32 0, label %for.body.for.inc_crit_edge
    i32 1, label %sw.bb
    i32 2, label %for.body.for.inc_crit_edge46
    i32 3, label %for.body.for.inc_crit_edge47
  ]

for.body.for.inc_crit_edge47:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.body.for.inc_crit_edge46:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %value = getelementptr %struct.sof_ext_man_cavs_config_data, ptr %hdr, i32 0, i32 1, i32 %i.044, i32 1
  %11 = ptrtoint ptr %value to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %value, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool = icmp ne i32 %12, 0
  %frombool = zext i1 %tobool to i8
  %13 = ptrtoint ptr %clk_config_lpro to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %frombool, ptr %clk_config_lpro, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hda_dsp_ext_man_get_cavs_config_data.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hda_dsp_ext_man_get_cavs_config_data, %if.then10)) #5
          to label %for.inc [label %if.then10], !srcloc !152

if.then10:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sdev, align 4
  %16 = ptrtoint ptr %clk_config_lpro to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %clk_config_lpro, align 4, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool13.not = icmp eq i8 %17, 0
  %cond = select i1 %tobool13.not, ptr @.str.32, ptr @.str.31
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hda_dsp_ext_man_get_cavs_config_data.__UNIQUE_ID_ddebug255, ptr noundef %15, ptr noundef nonnull @.str.30, ptr noundef nonnull %cond) #5
  br label %for.inc

do.end20:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sdev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.34, i32 noundef %9) #8
  br label %for.inc

for.inc:                                          ; preds = %do.end20, %if.then10, %sw.bb, %for.body.for.inc_crit_edge, %for.body.for.inc_crit_edge46, %for.body.for.inc_crit_edge47
  %inc = add nuw nsw i32 %i.044, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_aligned_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hda_dsp_stream_get(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_iccmax_stream_hw_params(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_stream_hw_params(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_stream_spib_config(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_stream_put(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_dma_free_pages(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dma_alloc_dir_pages(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hdac_aligned_write(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_enable_core(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @snd_sof_dsp_update_bits_unlocked(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_core_run(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_sof_dsp_update_bits_forced(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_core_reset_power_down(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hda_dsp_ipc_int_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hda_dsp_stream_trigger(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !40, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !86, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !100, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !116, !117, !118, !120, !122, !123, !124, !126, !127, !128, !129, !131, !132, !134, !135, !137, !138}
!llvm.module.flags = !{!139, !140, !141, !142, !143, !144, !145, !146}
!llvm.ident = !{!147}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/sof/intel/hda-loader.c", i32 313, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @hda_dsp_cl_boot_firmware_iccmax._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @hda_dsp_cl_boot_firmware_iccmax._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/sof/intel/hda-loader.c", i32 323, i32 3}
!10 = !{ptr @hda_dsp_cl_boot_firmware_iccmax._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @hda_dsp_cl_boot_firmware_iccmax._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/sof/intel/hda-loader.c", i32 335, i32 3}
!14 = !{ptr @hda_dsp_cl_boot_firmware_iccmax._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @hda_dsp_cl_boot_firmware_iccmax._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/sof/intel/hda-loader.c", i32 361, i32 3}
!18 = !{ptr @hda_dsp_cl_boot_firmware._entry, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @hda_dsp_cl_boot_firmware._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @hda_dsp_cl_boot_firmware.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../sound/soc/sof/intel/hda-loader.c", i32 369, i32 2}
!22 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../sound/soc/sof/intel/hda-loader.c", i32 375, i32 3}
!25 = !{ptr @hda_dsp_cl_boot_firmware._entry.13, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @hda_dsp_cl_boot_firmware._entry_ptr.15, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/soc/sof/intel/hda-loader.c", i32 384, i32 3}
!29 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @hda_dsp_cl_boot_firmware.__UNIQUE_ID_ddebug253, !28, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!31 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/soc/sof/intel/hda-loader.c", i32 396, i32 3}
!33 = !{ptr @hda_dsp_cl_boot_firmware._entry.18, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @hda_dsp_cl_boot_firmware._entry_ptr.20, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/sof/intel/hda-loader.c", i32 429, i32 3}
!37 = !{ptr @hda_dsp_cl_boot_firmware.__UNIQUE_ID_ddebug254, !36, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!38 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/sof/intel/hda-loader.c", i32 431, i32 30}
!40 = !{ptr @.str.24, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/sof/intel/hda-loader.c", i32 442, i32 3}
!42 = !{ptr @hda_dsp_cl_boot_firmware._entry.23, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @hda_dsp_cl_boot_firmware._entry_ptr.25, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.26, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/sof/intel/hda-loader.c", i32 478, i32 4}
!46 = !{ptr @.str.27, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @hda_dsp_post_fw_run._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @hda_dsp_post_fw_run._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.28, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/sof/intel/hda-loader.c", i32 502, i32 3}
!51 = !{ptr @.str.29, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @hda_dsp_ext_man_get_cavs_config_data._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @hda_dsp_ext_man_get_cavs_config_data._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.30, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/sof/intel/hda-loader.c", i32 513, i32 4}
!56 = !{ptr @hda_dsp_ext_man_get_cavs_config_data.__UNIQUE_ID_ddebug255, !55, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!57 = !{ptr @.str.31, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.32, !55, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.34, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/sof/intel/hda-loader.c", i32 521, i32 4}
!61 = !{ptr @.str.35, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @hda_dsp_ext_man_get_cavs_config_data._entry.33, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @hda_dsp_ext_man_get_cavs_config_data._entry_ptr.36, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.37, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/sof/intel/hda-loader.c", i32 40, i32 3}
!66 = !{ptr @.str.38, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @cl_stream_prepare._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @cl_stream_prepare._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.40, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/sof/intel/hda-loader.c", i32 49, i32 3}
!71 = !{ptr @cl_stream_prepare._entry.39, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @cl_stream_prepare._entry_ptr.41, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.43, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/soc/sof/intel/hda-loader.c", i32 60, i32 4}
!75 = !{ptr @cl_stream_prepare._entry.42, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @cl_stream_prepare._entry_ptr.44, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.46, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/soc/sof/intel/hda-loader.c", i32 66, i32 4}
!79 = !{ptr @cl_stream_prepare._entry.45, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @cl_stream_prepare._entry_ptr.47, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.48, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/sof/intel/../ops.h", i32 299, i32 2}
!83 = !{ptr @snd_sof_dsp_write._rs, !82, !"_rs", i1 false, i1 false}
!84 = !{ptr @__func__.snd_sof_dsp_write, !82, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.49, !82, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.50, !82, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @snd_sof_dsp_write._entry, !82, !"_entry", i1 false, i1 false}
!88 = !{ptr @snd_sof_dsp_write._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.51, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/soc/sof/intel/hda-loader.c", i32 100, i32 4}
!91 = !{ptr @.str.52, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @cl_dsp_init._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @cl_dsp_init._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.54, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/sof/intel/hda-loader.c", i32 123, i32 4}
!96 = !{ptr @cl_dsp_init._entry.53, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @cl_dsp_init._entry_ptr.55, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.56, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/soc/sof/intel/hda-loader.c", i32 130, i32 8}
!100 = !{ptr @cl_dsp_init.__UNIQUE_ID_ddebug247, !99, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!101 = !{ptr @.str.57, !99, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @cl_dsp_init.__UNIQUE_ID_ddebug248, !99, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!103 = !{ptr @.str.59, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/soc/sof/intel/hda-loader.c", i32 139, i32 4}
!105 = !{ptr @cl_dsp_init._entry.58, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @cl_dsp_init._entry_ptr.60, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.62, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/soc/sof/intel/hda-loader.c", i32 156, i32 4}
!109 = !{ptr @cl_dsp_init._entry.61, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @cl_dsp_init._entry_ptr.63, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @cl_dsp_init.__UNIQUE_ID_ddebug249, !112, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!112 = !{!"../sound/soc/sof/intel/hda-loader.c", i32 165, i32 8}
!113 = !{ptr @cl_dsp_init.__UNIQUE_ID_ddebug250, !112, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!114 = !{ptr @.str.65, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/sof/intel/hda-loader.c", i32 182, i32 3}
!116 = !{ptr @cl_dsp_init._entry.64, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @cl_dsp_init._entry_ptr.66, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.67, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/sof/intel/hda-loader.c", i32 193, i32 35}
!120 = !{ptr @.str.68, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/soc/sof/intel/../ops.h", i32 319, i32 2}
!122 = !{ptr @snd_sof_dsp_read._entry, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @snd_sof_dsp_read._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.69, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/soc/sof/intel/hda-loader.c", i32 268, i32 3}
!126 = !{ptr @.str.70, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @cl_copy_fw._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @cl_copy_fw._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @cl_copy_fw.__UNIQUE_ID_ddebug251, !130, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!130 = !{!"../sound/soc/sof/intel/hda-loader.c", i32 272, i32 11}
!131 = !{ptr @cl_copy_fw.__UNIQUE_ID_ddebug252, !130, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!132 = !{ptr @cl_copy_fw._entry.71, !133, !"_entry", i1 false, i1 false}
!133 = !{!"../sound/soc/sof/intel/hda-loader.c", i32 285, i32 3}
!134 = !{ptr @cl_copy_fw._entry_ptr.72, !133, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.74, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../sound/soc/sof/intel/hda-loader.c", i32 292, i32 3}
!137 = !{ptr @cl_copy_fw._entry.73, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @cl_copy_fw._entry_ptr.75, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{i32 1, !"wchar_size", i32 2}
!140 = !{i32 1, !"min_enum_size", i32 4}
!141 = !{i32 8, !"branch-target-enforcement", i32 0}
!142 = !{i32 8, !"sign-return-address", i32 0}
!143 = !{i32 8, !"sign-return-address-all", i32 0}
!144 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!145 = !{i32 7, !"uwtable", i32 1}
!146 = !{i32 7, !"frame-pointer", i32 2}
!147 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!148 = !{i64 4902649}
!149 = !{i64 2154307117}
!150 = !{i64 2154306122}
!151 = !{i64 4902254}
!152 = !{i64 2148193790, i64 2148193795, i64 2148193808, i64 2148193852, i64 2148193886, i64 2148193907}
!153 = !{i8 0, i8 2}
