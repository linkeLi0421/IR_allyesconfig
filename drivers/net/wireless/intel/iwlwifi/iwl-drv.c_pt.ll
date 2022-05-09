; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/iwl-drv.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/iwl-drv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.iwl_mod_params = type { i32, i32, i32, i8, i8, i32, i8, i32, i32, ptr, i32, i8, i8, i8, i8 }
%struct.iwlwifi_opmode_table = type { ptr, ptr, %struct.list_head }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.84 }
%union.anon.84 = type { ptr }
%struct.lock_class_key = type { %union.anon.5 }
%union.anon.5 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iwl_drv = type { %struct.list_head, %struct.iwl_fw, ptr, ptr, ptr, i32, [64 x i8], %struct.completion, ptr, ptr, ptr }
%struct.iwl_fw = type { i32, [64 x i8], [4 x %struct.fw_img], i32, ptr, %struct.iwl_ucode_capabilities, i8, i32, i32, i32, i32, i32, i32, [4 x %struct.iwl_tlv_calib_ctrl], i32, i8, i8, i32, [1 x %struct.iwl_fw_cipher_scheme], [64 x i8], %struct.iwl_fw_dbg, ptr, i32, [2 x %struct.iwl_dump_exclude], [2 x %struct.iwl_dump_exclude] }
%struct.fw_img = type { ptr, i32, i8, i32 }
%struct.iwl_ucode_capabilities = type { i32, i32, i32, i32, i32, i32, i32, [2 x i32], [4 x i32], ptr, i32 }
%struct.iwl_tlv_calib_ctrl = type { i32, i32 }
%struct.iwl_fw_cipher_scheme = type <{ i32, i8, i8, i8, i8, i8, i8, i8, i8, i8 }>
%struct.iwl_fw_dbg = type { ptr, i8, [32 x ptr], [17 x ptr], [17 x i32], ptr, i32, i32 }
%struct.iwl_dump_exclude = type { i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.iwl_trans = type { i8, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, [52 x i8], [3 x i32], i8, i8, i8, i8, i8, ptr, i32, i8, %struct.wait_queue_head, i8, i32, ptr, ptr, [50 x i8], ptr, %struct.lockdep_map, %struct.iwl_trans_debug, %struct.iwl_self_init_dram, i32, ptr, %struct.iwl_trans_txqs, [0 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.iwl_trans_debug = type { i8, i8, ptr, [32 x ptr], ptr, [2 x i32], i32, [2 x i32], [2 x i32], i32, i32, i32, [5 x %struct.iwl_fw_ini_allocation_tlv], [5 x %struct.iwl_fw_mon], %struct.iwl_dram_data, i8, i32, i64, [64 x ptr], %struct.list_head, [27 x %struct.iwl_dbg_tlv_time_point_data], %struct.list_head, i32, i32, i8, i32 }
%struct.iwl_fw_ini_allocation_tlv = type { %struct.iwl_fw_ini_header, i32, i32, i32, i32, i32 }
%struct.iwl_fw_ini_header = type { i32, i32 }
%struct.iwl_fw_mon = type { i32, ptr }
%struct.iwl_dram_data = type { i32, ptr, i32 }
%struct.iwl_dbg_tlv_time_point_data = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.iwl_self_init_dram = type { ptr, i32, ptr, i32 }
%struct.iwl_trans_txqs = type { [16 x i32], [16 x i32], [512 x ptr], ptr, i32, i8, i8, i8, ptr, %struct.anon.114, %struct.anon.115, %struct.iwl_dma_ptr }
%struct.anon.114 = type { i8, i8, i32 }
%struct.anon.115 = type { i8, i16, i8 }
%struct.iwl_dma_ptr = type { i32, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.iwl_cfg_trans_params = type { ptr, i32, i32, i32, i32, i16 }
%struct.iwl_cfg = type { %struct.iwl_cfg_trans_params, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i16, i16, [3 x i8], i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, %struct.iwl_fw_mon_regs, %struct.iwl_fw_mon_regs }
%struct.iwl_fw_mon_regs = type { %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg, %struct.iwl_fw_mon_reg }
%struct.iwl_fw_mon_reg = type { i32, i32 }
%struct.iwl_op_mode_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iwl_trans_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fw_desc = type { ptr, i32, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.iwl_ucode_header = type { i32, %union.anon.123 }
%union.anon.123 = type { %struct.anon.125 }
%struct.anon.125 = type { i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.fw_img_parsing = type { ptr, i32 }
%struct.fw_sec = type { ptr, i32, i32 }
%struct.iwl_tlv_ucode_header = type { i32, i32, [64 x i8], i32, i32, i64, [0 x i8] }
%struct.iwl_firmware_pieces = type { [4 x %struct.fw_img_parsing], i32, i32, i32, i32, i32, i32, i8, ptr, %union.anon.126, [32 x ptr], [32 x i32], [17 x ptr], [17 x i32], ptr, i32 }
%union.anon.126 = type { ptr }
%struct.iwl_ucode_tlv = type { i32, i32, [0 x i8] }
%struct.iwl_fw_cscheme_list = type { i8, [0 x %struct.iwl_fw_cipher_scheme] }
%struct.iwl_fw_dbg_dest_tlv = type <{ i8, i8, i8, i8, i32, i32, i32, i8, i8, [0 x %struct.iwl_fw_dbg_reg_op] }>
%struct.iwl_fw_dbg_reg_op = type { i8, [3 x i8], i32, i32 }
%struct.iwl_fw_dbg_dest_tlv_v1 = type <{ i8, i8, i8, i8, i32, i32, i32, i32, i8, i8, [0 x %struct.iwl_fw_dbg_reg_op] }>
%struct.iwl_fw_dbg_conf_tlv = type { i8, i8, i8, i8, %struct.iwl_fw_dbg_conf_hcmd }
%struct.iwl_fw_dbg_conf_hcmd = type { i8, i8, i16, [0 x i8] }
%struct.iwl_fw_dbg_mem_seg_tlv = type { i32, i32, i32 }
%struct.iwl_fw_ini_region_tlv = type { %struct.iwl_fw_ini_header, i32, i8, i8, i8, i8, [32 x i8], %union.anon.129, [0 x i32] }
%union.anon.129 = type { %struct.iwl_fw_ini_region_fifos }
%struct.iwl_fw_ini_region_fifos = type { [2 x i32], i32, i32 }
%struct.iwl_base_params = type { i32, i16, i16, i8, i16, i32, i8, i8 }

@__UNIQUE_ID_description348 = internal constant [60 x i8] c"iwlwifi.description=Intel(R) Wireless WiFi driver for Linux\00", section ".modinfo", align 1
@__UNIQUE_ID_file349 = internal constant [56 x i8] c"iwlwifi.file=drivers/net/wireless/intel/iwlwifi/iwlwifi\00", section ".modinfo", align 1
@__UNIQUE_ID_license350 = internal constant [20 x i8] c"iwlwifi.license=GPL\00", section ".modinfo", align 1
@iwl_dbgfs_root = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"trans\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Couldn't request the fw\0A\00", [39 x i8] zeroinitializer }, align 32
@iwlwifi_opmode_table_mtx = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.74, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @iwlwifi_opmode_table_mtx, i64 52), ptr getelementptr (i8, ptr @iwlwifi_opmode_table_mtx, i64 52) }, ptr @iwlwifi_opmode_table_mtx, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.75, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@iwlwifi_mod_params = dso_local global { %struct.iwl_mod_params, [52 x i8] } { %struct.iwl_mod_params { i32 0, i32 0, i32 0, i8 1, i8 1, i32 0, i8 0, i32 0, i32 0, ptr null, i32 3, i8 0, i8 0, i8 0, i8 1 }, [52 x i8] zeroinitializer }, align 32
@iwlwifi_opmode_table = internal global { [2 x %struct.iwlwifi_opmode_table], [32 x i8] } { [2 x %struct.iwlwifi_opmode_table] [%struct.iwlwifi_opmode_table { ptr @.str.76, ptr null, %struct.list_head zeroinitializer }, %struct.iwlwifi_opmode_table { ptr @.str.77, ptr null, %struct.list_head zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_iwlwifi__407_1883_iwl_drv_init6 = internal global ptr @iwl_drv_init, section ".initcall6.init", align 4
@__exitcall_iwl_drv_exit = internal global ptr @iwl_drv_exit, section ".exitcall.exit", align 4
@__param_str_debug = internal constant [14 x i8] c"iwlwifi.debug\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.84 { ptr getelementptr (i8, ptr @iwlwifi_mod_params, i64 28) } }, section "__param", align 4
@__UNIQUE_ID_debugtype408 = internal constant [28 x i8] c"iwlwifi.parmtype=debug:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_debug409 = internal constant [37 x i8] c"iwlwifi.parm=debug:debug output mask\00", section ".modinfo", align 1
@__param_str_swcrypto = internal constant [17 x i8] c"iwlwifi.swcrypto\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_swcrypto = internal constant %struct.kernel_param { ptr @__param_str_swcrypto, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.84 { ptr @iwlwifi_mod_params } }, section "__param", align 4
@__UNIQUE_ID_swcryptotype410 = internal constant [30 x i8] c"iwlwifi.parmtype=swcrypto:int\00", section ".modinfo", align 1
@__UNIQUE_ID_swcrypto411 = internal constant [70 x i8] c"iwlwifi.parm=swcrypto:using crypto in software (default 0 [hardware])\00", section ".modinfo", align 1
@__param_str_11n_disable = internal constant [20 x i8] c"iwlwifi.11n_disable\00", align 1
@__param_11n_disable = internal constant %struct.kernel_param { ptr @__param_str_11n_disable, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.84 { ptr getelementptr (i8, ptr @iwlwifi_mod_params, i64 4) } }, section "__param", align 4
@__UNIQUE_ID_11n_disabletype412 = internal constant [34 x i8] c"iwlwifi.parmtype=11n_disable:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_11n_disable413 = internal constant [123 x i8] c"iwlwifi.parm=11n_disable:disable 11n functionality, bitmap: 1: full, 2: disable agg TX, 4: disable agg RX, 8 enable agg TX\00", section ".modinfo", align 1
@__param_str_amsdu_size = internal constant [19 x i8] c"iwlwifi.amsdu_size\00", align 1
@__param_amsdu_size = internal constant %struct.kernel_param { ptr @__param_str_amsdu_size, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.84 { ptr getelementptr (i8, ptr @iwlwifi_mod_params, i64 8) } }, section "__param", align 4
@__UNIQUE_ID_amsdu_sizetype414 = internal constant [32 x i8] c"iwlwifi.parmtype=amsdu_size:int\00", section ".modinfo", align 1
@__UNIQUE_ID_amsdu_size415 = internal constant [161 x i8] c"iwlwifi.parm=amsdu_size:amsdu size 0: 12K for multi Rx queue devices, 2K for AX210 devices, 4K for other devices 1:4K 2:8K 3:12K (16K buffers) 4: 2K (default 0)\00", section ".modinfo", align 1
@__param_str_fw_restart = internal constant [19 x i8] c"iwlwifi.fw_restart\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@__param_fw_restart = internal constant %struct.kernel_param { ptr @__param_str_fw_restart, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.84 { ptr getelementptr (i8, ptr @iwlwifi_mod_params, i64 12) } }, section "__param", align 4
@__UNIQUE_ID_fw_restarttype416 = internal constant [33 x i8] c"iwlwifi.parmtype=fw_restart:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_fw_restart417 = internal constant [73 x i8] c"iwlwifi.parm=fw_restart:restart firmware in case of error (default true)\00", section ".modinfo", align 1
@__param_str_nvm_file = internal constant [17 x i8] c"iwlwifi.nvm_file\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@__param_nvm_file = internal constant %struct.kernel_param { ptr @__param_str_nvm_file, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.84 { ptr getelementptr (i8, ptr @iwlwifi_mod_params, i64 32) } }, section "__param", align 4
@__UNIQUE_ID_nvm_filetype418 = internal constant [32 x i8] c"iwlwifi.parmtype=nvm_file:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_nvm_file419 = internal constant [36 x i8] c"iwlwifi.parm=nvm_file:NVM file name\00", section ".modinfo", align 1
@__param_str_uapsd_disable = internal constant [22 x i8] c"iwlwifi.uapsd_disable\00", align 1
@__param_uapsd_disable = internal constant %struct.kernel_param { ptr @__param_str_uapsd_disable, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.84 { ptr getelementptr (i8, ptr @iwlwifi_mod_params, i64 36) } }, section "__param", align 4
@__UNIQUE_ID_uapsd_disabletype420 = internal constant [36 x i8] c"iwlwifi.parmtype=uapsd_disable:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_uapsd_disable421 = internal constant [97 x i8] c"iwlwifi.parm=uapsd_disable:disable U-APSD functionality bitmap 1: BSS 2: P2P Client (default: 3)\00", section ".modinfo", align 1
@__param_str_enable_ini = internal constant [19 x i8] c"iwlwifi.enable_ini\00", align 1
@__param_enable_ini = internal constant %struct.kernel_param { ptr @__param_str_enable_ini, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.84 { ptr getelementptr (i8, ptr @iwlwifi_mod_params, i64 43) } }, section "__param", align 4
@__UNIQUE_ID_enable_initype422 = internal constant [33 x i8] c"iwlwifi.parmtype=enable_ini:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable_ini423 = internal constant [84 x i8] c"iwlwifi.parm=enable_ini:Enable debug INI TLV FW debug infrastructure (default: true\00", section ".modinfo", align 1
@__param_str_bt_coex_active = internal constant [23 x i8] c"iwlwifi.bt_coex_active\00", align 1
@__param_bt_coex_active = internal constant %struct.kernel_param { ptr @__param_str_bt_coex_active, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.84 { ptr getelementptr (i8, ptr @iwlwifi_mod_params, i64 13) } }, section "__param", align 4
@__UNIQUE_ID_bt_coex_activetype424 = internal constant [37 x i8] c"iwlwifi.parmtype=bt_coex_active:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_bt_coex_active425 = internal constant [70 x i8] c"iwlwifi.parm=bt_coex_active:enable wifi/bt co-exist (default: enable)\00", section ".modinfo", align 1
@__param_str_led_mode = internal constant [17 x i8] c"iwlwifi.led_mode\00", align 1
@__param_led_mode = internal constant %struct.kernel_param { ptr @__param_str_led_mode, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.84 { ptr getelementptr (i8, ptr @iwlwifi_mod_params, i64 16) } }, section "__param", align 4
@__UNIQUE_ID_led_modetype426 = internal constant [30 x i8] c"iwlwifi.parmtype=led_mode:int\00", section ".modinfo", align 1
@__UNIQUE_ID_led_mode427 = internal constant [96 x i8] c"iwlwifi.parm=led_mode:0=system default, 1=On(RF On)/Off(RF Off), 2=blinking, 3=Off (default: 0)\00", section ".modinfo", align 1
@__param_str_power_save = internal constant [19 x i8] c"iwlwifi.power_save\00", align 1
@__param_power_save = internal constant %struct.kernel_param { ptr @__param_str_power_save, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.84 { ptr getelementptr (i8, ptr @iwlwifi_mod_params, i64 20) } }, section "__param", align 4
@__UNIQUE_ID_power_savetype428 = internal constant [33 x i8] c"iwlwifi.parmtype=power_save:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_power_save429 = internal constant [72 x i8] c"iwlwifi.parm=power_save:enable WiFi power management (default: disable)\00", section ".modinfo", align 1
@__param_str_power_level = internal constant [20 x i8] c"iwlwifi.power_level\00", align 1
@__param_power_level = internal constant %struct.kernel_param { ptr @__param_str_power_level, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.84 { ptr getelementptr (i8, ptr @iwlwifi_mod_params, i64 24) } }, section "__param", align 4
@__UNIQUE_ID_power_leveltype430 = internal constant [33 x i8] c"iwlwifi.parmtype=power_level:int\00", section ".modinfo", align 1
@__UNIQUE_ID_power_level431 = internal constant [81 x i8] c"iwlwifi.parm=power_level:default power save level (range from 1 - 5, default: 1)\00", section ".modinfo", align 1
@__param_str_disable_11ac = internal constant [21 x i8] c"iwlwifi.disable_11ac\00", align 1
@__param_disable_11ac = internal constant %struct.kernel_param { ptr @__param_str_disable_11ac, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.84 { ptr getelementptr (i8, ptr @iwlwifi_mod_params, i64 40) } }, section "__param", align 4
@__UNIQUE_ID_disable_11actype432 = internal constant [35 x i8] c"iwlwifi.parmtype=disable_11ac:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_disable_11ac433 = internal constant [68 x i8] c"iwlwifi.parm=disable_11ac:Disable VHT capabilities (default: false)\00", section ".modinfo", align 1
@__param_str_remove_when_gone = internal constant [25 x i8] c"iwlwifi.remove_when_gone\00", align 1
@__param_remove_when_gone = internal constant %struct.kernel_param { ptr @__param_str_remove_when_gone, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.84 { ptr getelementptr (i8, ptr @iwlwifi_mod_params, i64 42) } }, section "__param", align 4
@__UNIQUE_ID_remove_when_gonetype434 = internal constant [39 x i8] c"iwlwifi.parmtype=remove_when_gone:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_remove_when_gone435 = internal constant [101 x i8] c"iwlwifi.parm=remove_when_gone:Remove dev from PCIe bus if it is deemed inaccessible (default: false)\00", section ".modinfo", align 1
@__param_str_disable_11ax = internal constant [21 x i8] c"iwlwifi.disable_11ax\00", align 1
@__param_disable_11ax = internal constant %struct.kernel_param { ptr @__param_str_disable_11ax, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.84 { ptr getelementptr (i8, ptr @iwlwifi_mod_params, i64 41) } }, section "__param", align 4
@__UNIQUE_ID_disable_11axtype436 = internal constant [35 x i8] c"iwlwifi.parmtype=disable_11ax:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_disable_11ax437 = internal constant [67 x i8] c"iwlwifi.parm=disable_11ax:Disable HE capabilities (default: false)\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Only HW steps B and C are currently supported (0x%0x)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"no suitable firmware found!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s%d is required\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"minimum version required: %s%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"maximum version supported: %s%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"check git://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s%s.ucode\00", [21 x i8] zeroinitializer }, align 32
@__func__.iwl_request_firmware = private unnamed_addr constant [21 x i8] c"iwl_request_firmware\00", align 1
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"attempting to load firmware '%s'\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__.iwl_req_fw_callback = private unnamed_addr constant [20 x i8] c"iwl_req_fw_callback\00", align 1
@.str.12 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Loaded firmware file '%s' (%zd bytes).\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"File size way too small!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"Driver unable to support your firmware API. Driver supports v%u, firmware is v%u.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/wireless/intel/iwlwifi/iwl-drv.c\00", [51 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Invalid fw type %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"loaded firmware version %s op_mode %s\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"File size too small!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" build %u\00", [22 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%u.%u.%u.%u%s %s\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"uCode file size %d does not match expected size\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"iwlwifi-\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"uCode has invalid length: %zd\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"invalid uCode magic: 0X%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"invalid TLV len: %zd/%u\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Found unexpected BOOT ucode\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Driver support upto 2 CPUs\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%u.%08x.%u %s\00", [18 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%u.%u.%u %s\00", [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"The version is %d, and it is invalid\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"dbg destination ignored, already exists\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Found debug destination: %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Ignore dbg config %d - no destination configured\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Skip unknown configuration: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Ignore duplicate dbg config %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Found debug configuration: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Skip unknown trigger: %u\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Ignore duplicate dbg trigger %u\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Found debug trigger: %u\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"dbg lst mask size incorrect, skip\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.iwl_parse_tlv_firmware = private unnamed_addr constant [23 x i8] c"iwl_parse_tlv_firmware\00", align 1
@.str.42 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Paging: paging enabled (size = %u bytes)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Paging: driver supports up to %lu bytes for paging image\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Paging: image isn't multiple %lu\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Found debug memory segment: %u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"TLV_FW_FSEQ_VERSION: %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%d is an invalid number of station\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Invalid length for command versions: %u\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"phy integration str ignored, already exists\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"unknown TLV: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"user selected to work with usniffer but usniffer image isn't available in ucode package\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"invalid TLV after parsing: %zd\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"iwl data: \00", [21 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"TLV %d has invalid size: %u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"api flags index %d larger than supported by driver\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"capa flags index %d larger than supported by driver\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Wrong ucode_type %u for default calibration.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SMEM\00", [27 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"EXTERNAL_DRAM\00", [18 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MARBH\00", [26 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MIPI\00", [27 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UNKNOWN\00", [24 x i8] zeroinitializer }, align 32
@__func__.iwl_drv_set_dump_exclude = private unnamed_addr constant [25 x i8] c"iwl_drv_set_dump_exclude\00", align 1
@.str.64 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"found too many excludes in fw file\0A\00", [60 x i8] zeroinitializer }, align 32
@__func__.validate_sec_sizes = private unnamed_addr constant [19 x i8] c"validate_sec_sizes\00", align 1
@.str.65 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"f/w package hdr runtime inst size = %zd\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"f/w package hdr runtime data size = %zd\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"f/w package hdr init inst size = %zd\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"f/w package hdr init data size = %zd\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"uCode instr len %zd too large to fit in\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"uCode data len %zd too large to fit in\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"uCode init instr len %zd too large to fit in\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"uCode init data len %zd too large to fit in\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/wireless/intel/iwlwifi/iwl-op-mode.h\00", [47 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"iwlwifi_opmode_table_mtx.wait_lock\00", [61 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"iwlwifi_opmode_table_mtx\00", [39 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"iwldvm\00", [25 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"iwlmvm\00", [25 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"retry init count %d\0A\00", [43 x i8] zeroinitializer }, align 32
@iwl_drv_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.15, i32 1864, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016Intel(R) Wireless WiFi driver for Linux\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"iwl_drv_init\00", [19 x i8] zeroinitializer }, align 32
@iwl_drv_init._entry_ptr = internal global ptr @iwl_drv_init._entry, section ".printk_index", align 4
@.str.81 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"iwlwifi\00", [24 x i8] zeroinitializer }, align 32
@switch.table.iwl_req_fw_callback = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62], [16 x i8] zeroinitializer }, align 32
@switch.table.iwl_req_fw_callback.82 = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [58 x i64] [i64 56, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 34, i64 36, i64 38, i64 39, i64 40, i64 48, i64 50, i64 51, i64 52, i64 54, i64 55, i64 57, i64 60, i64 61, i64 66, i64 67, i64 256, i64 4096, i64 16777221, i64 16777222, i64 16777223, i64 16777224, i64 16777225, i64 16777226]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.84 = internal global [9 x i64] [i64 7, i64 8, i64 5, i64 7, i64 10, i64 14, i64 16, i64 18, i64 20]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.86 = private unnamed_addr constant [15 x i8] c"iwl_dbgfs_root\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 37, i32 23 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1747, i32 45 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1754, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant [25 x i8] c"iwlwifi_opmode_table_mtx\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [19 x i8] c"iwlwifi_mod_params\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1801, i32 23 }
@___asan_gen_.101 = private unnamed_addr constant [21 x i8] c"iwlwifi_opmode_table\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 85, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.108 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 87, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 171, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 179, i32 16 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 186, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 189, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 192, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 194, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 198, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 203, i32 59 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 206, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1449, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1454, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1481, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1595, i32 8 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1654, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1661, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1694, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 472, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 508, i32 21 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 514, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 529, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 450, i32 20 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 672, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 677, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 714, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 759, i32 4 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 924, i32 5 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 953, i32 6 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 958, i32 6 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 973, i32 5 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 980, i32 5 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 995, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1015, i32 5 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1022, i32 5 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1029, i32 5 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1038, i32 4 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1051, i32 5 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1058, i32 5 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1064, i32 4 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1072, i32 5 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1092, i32 4 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1097, i32 5 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1104, i32 5 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1128, i32 4 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1170, i32 4 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1179, i32 5 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1232, i32 5 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1249, i32 5 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1266, i32 4 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1273, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1279, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1280, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1287, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 413, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 434, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 392, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 246, i32 10 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 248, i32 10 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 250, i32 10 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 252, i32 10 }
@___asan_gen_.291 = private unnamed_addr constant [47 x i8] c"../drivers/net/wireless/intel/iwlwifi/fw/img.h\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 254, i32 10 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 584, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1318, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1321, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1324, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1326, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1332, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1340, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1348, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1356, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant [52 x i8] c"../drivers/net/wireless/intel/iwlwifi/iwl-op-mode.h\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 131, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 80, i32 8 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 86, i32 28 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 87, i32 28 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1386, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1864, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.348 = private constant [48 x i8] c"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1868, i32 38 }
@___asan_gen_.350 = private unnamed_addr constant [33 x i8] c"switch.table.iwl_req_fw_callback\00", align 1
@___asan_gen_.351 = private unnamed_addr constant [36 x i8] c"switch.table.iwl_req_fw_callback.82\00", align 1
@llvm.compiler.used = appending global [142 x ptr] [ptr @__UNIQUE_ID_11n_disable413, ptr @__UNIQUE_ID_11n_disabletype412, ptr @__UNIQUE_ID_amsdu_size415, ptr @__UNIQUE_ID_amsdu_sizetype414, ptr @__UNIQUE_ID_bt_coex_active425, ptr @__UNIQUE_ID_bt_coex_activetype424, ptr @__UNIQUE_ID_debug409, ptr @__UNIQUE_ID_debugtype408, ptr @__UNIQUE_ID_description348, ptr @__UNIQUE_ID_disable_11ac433, ptr @__UNIQUE_ID_disable_11actype432, ptr @__UNIQUE_ID_disable_11ax437, ptr @__UNIQUE_ID_disable_11axtype436, ptr @__UNIQUE_ID_enable_ini423, ptr @__UNIQUE_ID_enable_initype422, ptr @__UNIQUE_ID_file349, ptr @__UNIQUE_ID_fw_restart417, ptr @__UNIQUE_ID_fw_restarttype416, ptr @__UNIQUE_ID_led_mode427, ptr @__UNIQUE_ID_led_modetype426, ptr @__UNIQUE_ID_license350, ptr @__UNIQUE_ID_nvm_file419, ptr @__UNIQUE_ID_nvm_filetype418, ptr @__UNIQUE_ID_power_level431, ptr @__UNIQUE_ID_power_leveltype430, ptr @__UNIQUE_ID_power_save429, ptr @__UNIQUE_ID_power_savetype428, ptr @__UNIQUE_ID_remove_when_gone435, ptr @__UNIQUE_ID_remove_when_gonetype434, ptr @__UNIQUE_ID_swcrypto411, ptr @__UNIQUE_ID_swcryptotype410, ptr @__UNIQUE_ID_uapsd_disable421, ptr @__UNIQUE_ID_uapsd_disabletype420, ptr @__exitcall_iwl_drv_exit, ptr @__initcall__kmod_iwlwifi__407_1883_iwl_drv_init6, ptr @__param_11n_disable, ptr @__param_amsdu_size, ptr @__param_bt_coex_active, ptr @__param_debug, ptr @__param_disable_11ac, ptr @__param_disable_11ax, ptr @__param_enable_ini, ptr @__param_fw_restart, ptr @__param_led_mode, ptr @__param_nvm_file, ptr @__param_power_level, ptr @__param_power_save, ptr @__param_remove_when_gone, ptr @__param_swcrypto, ptr @__param_uapsd_disable, ptr @iwl_drv_exit, ptr @iwl_drv_init._entry, ptr @iwl_drv_init._entry_ptr, ptr @iwl_dbgfs_root, ptr @.str, ptr @.str.1, ptr @iwlwifi_opmode_table_mtx, ptr @iwlwifi_mod_params, ptr @iwlwifi_opmode_table, ptr @init_completion.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @switch.table.iwl_req_fw_callback, ptr @switch.table.iwl_req_fw_callback.82], section "llvm.metadata"
@0 = internal global [90 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_dbgfs_root to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwlwifi_opmode_table_mtx to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwlwifi_mod_params to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwlwifi_opmode_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwl_drv_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.iwl_req_fw_callback to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.iwl_req_fw_callback.82 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @iwl_drv_start(ptr noundef %trans) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 832) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %trans1 = getelementptr inbounds %struct.iwl_drv, ptr %call7.i.i, i32 0, i32 3
  %1 = ptrtoint ptr %trans1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %trans, ptr %trans1, align 8
  %dev = getelementptr inbounds %struct.iwl_trans, ptr %trans, i32 0, i32 8
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %dev2 = getelementptr inbounds %struct.iwl_drv, ptr %call7.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %dev2, align 4
  %request_firmware_complete = getelementptr inbounds %struct.iwl_drv, ptr %call7.i.i, i32 0, i32 7
  %5 = ptrtoint ptr %request_firmware_complete to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %request_firmware_complete, align 4
  %wait.i = getelementptr inbounds %struct.iwl_drv, ptr %call7.i.i, i32 0, i32 7, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @init_completion.__key) #11
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %13, %if.end.i ], [ %11, %if.end.dev_name.exit_crit_edge ]
  %14 = load ptr, ptr @iwl_dbgfs_root, align 4
  %call5 = tail call ptr @debugfs_create_dir(ptr noundef %retval.0.i, ptr noundef %14) #11
  %dbgfs_drv = getelementptr inbounds %struct.iwl_drv, ptr %call7.i.i, i32 0, i32 8
  %15 = ptrtoint ptr %dbgfs_drv to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call5, ptr %dbgfs_drv, align 4
  %call7 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str, ptr noundef %call5) #11
  %16 = ptrtoint ptr %trans1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %trans1, align 8
  %dbgfs_dir = getelementptr inbounds %struct.iwl_trans, ptr %17, i32 0, i32 30
  %18 = ptrtoint ptr %dbgfs_dir to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7, ptr %dbgfs_dir, align 4
  %19 = load ptr, ptr %trans1, align 8
  %domains_bitmap = getelementptr inbounds %struct.iwl_trans, ptr %19, i32 0, i32 32, i32 22
  %20 = ptrtoint ptr %domains_bitmap to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %domains_bitmap, align 8
  %call10 = tail call fastcc i32 @iwl_request_firmware(ptr noundef nonnull %call7.i.i, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %dev_name.exit.cleanup_crit_edge, label %do.end

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %22, i32 noundef 0, ptr noundef nonnull @.str.1) #11
  %23 = ptrtoint ptr %dbgfs_drv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dbgfs_drv, align 4
  tail call void @debugfs_remove(ptr noundef %24) #11
  %25 = ptrtoint ptr %trans1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %trans1, align 8
  tail call void @iwl_dbg_tlv_free(ptr noundef %26) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  %phi.cast = inttoptr i32 %call10 to ptr
  br label %cleanup

cleanup:                                          ; preds = %do.end, %dev_name.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %dev_name.exit.cleanup_crit_edge ], [ %phi.cast, %do.end ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwl_request_firmware(ptr noundef %drv, i1 noundef zeroext %first) unnamed_addr #0 align 64 {
entry:
  %tag = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %trans = getelementptr inbounds %struct.iwl_drv, ptr %drv, i32 0, i32 3
  %0 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trans, align 4
  %cfg1 = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tag) #11
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %tag to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %tag, align 8
  %5 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %trans_cfg, align 4
  %device_family = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %device_family to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %device_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %8)
  %cmp = icmp eq i32 %8, 17
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %hw_rev_step = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 11
  %9 = ptrtoint ptr %hw_rev_step to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hw_rev_step, align 4
  %.off = add i32 %10, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %land.lhs.true.if.end_crit_edge, label %do.end

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.iwl_drv, ptr %drv, i32 0, i32 4
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %hw_rev = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 10
  %13 = ptrtoint ptr %hw_rev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hw_rev, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %12, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef %14) #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  br i1 %first, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %ucode_api_max = getelementptr inbounds %struct.iwl_cfg, ptr %3, i32 0, i32 27
  %15 = ptrtoint ptr %ucode_api_max to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ucode_api_max, align 4
  %conv = zext i8 %16 to i32
  %fw_index = getelementptr inbounds %struct.iwl_drv, ptr %drv, i32 0, i32 5
  %17 = ptrtoint ptr %fw_index to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv, ptr %fw_index, align 4
  br label %if.end19

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %fw_index15 = getelementptr inbounds %struct.iwl_drv, ptr %drv, i32 0, i32 5
  %18 = ptrtoint ptr %fw_index15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fw_index15, align 4
  %dec = add i32 %19, -1
  store i32 %dec, ptr %fw_index15, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then13
  %dec.sink = phi i32 [ %dec, %if.else ], [ %conv, %if.then13 ]
  %call18 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %tag, ptr noundef nonnull @.str.4, i32 noundef %dec.sink)
  %fw_index20 = getelementptr inbounds %struct.iwl_drv, ptr %drv, i32 0, i32 5
  %20 = ptrtoint ptr %fw_index20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fw_index20, align 4
  %ucode_api_min = getelementptr inbounds %struct.iwl_cfg, ptr %3, i32 0, i32 28
  %22 = ptrtoint ptr %ucode_api_min to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ucode_api_min, align 1
  %conv21 = zext i8 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %conv21)
  %cmp22 = icmp slt i32 %21, %conv21
  br i1 %cmp22, label %do.end28, label %if.end77

do.end28:                                         ; preds = %if.end19
  %dev29 = getelementptr inbounds %struct.iwl_drv, ptr %drv, i32 0, i32 4
  %24 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev29, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %25, i32 noundef 0, ptr noundef nonnull @.str.5) #11
  %26 = ptrtoint ptr %ucode_api_min to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ucode_api_min, align 1
  %ucode_api_max34 = getelementptr inbounds %struct.iwl_cfg, ptr %3, i32 0, i32 27
  %28 = ptrtoint ptr %ucode_api_max34 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ucode_api_max34, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %29)
  %cmp36 = icmp eq i8 %27, %29
  %conv35 = zext i8 %27 to i32
  %30 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev29, align 4
  %fw_name_pre = getelementptr inbounds %struct.iwl_cfg, ptr %3, i32 0, i32 2
  %32 = ptrtoint ptr %fw_name_pre to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fw_name_pre, align 4
  br i1 %cmp36, label %do.end42, label %do.end52

do.end42:                                         ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %31, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef %33, i32 noundef %conv35) #11
  br label %do.end73

do.end52:                                         ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %31, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef %33, i32 noundef %conv35) #11
  %34 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev29, align 4
  %36 = ptrtoint ptr %fw_name_pre to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fw_name_pre, align 4
  %38 = ptrtoint ptr %ucode_api_max34 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ucode_api_max34, align 4
  %conv66 = zext i8 %39 to i32
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %35, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef %37, i32 noundef %conv66) #11
  br label %do.end73

do.end73:                                         ; preds = %do.end52, %do.end42
  %40 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev29, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %41, i32 noundef 0, ptr noundef nonnull @.str.9) #11
  br label %cleanup

if.end77:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %firmware_name = getelementptr inbounds %struct.iwl_drv, ptr %drv, i32 0, i32 6
  %fw_name_pre79 = getelementptr inbounds %struct.iwl_cfg, ptr %3, i32 0, i32 2
  %42 = ptrtoint ptr %fw_name_pre79 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fw_name_pre79, align 4
  %call81 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %firmware_name, i32 noundef 64, ptr noundef nonnull @.str.10, ptr noundef %43, ptr noundef nonnull %tag)
  %dev86 = getelementptr inbounds %struct.iwl_drv, ptr %drv, i32 0, i32 4
  %44 = ptrtoint ptr %dev86 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev86, align 4
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %45, i32 noundef 65537, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_request_firmware, ptr noundef nonnull @.str.11, ptr noundef %firmware_name) #11
  %46 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %trans, align 4
  %dev94 = getelementptr inbounds %struct.iwl_trans, ptr %47, i32 0, i32 8
  %48 = ptrtoint ptr %dev94 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev94, align 8
  %call95 = call i32 @request_firmware_nowait(ptr noundef null, i1 noundef zeroext true, ptr noundef %firmware_name, ptr noundef %49, i32 noundef 3264, ptr noundef %drv, ptr noundef nonnull @iwl_req_fw_callback) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end77, %do.end73, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -2, %do.end73 ], [ %call95, %if.end77 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tag) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_err(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_dbg_tlv_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_drv_stop(ptr noundef %drv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %request_firmware_complete = getelementptr inbounds %struct.iwl_drv, ptr %drv, i32 0, i32 7
  tail call void @wait_for_completion(ptr noundef %request_firmware_complete) #11
  %op_mode.i = getelementptr inbounds %struct.iwl_drv, ptr %drv, i32 0, i32 2
  %0 = ptrtoint ptr %op_mode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %op_mode.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry._iwl_op_mode_stop.exit_crit_edge, label %if.then.i

entry._iwl_op_mode_stop.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %_iwl_op_mode_stop.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__might_sleep(ptr noundef nonnull @.str.73, i32 noundef 131) #11
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %stop.i.i = getelementptr inbounds %struct.iwl_op_mode_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %stop.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stop.i.i, align 4
  tail call void %5(ptr noundef nonnull %1) #11
  %6 = ptrtoint ptr %op_mode.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %op_mode.i, align 4
  %dbgfs_op_mode.i = getelementptr inbounds %struct.iwl_drv, ptr %drv, i32 0, i32 10
  %7 = ptrtoint ptr %dbgfs_op_mode.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dbgfs_op_mode.i, align 4
  tail call void @debugfs_remove(ptr noundef %8) #11
  %9 = ptrtoint ptr %dbgfs_op_mode.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %dbgfs_op_mode.i, align 4
  br label %_iwl_op_mode_stop.exit

_iwl_op_mode_stop.exit:                           ; preds = %if.then.i, %entry._iwl_op_mode_stop.exit_crit_edge
  tail call fastcc void @iwl_dealloc_ucode(ptr noundef %drv)
  tail call void @mutex_lock_nested(ptr noundef nonnull @iwlwifi_opmode_table_mtx, i32 noundef 0) #11
  %10 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %drv, align 4
  %cmp.i.not = icmp eq ptr %11, %drv
  br i1 %cmp.i.not, label %_iwl_op_mode_stop.exit.if.end_crit_edge, label %if.then

_iwl_op_mode_stop.exit.if.end_crit_edge:          ; preds = %_iwl_op_mode_stop.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %_iwl_op_mode_stop.exit
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %drv) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %drv, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %drv, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %18 = ptrtoint ptr %drv to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %drv, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %drv, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %if.end

if.end:                                           ; preds = %list_del.exit, %_iwl_op_mode_stop.exit.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @iwlwifi_opmode_table_mtx) #11
  %trans = getelementptr inbounds %struct.iwl_drv, ptr %drv, i32 0, i32 3
  %20 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %trans, align 4
  %ops = getelementptr inbounds %struct.iwl_trans, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops, align 4
  %debugfs_cleanup = getelementptr inbounds %struct.iwl_trans_ops, ptr %23, i32 0, i32 36
  %24 = ptrtoint ptr %debugfs_cleanup to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %debugfs_cleanup, align 4
  tail call void %25(ptr noundef %21) #11
  %dbgfs_drv = getelementptr inbounds %struct.iwl_drv, ptr %drv, i32 0, i32 8
  %26 = ptrtoint ptr %dbgfs_drv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dbgfs_drv, align 4
  tail call void @debugfs_remove(ptr noundef %27) #11
  %28 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %trans, align 4
  tail call void @iwl_dbg_tlv_free(ptr noundef %29) #11
  tail call void @kfree(ptr noundef %drv) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iwl_dealloc_ucode(ptr nocapture noundef %drv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dbg = getelementptr inbounds %struct.iwl_drv, ptr %drv, i32 0, i32 1, i32 20
  %0 = ptrtoint ptr %dbg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dbg, align 4
  tail call void @kfree(ptr noundef %1) #11
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.042 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.iwl_drv, ptr %drv, i32 0, i32 1, i32 20, i32 2, i32 %i.042
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef %3) #11
  %inc = add nuw nsw i32 %i.042, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.body5.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body5.preheader:                              ; preds = %for.body
  %arrayidx8 = getelementptr %struct.iwl_drv, ptr %drv, i32 0, i32 1, i32 20, i32 3, i32 0
  %4 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx8, align 4
  tail call void @kfree(ptr noundef %5) #11
  %arrayidx8.1 = getelementptr %struct.iwl_drv, ptr %drv, i32 0, i32 1, i32 20, i32 3, i32 1
  %6 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx8.1, align 4
  tail call void @kfree(ptr noundef %7) #11
  %arrayidx8.2 = getelementptr %struct.iwl_drv, ptr %drv, i32 0, i32 1, i32 20, i32 3, i32 2
  %8 = ptrtoint ptr %arrayidx8.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx8.2, align 4
  tail call void @kfree(ptr noundef %9) #11
  %arrayidx8.3 = getelementptr %struct.iwl_drv, ptr %drv, i32 0, i32 1, i32 20, i32 3, i32 3
  %10 = ptrtoint ptr %arrayidx8.3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx8.3, align 4
  tail call void @kfree(ptr noundef %11) #11
  %arrayidx8.4 = getelementptr %struct.iwl_drv, ptr %drv, i32 0, i32 1, i32 20, i32 3, i32 4
  %12 = ptrtoint ptr %arrayidx8.4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx8.4, align 4
  tail call void @kfree(ptr noundef %13) #11
  %arrayidx8.5 = getelementptr %struct.iwl_drv, ptr %drv, i32 0, i32 1, i32 20, i32 3, i32 5
  %14 = ptrtoint ptr %arrayidx8.5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx8.5, align 4
  tail call void @kfree(ptr noundef %15) #11
  %arrayidx8.6 = getelementptr %struct.iwl_drv, ptr %drv, i32 0, i32 1, i32 20, i32 3, i32 6
  %16 = ptrtoint ptr %arrayidx8.6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx8.6, align 4
  tail call void @kfree(ptr noundef %17) #11
  %arrayidx8.7 = getelementptr %struct.iwl_drv, ptr %drv, i32 0, i32 1, i32 20, i32 3, i32 7
  %18 = ptrtoint ptr %arrayidx8.7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx8.7, align 4
  tail call void @kfree(ptr noundef %19) #11
  %arrayidx8.8 = getelementptr %struct.iwl_drv, ptr %drv, i32 0, i32 1, i32 20, i32 3, i32 8
  %20 = ptrtoint ptr %arrayidx8.8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx8.8, align 4
  tail call void @kfree(ptr noundef %21) #11
  %arrayidx8.9 = getelementptr %struct.iwl_drv, ptr %drv, i32 0, i32 1, i32 20, i32 3, i32 9
  %22 = ptrtoint ptr %arrayidx8.9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx8.9, align 4
  tail call void @kfree(ptr noundef %23) #11
  %arrayidx8.10 = getelementptr %struct.iwl_drv, ptr %drv, i32 0, i32 1, i32 20, i32 3, i32 10
  %24 = ptrtoint ptr %arrayidx8.10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx8.10, align 4
  tail call void @kfree(ptr noundef %25) #11
  %arrayidx8.11 = getelementptr %struct.iwl_drv, ptr %drv, i32 0, i32 1, i32 20, i32 3, i32 11
  %26 = ptrtoint ptr %arrayidx8.11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx8.11, align 4
  tail call void @kfree(ptr noundef %27) #11
  %arrayidx8.12 = getelementptr %struct.iwl_drv, ptr %drv, i32 0, i32 1, i32 20, i32 3, i32 12
  %28 = ptrtoint ptr %arrayidx8.12 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx8.12, align 4
  tail call void @kfree(ptr noundef %29) #11
  %arrayidx8.13 = getelementptr %struct.iwl_drv, ptr %drv, i32 0, i32 1, i32 20, i32 3, i32 13
  %30 = ptrtoint ptr %arrayidx8.13 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx8.13, align 4
  tail call void @kfree(ptr noundef %31) #11
  %arrayidx8.14 = getelementptr %struct.iwl_drv, ptr %drv, i32 0, i32 1, i32 20, i32 3, i32 14
  %32 = ptrtoint ptr %arrayidx8.14 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx8.14, align 4
  tail call void @kfree(ptr noundef %33) #11
  %arrayidx8.15 = getelementptr %struct.iwl_drv, ptr %drv, i32 0, i32 1, i32 20, i32 3, i32 15
  %34 = ptrtoint ptr %arrayidx8.15 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx8.15, align 4
  tail call void @kfree(ptr noundef %35) #11
  %arrayidx8.16 = getelementptr %struct.iwl_drv, ptr %drv, i32 0, i32 1, i32 20, i32 3, i32 16
  %36 = ptrtoint ptr %arrayidx8.16 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx8.16, align 4
  tail call void @kfree(ptr noundef %37) #11
  %mem_tlv = getelementptr inbounds %struct.iwl_drv, ptr %drv, i32 0, i32 1, i32 20, i32 5
  %38 = ptrtoint ptr %mem_tlv to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mem_tlv, align 4
  tail call void @kfree(ptr noundef %39) #11
  %iml = getelementptr inbounds %struct.iwl_drv, ptr %drv, i32 0, i32 1, i32 4
  %40 = ptrtoint ptr %iml to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %iml, align 4
  tail call void @kfree(ptr noundef %41) #11
  %cmd_versions = getelementptr inbounds %struct.iwl_drv, ptr %drv, i32 0, i32 1, i32 5, i32 9
  %42 = ptrtoint ptr %cmd_versions to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cmd_versions, align 4
  tail call void @kfree(ptr noundef %43) #11
  %phy_integration_ver = getelementptr inbounds %struct.iwl_drv, ptr %drv, i32 0, i32 1, i32 21
  %44 = ptrtoint ptr %phy_integration_ver to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %phy_integration_ver, align 4
  tail call void @kfree(ptr noundef %45) #11
  %img = getelementptr inbounds %struct.iwl_drv, ptr %drv, i32 0, i32 1, i32 2
  %num_sec.i = getelementptr %struct.iwl_drv, ptr %drv, i32 0, i32 1, i32 2, i32 0, i32 1
  %46 = ptrtoint ptr %num_sec.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num_sec.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp1.i = icmp sgt i32 %47, 0
  br i1 %cmp1.i, label %for.body5.preheader.for.body.i_crit_edge, label %for.body5.preheader.iwl_free_fw_img.exit_crit_edge

for.body5.preheader.iwl_free_fw_img.exit_crit_edge: ; preds = %for.body5.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_free_fw_img.exit

for.body5.preheader.for.body.i_crit_edge:         ; preds = %for.body5.preheader
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body5.preheader.for.body.i_crit_edge
  %i.02.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body5.preheader.for.body.i_crit_edge ]
  %48 = ptrtoint ptr %img to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %img, align 4
  %arrayidx.i = getelementptr %struct.fw_desc, ptr %49, i32 %i.02.i
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i, align 4
  tail call void @vfree(ptr noundef %51) #11
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %arrayidx.i, align 4
  %len.i.i = getelementptr %struct.fw_desc, ptr %49, i32 %i.02.i, i32 1
  %53 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %len.i.i, align 4
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %54 = ptrtoint ptr %num_sec.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %num_sec.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %55
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.iwl_free_fw_img.exit_crit_edge

for.body.i.iwl_free_fw_img.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_free_fw_img.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

iwl_free_fw_img.exit:                             ; preds = %for.body.i.iwl_free_fw_img.exit_crit_edge, %for.body5.preheader.iwl_free_fw_img.exit_crit_edge
  %56 = ptrtoint ptr %img to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %img, align 4
  tail call void @kfree(ptr noundef %57) #11
  %add.ptr.1 = getelementptr %struct.iwl_drv, ptr %drv, i32 0, i32 1, i32 2, i32 1
  %num_sec.i.1 = getelementptr %struct.iwl_drv, ptr %drv, i32 0, i32 1, i32 2, i32 1, i32 1
  %58 = ptrtoint ptr %num_sec.i.1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %num_sec.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp1.i.1 = icmp sgt i32 %59, 0
  br i1 %cmp1.i.1, label %iwl_free_fw_img.exit.for.body.i.1_crit_edge, label %iwl_free_fw_img.exit.iwl_free_fw_img.exit.1_crit_edge

iwl_free_fw_img.exit.iwl_free_fw_img.exit.1_crit_edge: ; preds = %iwl_free_fw_img.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_free_fw_img.exit.1

iwl_free_fw_img.exit.for.body.i.1_crit_edge:      ; preds = %iwl_free_fw_img.exit
  br label %for.body.i.1

for.body.i.1:                                     ; preds = %for.body.i.1.for.body.i.1_crit_edge, %iwl_free_fw_img.exit.for.body.i.1_crit_edge
  %i.02.i.1 = phi i32 [ %inc.i.1, %for.body.i.1.for.body.i.1_crit_edge ], [ 0, %iwl_free_fw_img.exit.for.body.i.1_crit_edge ]
  %60 = ptrtoint ptr %add.ptr.1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %add.ptr.1, align 4
  %arrayidx.i.1 = getelementptr %struct.fw_desc, ptr %61, i32 %i.02.i.1
  %62 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i.1, align 4
  tail call void @vfree(ptr noundef %63) #11
  %64 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %arrayidx.i.1, align 4
  %len.i.i.1 = getelementptr %struct.fw_desc, ptr %61, i32 %i.02.i.1, i32 1
  %65 = ptrtoint ptr %len.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %len.i.i.1, align 4
  %inc.i.1 = add nuw nsw i32 %i.02.i.1, 1
  %66 = ptrtoint ptr %num_sec.i.1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %num_sec.i.1, align 4
  %cmp.i.1 = icmp slt i32 %inc.i.1, %67
  br i1 %cmp.i.1, label %for.body.i.1.for.body.i.1_crit_edge, label %for.body.i.1.iwl_free_fw_img.exit.1_crit_edge

for.body.i.1.iwl_free_fw_img.exit.1_crit_edge:    ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_free_fw_img.exit.1

for.body.i.1.for.body.i.1_crit_edge:              ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.1

iwl_free_fw_img.exit.1:                           ; preds = %for.body.i.1.iwl_free_fw_img.exit.1_crit_edge, %iwl_free_fw_img.exit.iwl_free_fw_img.exit.1_crit_edge
  %68 = ptrtoint ptr %add.ptr.1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %add.ptr.1, align 4
  tail call void @kfree(ptr noundef %69) #11
  %add.ptr.2 = getelementptr %struct.iwl_drv, ptr %drv, i32 0, i32 1, i32 2, i32 2
  %num_sec.i.2 = getelementptr %struct.iwl_drv, ptr %drv, i32 0, i32 1, i32 2, i32 2, i32 1
  %70 = ptrtoint ptr %num_sec.i.2 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %num_sec.i.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp1.i.2 = icmp sgt i32 %71, 0
  br i1 %cmp1.i.2, label %iwl_free_fw_img.exit.1.for.body.i.2_crit_edge, label %iwl_free_fw_img.exit.1.iwl_free_fw_img.exit.2_crit_edge

iwl_free_fw_img.exit.1.iwl_free_fw_img.exit.2_crit_edge: ; preds = %iwl_free_fw_img.exit.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_free_fw_img.exit.2

iwl_free_fw_img.exit.1.for.body.i.2_crit_edge:    ; preds = %iwl_free_fw_img.exit.1
  br label %for.body.i.2

for.body.i.2:                                     ; preds = %for.body.i.2.for.body.i.2_crit_edge, %iwl_free_fw_img.exit.1.for.body.i.2_crit_edge
  %i.02.i.2 = phi i32 [ %inc.i.2, %for.body.i.2.for.body.i.2_crit_edge ], [ 0, %iwl_free_fw_img.exit.1.for.body.i.2_crit_edge ]
  %72 = ptrtoint ptr %add.ptr.2 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %add.ptr.2, align 4
  %arrayidx.i.2 = getelementptr %struct.fw_desc, ptr %73, i32 %i.02.i.2
  %74 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx.i.2, align 4
  tail call void @vfree(ptr noundef %75) #11
  %76 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %arrayidx.i.2, align 4
  %len.i.i.2 = getelementptr %struct.fw_desc, ptr %73, i32 %i.02.i.2, i32 1
  %77 = ptrtoint ptr %len.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %len.i.i.2, align 4
  %inc.i.2 = add nuw nsw i32 %i.02.i.2, 1
  %78 = ptrtoint ptr %num_sec.i.2 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %num_sec.i.2, align 4
  %cmp.i.2 = icmp slt i32 %inc.i.2, %79
  br i1 %cmp.i.2, label %for.body.i.2.for.body.i.2_crit_edge, label %for.body.i.2.iwl_free_fw_img.exit.2_crit_edge

for.body.i.2.iwl_free_fw_img.exit.2_crit_edge:    ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_free_fw_img.exit.2

for.body.i.2.for.body.i.2_crit_edge:              ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.2

iwl_free_fw_img.exit.2:                           ; preds = %for.body.i.2.iwl_free_fw_img.exit.2_crit_edge, %iwl_free_fw_img.exit.1.iwl_free_fw_img.exit.2_crit_edge
  %80 = ptrtoint ptr %add.ptr.2 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %add.ptr.2, align 4
  tail call void @kfree(ptr noundef %81) #11
  %add.ptr.3 = getelementptr %struct.iwl_drv, ptr %drv, i32 0, i32 1, i32 2, i32 3
  %num_sec.i.3 = getelementptr %struct.iwl_drv, ptr %drv, i32 0, i32 1, i32 2, i32 3, i32 1
  %82 = ptrtoint ptr %num_sec.i.3 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %num_sec.i.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp1.i.3 = icmp sgt i32 %83, 0
  br i1 %cmp1.i.3, label %iwl_free_fw_img.exit.2.for.body.i.3_crit_edge, label %iwl_free_fw_img.exit.2.iwl_free_fw_img.exit.3_crit_edge

iwl_free_fw_img.exit.2.iwl_free_fw_img.exit.3_crit_edge: ; preds = %iwl_free_fw_img.exit.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_free_fw_img.exit.3

iwl_free_fw_img.exit.2.for.body.i.3_crit_edge:    ; preds = %iwl_free_fw_img.exit.2
  br label %for.body.i.3

for.body.i.3:                                     ; preds = %for.body.i.3.for.body.i.3_crit_edge, %iwl_free_fw_img.exit.2.for.body.i.3_crit_edge
  %i.02.i.3 = phi i32 [ %inc.i.3, %for.body.i.3.for.body.i.3_crit_edge ], [ 0, %iwl_free_fw_img.exit.2.for.body.i.3_crit_edge ]
  %84 = ptrtoint ptr %add.ptr.3 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %add.ptr.3, align 4
  %arrayidx.i.3 = getelementptr %struct.fw_desc, ptr %85, i32 %i.02.i.3
  %86 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx.i.3, align 4
  tail call void @vfree(ptr noundef %87) #11
  %88 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr null, ptr %arrayidx.i.3, align 4
  %len.i.i.3 = getelementptr %struct.fw_desc, ptr %85, i32 %i.02.i.3, i32 1
  %89 = ptrtoint ptr %len.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %len.i.i.3, align 4
  %inc.i.3 = add nuw nsw i32 %i.02.i.3, 1
  %90 = ptrtoint ptr %num_sec.i.3 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %num_sec.i.3, align 4
  %cmp.i.3 = icmp slt i32 %inc.i.3, %91
  br i1 %cmp.i.3, label %for.body.i.3.for.body.i.3_crit_edge, label %for.body.i.3.iwl_free_fw_img.exit.3_crit_edge

for.body.i.3.iwl_free_fw_img.exit.3_crit_edge:    ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_free_fw_img.exit.3

for.body.i.3.for.body.i.3_crit_edge:              ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.3

iwl_free_fw_img.exit.3:                           ; preds = %for.body.i.3.iwl_free_fw_img.exit.3_crit_edge, %iwl_free_fw_img.exit.2.iwl_free_fw_img.exit.3_crit_edge
  %92 = ptrtoint ptr %add.ptr.3 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %add.ptr.3, align 4
  tail call void @kfree(ptr noundef %93) #11
  %fw = getelementptr inbounds %struct.iwl_drv, ptr %drv, i32 0, i32 1
  %94 = call ptr @memset(ptr %fw, i32 0, i32 676)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_opmode_register(ptr nocapture noundef readonly %name, ptr noundef %ops) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @iwlwifi_opmode_table_mtx, i32 noundef 0) #11
  %0 = load ptr, ptr @iwlwifi_opmode_table, align 4
  %call = tail call i32 @strcmp(ptr noundef %0, ptr noundef %name) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.inc14

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %for.inc14.if.end_crit_edge, %entry.if.end_crit_edge
  %i.028.lcssa = phi i32 [ 0, %entry.if.end_crit_edge ], [ 1, %for.inc14.if.end_crit_edge ]
  %arrayidx.lcssa = phi ptr [ @iwlwifi_opmode_table, %entry.if.end_crit_edge ], [ getelementptr inbounds ([2 x %struct.iwlwifi_opmode_table], ptr @iwlwifi_opmode_table, i32 0, i32 1), %for.inc14.if.end_crit_edge ]
  %ops2 = getelementptr [2 x %struct.iwlwifi_opmode_table], ptr @iwlwifi_opmode_table, i32 0, i32 %i.028.lcssa, i32 1
  %1 = ptrtoint ptr %ops2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ops, ptr %ops2, align 4
  %drv3 = getelementptr [2 x %struct.iwlwifi_opmode_table], ptr @iwlwifi_opmode_table, i32 0, i32 %i.028.lcssa, i32 2
  %2 = ptrtoint ptr %drv3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %drv.029 = load ptr, ptr %drv3, align 4
  %cmp6.not30 = icmp eq ptr %drv.029, %drv3
  br i1 %cmp6.not30, label %if.end.cleanup_crit_edge, label %if.end.for.body7_crit_edge

if.end.for.body7_crit_edge:                       ; preds = %if.end
  br label %for.body7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body7:                                        ; preds = %_iwl_op_mode_start.exit.for.body7_crit_edge, %if.end.for.body7_crit_edge
  %drv.031 = phi ptr [ %drv.0, %_iwl_op_mode_start.exit.for.body7_crit_edge ], [ %drv.029, %if.end.for.body7_crit_edge ]
  %3 = ptrtoint ptr %ops2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops2, align 4
  %5 = load i8, ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 3), align 4, !range !284
  %dbgfs_drv.i = getelementptr inbounds %struct.iwl_drv, ptr %drv.031, i32 0, i32 8
  %dbgfs_op_mode.i = getelementptr inbounds %struct.iwl_drv, ptr %drv.031, i32 0, i32 10
  %trans.i = getelementptr inbounds %struct.iwl_drv, ptr %drv.031, i32 0, i32 3
  %fw.i = getelementptr inbounds %struct.iwl_drv, ptr %drv.031, i32 0, i32 1
  %dev.i = getelementptr inbounds %struct.iwl_drv, ptr %drv.031, i32 0, i32 4
  %6 = ptrtoint ptr %arrayidx.lcssa to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.lcssa, align 4
  %8 = ptrtoint ptr %dbgfs_drv.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dbgfs_drv.i, align 4
  %call.i = tail call ptr @debugfs_create_dir(ptr noundef %7, ptr noundef %9) #11
  %10 = ptrtoint ptr %dbgfs_op_mode.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %dbgfs_op_mode.i, align 4
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %4, align 4
  %13 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %trans.i, align 4
  %cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cfg.i, align 8
  %call5.i = tail call ptr %12(ptr noundef %14, ptr noundef %16, ptr noundef %fw.i, ptr noundef %call.i) #11
  %tobool6.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not.i, label %do.end.i, label %for.body7._iwl_op_mode_start.exit_crit_edge

for.body7._iwl_op_mode_start.exit_crit_edge:      ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #13
  br label %_iwl_op_mode_start.exit

do.end.i:                                         ; preds = %for.body7
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %18, i32 noundef 0, ptr noundef nonnull @.str.78, i32 noundef 0) #11
  %19 = ptrtoint ptr %dbgfs_op_mode.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dbgfs_op_mode.i, align 4
  tail call void @debugfs_remove(ptr noundef %20) #11
  %21 = ptrtoint ptr %dbgfs_op_mode.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %dbgfs_op_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %exitcond.i.not = icmp eq i8 %5, 1
  br i1 %exitcond.i.not, label %for.body.i.1, label %do.end.i._iwl_op_mode_start.exit_crit_edge

do.end.i._iwl_op_mode_start.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %_iwl_op_mode_start.exit

for.body.i.1:                                     ; preds = %do.end.i
  %22 = ptrtoint ptr %arrayidx.lcssa to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.lcssa, align 4
  %24 = ptrtoint ptr %dbgfs_drv.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dbgfs_drv.i, align 4
  %call.i.1 = tail call ptr @debugfs_create_dir(ptr noundef %23, ptr noundef %25) #11
  %26 = ptrtoint ptr %dbgfs_op_mode.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i.1, ptr %dbgfs_op_mode.i, align 4
  %27 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %4, align 4
  %29 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %trans.i, align 4
  %cfg.i.1 = getelementptr inbounds %struct.iwl_trans, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %cfg.i.1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cfg.i.1, align 8
  %call5.i.1 = tail call ptr %28(ptr noundef %30, ptr noundef %32, ptr noundef %fw.i, ptr noundef %call.i.1) #11
  %tobool6.not.i.1 = icmp eq ptr %call5.i.1, null
  br i1 %tobool6.not.i.1, label %do.end.i.1, label %for.body.i.1._iwl_op_mode_start.exit_crit_edge

for.body.i.1._iwl_op_mode_start.exit_crit_edge:   ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %_iwl_op_mode_start.exit

do.end.i.1:                                       ; preds = %for.body.i.1
  %33 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %34, i32 noundef 0, ptr noundef nonnull @.str.78, i32 noundef 1) #11
  %35 = ptrtoint ptr %dbgfs_op_mode.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dbgfs_op_mode.i, align 4
  tail call void @debugfs_remove(ptr noundef %36) #11
  %37 = ptrtoint ptr %dbgfs_op_mode.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %dbgfs_op_mode.i, align 4
  %38 = ptrtoint ptr %arrayidx.lcssa to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.lcssa, align 4
  %40 = ptrtoint ptr %dbgfs_drv.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dbgfs_drv.i, align 4
  %call.i.2 = tail call ptr @debugfs_create_dir(ptr noundef %39, ptr noundef %41) #11
  %42 = ptrtoint ptr %dbgfs_op_mode.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i.2, ptr %dbgfs_op_mode.i, align 4
  %43 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %4, align 4
  %45 = ptrtoint ptr %trans.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %trans.i, align 4
  %cfg.i.2 = getelementptr inbounds %struct.iwl_trans, ptr %46, i32 0, i32 4
  %47 = ptrtoint ptr %cfg.i.2 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cfg.i.2, align 8
  %call5.i.2 = tail call ptr %44(ptr noundef %46, ptr noundef %48, ptr noundef %fw.i, ptr noundef %call.i.2) #11
  %tobool6.not.i.2 = icmp eq ptr %call5.i.2, null
  br i1 %tobool6.not.i.2, label %do.end.i.2, label %do.end.i.1._iwl_op_mode_start.exit_crit_edge

do.end.i.1._iwl_op_mode_start.exit_crit_edge:     ; preds = %do.end.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %_iwl_op_mode_start.exit

do.end.i.2:                                       ; preds = %do.end.i.1
  call void @__sanitizer_cov_trace_pc() #13
  %49 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %50, i32 noundef 0, ptr noundef nonnull @.str.78, i32 noundef 2) #11
  %51 = ptrtoint ptr %dbgfs_op_mode.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dbgfs_op_mode.i, align 4
  tail call void @debugfs_remove(ptr noundef %52) #11
  %53 = ptrtoint ptr %dbgfs_op_mode.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %dbgfs_op_mode.i, align 4
  br label %_iwl_op_mode_start.exit

_iwl_op_mode_start.exit:                          ; preds = %do.end.i.2, %do.end.i.1._iwl_op_mode_start.exit_crit_edge, %for.body.i.1._iwl_op_mode_start.exit_crit_edge, %do.end.i._iwl_op_mode_start.exit_crit_edge, %for.body7._iwl_op_mode_start.exit_crit_edge
  %call5.i.lcssa = phi ptr [ %call5.i, %for.body7._iwl_op_mode_start.exit_crit_edge ], [ %call5.i, %do.end.i._iwl_op_mode_start.exit_crit_edge ], [ %call5.i.1, %for.body.i.1._iwl_op_mode_start.exit_crit_edge ], [ %call5.i.2, %do.end.i.1._iwl_op_mode_start.exit_crit_edge ], [ %call5.i.2, %do.end.i.2 ]
  %op_mode = getelementptr inbounds %struct.iwl_drv, ptr %drv.031, i32 0, i32 2
  %54 = ptrtoint ptr %op_mode to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call5.i.lcssa, ptr %op_mode, align 4
  %55 = ptrtoint ptr %drv.031 to i32
  call void @__asan_load4_noabort(i32 %55)
  %drv.0 = load ptr, ptr %drv.031, align 4
  %cmp6.not = icmp eq ptr %drv.0, %drv3
  br i1 %cmp6.not, label %_iwl_op_mode_start.exit.cleanup_crit_edge, label %_iwl_op_mode_start.exit.for.body7_crit_edge

_iwl_op_mode_start.exit.for.body7_crit_edge:      ; preds = %_iwl_op_mode_start.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body7

_iwl_op_mode_start.exit.cleanup_crit_edge:        ; preds = %_iwl_op_mode_start.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc14:                                        ; preds = %entry
  %56 = load ptr, ptr getelementptr inbounds ([2 x %struct.iwlwifi_opmode_table], ptr @iwlwifi_opmode_table, i32 0, i32 1), align 4
  %call.1 = tail call i32 @strcmp(ptr noundef %56, ptr noundef %name) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %for.inc14.if.end_crit_edge, label %for.inc14.cleanup_crit_edge

for.inc14.cleanup_crit_edge:                      ; preds = %for.inc14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc14.if.end_crit_edge:                       ; preds = %for.inc14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

cleanup:                                          ; preds = %for.inc14.cleanup_crit_edge, %_iwl_op_mode_start.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ -5, %for.inc14.cleanup_crit_edge ], [ 0, %_iwl_op_mode_start.exit.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @iwlwifi_opmode_table_mtx) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @_iwl_op_mode_start(ptr noundef %drv, ptr nocapture noundef readonly %op) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ops1 = getelementptr inbounds %struct.iwlwifi_opmode_table, ptr %op, i32 0, i32 1
  %0 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops1, align 4
  %2 = load i8, ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 3), align 4, !range !284
  %dbgfs_drv = getelementptr inbounds %struct.iwl_drv, ptr %drv, i32 0, i32 8
  %dbgfs_op_mode = getelementptr inbounds %struct.iwl_drv, ptr %drv, i32 0, i32 10
  %trans = getelementptr inbounds %struct.iwl_drv, ptr %drv, i32 0, i32 3
  %fw = getelementptr inbounds %struct.iwl_drv, ptr %drv, i32 0, i32 1
  %dev = getelementptr inbounds %struct.iwl_drv, ptr %drv, i32 0, i32 4
  %3 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %op, align 4
  %5 = ptrtoint ptr %dbgfs_drv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dbgfs_drv, align 4
  %call = tail call ptr @debugfs_create_dir(ptr noundef %4, ptr noundef %6) #11
  %7 = ptrtoint ptr %dbgfs_op_mode to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call, ptr %dbgfs_op_mode, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %10 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %trans, align 4
  %cfg = getelementptr inbounds %struct.iwl_trans, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cfg, align 8
  %call5 = tail call ptr %9(ptr noundef %11, ptr noundef %13, ptr noundef %fw, ptr noundef %call) #11
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %entry
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %15, i32 noundef 0, ptr noundef nonnull @.str.78, i32 noundef 0) #11
  %16 = ptrtoint ptr %dbgfs_op_mode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dbgfs_op_mode, align 4
  tail call void @debugfs_remove(ptr noundef %17) #11
  %18 = ptrtoint ptr %dbgfs_op_mode to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %dbgfs_op_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %2)
  %exitcond.not = icmp eq i8 %2, 1
  br i1 %exitcond.not, label %for.body.1, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.1:                                       ; preds = %do.end
  %19 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %op, align 4
  %21 = ptrtoint ptr %dbgfs_drv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dbgfs_drv, align 4
  %call.1 = tail call ptr @debugfs_create_dir(ptr noundef %20, ptr noundef %22) #11
  %23 = ptrtoint ptr %dbgfs_op_mode to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.1, ptr %dbgfs_op_mode, align 4
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %26 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %trans, align 4
  %cfg.1 = getelementptr inbounds %struct.iwl_trans, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %cfg.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cfg.1, align 8
  %call5.1 = tail call ptr %25(ptr noundef %27, ptr noundef %29, ptr noundef %fw, ptr noundef %call.1) #11
  %tobool6.not.1 = icmp eq ptr %call5.1, null
  br i1 %tobool6.not.1, label %do.end.1, label %for.body.1.cleanup_crit_edge

for.body.1.cleanup_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end.1:                                         ; preds = %for.body.1
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %31, i32 noundef 0, ptr noundef nonnull @.str.78, i32 noundef 1) #11
  %32 = ptrtoint ptr %dbgfs_op_mode to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dbgfs_op_mode, align 4
  tail call void @debugfs_remove(ptr noundef %33) #11
  %34 = ptrtoint ptr %dbgfs_op_mode to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %dbgfs_op_mode, align 4
  %35 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %op, align 4
  %37 = ptrtoint ptr %dbgfs_drv to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dbgfs_drv, align 4
  %call.2 = tail call ptr @debugfs_create_dir(ptr noundef %36, ptr noundef %38) #11
  %39 = ptrtoint ptr %dbgfs_op_mode to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.2, ptr %dbgfs_op_mode, align 4
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 4
  %42 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %trans, align 4
  %cfg.2 = getelementptr inbounds %struct.iwl_trans, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %cfg.2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cfg.2, align 8
  %call5.2 = tail call ptr %41(ptr noundef %43, ptr noundef %45, ptr noundef %fw, ptr noundef %call.2) #11
  %tobool6.not.2 = icmp eq ptr %call5.2, null
  br i1 %tobool6.not.2, label %do.end.2, label %do.end.1.cleanup_crit_edge

do.end.1.cleanup_crit_edge:                       ; preds = %do.end.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end.2:                                         ; preds = %do.end.1
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %47, i32 noundef 0, ptr noundef nonnull @.str.78, i32 noundef 2) #11
  %48 = ptrtoint ptr %dbgfs_op_mode to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dbgfs_op_mode, align 4
  tail call void @debugfs_remove(ptr noundef %49) #11
  %50 = ptrtoint ptr %dbgfs_op_mode to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %dbgfs_op_mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end.2, %do.end.1.cleanup_crit_edge, %for.body.1.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %call5.lcssa = phi ptr [ %call5, %do.end.cleanup_crit_edge ], [ %call5, %entry.cleanup_crit_edge ], [ %call5.1, %for.body.1.cleanup_crit_edge ], [ %call5.2, %do.end.1.cleanup_crit_edge ], [ %call5.2, %do.end.2 ]
  ret ptr %call5.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_opmode_deregister(ptr nocapture noundef readonly %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @iwlwifi_opmode_table_mtx, i32 noundef 0) #11
  %0 = load ptr, ptr @iwlwifi_opmode_table, align 4
  %call = tail call i32 @strcmp(ptr noundef %0, ptr noundef %name) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.inc15

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %for.inc15.if.end_crit_edge, %entry.if.end_crit_edge
  %i.026.lcssa = phi i32 [ 0, %entry.if.end_crit_edge ], [ 1, %for.inc15.if.end_crit_edge ]
  %ops = getelementptr [2 x %struct.iwlwifi_opmode_table], ptr @iwlwifi_opmode_table, i32 0, i32 %i.026.lcssa, i32 1
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %ops, align 4
  %drv4 = getelementptr [2 x %struct.iwlwifi_opmode_table], ptr @iwlwifi_opmode_table, i32 0, i32 %i.026.lcssa, i32 2
  %2 = ptrtoint ptr %drv4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %drv.027 = load ptr, ptr %drv4, align 4
  %cmp8.not28 = icmp eq ptr %drv.027, %drv4
  br i1 %cmp8.not28, label %if.end.cleanup_crit_edge, label %if.end.for.body9_crit_edge

if.end.for.body9_crit_edge:                       ; preds = %if.end
  br label %for.body9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body9:                                        ; preds = %_iwl_op_mode_stop.exit.for.body9_crit_edge, %if.end.for.body9_crit_edge
  %drv.029 = phi ptr [ %drv.0, %_iwl_op_mode_stop.exit.for.body9_crit_edge ], [ %drv.027, %if.end.for.body9_crit_edge ]
  %op_mode.i = getelementptr inbounds %struct.iwl_drv, ptr %drv.029, i32 0, i32 2
  %3 = ptrtoint ptr %op_mode.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %op_mode.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %for.body9._iwl_op_mode_stop.exit_crit_edge, label %if.then.i

for.body9._iwl_op_mode_stop.exit_crit_edge:       ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #13
  br label %_iwl_op_mode_stop.exit

if.then.i:                                        ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__might_sleep(ptr noundef nonnull @.str.73, i32 noundef 131) #11
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %stop.i.i = getelementptr inbounds %struct.iwl_op_mode_ops, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %stop.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %stop.i.i, align 4
  tail call void %8(ptr noundef nonnull %4) #11
  %9 = ptrtoint ptr %op_mode.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %op_mode.i, align 4
  %dbgfs_op_mode.i = getelementptr inbounds %struct.iwl_drv, ptr %drv.029, i32 0, i32 10
  %10 = ptrtoint ptr %dbgfs_op_mode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dbgfs_op_mode.i, align 4
  tail call void @debugfs_remove(ptr noundef %11) #11
  %12 = ptrtoint ptr %dbgfs_op_mode.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %dbgfs_op_mode.i, align 4
  br label %_iwl_op_mode_stop.exit

_iwl_op_mode_stop.exit:                           ; preds = %if.then.i, %for.body9._iwl_op_mode_stop.exit_crit_edge
  %13 = ptrtoint ptr %drv.029 to i32
  call void @__asan_load4_noabort(i32 %13)
  %drv.0 = load ptr, ptr %drv.029, align 4
  %cmp8.not = icmp eq ptr %drv.0, %drv4
  br i1 %cmp8.not, label %_iwl_op_mode_stop.exit.cleanup_crit_edge, label %_iwl_op_mode_stop.exit.for.body9_crit_edge

_iwl_op_mode_stop.exit.for.body9_crit_edge:       ; preds = %_iwl_op_mode_stop.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body9

_iwl_op_mode_stop.exit.cleanup_crit_edge:         ; preds = %_iwl_op_mode_stop.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc15:                                        ; preds = %entry
  %14 = load ptr, ptr getelementptr inbounds ([2 x %struct.iwlwifi_opmode_table], ptr @iwlwifi_opmode_table, i32 0, i32 1), align 4
  %call.1 = tail call i32 @strcmp(ptr noundef %14, ptr noundef %name) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %for.inc15.if.end_crit_edge, label %for.inc15.cleanup_crit_edge

for.inc15.cleanup_crit_edge:                      ; preds = %for.inc15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc15.if.end_crit_edge:                       ; preds = %for.inc15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

cleanup:                                          ; preds = %for.inc15.cleanup_crit_edge, %_iwl_op_mode_stop.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @iwlwifi_opmode_table_mtx) #11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @iwl_drv_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  store volatile ptr getelementptr inbounds ([2 x %struct.iwlwifi_opmode_table], ptr @iwlwifi_opmode_table, i32 0, i32 0, i32 2), ptr getelementptr inbounds ([2 x %struct.iwlwifi_opmode_table], ptr @iwlwifi_opmode_table, i32 0, i32 0, i32 2), align 4
  store ptr getelementptr inbounds ([2 x %struct.iwlwifi_opmode_table], ptr @iwlwifi_opmode_table, i32 0, i32 0, i32 2), ptr getelementptr inbounds ([2 x %struct.iwlwifi_opmode_table], ptr @iwlwifi_opmode_table, i32 0, i32 0, i32 2, i32 1), align 4
  store volatile ptr getelementptr inbounds ([2 x %struct.iwlwifi_opmode_table], ptr @iwlwifi_opmode_table, i32 0, i32 1, i32 2), ptr getelementptr inbounds ([2 x %struct.iwlwifi_opmode_table], ptr @iwlwifi_opmode_table, i32 0, i32 1, i32 2), align 4
  store ptr getelementptr inbounds ([2 x %struct.iwlwifi_opmode_table], ptr @iwlwifi_opmode_table, i32 0, i32 1, i32 2), ptr getelementptr inbounds ([2 x %struct.iwlwifi_opmode_table], ptr @iwlwifi_opmode_table, i32 0, i32 1, i32 2, i32 1), align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79) #16
  %call1 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.81, ptr noundef null) #11
  store ptr %call1, ptr @iwl_dbgfs_root, align 4
  %call2 = tail call i32 @iwl_pci_register_driver() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %cleanup_debugfs

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup_debugfs:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = load ptr, ptr @iwl_dbgfs_root, align 4
  tail call void @debugfs_remove(ptr noundef %0) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup_debugfs, %entry.cleanup_crit_edge
  ret i32 %call2
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @iwl_drv_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @iwl_pci_unregister_driver() #11
  %0 = load ptr, ptr @iwl_dbgfs_root, align 4
  tail call void @debugfs_remove(ptr noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_pci_unregister_driver() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_dbg(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware_nowait(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iwl_req_fw_callback(ptr noundef %ucode_raw, ptr noundef %context) #0 align 64 {
entry:
  %buildstr.i485 = alloca [25 x i8], align 1
  %buildstr.i = alloca [25 x i8], align 1
  %trigger_tlv_sz = alloca [17 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fw1 = getelementptr inbounds %struct.iwl_drv, ptr %context, i32 0, i32 1
  %trans = getelementptr inbounds %struct.iwl_drv, ptr %context, i32 0, i32 3
  %0 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trans, align 4
  %cfg = getelementptr inbounds %struct.iwl_trans, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg, align 8
  %ucode_api_max = getelementptr inbounds %struct.iwl_cfg, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %ucode_api_max to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ucode_api_max, align 4
  %conv = zext i8 %5 to i32
  %ucode_api_min = getelementptr inbounds %struct.iwl_cfg, ptr %3, i32 0, i32 28
  %6 = ptrtoint ptr %ucode_api_min to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ucode_api_min, align 1
  %conv4 = zext i8 %7 to i32
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %trigger_tlv_sz) #11
  %8 = call ptr @memset(ptr %trigger_tlv_sz, i32 255, i32 68)
  %ucode_capa = getelementptr inbounds %struct.iwl_drv, ptr %context, i32 0, i32 1, i32 5
  %9 = ptrtoint ptr %ucode_capa to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 200, ptr %ucode_capa, align 4
  %standard_phy_calibration_size = getelementptr inbounds %struct.iwl_drv, ptr %context, i32 0, i32 1, i32 5, i32 2
  %10 = ptrtoint ptr %standard_phy_calibration_size to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 18, ptr %standard_phy_calibration_size, align 4
  %n_scan_channels = getelementptr inbounds %struct.iwl_drv, ptr %context, i32 0, i32 1, i32 5, i32 1
  %11 = ptrtoint ptr %n_scan_channels to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 40, ptr %n_scan_channels, align 4
  %num_stations = getelementptr inbounds %struct.iwl_drv, ptr %context, i32 0, i32 1, i32 5, i32 6
  %12 = ptrtoint ptr %num_stations to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 16, ptr %num_stations, align 4
  %dbg = getelementptr inbounds %struct.iwl_drv, ptr %context, i32 0, i32 1, i32 20
  %dump_mask = getelementptr inbounds %struct.iwl_drv, ptr %context, i32 0, i32 1, i32 20, i32 7
  %13 = ptrtoint ptr %dump_mask to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %dump_mask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 468) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.out_free_fw_crit_edge, label %if.end

entry.out_free_fw_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free_fw

if.end:                                           ; preds = %entry
  %tobool8.not = icmp eq ptr %ucode_raw, null
  br i1 %tobool8.not, label %if.end.try_again_crit_edge, label %do.end

if.end.try_again_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %try_again

do.end:                                           ; preds = %if.end
  %dev = getelementptr inbounds %struct.iwl_drv, ptr %context, i32 0, i32 4
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %firmware_name = getelementptr inbounds %struct.iwl_drv, ptr %context, i32 0, i32 6
  %17 = ptrtoint ptr %ucode_raw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ucode_raw, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %16, i32 noundef 65537, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_req_fw_callback, ptr noundef nonnull @.str.12, ptr noundef %firmware_name, i32 noundef %18) #11
  %19 = ptrtoint ptr %ucode_raw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ucode_raw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %20)
  %cmp = icmp ult i32 %20, 4
  br i1 %cmp, label %do.end20, label %if.end24

do.end20:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %22, i32 noundef 0, ptr noundef nonnull @.str.13) #11
  br label %try_again

if.end24:                                         ; preds = %do.end
  %data = getelementptr inbounds %struct.firmware, ptr %ucode_raw, i32 0, i32 1
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool25.not = icmp eq i32 %26, 0
  br i1 %tobool25.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %if.end24
  call void @llvm.lifetime.start.p0(i64 25, ptr nonnull %buildstr.i) #11
  %27 = call ptr @memset(ptr %buildstr.i, i32 255, i32 25)
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %24, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #11
  %31 = ptrtoint ptr %fw1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %fw1, align 4
  %and.i = lshr i32 %30, 8
  %trunc.i = trunc i32 %and.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %trunc.i)
  %switch.i = icmp ult i8 %trunc.i, 3
  %32 = ptrtoint ptr %ucode_raw to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ucode_raw, align 4
  br i1 %switch.i, label %sw.bb.i, label %sw.default.i

sw.default.i:                                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %33)
  %cmp.i481 = icmp ult i32 %33, 28
  br i1 %cmp.i481, label %do.end.i, label %if.end.i482

do.end.i:                                         ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %35, i32 noundef 0, ptr noundef nonnull @.str.19) #11
  br label %iwl_parse_v1_v2_firmware.exit

if.end.i482:                                      ; preds = %sw.default.i
  %u.i = getelementptr inbounds %struct.iwl_ucode_header, ptr %24, i32 0, i32 1
  %36 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %u.i, align 4
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #11
  %inst_size.i = getelementptr inbounds %struct.iwl_ucode_header, ptr %24, i32 0, i32 1, i32 0, i32 1
  %39 = ptrtoint ptr %inst_size.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %inst_size.i, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #11
  %42 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call7.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %43, null
  br i1 %tobool.not.i.i.i, label %if.end.i482.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i482.if.end.i.i.i_crit_edge:               ; preds = %if.end.i482
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i482
  %sec_counter.i.i.i = getelementptr [4 x %struct.fw_img_parsing], ptr %call7.i.i, i32 0, i32 0, i32 1
  %44 = ptrtoint ptr %sec_counter.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sec_counter.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %45)
  %cmp.not.i.i.i = icmp slt i32 %45, 2
  br i1 %cmp.not.i.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i.set_sec_size.exit.i_crit_edge

land.lhs.true.i.i.i.set_sec_size.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sec_size.exit.i

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %if.end.i482.if.end.i.i.i_crit_edge
  %call.i.i.i = tail call noalias ptr @krealloc(ptr noundef %43, i32 noundef 24, i32 noundef 3264) #17
  %tobool4.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool4.not.i.i.i, label %if.end.i.i.i.set_sec_size.exit.i_crit_edge, label %if.end6.i.i.i

if.end.i.i.i.set_sec_size.exit.i_crit_edge:       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sec_size.exit.i

if.end6.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call.i.i.i, ptr %call7.i.i, align 8
  %sec_counter8.i.i.i = getelementptr [4 x %struct.fw_img_parsing], ptr %call7.i.i, i32 0, i32 0, i32 1
  %47 = ptrtoint ptr %sec_counter8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 2, ptr %sec_counter8.i.i.i, align 4
  br label %set_sec_size.exit.i

set_sec_size.exit.i:                              ; preds = %if.end6.i.i.i, %if.end.i.i.i.set_sec_size.exit.i_crit_edge, %land.lhs.true.i.i.i.set_sec_size.exit.i_crit_edge
  %48 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %call7.i.i, align 8
  %size3.i.i = getelementptr %struct.fw_sec, ptr %49, i32 1, i32 1
  %50 = ptrtoint ptr %size3.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %41, ptr %size3.i.i, align 4
  %data_size.i = getelementptr inbounds %struct.iwl_ucode_header, ptr %24, i32 0, i32 1, i32 0, i32 2
  %51 = ptrtoint ptr %data_size.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %data_size.i, align 4
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #11
  %54 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %call7.i.i, align 8
  %tobool.not.i.i147.i = icmp eq ptr %55, null
  br i1 %tobool.not.i.i147.i, label %set_sec_size.exit.i.if.end.i.i153.i_crit_edge, label %land.lhs.true.i.i150.i

set_sec_size.exit.i.if.end.i.i153.i_crit_edge:    ; preds = %set_sec_size.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i153.i

land.lhs.true.i.i150.i:                           ; preds = %set_sec_size.exit.i
  %sec_counter.i.i148.i = getelementptr [4 x %struct.fw_img_parsing], ptr %call7.i.i, i32 0, i32 0, i32 1
  %56 = ptrtoint ptr %sec_counter.i.i148.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %sec_counter.i.i148.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %57)
  %cmp.not.i.i149.i = icmp slt i32 %57, 1
  br i1 %cmp.not.i.i149.i, label %land.lhs.true.i.i150.i.if.end.i.i153.i_crit_edge, label %land.lhs.true.i.i150.i.set_sec_size.exit157.i_crit_edge

land.lhs.true.i.i150.i.set_sec_size.exit157.i_crit_edge: ; preds = %land.lhs.true.i.i150.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sec_size.exit157.i

land.lhs.true.i.i150.i.if.end.i.i153.i_crit_edge: ; preds = %land.lhs.true.i.i150.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i153.i

if.end.i.i153.i:                                  ; preds = %land.lhs.true.i.i150.i.if.end.i.i153.i_crit_edge, %set_sec_size.exit.i.if.end.i.i153.i_crit_edge
  %call.i.i151.i = tail call noalias ptr @krealloc(ptr noundef %55, i32 noundef 12, i32 noundef 3264) #17
  %tobool4.not.i.i152.i = icmp eq ptr %call.i.i151.i, null
  br i1 %tobool4.not.i.i152.i, label %if.end.i.i153.i.set_sec_size.exit157.i_crit_edge, label %if.end6.i.i155.i

if.end.i.i153.i.set_sec_size.exit157.i_crit_edge: ; preds = %if.end.i.i153.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sec_size.exit157.i

if.end6.i.i155.i:                                 ; preds = %if.end.i.i153.i
  call void @__sanitizer_cov_trace_pc() #13
  %58 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call.i.i151.i, ptr %call7.i.i, align 8
  %sec_counter8.i.i154.i = getelementptr [4 x %struct.fw_img_parsing], ptr %call7.i.i, i32 0, i32 0, i32 1
  %59 = ptrtoint ptr %sec_counter8.i.i154.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1, ptr %sec_counter8.i.i154.i, align 4
  br label %set_sec_size.exit157.i

set_sec_size.exit157.i:                           ; preds = %if.end6.i.i155.i, %if.end.i.i153.i.set_sec_size.exit157.i_crit_edge, %land.lhs.true.i.i150.i.set_sec_size.exit157.i_crit_edge
  %60 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %call7.i.i, align 8
  %size3.i156.i = getelementptr %struct.fw_sec, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %size3.i156.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %53, ptr %size3.i156.i, align 4
  %init_size.i = getelementptr inbounds %struct.iwl_ucode_header, ptr %24, i32 0, i32 1, i32 0, i32 3
  %63 = ptrtoint ptr %init_size.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %init_size.i, align 4
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #11
  %arrayidx.i.i.i = getelementptr [4 x %struct.fw_img_parsing], ptr %call7.i.i, i32 0, i32 1
  %66 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx.i.i.i, align 8
  %tobool.not.i.i158.i = icmp eq ptr %67, null
  br i1 %tobool.not.i.i158.i, label %set_sec_size.exit157.i.if.end.i.i164.i_crit_edge, label %land.lhs.true.i.i161.i

set_sec_size.exit157.i.if.end.i.i164.i_crit_edge: ; preds = %set_sec_size.exit157.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i164.i

land.lhs.true.i.i161.i:                           ; preds = %set_sec_size.exit157.i
  %sec_counter.i.i159.i = getelementptr [4 x %struct.fw_img_parsing], ptr %call7.i.i, i32 0, i32 1, i32 1
  %68 = ptrtoint ptr %sec_counter.i.i159.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %sec_counter.i.i159.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %69)
  %cmp.not.i.i160.i = icmp slt i32 %69, 2
  br i1 %cmp.not.i.i160.i, label %land.lhs.true.i.i161.i.if.end.i.i164.i_crit_edge, label %land.lhs.true.i.i161.i.set_sec_size.exit168.i_crit_edge

land.lhs.true.i.i161.i.set_sec_size.exit168.i_crit_edge: ; preds = %land.lhs.true.i.i161.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sec_size.exit168.i

land.lhs.true.i.i161.i.if.end.i.i164.i_crit_edge: ; preds = %land.lhs.true.i.i161.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i164.i

if.end.i.i164.i:                                  ; preds = %land.lhs.true.i.i161.i.if.end.i.i164.i_crit_edge, %set_sec_size.exit157.i.if.end.i.i164.i_crit_edge
  %call.i.i162.i = tail call noalias ptr @krealloc(ptr noundef %67, i32 noundef 24, i32 noundef 3264) #17
  %tobool4.not.i.i163.i = icmp eq ptr %call.i.i162.i, null
  br i1 %tobool4.not.i.i163.i, label %if.end.i.i164.i.set_sec_size.exit168.i_crit_edge, label %if.end6.i.i166.i

if.end.i.i164.i.set_sec_size.exit168.i_crit_edge: ; preds = %if.end.i.i164.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sec_size.exit168.i

if.end6.i.i166.i:                                 ; preds = %if.end.i.i164.i
  call void @__sanitizer_cov_trace_pc() #13
  %70 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call.i.i162.i, ptr %arrayidx.i.i.i, align 8
  %sec_counter8.i.i165.i = getelementptr [4 x %struct.fw_img_parsing], ptr %call7.i.i, i32 0, i32 1, i32 1
  %71 = ptrtoint ptr %sec_counter8.i.i165.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 2, ptr %sec_counter8.i.i165.i, align 4
  br label %set_sec_size.exit168.i

set_sec_size.exit168.i:                           ; preds = %if.end6.i.i166.i, %if.end.i.i164.i.set_sec_size.exit168.i_crit_edge, %land.lhs.true.i.i161.i.set_sec_size.exit168.i_crit_edge
  %72 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx.i.i.i, align 8
  %size3.i167.i = getelementptr %struct.fw_sec, ptr %73, i32 1, i32 1
  %74 = ptrtoint ptr %size3.i167.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %65, ptr %size3.i167.i, align 4
  %init_data_size.i = getelementptr inbounds %struct.iwl_ucode_header, ptr %24, i32 0, i32 1, i32 0, i32 4
  %75 = ptrtoint ptr %init_data_size.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %init_data_size.i, align 4
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #11
  %78 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx.i.i.i, align 8
  %tobool.not.i.i170.i = icmp eq ptr %79, null
  br i1 %tobool.not.i.i170.i, label %set_sec_size.exit168.i.if.end.i.i176.i_crit_edge, label %land.lhs.true.i.i173.i

set_sec_size.exit168.i.if.end.i.i176.i_crit_edge: ; preds = %set_sec_size.exit168.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i176.i

land.lhs.true.i.i173.i:                           ; preds = %set_sec_size.exit168.i
  %sec_counter.i.i171.i = getelementptr [4 x %struct.fw_img_parsing], ptr %call7.i.i, i32 0, i32 1, i32 1
  %80 = ptrtoint ptr %sec_counter.i.i171.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %sec_counter.i.i171.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %81)
  %cmp.not.i.i172.i = icmp slt i32 %81, 1
  br i1 %cmp.not.i.i172.i, label %land.lhs.true.i.i173.i.if.end.i.i176.i_crit_edge, label %land.lhs.true.i.i173.i.sw.epilog.i_crit_edge

land.lhs.true.i.i173.i.sw.epilog.i_crit_edge:     ; preds = %land.lhs.true.i.i173.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

land.lhs.true.i.i173.i.if.end.i.i176.i_crit_edge: ; preds = %land.lhs.true.i.i173.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i176.i

if.end.i.i176.i:                                  ; preds = %land.lhs.true.i.i173.i.if.end.i.i176.i_crit_edge, %set_sec_size.exit168.i.if.end.i.i176.i_crit_edge
  %call.i.i174.i = tail call noalias ptr @krealloc(ptr noundef %79, i32 noundef 12, i32 noundef 3264) #17
  %tobool4.not.i.i175.i = icmp eq ptr %call.i.i174.i, null
  br i1 %tobool4.not.i.i175.i, label %if.end.i.i176.i.sw.epilog.i_crit_edge, label %if.end6.i.i178.i

if.end.i.i176.i.sw.epilog.i_crit_edge:            ; preds = %if.end.i.i176.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

if.end6.i.i178.i:                                 ; preds = %if.end.i.i176.i
  call void @__sanitizer_cov_trace_pc() #13
  %82 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call.i.i174.i, ptr %arrayidx.i.i.i, align 8
  %sec_counter8.i.i177.i = getelementptr [4 x %struct.fw_img_parsing], ptr %call7.i.i, i32 0, i32 1, i32 1
  %83 = ptrtoint ptr %sec_counter8.i.i177.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 1, ptr %sec_counter8.i.i177.i, align 4
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.then26
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %33)
  %cmp14.i = icmp ult i32 %33, 24
  br i1 %cmp14.i, label %do.end19.i, label %if.end23.i

do.end19.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  %84 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %85, i32 noundef 0, ptr noundef nonnull @.str.19) #11
  br label %iwl_parse_v1_v2_firmware.exit

if.end23.i:                                       ; preds = %sw.bb.i
  %u24.i = getelementptr inbounds %struct.iwl_ucode_header, ptr %24, i32 0, i32 1
  %86 = ptrtoint ptr %u24.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %u24.i, align 4
  %88 = tail call i32 @llvm.bswap.i32(i32 %87) #11
  %89 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %call7.i.i, align 8
  %tobool.not.i.i181.i = icmp eq ptr %90, null
  br i1 %tobool.not.i.i181.i, label %if.end23.i.if.end.i.i187.i_crit_edge, label %land.lhs.true.i.i184.i

if.end23.i.if.end.i.i187.i_crit_edge:             ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i187.i

land.lhs.true.i.i184.i:                           ; preds = %if.end23.i
  %sec_counter.i.i182.i = getelementptr [4 x %struct.fw_img_parsing], ptr %call7.i.i, i32 0, i32 0, i32 1
  %91 = ptrtoint ptr %sec_counter.i.i182.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %sec_counter.i.i182.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %92)
  %cmp.not.i.i183.i = icmp slt i32 %92, 2
  br i1 %cmp.not.i.i183.i, label %land.lhs.true.i.i184.i.if.end.i.i187.i_crit_edge, label %land.lhs.true.i.i184.i.set_sec_size.exit191.i_crit_edge

land.lhs.true.i.i184.i.set_sec_size.exit191.i_crit_edge: ; preds = %land.lhs.true.i.i184.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sec_size.exit191.i

land.lhs.true.i.i184.i.if.end.i.i187.i_crit_edge: ; preds = %land.lhs.true.i.i184.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i187.i

if.end.i.i187.i:                                  ; preds = %land.lhs.true.i.i184.i.if.end.i.i187.i_crit_edge, %if.end23.i.if.end.i.i187.i_crit_edge
  %call.i.i185.i = tail call noalias ptr @krealloc(ptr noundef %90, i32 noundef 24, i32 noundef 3264) #17
  %tobool4.not.i.i186.i = icmp eq ptr %call.i.i185.i, null
  br i1 %tobool4.not.i.i186.i, label %if.end.i.i187.i.set_sec_size.exit191.i_crit_edge, label %if.end6.i.i189.i

if.end.i.i187.i.set_sec_size.exit191.i_crit_edge: ; preds = %if.end.i.i187.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sec_size.exit191.i

if.end6.i.i189.i:                                 ; preds = %if.end.i.i187.i
  call void @__sanitizer_cov_trace_pc() #13
  %93 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call.i.i185.i, ptr %call7.i.i, align 8
  %sec_counter8.i.i188.i = getelementptr [4 x %struct.fw_img_parsing], ptr %call7.i.i, i32 0, i32 0, i32 1
  %94 = ptrtoint ptr %sec_counter8.i.i188.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 2, ptr %sec_counter8.i.i188.i, align 4
  br label %set_sec_size.exit191.i

set_sec_size.exit191.i:                           ; preds = %if.end6.i.i189.i, %if.end.i.i187.i.set_sec_size.exit191.i_crit_edge, %land.lhs.true.i.i184.i.set_sec_size.exit191.i_crit_edge
  %95 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %call7.i.i, align 8
  %size3.i190.i = getelementptr %struct.fw_sec, ptr %96, i32 1, i32 1
  %97 = ptrtoint ptr %size3.i190.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %88, ptr %size3.i190.i, align 4
  %data_size27.i = getelementptr inbounds %struct.iwl_ucode_header, ptr %24, i32 0, i32 1, i32 0, i32 1
  %98 = ptrtoint ptr %data_size27.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %data_size27.i, align 4
  %100 = tail call i32 @llvm.bswap.i32(i32 %99) #11
  %101 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %call7.i.i, align 8
  %tobool.not.i.i192.i = icmp eq ptr %102, null
  br i1 %tobool.not.i.i192.i, label %set_sec_size.exit191.i.if.end.i.i198.i_crit_edge, label %land.lhs.true.i.i195.i

set_sec_size.exit191.i.if.end.i.i198.i_crit_edge: ; preds = %set_sec_size.exit191.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i198.i

land.lhs.true.i.i195.i:                           ; preds = %set_sec_size.exit191.i
  %sec_counter.i.i193.i = getelementptr [4 x %struct.fw_img_parsing], ptr %call7.i.i, i32 0, i32 0, i32 1
  %103 = ptrtoint ptr %sec_counter.i.i193.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %sec_counter.i.i193.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %104)
  %cmp.not.i.i194.i = icmp slt i32 %104, 1
  br i1 %cmp.not.i.i194.i, label %land.lhs.true.i.i195.i.if.end.i.i198.i_crit_edge, label %land.lhs.true.i.i195.i.set_sec_size.exit202.i_crit_edge

land.lhs.true.i.i195.i.set_sec_size.exit202.i_crit_edge: ; preds = %land.lhs.true.i.i195.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sec_size.exit202.i

land.lhs.true.i.i195.i.if.end.i.i198.i_crit_edge: ; preds = %land.lhs.true.i.i195.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i198.i

if.end.i.i198.i:                                  ; preds = %land.lhs.true.i.i195.i.if.end.i.i198.i_crit_edge, %set_sec_size.exit191.i.if.end.i.i198.i_crit_edge
  %call.i.i196.i = tail call noalias ptr @krealloc(ptr noundef %102, i32 noundef 12, i32 noundef 3264) #17
  %tobool4.not.i.i197.i = icmp eq ptr %call.i.i196.i, null
  br i1 %tobool4.not.i.i197.i, label %if.end.i.i198.i.set_sec_size.exit202.i_crit_edge, label %if.end6.i.i200.i

if.end.i.i198.i.set_sec_size.exit202.i_crit_edge: ; preds = %if.end.i.i198.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sec_size.exit202.i

if.end6.i.i200.i:                                 ; preds = %if.end.i.i198.i
  call void @__sanitizer_cov_trace_pc() #13
  %105 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %call.i.i196.i, ptr %call7.i.i, align 8
  %sec_counter8.i.i199.i = getelementptr [4 x %struct.fw_img_parsing], ptr %call7.i.i, i32 0, i32 0, i32 1
  %106 = ptrtoint ptr %sec_counter8.i.i199.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 1, ptr %sec_counter8.i.i199.i, align 4
  br label %set_sec_size.exit202.i

set_sec_size.exit202.i:                           ; preds = %if.end6.i.i200.i, %if.end.i.i198.i.set_sec_size.exit202.i_crit_edge, %land.lhs.true.i.i195.i.set_sec_size.exit202.i_crit_edge
  %107 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %call7.i.i, align 8
  %size3.i201.i = getelementptr %struct.fw_sec, ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %size3.i201.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %100, ptr %size3.i201.i, align 4
  %init_size29.i = getelementptr inbounds %struct.iwl_ucode_header, ptr %24, i32 0, i32 1, i32 0, i32 2
  %110 = ptrtoint ptr %init_size29.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %init_size29.i, align 4
  %112 = tail call i32 @llvm.bswap.i32(i32 %111) #11
  %arrayidx.i.i203.i = getelementptr [4 x %struct.fw_img_parsing], ptr %call7.i.i, i32 0, i32 1
  %113 = ptrtoint ptr %arrayidx.i.i203.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %arrayidx.i.i203.i, align 8
  %tobool.not.i.i204.i = icmp eq ptr %114, null
  br i1 %tobool.not.i.i204.i, label %set_sec_size.exit202.i.if.end.i.i210.i_crit_edge, label %land.lhs.true.i.i207.i

set_sec_size.exit202.i.if.end.i.i210.i_crit_edge: ; preds = %set_sec_size.exit202.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i210.i

land.lhs.true.i.i207.i:                           ; preds = %set_sec_size.exit202.i
  %sec_counter.i.i205.i = getelementptr [4 x %struct.fw_img_parsing], ptr %call7.i.i, i32 0, i32 1, i32 1
  %115 = ptrtoint ptr %sec_counter.i.i205.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %sec_counter.i.i205.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %116)
  %cmp.not.i.i206.i = icmp slt i32 %116, 2
  br i1 %cmp.not.i.i206.i, label %land.lhs.true.i.i207.i.if.end.i.i210.i_crit_edge, label %land.lhs.true.i.i207.i.set_sec_size.exit214.i_crit_edge

land.lhs.true.i.i207.i.set_sec_size.exit214.i_crit_edge: ; preds = %land.lhs.true.i.i207.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sec_size.exit214.i

land.lhs.true.i.i207.i.if.end.i.i210.i_crit_edge: ; preds = %land.lhs.true.i.i207.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i210.i

if.end.i.i210.i:                                  ; preds = %land.lhs.true.i.i207.i.if.end.i.i210.i_crit_edge, %set_sec_size.exit202.i.if.end.i.i210.i_crit_edge
  %call.i.i208.i = tail call noalias ptr @krealloc(ptr noundef %114, i32 noundef 24, i32 noundef 3264) #17
  %tobool4.not.i.i209.i = icmp eq ptr %call.i.i208.i, null
  br i1 %tobool4.not.i.i209.i, label %if.end.i.i210.i.set_sec_size.exit214.i_crit_edge, label %if.end6.i.i212.i

if.end.i.i210.i.set_sec_size.exit214.i_crit_edge: ; preds = %if.end.i.i210.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sec_size.exit214.i

if.end6.i.i212.i:                                 ; preds = %if.end.i.i210.i
  call void @__sanitizer_cov_trace_pc() #13
  %117 = ptrtoint ptr %arrayidx.i.i203.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %call.i.i208.i, ptr %arrayidx.i.i203.i, align 8
  %sec_counter8.i.i211.i = getelementptr [4 x %struct.fw_img_parsing], ptr %call7.i.i, i32 0, i32 1, i32 1
  %118 = ptrtoint ptr %sec_counter8.i.i211.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 2, ptr %sec_counter8.i.i211.i, align 4
  br label %set_sec_size.exit214.i

set_sec_size.exit214.i:                           ; preds = %if.end6.i.i212.i, %if.end.i.i210.i.set_sec_size.exit214.i_crit_edge, %land.lhs.true.i.i207.i.set_sec_size.exit214.i_crit_edge
  %119 = ptrtoint ptr %arrayidx.i.i203.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %arrayidx.i.i203.i, align 8
  %size3.i213.i = getelementptr %struct.fw_sec, ptr %120, i32 1, i32 1
  %121 = ptrtoint ptr %size3.i213.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %112, ptr %size3.i213.i, align 4
  %init_data_size31.i = getelementptr inbounds %struct.iwl_ucode_header, ptr %24, i32 0, i32 1, i32 0, i32 3
  %122 = ptrtoint ptr %init_data_size31.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %init_data_size31.i, align 4
  %124 = tail call i32 @llvm.bswap.i32(i32 %123) #11
  %125 = ptrtoint ptr %arrayidx.i.i203.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %arrayidx.i.i203.i, align 8
  %tobool.not.i.i216.i = icmp eq ptr %126, null
  br i1 %tobool.not.i.i216.i, label %set_sec_size.exit214.i.if.end.i.i222.i_crit_edge, label %land.lhs.true.i.i219.i

set_sec_size.exit214.i.if.end.i.i222.i_crit_edge: ; preds = %set_sec_size.exit214.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i222.i

land.lhs.true.i.i219.i:                           ; preds = %set_sec_size.exit214.i
  %sec_counter.i.i217.i = getelementptr [4 x %struct.fw_img_parsing], ptr %call7.i.i, i32 0, i32 1, i32 1
  %127 = ptrtoint ptr %sec_counter.i.i217.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %sec_counter.i.i217.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %128)
  %cmp.not.i.i218.i = icmp slt i32 %128, 1
  br i1 %cmp.not.i.i218.i, label %land.lhs.true.i.i219.i.if.end.i.i222.i_crit_edge, label %land.lhs.true.i.i219.i.sw.epilog.thread.i_crit_edge

land.lhs.true.i.i219.i.sw.epilog.thread.i_crit_edge: ; preds = %land.lhs.true.i.i219.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.thread.i

land.lhs.true.i.i219.i.if.end.i.i222.i_crit_edge: ; preds = %land.lhs.true.i.i219.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i222.i

if.end.i.i222.i:                                  ; preds = %land.lhs.true.i.i219.i.if.end.i.i222.i_crit_edge, %set_sec_size.exit214.i.if.end.i.i222.i_crit_edge
  %call.i.i220.i = tail call noalias ptr @krealloc(ptr noundef %126, i32 noundef 12, i32 noundef 3264) #17
  %tobool4.not.i.i221.i = icmp eq ptr %call.i.i220.i, null
  br i1 %tobool4.not.i.i221.i, label %if.end.i.i222.i.sw.epilog.thread.i_crit_edge, label %if.end6.i.i224.i

if.end.i.i222.i.sw.epilog.thread.i_crit_edge:     ; preds = %if.end.i.i222.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.thread.i

if.end6.i.i224.i:                                 ; preds = %if.end.i.i222.i
  call void @__sanitizer_cov_trace_pc() #13
  %129 = ptrtoint ptr %arrayidx.i.i203.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %call.i.i220.i, ptr %arrayidx.i.i203.i, align 8
  %sec_counter8.i.i223.i = getelementptr [4 x %struct.fw_img_parsing], ptr %call7.i.i, i32 0, i32 1, i32 1
  %130 = ptrtoint ptr %sec_counter8.i.i223.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 1, ptr %sec_counter8.i.i223.i, align 4
  br label %sw.epilog.thread.i

sw.epilog.thread.i:                               ; preds = %if.end6.i.i224.i, %if.end.i.i222.i.sw.epilog.thread.i_crit_edge, %land.lhs.true.i.i219.i.sw.epilog.thread.i_crit_edge
  %131 = ptrtoint ptr %arrayidx.i.i203.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %arrayidx.i.i203.i, align 8
  %size3.i225.i = getelementptr %struct.fw_sec, ptr %132, i32 0, i32 1
  %133 = ptrtoint ptr %size3.i225.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %124, ptr %size3.i225.i, align 4
  %data33.i = getelementptr inbounds %struct.iwl_ucode_header, ptr %24, i32 0, i32 1, i32 0, i32 5
  br label %if.else.i

sw.epilog.i:                                      ; preds = %if.end6.i.i178.i, %if.end.i.i176.i.sw.epilog.i_crit_edge, %land.lhs.true.i.i173.i.sw.epilog.i_crit_edge
  %134 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %arrayidx.i.i.i, align 8
  %size3.i179.i = getelementptr %struct.fw_sec, ptr %135, i32 0, i32 1
  %136 = ptrtoint ptr %size3.i179.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %77, ptr %size3.i179.i, align 4
  %data12.i = getelementptr inbounds %struct.iwl_ucode_header, ptr %24, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i = icmp eq i32 %37, 0
  br i1 %tobool.not.i, label %sw.epilog.i.if.else.i_crit_edge, label %if.then35.i

sw.epilog.i.if.else.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then35.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buildstr.i, ptr noundef nonnull @.str.20, i32 noundef %38) #11
  br label %if.end37.i

if.else.i:                                        ; preds = %sw.epilog.i.if.else.i_crit_edge, %sw.epilog.thread.i
  %src.0330.i = phi ptr [ %data33.i, %sw.epilog.thread.i ], [ %data12.i, %sw.epilog.i.if.else.i_crit_edge ]
  %hdr_size.0328.i = phi i32 [ 24, %sw.epilog.thread.i ], [ 28, %sw.epilog.i.if.else.i_crit_edge ]
  %137 = ptrtoint ptr %buildstr.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 0, ptr %buildstr.i, align 1
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.else.i, %if.then35.i
  %src.0329.i = phi ptr [ %src.0330.i, %if.else.i ], [ %data12.i, %if.then35.i ]
  %hdr_size.0327.i = phi i32 [ %hdr_size.0328.i, %if.else.i ], [ 28, %if.then35.i ]
  %fw_version.i = getelementptr inbounds %struct.iwl_drv, ptr %context, i32 0, i32 1, i32 1
  %138 = ptrtoint ptr %fw1 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %fw1, align 4
  %shr43.i = lshr i32 %139, 24
  %and46.i = lshr i32 %139, 16
  %shr47.i = and i32 %and46.i, 255
  %and50.i = lshr i32 %139, 8
  %shr51.i = and i32 %and50.i, 255
  %and54.i = and i32 %139, 255
  %call.i.i = tail call i32 @strncmp(ptr noundef %firmware_name, ptr noundef nonnull dereferenceable(9) @.str.23, i32 noundef 8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i483 = icmp eq i32 %call.i.i, 0
  %add.ptr.i.i = getelementptr %struct.iwl_drv, ptr %context, i32 0, i32 6, i32 8
  %spec.select.i.i484 = select i1 %cmp.i.i483, ptr %add.ptr.i.i, ptr %firmware_name
  %call57.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fw_version.i, i32 noundef 64, ptr noundef nonnull @.str.21, i32 noundef %shr43.i, i32 noundef %shr47.i, i32 noundef %shr51.i, i32 noundef %and54.i, ptr noundef nonnull %buildstr.i, ptr noundef %spec.select.i.i484) #11
  %140 = ptrtoint ptr %ucode_raw to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %ucode_raw, align 4
  %142 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %call7.i.i, align 8
  %size.i.i = getelementptr %struct.fw_sec, ptr %143, i32 1, i32 1
  %144 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %size.i.i, align 4
  %add.i = add i32 %145, %hdr_size.0327.i
  %size.i227.i = getelementptr %struct.fw_sec, ptr %143, i32 0, i32 1
  %146 = ptrtoint ptr %size.i227.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %size.i227.i, align 4
  %add61.i = add i32 %add.i, %147
  %arrayidx.i.i = getelementptr [4 x %struct.fw_img_parsing], ptr %call7.i.i, i32 0, i32 1
  %148 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %arrayidx.i.i, align 8
  %size.i228.i = getelementptr %struct.fw_sec, ptr %149, i32 1, i32 1
  %150 = ptrtoint ptr %size.i228.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %size.i228.i, align 4
  %add63.i = add i32 %add61.i, %151
  %size.i230.i = getelementptr %struct.fw_sec, ptr %149, i32 0, i32 1
  %152 = ptrtoint ptr %size.i230.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %size.i230.i, align 4
  %add65.i = add i32 %add63.i, %153
  call void @__sanitizer_cov_trace_cmp4(i32 %141, i32 %add65.i)
  %cmp66.not.i = icmp eq i32 %141, %add65.i
  br i1 %cmp66.not.i, label %if.end76.i, label %do.end71.i

do.end71.i:                                       ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #13
  %154 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %dev, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %155, i32 noundef 0, ptr noundef nonnull @.str.22, i32 noundef %141) #11
  br label %iwl_parse_v1_v2_firmware.exit

if.end76.i:                                       ; preds = %if.end37.i
  %tobool.not.i.i231.i = icmp eq ptr %143, null
  br i1 %tobool.not.i.i231.i, label %if.end76.i.if.end.i.i237.i_crit_edge, label %land.lhs.true.i.i234.i

if.end76.i.if.end.i.i237.i_crit_edge:             ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i237.i

land.lhs.true.i.i234.i:                           ; preds = %if.end76.i
  %sec_counter.i.i232.i = getelementptr [4 x %struct.fw_img_parsing], ptr %call7.i.i, i32 0, i32 0, i32 1
  %156 = ptrtoint ptr %sec_counter.i.i232.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %sec_counter.i.i232.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %157)
  %cmp.not.i.i233.i = icmp slt i32 %157, 2
  br i1 %cmp.not.i.i233.i, label %land.lhs.true.i.i234.i.if.end.i.i237.i_crit_edge, label %land.lhs.true.i.i234.i.set_sec_data.exit.i_crit_edge

land.lhs.true.i.i234.i.set_sec_data.exit.i_crit_edge: ; preds = %land.lhs.true.i.i234.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sec_data.exit.i

land.lhs.true.i.i234.i.if.end.i.i237.i_crit_edge: ; preds = %land.lhs.true.i.i234.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i237.i

if.end.i.i237.i:                                  ; preds = %land.lhs.true.i.i234.i.if.end.i.i237.i_crit_edge, %if.end76.i.if.end.i.i237.i_crit_edge
  %call.i.i235.i = call noalias ptr @krealloc(ptr noundef %143, i32 noundef 24, i32 noundef 3264) #17
  %tobool4.not.i.i236.i = icmp eq ptr %call.i.i235.i, null
  br i1 %tobool4.not.i.i236.i, label %if.end.i.i237.i.set_sec_data.exit.i_crit_edge, label %if.end6.i.i239.i

if.end.i.i237.i.set_sec_data.exit.i_crit_edge:    ; preds = %if.end.i.i237.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sec_data.exit.i

if.end6.i.i239.i:                                 ; preds = %if.end.i.i237.i
  call void @__sanitizer_cov_trace_pc() #13
  %158 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %call.i.i235.i, ptr %call7.i.i, align 8
  %sec_counter8.i.i238.i = getelementptr [4 x %struct.fw_img_parsing], ptr %call7.i.i, i32 0, i32 0, i32 1
  %159 = ptrtoint ptr %sec_counter8.i.i238.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 2, ptr %sec_counter8.i.i238.i, align 4
  br label %set_sec_data.exit.i

set_sec_data.exit.i:                              ; preds = %if.end6.i.i239.i, %if.end.i.i237.i.set_sec_data.exit.i_crit_edge, %land.lhs.true.i.i234.i.set_sec_data.exit.i_crit_edge
  %160 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %call7.i.i, align 8
  %arrayidx2.i.i = getelementptr %struct.fw_sec, ptr %161, i32 1
  %162 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %src.0329.i, ptr %arrayidx2.i.i, align 4
  %163 = load ptr, ptr %call7.i.i, align 8
  %size.i240.i = getelementptr %struct.fw_sec, ptr %163, i32 1, i32 1
  %164 = ptrtoint ptr %size.i240.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %size.i240.i, align 4
  %add.ptr.i = getelementptr i8, ptr %src.0329.i, i32 %165
  %tobool.not.i.i241.i = icmp eq ptr %163, null
  br i1 %tobool.not.i.i241.i, label %set_sec_data.exit.i.if.end.i.i247.i_crit_edge, label %land.lhs.true.i.i244.i

set_sec_data.exit.i.if.end.i.i247.i_crit_edge:    ; preds = %set_sec_data.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i247.i

land.lhs.true.i.i244.i:                           ; preds = %set_sec_data.exit.i
  %sec_counter.i.i242.i = getelementptr [4 x %struct.fw_img_parsing], ptr %call7.i.i, i32 0, i32 0, i32 1
  %166 = ptrtoint ptr %sec_counter.i.i242.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %sec_counter.i.i242.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %167)
  %cmp.not.i.i243.i = icmp slt i32 %167, 2
  br i1 %cmp.not.i.i243.i, label %land.lhs.true.i.i244.i.if.end.i.i247.i_crit_edge, label %land.lhs.true.i.i244.i.set_sec_offset.exit.i_crit_edge

land.lhs.true.i.i244.i.set_sec_offset.exit.i_crit_edge: ; preds = %land.lhs.true.i.i244.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sec_offset.exit.i

land.lhs.true.i.i244.i.if.end.i.i247.i_crit_edge: ; preds = %land.lhs.true.i.i244.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i247.i

if.end.i.i247.i:                                  ; preds = %land.lhs.true.i.i244.i.if.end.i.i247.i_crit_edge, %set_sec_data.exit.i.if.end.i.i247.i_crit_edge
  %call.i.i245.i = call noalias ptr @krealloc(ptr noundef %163, i32 noundef 24, i32 noundef 3264) #17
  %tobool4.not.i.i246.i = icmp eq ptr %call.i.i245.i, null
  br i1 %tobool4.not.i.i246.i, label %if.end.i.i247.i.set_sec_offset.exit.i_crit_edge, label %if.end6.i.i249.i

if.end.i.i247.i.set_sec_offset.exit.i_crit_edge:  ; preds = %if.end.i.i247.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sec_offset.exit.i

if.end6.i.i249.i:                                 ; preds = %if.end.i.i247.i
  call void @__sanitizer_cov_trace_pc() #13
  %168 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %call.i.i245.i, ptr %call7.i.i, align 8
  %sec_counter8.i.i248.i = getelementptr [4 x %struct.fw_img_parsing], ptr %call7.i.i, i32 0, i32 0, i32 1
  %169 = ptrtoint ptr %sec_counter8.i.i248.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 2, ptr %sec_counter8.i.i248.i, align 4
  br label %set_sec_offset.exit.i

set_sec_offset.exit.i:                            ; preds = %if.end6.i.i249.i, %if.end.i.i247.i.set_sec_offset.exit.i_crit_edge, %land.lhs.true.i.i244.i.set_sec_offset.exit.i_crit_edge
  %170 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %call7.i.i, align 8
  %offset3.i.i = getelementptr %struct.fw_sec, ptr %171, i32 1, i32 2
  %172 = ptrtoint ptr %offset3.i.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 0, ptr %offset3.i.i, align 4
  %173 = load ptr, ptr %call7.i.i, align 8
  %tobool.not.i.i250.i = icmp eq ptr %173, null
  br i1 %tobool.not.i.i250.i, label %set_sec_offset.exit.i.if.end.i.i256.i_crit_edge, label %land.lhs.true.i.i253.i

set_sec_offset.exit.i.if.end.i.i256.i_crit_edge:  ; preds = %set_sec_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i256.i

land.lhs.true.i.i253.i:                           ; preds = %set_sec_offset.exit.i
  %sec_counter.i.i251.i = getelementptr [4 x %struct.fw_img_parsing], ptr %call7.i.i, i32 0, i32 0, i32 1
  %174 = ptrtoint ptr %sec_counter.i.i251.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %sec_counter.i.i251.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %175)
  %cmp.not.i.i252.i = icmp slt i32 %175, 1
  br i1 %cmp.not.i.i252.i, label %land.lhs.true.i.i253.i.if.end.i.i256.i_crit_edge, label %land.lhs.true.i.i253.i.set_sec_data.exit259.i_crit_edge

land.lhs.true.i.i253.i.set_sec_data.exit259.i_crit_edge: ; preds = %land.lhs.true.i.i253.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sec_data.exit259.i

land.lhs.true.i.i253.i.if.end.i.i256.i_crit_edge: ; preds = %land.lhs.true.i.i253.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i256.i

if.end.i.i256.i:                                  ; preds = %land.lhs.true.i.i253.i.if.end.i.i256.i_crit_edge, %set_sec_offset.exit.i.if.end.i.i256.i_crit_edge
  %call.i.i254.i = call noalias ptr @krealloc(ptr noundef %173, i32 noundef 12, i32 noundef 3264) #17
  %tobool4.not.i.i255.i = icmp eq ptr %call.i.i254.i, null
  br i1 %tobool4.not.i.i255.i, label %if.end.i.i256.i.set_sec_data.exit259.i_crit_edge, label %if.end6.i.i258.i

if.end.i.i256.i.set_sec_data.exit259.i_crit_edge: ; preds = %if.end.i.i256.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sec_data.exit259.i

if.end6.i.i258.i:                                 ; preds = %if.end.i.i256.i
  call void @__sanitizer_cov_trace_pc() #13
  %176 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %call.i.i254.i, ptr %call7.i.i, align 8
  %sec_counter8.i.i257.i = getelementptr [4 x %struct.fw_img_parsing], ptr %call7.i.i, i32 0, i32 0, i32 1
  %177 = ptrtoint ptr %sec_counter8.i.i257.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 1, ptr %sec_counter8.i.i257.i, align 4
  br label %set_sec_data.exit259.i

set_sec_data.exit259.i:                           ; preds = %if.end6.i.i258.i, %if.end.i.i256.i.set_sec_data.exit259.i_crit_edge, %land.lhs.true.i.i253.i.set_sec_data.exit259.i_crit_edge
  %178 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %call7.i.i, align 8
  %180 = ptrtoint ptr %179 to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %add.ptr.i, ptr %179, align 4
  %181 = load ptr, ptr %call7.i.i, align 8
  %size.i260.i = getelementptr %struct.fw_sec, ptr %181, i32 0, i32 1
  %182 = ptrtoint ptr %size.i260.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %size.i260.i, align 4
  %add.ptr79.i = getelementptr i8, ptr %add.ptr.i, i32 %183
  %tobool.not.i.i261.i = icmp eq ptr %181, null
  br i1 %tobool.not.i.i261.i, label %set_sec_data.exit259.i.if.end.i.i267.i_crit_edge, label %land.lhs.true.i.i264.i

set_sec_data.exit259.i.if.end.i.i267.i_crit_edge: ; preds = %set_sec_data.exit259.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i267.i

land.lhs.true.i.i264.i:                           ; preds = %set_sec_data.exit259.i
  %sec_counter.i.i262.i = getelementptr [4 x %struct.fw_img_parsing], ptr %call7.i.i, i32 0, i32 0, i32 1
  %184 = ptrtoint ptr %sec_counter.i.i262.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %sec_counter.i.i262.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %185)
  %cmp.not.i.i263.i = icmp slt i32 %185, 1
  br i1 %cmp.not.i.i263.i, label %land.lhs.true.i.i264.i.if.end.i.i267.i_crit_edge, label %land.lhs.true.i.i264.i.set_sec_offset.exit271.i_crit_edge

land.lhs.true.i.i264.i.set_sec_offset.exit271.i_crit_edge: ; preds = %land.lhs.true.i.i264.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sec_offset.exit271.i

land.lhs.true.i.i264.i.if.end.i.i267.i_crit_edge: ; preds = %land.lhs.true.i.i264.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i267.i

if.end.i.i267.i:                                  ; preds = %land.lhs.true.i.i264.i.if.end.i.i267.i_crit_edge, %set_sec_data.exit259.i.if.end.i.i267.i_crit_edge
  %call.i.i265.i = call noalias ptr @krealloc(ptr noundef %181, i32 noundef 12, i32 noundef 3264) #17
  %tobool4.not.i.i266.i = icmp eq ptr %call.i.i265.i, null
  br i1 %tobool4.not.i.i266.i, label %if.end.i.i267.i.set_sec_offset.exit271.i_crit_edge, label %if.end6.i.i269.i

if.end.i.i267.i.set_sec_offset.exit271.i_crit_edge: ; preds = %if.end.i.i267.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sec_offset.exit271.i

if.end6.i.i269.i:                                 ; preds = %if.end.i.i267.i
  call void @__sanitizer_cov_trace_pc() #13
  %186 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %call.i.i265.i, ptr %call7.i.i, align 8
  %sec_counter8.i.i268.i = getelementptr [4 x %struct.fw_img_parsing], ptr %call7.i.i, i32 0, i32 0, i32 1
  %187 = ptrtoint ptr %sec_counter8.i.i268.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 1, ptr %sec_counter8.i.i268.i, align 4
  br label %set_sec_offset.exit271.i

set_sec_offset.exit271.i:                         ; preds = %if.end6.i.i269.i, %if.end.i.i267.i.set_sec_offset.exit271.i_crit_edge, %land.lhs.true.i.i264.i.set_sec_offset.exit271.i_crit_edge
  %188 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %call7.i.i, align 8
  %offset3.i270.i = getelementptr %struct.fw_sec, ptr %189, i32 0, i32 2
  %190 = ptrtoint ptr %offset3.i270.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 8388608, ptr %offset3.i270.i, align 4
  %191 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %arrayidx.i.i, align 8
  %tobool.not.i.i273.i = icmp eq ptr %192, null
  br i1 %tobool.not.i.i273.i, label %set_sec_offset.exit271.i.if.end.i.i279.i_crit_edge, label %land.lhs.true.i.i276.i

set_sec_offset.exit271.i.if.end.i.i279.i_crit_edge: ; preds = %set_sec_offset.exit271.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i279.i

land.lhs.true.i.i276.i:                           ; preds = %set_sec_offset.exit271.i
  %sec_counter.i.i274.i = getelementptr [4 x %struct.fw_img_parsing], ptr %call7.i.i, i32 0, i32 1, i32 1
  %193 = ptrtoint ptr %sec_counter.i.i274.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %sec_counter.i.i274.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %194)
  %cmp.not.i.i275.i = icmp slt i32 %194, 2
  br i1 %cmp.not.i.i275.i, label %land.lhs.true.i.i276.i.if.end.i.i279.i_crit_edge, label %land.lhs.true.i.i276.i.set_sec_data.exit283.i_crit_edge

land.lhs.true.i.i276.i.set_sec_data.exit283.i_crit_edge: ; preds = %land.lhs.true.i.i276.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sec_data.exit283.i

land.lhs.true.i.i276.i.if.end.i.i279.i_crit_edge: ; preds = %land.lhs.true.i.i276.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i279.i

if.end.i.i279.i:                                  ; preds = %land.lhs.true.i.i276.i.if.end.i.i279.i_crit_edge, %set_sec_offset.exit271.i.if.end.i.i279.i_crit_edge
  %call.i.i277.i = call noalias ptr @krealloc(ptr noundef %192, i32 noundef 24, i32 noundef 3264) #17
  %tobool4.not.i.i278.i = icmp eq ptr %call.i.i277.i, null
  br i1 %tobool4.not.i.i278.i, label %if.end.i.i279.i.set_sec_data.exit283.i_crit_edge, label %if.end6.i.i281.i

if.end.i.i279.i.set_sec_data.exit283.i_crit_edge: ; preds = %if.end.i.i279.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sec_data.exit283.i

if.end6.i.i281.i:                                 ; preds = %if.end.i.i279.i
  call void @__sanitizer_cov_trace_pc() #13
  %195 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %call.i.i277.i, ptr %arrayidx.i.i, align 8
  %sec_counter8.i.i280.i = getelementptr [4 x %struct.fw_img_parsing], ptr %call7.i.i, i32 0, i32 1, i32 1
  %196 = ptrtoint ptr %sec_counter8.i.i280.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 2, ptr %sec_counter8.i.i280.i, align 4
  br label %set_sec_data.exit283.i

set_sec_data.exit283.i:                           ; preds = %if.end6.i.i281.i, %if.end.i.i279.i.set_sec_data.exit283.i_crit_edge, %land.lhs.true.i.i276.i.set_sec_data.exit283.i_crit_edge
  %197 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %arrayidx.i.i, align 8
  %arrayidx2.i282.i = getelementptr %struct.fw_sec, ptr %198, i32 1
  %199 = ptrtoint ptr %arrayidx2.i282.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr %add.ptr79.i, ptr %arrayidx2.i282.i, align 4
  %200 = load ptr, ptr %arrayidx.i.i, align 8
  %size.i285.i = getelementptr %struct.fw_sec, ptr %200, i32 1, i32 1
  %201 = ptrtoint ptr %size.i285.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %size.i285.i, align 4
  %add.ptr81.i = getelementptr i8, ptr %add.ptr79.i, i32 %202
  %tobool.not.i.i287.i = icmp eq ptr %200, null
  br i1 %tobool.not.i.i287.i, label %set_sec_data.exit283.i.if.end.i.i293.i_crit_edge, label %land.lhs.true.i.i290.i

set_sec_data.exit283.i.if.end.i.i293.i_crit_edge: ; preds = %set_sec_data.exit283.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i293.i

land.lhs.true.i.i290.i:                           ; preds = %set_sec_data.exit283.i
  %sec_counter.i.i288.i = getelementptr [4 x %struct.fw_img_parsing], ptr %call7.i.i, i32 0, i32 1, i32 1
  %203 = ptrtoint ptr %sec_counter.i.i288.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %sec_counter.i.i288.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %204)
  %cmp.not.i.i289.i = icmp slt i32 %204, 2
  br i1 %cmp.not.i.i289.i, label %land.lhs.true.i.i290.i.if.end.i.i293.i_crit_edge, label %land.lhs.true.i.i290.i.set_sec_offset.exit297.i_crit_edge

land.lhs.true.i.i290.i.set_sec_offset.exit297.i_crit_edge: ; preds = %land.lhs.true.i.i290.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sec_offset.exit297.i

land.lhs.true.i.i290.i.if.end.i.i293.i_crit_edge: ; preds = %land.lhs.true.i.i290.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i293.i

if.end.i.i293.i:                                  ; preds = %land.lhs.true.i.i290.i.if.end.i.i293.i_crit_edge, %set_sec_data.exit283.i.if.end.i.i293.i_crit_edge
  %call.i.i291.i = call noalias ptr @krealloc(ptr noundef %200, i32 noundef 24, i32 noundef 3264) #17
  %tobool4.not.i.i292.i = icmp eq ptr %call.i.i291.i, null
  br i1 %tobool4.not.i.i292.i, label %if.end.i.i293.i.set_sec_offset.exit297.i_crit_edge, label %if.end6.i.i295.i

if.end.i.i293.i.set_sec_offset.exit297.i_crit_edge: ; preds = %if.end.i.i293.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sec_offset.exit297.i

if.end6.i.i295.i:                                 ; preds = %if.end.i.i293.i
  call void @__sanitizer_cov_trace_pc() #13
  %205 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr %call.i.i291.i, ptr %arrayidx.i.i, align 8
  %sec_counter8.i.i294.i = getelementptr [4 x %struct.fw_img_parsing], ptr %call7.i.i, i32 0, i32 1, i32 1
  %206 = ptrtoint ptr %sec_counter8.i.i294.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 2, ptr %sec_counter8.i.i294.i, align 4
  br label %set_sec_offset.exit297.i

set_sec_offset.exit297.i:                         ; preds = %if.end6.i.i295.i, %if.end.i.i293.i.set_sec_offset.exit297.i_crit_edge, %land.lhs.true.i.i290.i.set_sec_offset.exit297.i_crit_edge
  %207 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %arrayidx.i.i, align 8
  %offset3.i296.i = getelementptr %struct.fw_sec, ptr %208, i32 1, i32 2
  %209 = ptrtoint ptr %offset3.i296.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 0, ptr %offset3.i296.i, align 4
  %210 = load ptr, ptr %arrayidx.i.i, align 8
  %tobool.not.i.i299.i = icmp eq ptr %210, null
  br i1 %tobool.not.i.i299.i, label %set_sec_offset.exit297.i.if.end.i.i305.i_crit_edge, label %land.lhs.true.i.i302.i

set_sec_offset.exit297.i.if.end.i.i305.i_crit_edge: ; preds = %set_sec_offset.exit297.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i305.i

land.lhs.true.i.i302.i:                           ; preds = %set_sec_offset.exit297.i
  %sec_counter.i.i300.i = getelementptr [4 x %struct.fw_img_parsing], ptr %call7.i.i, i32 0, i32 1, i32 1
  %211 = ptrtoint ptr %sec_counter.i.i300.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %sec_counter.i.i300.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %212)
  %cmp.not.i.i301.i = icmp slt i32 %212, 1
  br i1 %cmp.not.i.i301.i, label %land.lhs.true.i.i302.i.if.end.i.i305.i_crit_edge, label %land.lhs.true.i.i302.i.set_sec_data.exit308.i_crit_edge

land.lhs.true.i.i302.i.set_sec_data.exit308.i_crit_edge: ; preds = %land.lhs.true.i.i302.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sec_data.exit308.i

land.lhs.true.i.i302.i.if.end.i.i305.i_crit_edge: ; preds = %land.lhs.true.i.i302.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i305.i

if.end.i.i305.i:                                  ; preds = %land.lhs.true.i.i302.i.if.end.i.i305.i_crit_edge, %set_sec_offset.exit297.i.if.end.i.i305.i_crit_edge
  %call.i.i303.i = call noalias ptr @krealloc(ptr noundef %210, i32 noundef 12, i32 noundef 3264) #17
  %tobool4.not.i.i304.i = icmp eq ptr %call.i.i303.i, null
  br i1 %tobool4.not.i.i304.i, label %if.end.i.i305.i.set_sec_data.exit308.i_crit_edge, label %if.end6.i.i307.i

if.end.i.i305.i.set_sec_data.exit308.i_crit_edge: ; preds = %if.end.i.i305.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sec_data.exit308.i

if.end6.i.i307.i:                                 ; preds = %if.end.i.i305.i
  call void @__sanitizer_cov_trace_pc() #13
  %213 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr %call.i.i303.i, ptr %arrayidx.i.i, align 8
  %sec_counter8.i.i306.i = getelementptr [4 x %struct.fw_img_parsing], ptr %call7.i.i, i32 0, i32 1, i32 1
  %214 = ptrtoint ptr %sec_counter8.i.i306.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 1, ptr %sec_counter8.i.i306.i, align 4
  br label %set_sec_data.exit308.i

set_sec_data.exit308.i:                           ; preds = %if.end6.i.i307.i, %if.end.i.i305.i.set_sec_data.exit308.i_crit_edge, %land.lhs.true.i.i302.i.set_sec_data.exit308.i_crit_edge
  %215 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %arrayidx.i.i, align 8
  %217 = ptrtoint ptr %216 to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr %add.ptr81.i, ptr %216, align 4
  %218 = load ptr, ptr %arrayidx.i.i, align 8
  %tobool.not.i.i312.i = icmp eq ptr %218, null
  br i1 %tobool.not.i.i312.i, label %set_sec_data.exit308.i.if.end.i.i318.i_crit_edge, label %land.lhs.true.i.i315.i

set_sec_data.exit308.i.if.end.i.i318.i_crit_edge: ; preds = %set_sec_data.exit308.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i318.i

land.lhs.true.i.i315.i:                           ; preds = %set_sec_data.exit308.i
  %sec_counter.i.i313.i = getelementptr [4 x %struct.fw_img_parsing], ptr %call7.i.i, i32 0, i32 1, i32 1
  %219 = ptrtoint ptr %sec_counter.i.i313.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %sec_counter.i.i313.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %220)
  %cmp.not.i.i314.i = icmp slt i32 %220, 1
  br i1 %cmp.not.i.i314.i, label %land.lhs.true.i.i315.i.if.end.i.i318.i_crit_edge, label %land.lhs.true.i.i315.i.set_sec_offset.exit322.i_crit_edge

land.lhs.true.i.i315.i.set_sec_offset.exit322.i_crit_edge: ; preds = %land.lhs.true.i.i315.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sec_offset.exit322.i

land.lhs.true.i.i315.i.if.end.i.i318.i_crit_edge: ; preds = %land.lhs.true.i.i315.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i318.i

if.end.i.i318.i:                                  ; preds = %land.lhs.true.i.i315.i.if.end.i.i318.i_crit_edge, %set_sec_data.exit308.i.if.end.i.i318.i_crit_edge
  %call.i.i316.i = call noalias ptr @krealloc(ptr noundef %218, i32 noundef 12, i32 noundef 3264) #17
  %tobool4.not.i.i317.i = icmp eq ptr %call.i.i316.i, null
  br i1 %tobool4.not.i.i317.i, label %if.end.i.i318.i.set_sec_offset.exit322.i_crit_edge, label %if.end6.i.i320.i

if.end.i.i318.i.set_sec_offset.exit322.i_crit_edge: ; preds = %if.end.i.i318.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sec_offset.exit322.i

if.end6.i.i320.i:                                 ; preds = %if.end.i.i318.i
  call void @__sanitizer_cov_trace_pc() #13
  %221 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr %call.i.i316.i, ptr %arrayidx.i.i, align 8
  %sec_counter8.i.i319.i = getelementptr [4 x %struct.fw_img_parsing], ptr %call7.i.i, i32 0, i32 1, i32 1
  %222 = ptrtoint ptr %sec_counter8.i.i319.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 1, ptr %sec_counter8.i.i319.i, align 4
  br label %set_sec_offset.exit322.i

set_sec_offset.exit322.i:                         ; preds = %if.end6.i.i320.i, %if.end.i.i318.i.set_sec_offset.exit322.i_crit_edge, %land.lhs.true.i.i315.i.set_sec_offset.exit322.i_crit_edge
  %223 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %arrayidx.i.i, align 8
  %offset3.i321.i = getelementptr %struct.fw_sec, ptr %224, i32 0, i32 2
  %225 = ptrtoint ptr %offset3.i321.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 8388608, ptr %offset3.i321.i, align 4
  br label %iwl_parse_v1_v2_firmware.exit

iwl_parse_v1_v2_firmware.exit:                    ; preds = %set_sec_offset.exit322.i, %do.end71.i, %do.end19.i, %do.end.i
  %retval.0.i = phi i32 [ -22, %do.end.i ], [ -22, %do.end71.i ], [ 0, %set_sec_offset.exit322.i ], [ -22, %do.end19.i ]
  call void @llvm.lifetime.end.p0(i64 25, ptr nonnull %buildstr.i) #11
  br label %if.end30

if.else:                                          ; preds = %if.end24
  call void @llvm.lifetime.start.p0(i64 25, ptr nonnull %buildstr.i485) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 88, i32 %20)
  %cmp.i487 = icmp ult i32 %20, 88
  %226 = call ptr @memset(ptr %buildstr.i485, i32 255, i32 25)
  br i1 %cmp.i487, label %do.end.i489, label %if.end.i490

do.end.i489:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %227 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %228, i32 noundef 0, ptr noundef nonnull @.str.24, i32 noundef %20) #11
  br label %iwl_parse_tlv_firmware.exit

if.end.i490:                                      ; preds = %if.else
  %magic.i = getelementptr inbounds %struct.iwl_tlv_ucode_header, ptr %24, i32 0, i32 1
  %229 = ptrtoint ptr %magic.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %magic.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1230457866, i32 %230)
  %cmp5.not.i = icmp eq i32 %230, 1230457866
  br i1 %cmp5.not.i, label %if.end15.i, label %do.end10.i

do.end10.i:                                       ; preds = %if.end.i490
  call void @__sanitizer_cov_trace_pc() #13
  %231 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %dev, align 4
  %233 = tail call i32 @llvm.bswap.i32(i32 %230) #11
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %232, i32 noundef 0, ptr noundef nonnull @.str.25, i32 noundef %233) #11
  br label %iwl_parse_tlv_firmware.exit

if.end15.i:                                       ; preds = %if.end.i490
  %ver.i = getelementptr inbounds %struct.iwl_tlv_ucode_header, ptr %24, i32 0, i32 3
  %234 = ptrtoint ptr %ver.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %ver.i, align 8
  %236 = tail call i32 @llvm.bswap.i32(i32 %235) #11
  %237 = ptrtoint ptr %fw1 to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 %236, ptr %fw1, align 4
  %human_readable.i = getelementptr inbounds %struct.iwl_drv, ptr %context, i32 0, i32 1, i32 19
  %human_readable17.i = getelementptr inbounds %struct.iwl_tlv_ucode_header, ptr %24, i32 0, i32 2
  %238 = call ptr @memcpy(ptr %human_readable.i, ptr %human_readable17.i, i32 64)
  %build19.i = getelementptr inbounds %struct.iwl_tlv_ucode_header, ptr %24, i32 0, i32 4
  %239 = ptrtoint ptr %build19.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %build19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %240)
  %tobool.not.i492 = icmp eq i32 %240, 0
  br i1 %tobool.not.i492, label %if.else.i494, label %if.then20.i

if.then20.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  %241 = tail call i32 @llvm.bswap.i32(i32 %240) #11
  %call.i493 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buildstr.i485, ptr noundef nonnull @.str.20, i32 noundef %241) #11
  br label %if.end22.i

if.else.i494:                                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  %242 = ptrtoint ptr %buildstr.i485 to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 0, ptr %buildstr.i485, align 1
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.else.i494, %if.then20.i
  %fw_version.i495 = getelementptr inbounds %struct.iwl_drv, ptr %context, i32 0, i32 1, i32 1
  %243 = ptrtoint ptr %fw1 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %fw1, align 4
  %shr.i = lshr i32 %244, 24
  %and29.i = lshr i32 %244, 16
  %shr30.i = and i32 %and29.i, 255
  %and33.i = lshr i32 %244, 8
  %shr34.i = and i32 %and33.i, 255
  %and37.i = and i32 %244, 255
  %call.i.i497 = tail call i32 @strncmp(ptr noundef %firmware_name, ptr noundef nonnull dereferenceable(9) @.str.23, i32 noundef 8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i497)
  %cmp.i.i498 = icmp eq i32 %call.i.i497, 0
  %add.ptr.i.i499 = getelementptr %struct.iwl_drv, ptr %context, i32 0, i32 6, i32 8
  %spec.select.i.i500 = select i1 %cmp.i.i498, ptr %add.ptr.i.i499, ptr %firmware_name
  %call40.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fw_version.i495, i32 noundef 64, ptr noundef nonnull @.str.21, i32 noundef %shr.i, i32 noundef %shr30.i, i32 noundef %shr34.i, i32 noundef %and37.i, ptr noundef nonnull %buildstr.i485, ptr noundef %spec.select.i.i500) #11
  %data41.i = getelementptr inbounds %struct.iwl_tlv_ucode_header, ptr %24, i32 0, i32 6
  %sub.i = add i32 %20, -88
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub.i)
  %cmp431598.i = icmp ugt i32 %sub.i, 7
  br i1 %cmp431598.i, label %while.body.lr.ph.i, label %while.end.thread.i

while.end.thread.i:                               ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i15001667.i = getelementptr %struct.iwl_drv, ptr %context, i32 0, i32 1, i32 5, i32 8, i32 2
  %245 = ptrtoint ptr %arrayidx.i.i15001667.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load volatile i32, ptr %arrayidx.i.i15001667.i, align 4
  br label %if.end704.i

while.body.lr.ph.i:                               ; preds = %if.end22.i
  %_capa.i.i.i = getelementptr inbounds %struct.iwl_drv, ptr %context, i32 0, i32 1, i32 5, i32 8
  %dump_excl11.i.i = getelementptr inbounds %struct.iwl_drv, ptr %context, i32 0, i32 1, i32 23
  %dump_excl_wowlan15.i.i = getelementptr inbounds %struct.iwl_drv, ptr %context, i32 0, i32 1, i32 24
  %phy_integration_ver.i = getelementptr inbounds %struct.iwl_drv, ptr %context, i32 0, i32 1, i32 21
  %phy_integration_ver_len.i = getelementptr inbounds %struct.iwl_drv, ptr %context, i32 0, i32 1, i32 22
  %cmd_versions.i = getelementptr inbounds %struct.iwl_drv, ptr %context, i32 0, i32 1, i32 5, i32 9
  %n_cmd_versions.i = getelementptr inbounds %struct.iwl_drv, ptr %context, i32 0, i32 1, i32 5, i32 10
  %error_log_addr.i = getelementptr inbounds %struct.iwl_drv, ptr %context, i32 0, i32 1, i32 5, i32 4
  %error_log_size.i = getelementptr inbounds %struct.iwl_drv, ptr %context, i32 0, i32 1, i32 5, i32 5
  %iml_len.i = getelementptr inbounds %struct.iwl_drv, ptr %context, i32 0, i32 1, i32 3
  %iml.i = getelementptr inbounds %struct.iwl_drv, ptr %context, i32 0, i32 1, i32 4
  %n_mem_tlv.i = getelementptr inbounds %struct.iwl_firmware_pieces, ptr %call7.i.i, i32 0, i32 15
  %dbg_mem_tlv.i = getelementptr inbounds %struct.iwl_firmware_pieces, ptr %call7.i.i, i32 0, i32 14
  %paging_mem_size484.i = getelementptr inbounds %struct.iwl_drv, ptr %context, i32 0, i32 1, i32 2, i32 0, i32 3
  %paging_mem_size488.i = getelementptr %struct.iwl_drv, ptr %context, i32 0, i32 1, i32 2, i32 3, i32 3
  %arrayidx.i1475.i = getelementptr [4 x %struct.fw_img_parsing], ptr %call7.i.i, i32 0, i32 3
  %sec_counter.i1476.i = getelementptr [4 x %struct.fw_img_parsing], ptr %call7.i.i, i32 0, i32 3, i32 1
  %dbg_dest_tlv_init329.i = getelementptr inbounds %struct.iwl_firmware_pieces, ptr %call7.i.i, i32 0, i32 7
  %dbg_dest_ver.i = getelementptr inbounds %struct.iwl_firmware_pieces, ptr %call7.i.i, i32 0, i32 8
  %247 = getelementptr inbounds %struct.iwl_firmware_pieces, ptr %call7.i.i, i32 0, i32 9
  %n_dest_reg.i = getelementptr inbounds %struct.iwl_drv, ptr %context, i32 0, i32 1, i32 20, i32 1
  %arrayidx12.i.i = getelementptr %struct.iwl_drv, ptr %context, i32 0, i32 1, i32 18
  %is_dual_cpus.i = getelementptr inbounds %struct.iwl_drv, ptr %context, i32 0, i32 1, i32 2, i32 0, i32 2
  %is_dual_cpus204.i = getelementptr %struct.iwl_drv, ptr %context, i32 0, i32 1, i32 2, i32 1, i32 2
  %is_dual_cpus208.i = getelementptr %struct.iwl_drv, ptr %context, i32 0, i32 1, i32 2, i32 2, i32 2
  %arrayidx.i1434.i = getelementptr [4 x %struct.fw_img_parsing], ptr %call7.i.i, i32 0, i32 2
  %sec_counter.i1435.i = getelementptr [4 x %struct.fw_img_parsing], ptr %call7.i.i, i32 0, i32 2, i32 1
  %type189.i = getelementptr inbounds %struct.iwl_drv, ptr %context, i32 0, i32 1, i32 17
  %arrayidx.i1416.i = getelementptr [4 x %struct.fw_img_parsing], ptr %call7.i.i, i32 0, i32 1
  %sec_counter.i1417.i = getelementptr [4 x %struct.fw_img_parsing], ptr %call7.i.i, i32 0, i32 1, i32 1
  %sec_counter.i1399.i = getelementptr [4 x %struct.fw_img_parsing], ptr %call7.i.i, i32 0, i32 0, i32 1
  %phy_config.i = getelementptr inbounds %struct.iwl_drv, ptr %context, i32 0, i32 1, i32 14
  %valid_tx_ant.i = getelementptr inbounds %struct.iwl_drv, ptr %context, i32 0, i32 1, i32 15
  %valid_rx_ant.i = getelementptr inbounds %struct.iwl_drv, ptr %context, i32 0, i32 1, i32 16
  %enhance_sensitivity_table.i = getelementptr inbounds %struct.iwl_drv, ptr %context, i32 0, i32 1, i32 6
  %inst_errlog_ptr.i = getelementptr inbounds %struct.iwl_firmware_pieces, ptr %call7.i.i, i32 0, i32 6
  %inst_evtlog_size.i = getelementptr inbounds %struct.iwl_firmware_pieces, ptr %call7.i.i, i32 0, i32 5
  %inst_evtlog_ptr.i = getelementptr inbounds %struct.iwl_firmware_pieces, ptr %call7.i.i, i32 0, i32 4
  %init_errlog_ptr.i = getelementptr inbounds %struct.iwl_firmware_pieces, ptr %call7.i.i, i32 0, i32 3
  %init_evtlog_size.i = getelementptr inbounds %struct.iwl_firmware_pieces, ptr %call7.i.i, i32 0, i32 2
  %init_evtlog_ptr.i = getelementptr inbounds %struct.iwl_firmware_pieces, ptr %call7.i.i, i32 0, i32 1
  %_api.i.i = getelementptr inbounds %struct.iwl_drv, ptr %context, i32 0, i32 1, i32 5, i32 7
  %flags90.i = getelementptr inbounds %struct.iwl_drv, ptr %context, i32 0, i32 1, i32 5, i32 3
  br label %while.body.i

while.body.i:                                     ; preds = %sw.epilog.i522.while.body.i_crit_edge, %while.body.lr.ph.i
  %usniffer_images.0 = phi i8 [ 0, %while.body.lr.ph.i ], [ %usniffer_images.1, %sw.epilog.i522.while.body.i_crit_edge ]
  %usniffer_req.0.off01602.i = phi i1 [ false, %while.body.lr.ph.i ], [ %usniffer_req.3.off0.i, %sw.epilog.i522.while.body.i_crit_edge ]
  %data1.01600.i = phi ptr [ %data41.i, %while.body.lr.ph.i ], [ %add.ptr.i503, %sw.epilog.i522.while.body.i_crit_edge ]
  %len.01599.i = phi i32 [ %sub.i, %while.body.lr.ph.i ], [ %sub58.i, %sw.epilog.i522.while.body.i_crit_edge ]
  %sub44.i = add i32 %len.01599.i, -8
  %length.i = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %data1.01600.i, i32 0, i32 1
  %248 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %length.i, align 4
  %250 = call i32 @llvm.bswap.i32(i32 %249) #11
  %251 = ptrtoint ptr %data1.01600.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %data1.01600.i, align 4
  %253 = call i32 @llvm.bswap.i32(i32 %252) #11
  %data45.i = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %data1.01600.i, i32 0, i32 2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub44.i, i32 %250)
  %cmp47.i = icmp ult i32 %sub44.i, %250
  br i1 %cmp47.i, label %do.end52.i, label %if.end56.i

do.end52.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %254 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %dev, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %255, i32 noundef 0, ptr noundef nonnull @.str.26, i32 noundef %sub44.i, i32 noundef %250) #11
  br label %iwl_parse_tlv_firmware.exit

if.end56.i:                                       ; preds = %while.body.i
  %add.i501 = add i32 %250, 3
  %and57.i = and i32 %add.i501, -4
  %sub58.i = sub i32 %sub44.i, %and57.i
  %add61.i502 = add i32 %and57.i, 8
  %add.ptr.i503 = getelementptr i8, ptr %data1.01600.i, i32 %add61.i502
  %256 = zext i32 %253 to i64
  call void @__sanitizer_cov_trace_switch(i64 %256, ptr @__sancov_gen_cov_switch_values)
  switch i32 %253, label %do.end687.i [
    i32 1, label %sw.bb.i505
    i32 2, label %sw.bb62.i
    i32 3, label %sw.bb63.i
    i32 4, label %sw.bb64.i
    i32 5, label %do.end69.i
    i32 6, label %sw.bb73.i
    i32 7, label %sw.bb78.i
    i32 18, label %sw.bb82.i
    i32 29, label %sw.bb91.i
    i32 30, label %sw.bb95.i
    i32 11, label %sw.bb99.i
    i32 12, label %sw.bb104.i
    i32 13, label %sw.bb109.i
    i32 8, label %sw.bb114.i
    i32 9, label %sw.bb119.i
    i32 10, label %sw.bb124.i
    i32 14, label %sw.bb129.i
    i32 16, label %sw.bb134.i
    i32 17, label %sw.bb135.i
    i32 15, label %sw.bb136.i
    i32 19, label %if.end23.i.i519
    i32 20, label %if.end23.i1364.i
    i32 21, label %if.end23.i1382.i
    i32 22, label %sw.bb153.i
    i32 23, label %sw.bb161.i
    i32 24, label %if.end23.i1403.i
    i32 25, label %if.end23.i1421.i
    i32 26, label %if.end23.i1439.i
    i32 27, label %sw.bb190.i
    i32 28, label %sw.bb224.i
    i32 31, label %sw.bb230.i
    i32 36, label %sw.bb236.i
    i32 38, label %sw.bb266.i
    i32 39, label %sw.bb328.i
    i32 40, label %sw.bb390.i
    i32 4096, label %sw.bb429.i
    i32 34, label %if.end23.i1480.i
    i32 32, label %sw.bb446.i
    i32 50, label %if.end56.i.sw.epilog.i522_crit_edge
    i32 51, label %sw.bb489.i
    i32 52, label %sw.bb516.i
    i32 57, label %sw.bb525.i
    i32 60, label %sw.bb532.i
    i32 256, label %sw.bb548.i
    i32 54, label %sw.bb567.i
    i32 55, label %sw.bb584.i
    i32 16777224, label %sw.bb607.i
    i32 16777221, label %if.end56.i.sw.bb608.i_crit_edge
    i32 16777222, label %if.end56.i.sw.bb608.i_crit_edge913
    i32 16777223, label %if.end56.i.sw.bb608.i_crit_edge914
    i32 16777225, label %if.end56.i.sw.bb608.i_crit_edge915
    i32 16777226, label %if.end56.i.sw.bb608.i_crit_edge916
    i32 48, label %sw.bb613.i
    i32 61, label %sw.bb662.i
    i32 66, label %if.end56.i.sw.bb683.i_crit_edge
    i32 67, label %if.end56.i.sw.bb683.i_crit_edge917
  ]

if.end56.i.sw.bb683.i_crit_edge917:               ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb683.i

if.end56.i.sw.bb683.i_crit_edge:                  ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb683.i

if.end56.i.sw.bb608.i_crit_edge916:               ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb608.i

if.end56.i.sw.bb608.i_crit_edge915:               ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb608.i

if.end56.i.sw.bb608.i_crit_edge914:               ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb608.i

if.end56.i.sw.bb608.i_crit_edge913:               ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb608.i

if.end56.i.sw.bb608.i_crit_edge:                  ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb608.i

if.end56.i.sw.epilog.i522_crit_edge:              ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i522

sw.bb.i505:                                       ; preds = %if.end56.i
  %257 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %call7.i.i, align 8
  %tobool.not.i.i.i504 = icmp eq ptr %258, null
  br i1 %tobool.not.i.i.i504, label %sw.bb.i505.if.end.i.i.i510_crit_edge, label %land.lhs.true.i.i.i507

sw.bb.i505.if.end.i.i.i510_crit_edge:             ; preds = %sw.bb.i505
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i510

land.lhs.true.i.i.i507:                           ; preds = %sw.bb.i505
  %259 = ptrtoint ptr %sec_counter.i1399.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %sec_counter.i1399.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %260)
  %cmp.not.i.i.i506 = icmp slt i32 %260, 2
  br i1 %cmp.not.i.i.i506, label %land.lhs.true.i.i.i507.if.end.i.i.i510_crit_edge, label %land.lhs.true.i.i.i507.set_sec_data.exit.i513_crit_edge

land.lhs.true.i.i.i507.set_sec_data.exit.i513_crit_edge: ; preds = %land.lhs.true.i.i.i507
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sec_data.exit.i513

land.lhs.true.i.i.i507.if.end.i.i.i510_crit_edge: ; preds = %land.lhs.true.i.i.i507
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i510

if.end.i.i.i510:                                  ; preds = %land.lhs.true.i.i.i507.if.end.i.i.i510_crit_edge, %sw.bb.i505.if.end.i.i.i510_crit_edge
  %call.i.i.i508 = call noalias ptr @krealloc(ptr noundef %258, i32 noundef 24, i32 noundef 3264) #17
  %tobool4.not.i.i.i509 = icmp eq ptr %call.i.i.i508, null
  br i1 %tobool4.not.i.i.i509, label %if.end.i.i.i510.set_sec_data.exit.i513_crit_edge, label %if.end6.i.i.i511

if.end.i.i.i510.set_sec_data.exit.i513_crit_edge: ; preds = %if.end.i.i.i510
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sec_data.exit.i513

if.end6.i.i.i511:                                 ; preds = %if.end.i.i.i510
  call void @__sanitizer_cov_trace_pc() #13
  %261 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %261)
  store ptr %call.i.i.i508, ptr %call7.i.i, align 8
  %262 = ptrtoint ptr %sec_counter.i1399.i to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 2, ptr %sec_counter.i1399.i, align 4
  br label %set_sec_data.exit.i513

set_sec_data.exit.i513:                           ; preds = %if.end6.i.i.i511, %if.end.i.i.i510.set_sec_data.exit.i513_crit_edge, %land.lhs.true.i.i.i507.set_sec_data.exit.i513_crit_edge
  %263 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %call7.i.i, align 8
  %arrayidx2.i.i512 = getelementptr %struct.fw_sec, ptr %264, i32 1
  %265 = ptrtoint ptr %arrayidx2.i.i512 to i32
  call void @__asan_store4_noabort(i32 %265)
  store ptr %data45.i, ptr %arrayidx2.i.i512, align 4
  %266 = load ptr, ptr %call7.i.i, align 8
  %tobool.not.i.i1141.i = icmp eq ptr %266, null
  br i1 %tobool.not.i.i1141.i, label %set_sec_data.exit.i513.if.end.i.i1147.i_crit_edge, label %land.lhs.true.i.i1144.i

set_sec_data.exit.i513.if.end.i.i1147.i_crit_edge: ; preds = %set_sec_data.exit.i513
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i1147.i

land.lhs.true.i.i1144.i:                          ; preds = %set_sec_data.exit.i513
  %267 = ptrtoint ptr %sec_counter.i1399.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %sec_counter.i1399.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %268)
  %cmp.not.i.i1143.i = icmp slt i32 %268, 2
  br i1 %cmp.not.i.i1143.i, label %land.lhs.true.i.i1144.i.if.end.i.i1147.i_crit_edge, label %land.lhs.true.i.i1144.i.set_sec_size.exit.i515_crit_edge

land.lhs.true.i.i1144.i.set_sec_size.exit.i515_crit_edge: ; preds = %land.lhs.true.i.i1144.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sec_size.exit.i515

land.lhs.true.i.i1144.i.if.end.i.i1147.i_crit_edge: ; preds = %land.lhs.true.i.i1144.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i1147.i

if.end.i.i1147.i:                                 ; preds = %land.lhs.true.i.i1144.i.if.end.i.i1147.i_crit_edge, %set_sec_data.exit.i513.if.end.i.i1147.i_crit_edge
  %call.i.i1145.i = call noalias ptr @krealloc(ptr noundef %266, i32 noundef 24, i32 noundef 3264) #17
  %tobool4.not.i.i1146.i = icmp eq ptr %call.i.i1145.i, null
  br i1 %tobool4.not.i.i1146.i, label %if.end.i.i1147.i.set_sec_size.exit.i515_crit_edge, label %if.end6.i.i1149.i

if.end.i.i1147.i.set_sec_size.exit.i515_crit_edge: ; preds = %if.end.i.i1147.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sec_size.exit.i515

if.end6.i.i1149.i:                                ; preds = %if.end.i.i1147.i
  call void @__sanitizer_cov_trace_pc() #13
  %269 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %269)
  store ptr %call.i.i1145.i, ptr %call7.i.i, align 8
  %270 = ptrtoint ptr %sec_counter.i1399.i to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 2, ptr %sec_counter.i1399.i, align 4
  br label %set_sec_size.exit.i515

set_sec_size.exit.i515:                           ; preds = %if.end6.i.i1149.i, %if.end.i.i1147.i.set_sec_size.exit.i515_crit_edge, %land.lhs.true.i.i1144.i.set_sec_size.exit.i515_crit_edge
  %271 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %call7.i.i, align 8
  %size3.i.i514 = getelementptr %struct.fw_sec, ptr %272, i32 1, i32 1
  %273 = ptrtoint ptr %size3.i.i514 to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 %250, ptr %size3.i.i514, align 4
  %274 = load ptr, ptr %call7.i.i, align 8
  %tobool.not.i.i1150.i = icmp eq ptr %274, null
  br i1 %tobool.not.i.i1150.i, label %set_sec_size.exit.i515.if.end.i.i1156.i_crit_edge, label %land.lhs.true.i.i1153.i

set_sec_size.exit.i515.if.end.i.i1156.i_crit_edge: ; preds = %set_sec_size.exit.i515
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i1156.i

land.lhs.true.i.i1153.i:                          ; preds = %set_sec_size.exit.i515
  %275 = ptrtoint ptr %sec_counter.i1399.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %sec_counter.i1399.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %276)
  %cmp.not.i.i1152.i = icmp slt i32 %276, 2
  br i1 %cmp.not.i.i1152.i, label %land.lhs.true.i.i1153.i.if.end.i.i1156.i_crit_edge, label %land.lhs.true.i.i1153.i.set_sec_offset.exit.i517_crit_edge

land.lhs.true.i.i1153.i.set_sec_offset.exit.i517_crit_edge: ; preds = %land.lhs.true.i.i1153.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sec_offset.exit.i517

land.lhs.true.i.i1153.i.if.end.i.i1156.i_crit_edge: ; preds = %land.lhs.true.i.i1153.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i1156.i

if.end.i.i1156.i:                                 ; preds = %land.lhs.true.i.i1153.i.if.end.i.i1156.i_crit_edge, %set_sec_size.exit.i515.if.end.i.i1156.i_crit_edge
  %call.i.i1154.i = call noalias ptr @krealloc(ptr noundef %274, i32 noundef 24, i32 noundef 3264) #17
  %tobool4.not.i.i1155.i = icmp eq ptr %call.i.i1154.i, null
  br i1 %tobool4.not.i.i1155.i, label %if.end.i.i1156.i.set_sec_offset.exit.i517_crit_edge, label %if.end6.i.i1158.i

if.end.i.i1156.i.set_sec_offset.exit.i517_crit_edge: ; preds = %if.end.i.i1156.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sec_offset.exit.i517

if.end6.i.i1158.i:                                ; preds = %if.end.i.i1156.i
  call void @__sanitizer_cov_trace_pc() #13
  %277 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %277)
  store ptr %call.i.i1154.i, ptr %call7.i.i, align 8
  %278 = ptrtoint ptr %sec_counter.i1399.i to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 2, ptr %sec_counter.i1399.i, align 4
  br label %set_sec_offset.exit.i517

set_sec_offset.exit.i517:                         ; preds = %if.end6.i.i1158.i, %if.end.i.i1156.i.set_sec_offset.exit.i517_crit_edge, %land.lhs.true.i.i1153.i.set_sec_offset.exit.i517_crit_edge
  %279 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %call7.i.i, align 8
  %offset3.i.i516 = getelementptr %struct.fw_sec, ptr %280, i32 1, i32 2
  %281 = ptrtoint ptr %offset3.i.i516 to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 0, ptr %offset3.i.i516, align 4
  br label %sw.epilog.i522

sw.bb62.i:                                        ; preds = %if.end56.i
  %282 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %call7.i.i, align 8
  %tobool.not.i.i1159.i = icmp eq ptr %283, null
  br i1 %tobool.not.i.i1159.i, label %sw.bb62.i.if.end.i.i1165.i_crit_edge, label %land.lhs.true.i.i1162.i

sw.bb62.i.if.end.i.i1165.i_crit_edge:             ; preds = %sw.bb62.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i1165.i

land.lhs.true.i.i1162.i:                          ; preds = %sw.bb62.i
  %284 = ptrtoint ptr %sec_counter.i1399.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %sec_counter.i1399.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %285)
  %cmp.not.i.i1161.i = icmp slt i32 %285, 1
  br i1 %cmp.not.i.i1161.i, label %land.lhs.true.i.i1162.i.if.end.i.i1165.i_crit_edge, label %land.lhs.true.i.i1162.i.set_sec_data.exit1168.i_crit_edge

land.lhs.true.i.i1162.i.set_sec_data.exit1168.i_crit_edge: ; preds = %land.lhs.true.i.i1162.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sec_data.exit1168.i

land.lhs.true.i.i1162.i.if.end.i.i1165.i_crit_edge: ; preds = %land.lhs.true.i.i1162.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i1165.i

if.end.i.i1165.i:                                 ; preds = %land.lhs.true.i.i1162.i.if.end.i.i1165.i_crit_edge, %sw.bb62.i.if.end.i.i1165.i_crit_edge
  %call.i.i1163.i = call noalias ptr @krealloc(ptr noundef %283, i32 noundef 12, i32 noundef 3264) #17
  %tobool4.not.i.i1164.i = icmp eq ptr %call.i.i1163.i, null
  br i1 %tobool4.not.i.i1164.i, label %if.end.i.i1165.i.set_sec_data.exit1168.i_crit_edge, label %if.end6.i.i1167.i

if.end.i.i1165.i.set_sec_data.exit1168.i_crit_edge: ; preds = %if.end.i.i1165.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sec_data.exit1168.i

if.end6.i.i1167.i:                                ; preds = %if.end.i.i1165.i
  call void @__sanitizer_cov_trace_pc() #13
  %286 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %286)
  store ptr %call.i.i1163.i, ptr %call7.i.i, align 8
  %287 = ptrtoint ptr %sec_counter.i1399.i to i32
  call void @__asan_store4_noabort(i32 %287)
  store i32 1, ptr %sec_counter.i1399.i, align 4
  br label %set_sec_data.exit1168.i

set_sec_data.exit1168.i:                          ; preds = %if.end6.i.i1167.i, %if.end.i.i1165.i.set_sec_data.exit1168.i_crit_edge, %land.lhs.true.i.i1162.i.set_sec_data.exit1168.i_crit_edge
  %288 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %call7.i.i, align 8
  %290 = ptrtoint ptr %289 to i32
  call void @__asan_store4_noabort(i32 %290)
  store ptr %data45.i, ptr %289, align 4
  %291 = load ptr, ptr %call7.i.i, align 8
  %tobool.not.i.i1169.i = icmp eq ptr %291, null
  br i1 %tobool.not.i.i1169.i, label %set_sec_data.exit1168.i.if.end.i.i1175.i_crit_edge, label %land.lhs.true.i.i1172.i

set_sec_data.exit1168.i.if.end.i.i1175.i_crit_edge: ; preds = %set_sec_data.exit1168.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i1175.i

land.lhs.true.i.i1172.i:                          ; preds = %set_sec_data.exit1168.i
  %292 = ptrtoint ptr %sec_counter.i1399.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %sec_counter.i1399.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %293)
  %cmp.not.i.i1171.i = icmp slt i32 %293, 1
  br i1 %cmp.not.i.i1171.i, label %land.lhs.true.i.i1172.i.if.end.i.i1175.i_crit_edge, label %land.lhs.true.i.i1172.i.set_sec_size.exit1179.i_crit_edge

land.lhs.true.i.i1172.i.set_sec_size.exit1179.i_crit_edge: ; preds = %land.lhs.true.i.i1172.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sec_size.exit1179.i

land.lhs.true.i.i1172.i.if.end.i.i1175.i_crit_edge: ; preds = %land.lhs.true.i.i1172.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i1175.i

if.end.i.i1175.i:                                 ; preds = %land.lhs.true.i.i1172.i.if.end.i.i1175.i_crit_edge, %set_sec_data.exit1168.i.if.end.i.i1175.i_crit_edge
  %call.i.i1173.i = call noalias ptr @krealloc(ptr noundef %291, i32 noundef 12, i32 noundef 3264) #17
  %tobool4.not.i.i1174.i = icmp eq ptr %call.i.i1173.i, null
  br i1 %tobool4.not.i.i1174.i, label %if.end.i.i1175.i.set_sec_size.exit1179.i_crit_edge, label %if.end6.i.i1177.i

if.end.i.i1175.i.set_sec_size.exit1179.i_crit_edge: ; preds = %if.end.i.i1175.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sec_size.exit1179.i

if.end6.i.i1177.i:                                ; preds = %if.end.i.i1175.i
  call void @__sanitizer_cov_trace_pc() #13
  %294 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %294)
  store ptr %call.i.i1173.i, ptr %call7.i.i, align 8
  %295 = ptrtoint ptr %sec_counter.i1399.i to i32
  call void @__asan_store4_noabort(i32 %295)
  store i32 1, ptr %sec_counter.i1399.i, align 4
  br label %set_sec_size.exit1179.i

set_sec_size.exit1179.i:                          ; preds = %if.end6.i.i1177.i, %if.end.i.i1175.i.set_sec_size.exit1179.i_crit_edge, %land.lhs.true.i.i1172.i.set_sec_size.exit1179.i_crit_edge
  %296 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %call7.i.i, align 8
  %size3.i1178.i = getelementptr %struct.fw_sec, ptr %297, i32 0, i32 1
  %298 = ptrtoint ptr %size3.i1178.i to i32
  call void @__asan_store4_noabort(i32 %298)
  store i32 %250, ptr %size3.i1178.i, align 4
  %299 = load ptr, ptr %call7.i.i, align 8
  %tobool.not.i.i1180.i = icmp eq ptr %299, null
  br i1 %tobool.not.i.i1180.i, label %set_sec_size.exit1179.i.if.end.i.i1186.i_crit_edge, label %land.lhs.true.i.i1183.i

set_sec_size.exit1179.i.if.end.i.i1186.i_crit_edge: ; preds = %set_sec_size.exit1179.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i1186.i

land.lhs.true.i.i1183.i:                          ; preds = %set_sec_size.exit1179.i
  %300 = ptrtoint ptr %sec_counter.i1399.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %sec_counter.i1399.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %301)
  %cmp.not.i.i1182.i = icmp slt i32 %301, 1
  br i1 %cmp.not.i.i1182.i, label %land.lhs.true.i.i1183.i.if.end.i.i1186.i_crit_edge, label %land.lhs.true.i.i1183.i.set_sec_offset.exit1190.i_crit_edge

land.lhs.true.i.i1183.i.set_sec_offset.exit1190.i_crit_edge: ; preds = %land.lhs.true.i.i1183.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sec_offset.exit1190.i

land.lhs.true.i.i1183.i.if.end.i.i1186.i_crit_edge: ; preds = %land.lhs.true.i.i1183.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i1186.i

if.end.i.i1186.i:                                 ; preds = %land.lhs.true.i.i1183.i.if.end.i.i1186.i_crit_edge, %set_sec_size.exit1179.i.if.end.i.i1186.i_crit_edge
  %call.i.i1184.i = call noalias ptr @krealloc(ptr noundef %299, i32 noundef 12, i32 noundef 3264) #17
  %tobool4.not.i.i1185.i = icmp eq ptr %call.i.i1184.i, null
  br i1 %tobool4.not.i.i1185.i, label %if.end.i.i1186.i.set_sec_offset.exit1190.i_crit_edge, label %if.end6.i.i1188.i

if.end.i.i1186.i.set_sec_offset.exit1190.i_crit_edge: ; preds = %if.end.i.i1186.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sec_offset.exit1190.i

if.end6.i.i1188.i:                                ; preds = %if.end.i.i1186.i
  call void @__sanitizer_cov_trace_pc() #13
  %302 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %302)
  store ptr %call.i.i1184.i, ptr %call7.i.i, align 8
  %303 = ptrtoint ptr %sec_counter.i1399.i to i32
  call void @__asan_store4_noabort(i32 %303)
  store i32 1, ptr %sec_counter.i1399.i, align 4
  br label %set_sec_offset.exit1190.i

set_sec_offset.exit1190.i:                        ; preds = %if.end6.i.i1188.i, %if.end.i.i1186.i.set_sec_offset.exit1190.i_crit_edge, %land.lhs.true.i.i1183.i.set_sec_offset.exit1190.i_crit_edge
  %304 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %call7.i.i, align 8
  %offset3.i1189.i = getelementptr %struct.fw_sec, ptr %305, i32 0, i32 2
  %306 = ptrtoint ptr %offset3.i1189.i to i32
  call void @__asan_store4_noabort(i32 %306)
  store i32 8388608, ptr %offset3.i1189.i, align 4
  br label %sw.epilog.i522

sw.bb63.i:                                        ; preds = %if.end56.i
  %307 = ptrtoint ptr %arrayidx.i1416.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %arrayidx.i1416.i, align 8
  %tobool.not.i.i1191.i = icmp eq ptr %308, null
  br i1 %tobool.not.i.i1191.i, label %sw.bb63.i.if.end.i.i1197.i_crit_edge, label %land.lhs.true.i.i1194.i

sw.bb63.i.if.end.i.i1197.i_crit_edge:             ; preds = %sw.bb63.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i1197.i

land.lhs.true.i.i1194.i:                          ; preds = %sw.bb63.i
  %309 = ptrtoint ptr %sec_counter.i1417.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %sec_counter.i1417.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %310)
  %cmp.not.i.i1193.i = icmp slt i32 %310, 2
  br i1 %cmp.not.i.i1193.i, label %land.lhs.true.i.i1194.i.if.end.i.i1197.i_crit_edge, label %land.lhs.true.i.i1194.i.set_sec_data.exit1201.i_crit_edge

land.lhs.true.i.i1194.i.set_sec_data.exit1201.i_crit_edge: ; preds = %land.lhs.true.i.i1194.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sec_data.exit1201.i

land.lhs.true.i.i1194.i.if.end.i.i1197.i_crit_edge: ; preds = %land.lhs.true.i.i1194.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i1197.i

if.end.i.i1197.i:                                 ; preds = %land.lhs.true.i.i1194.i.if.end.i.i1197.i_crit_edge, %sw.bb63.i.if.end.i.i1197.i_crit_edge
  %call.i.i1195.i = call noalias ptr @krealloc(ptr noundef %308, i32 noundef 24, i32 noundef 3264) #17
  %tobool4.not.i.i1196.i = icmp eq ptr %call.i.i1195.i, null
  br i1 %tobool4.not.i.i1196.i, label %if.end.i.i1197.i.set_sec_data.exit1201.i_crit_edge, label %if.end6.i.i1199.i

if.end.i.i1197.i.set_sec_data.exit1201.i_crit_edge: ; preds = %if.end.i.i1197.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sec_data.exit1201.i

if.end6.i.i1199.i:                                ; preds = %if.end.i.i1197.i
  call void @__sanitizer_cov_trace_pc() #13
  %311 = ptrtoint ptr %arrayidx.i1416.i to i32
  call void @__asan_store4_noabort(i32 %311)
  store ptr %call.i.i1195.i, ptr %arrayidx.i1416.i, align 8
  %312 = ptrtoint ptr %sec_counter.i1417.i to i32
  call void @__asan_store4_noabort(i32 %312)
  store i32 2, ptr %sec_counter.i1417.i, align 4
  br label %set_sec_data.exit1201.i

set_sec_data.exit1201.i:                          ; preds = %if.end6.i.i1199.i, %if.end.i.i1197.i.set_sec_data.exit1201.i_crit_edge, %land.lhs.true.i.i1194.i.set_sec_data.exit1201.i_crit_edge
  %313 = ptrtoint ptr %arrayidx.i1416.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %arrayidx.i1416.i, align 8
  %arrayidx2.i1200.i = getelementptr %struct.fw_sec, ptr %314, i32 1
  %315 = ptrtoint ptr %arrayidx2.i1200.i to i32
  call void @__asan_store4_noabort(i32 %315)
  store ptr %data45.i, ptr %arrayidx2.i1200.i, align 4
  %316 = load ptr, ptr %arrayidx.i1416.i, align 8
  %tobool.not.i.i1203.i = icmp eq ptr %316, null
  br i1 %tobool.not.i.i1203.i, label %set_sec_data.exit1201.i.if.end.i.i1209.i_crit_edge, label %land.lhs.true.i.i1206.i

set_sec_data.exit1201.i.if.end.i.i1209.i_crit_edge: ; preds = %set_sec_data.exit1201.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i1209.i

land.lhs.true.i.i1206.i:                          ; preds = %set_sec_data.exit1201.i
  %317 = ptrtoint ptr %sec_counter.i1417.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %sec_counter.i1417.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %318)
  %cmp.not.i.i1205.i = icmp slt i32 %318, 2
  br i1 %cmp.not.i.i1205.i, label %land.lhs.true.i.i1206.i.if.end.i.i1209.i_crit_edge, label %land.lhs.true.i.i1206.i.set_sec_size.exit1213.i_crit_edge

land.lhs.true.i.i1206.i.set_sec_size.exit1213.i_crit_edge: ; preds = %land.lhs.true.i.i1206.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sec_size.exit1213.i

land.lhs.true.i.i1206.i.if.end.i.i1209.i_crit_edge: ; preds = %land.lhs.true.i.i1206.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i1209.i

if.end.i.i1209.i:                                 ; preds = %land.lhs.true.i.i1206.i.if.end.i.i1209.i_crit_edge, %set_sec_data.exit1201.i.if.end.i.i1209.i_crit_edge
  %call.i.i1207.i = call noalias ptr @krealloc(ptr noundef %316, i32 noundef 24, i32 noundef 3264) #17
  %tobool4.not.i.i1208.i = icmp eq ptr %call.i.i1207.i, null
  br i1 %tobool4.not.i.i1208.i, label %if.end.i.i1209.i.set_sec_size.exit1213.i_crit_edge, label %if.end6.i.i1211.i

if.end.i.i1209.i.set_sec_size.exit1213.i_crit_edge: ; preds = %if.end.i.i1209.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sec_size.exit1213.i

if.end6.i.i1211.i:                                ; preds = %if.end.i.i1209.i
  call void @__sanitizer_cov_trace_pc() #13
  %319 = ptrtoint ptr %arrayidx.i1416.i to i32
  call void @__asan_store4_noabort(i32 %319)
  store ptr %call.i.i1207.i, ptr %arrayidx.i1416.i, align 8
  %320 = ptrtoint ptr %sec_counter.i1417.i to i32
  call void @__asan_store4_noabort(i32 %320)
  store i32 2, ptr %sec_counter.i1417.i, align 4
  br label %set_sec_size.exit1213.i

set_sec_size.exit1213.i:                          ; preds = %if.end6.i.i1211.i, %if.end.i.i1209.i.set_sec_size.exit1213.i_crit_edge, %land.lhs.true.i.i1206.i.set_sec_size.exit1213.i_crit_edge
  %321 = ptrtoint ptr %arrayidx.i1416.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %arrayidx.i1416.i, align 8
  %size3.i1212.i = getelementptr %struct.fw_sec, ptr %322, i32 1, i32 1
  %323 = ptrtoint ptr %size3.i1212.i to i32
  call void @__asan_store4_noabort(i32 %323)
  store i32 %250, ptr %size3.i1212.i, align 4
  %324 = load ptr, ptr %arrayidx.i1416.i, align 8
  %tobool.not.i.i1215.i = icmp eq ptr %324, null
  br i1 %tobool.not.i.i1215.i, label %set_sec_size.exit1213.i.if.end.i.i1221.i_crit_edge, label %land.lhs.true.i.i1218.i

set_sec_size.exit1213.i.if.end.i.i1221.i_crit_edge: ; preds = %set_sec_size.exit1213.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i1221.i

land.lhs.true.i.i1218.i:                          ; preds = %set_sec_size.exit1213.i
  %325 = ptrtoint ptr %sec_counter.i1417.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %sec_counter.i1417.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %326)
  %cmp.not.i.i1217.i = icmp slt i32 %326, 2
  br i1 %cmp.not.i.i1217.i, label %land.lhs.true.i.i1218.i.if.end.i.i1221.i_crit_edge, label %land.lhs.true.i.i1218.i.set_sec_offset.exit1225.i_crit_edge

land.lhs.true.i.i1218.i.set_sec_offset.exit1225.i_crit_edge: ; preds = %land.lhs.true.i.i1218.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sec_offset.exit1225.i

land.lhs.true.i.i1218.i.if.end.i.i1221.i_crit_edge: ; preds = %land.lhs.true.i.i1218.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i1221.i

if.end.i.i1221.i:                                 ; preds = %land.lhs.true.i.i1218.i.if.end.i.i1221.i_crit_edge, %set_sec_size.exit1213.i.if.end.i.i1221.i_crit_edge
  %call.i.i1219.i = call noalias ptr @krealloc(ptr noundef %324, i32 noundef 24, i32 noundef 3264) #17
  %tobool4.not.i.i1220.i = icmp eq ptr %call.i.i1219.i, null
  br i1 %tobool4.not.i.i1220.i, label %if.end.i.i1221.i.set_sec_offset.exit1225.i_crit_edge, label %if.end6.i.i1223.i

if.end.i.i1221.i.set_sec_offset.exit1225.i_crit_edge: ; preds = %if.end.i.i1221.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sec_offset.exit1225.i

if.end6.i.i1223.i:                                ; preds = %if.end.i.i1221.i
  call void @__sanitizer_cov_trace_pc() #13
  %327 = ptrtoint ptr %arrayidx.i1416.i to i32
  call void @__asan_store4_noabort(i32 %327)
  store ptr %call.i.i1219.i, ptr %arrayidx.i1416.i, align 8
  %328 = ptrtoint ptr %sec_counter.i1417.i to i32
  call void @__asan_store4_noabort(i32 %328)
  store i32 2, ptr %sec_counter.i1417.i, align 4
  br label %set_sec_offset.exit1225.i

set_sec_offset.exit1225.i:                        ; preds = %if.end6.i.i1223.i, %if.end.i.i1221.i.set_sec_offset.exit1225.i_crit_edge, %land.lhs.true.i.i1218.i.set_sec_offset.exit1225.i_crit_edge
  %329 = ptrtoint ptr %arrayidx.i1416.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %arrayidx.i1416.i, align 8
  %offset3.i1224.i = getelementptr %struct.fw_sec, ptr %330, i32 1, i32 2
  %331 = ptrtoint ptr %offset3.i1224.i to i32
  call void @__asan_store4_noabort(i32 %331)
  store i32 0, ptr %offset3.i1224.i, align 4
  br label %sw.epilog.i522

sw.bb64.i:                                        ; preds = %if.end56.i
  %332 = ptrtoint ptr %arrayidx.i1416.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %arrayidx.i1416.i, align 8
  %tobool.not.i.i1227.i = icmp eq ptr %333, null
  br i1 %tobool.not.i.i1227.i, label %sw.bb64.i.if.end.i.i1233.i_crit_edge, label %land.lhs.true.i.i1230.i

sw.bb64.i.if.end.i.i1233.i_crit_edge:             ; preds = %sw.bb64.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i1233.i

land.lhs.true.i.i1230.i:                          ; preds = %sw.bb64.i
  %334 = ptrtoint ptr %sec_counter.i1417.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %sec_counter.i1417.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %335)
  %cmp.not.i.i1229.i = icmp slt i32 %335, 1
  br i1 %cmp.not.i.i1229.i, label %land.lhs.true.i.i1230.i.if.end.i.i1233.i_crit_edge, label %land.lhs.true.i.i1230.i.set_sec_data.exit1236.i_crit_edge

land.lhs.true.i.i1230.i.set_sec_data.exit1236.i_crit_edge: ; preds = %land.lhs.true.i.i1230.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sec_data.exit1236.i

land.lhs.true.i.i1230.i.if.end.i.i1233.i_crit_edge: ; preds = %land.lhs.true.i.i1230.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i1233.i

if.end.i.i1233.i:                                 ; preds = %land.lhs.true.i.i1230.i.if.end.i.i1233.i_crit_edge, %sw.bb64.i.if.end.i.i1233.i_crit_edge
  %call.i.i1231.i = call noalias ptr @krealloc(ptr noundef %333, i32 noundef 12, i32 noundef 3264) #17
  %tobool4.not.i.i1232.i = icmp eq ptr %call.i.i1231.i, null
  br i1 %tobool4.not.i.i1232.i, label %if.end.i.i1233.i.set_sec_data.exit1236.i_crit_edge, label %if.end6.i.i1235.i

if.end.i.i1233.i.set_sec_data.exit1236.i_crit_edge: ; preds = %if.end.i.i1233.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sec_data.exit1236.i

if.end6.i.i1235.i:                                ; preds = %if.end.i.i1233.i
  call void @__sanitizer_cov_trace_pc() #13
  %336 = ptrtoint ptr %arrayidx.i1416.i to i32
  call void @__asan_store4_noabort(i32 %336)
  store ptr %call.i.i1231.i, ptr %arrayidx.i1416.i, align 8
  %337 = ptrtoint ptr %sec_counter.i1417.i to i32
  call void @__asan_store4_noabort(i32 %337)
  store i32 1, ptr %sec_counter.i1417.i, align 4
  br label %set_sec_data.exit1236.i

set_sec_data.exit1236.i:                          ; preds = %if.end6.i.i1235.i, %if.end.i.i1233.i.set_sec_data.exit1236.i_crit_edge, %land.lhs.true.i.i1230.i.set_sec_data.exit1236.i_crit_edge
  %338 = ptrtoint ptr %arrayidx.i1416.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %arrayidx.i1416.i, align 8
  %340 = ptrtoint ptr %339 to i32
  call void @__asan_store4_noabort(i32 %340)
  store ptr %data45.i, ptr %339, align 4
  %341 = load ptr, ptr %arrayidx.i1416.i, align 8
  %tobool.not.i.i1238.i = icmp eq ptr %341, null
  br i1 %tobool.not.i.i1238.i, label %set_sec_data.exit1236.i.if.end.i.i1244.i_crit_edge, label %land.lhs.true.i.i1241.i

set_sec_data.exit1236.i.if.end.i.i1244.i_crit_edge: ; preds = %set_sec_data.exit1236.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i1244.i

land.lhs.true.i.i1241.i:                          ; preds = %set_sec_data.exit1236.i
  %342 = ptrtoint ptr %sec_counter.i1417.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load i32, ptr %sec_counter.i1417.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %343)
  %cmp.not.i.i1240.i = icmp slt i32 %343, 1
  br i1 %cmp.not.i.i1240.i, label %land.lhs.true.i.i1241.i.if.end.i.i1244.i_crit_edge, label %land.lhs.true.i.i1241.i.set_sec_size.exit1248.i_crit_edge

land.lhs.true.i.i1241.i.set_sec_size.exit1248.i_crit_edge: ; preds = %land.lhs.true.i.i1241.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sec_size.exit1248.i

land.lhs.true.i.i1241.i.if.end.i.i1244.i_crit_edge: ; preds = %land.lhs.true.i.i1241.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i1244.i

if.end.i.i1244.i:                                 ; preds = %land.lhs.true.i.i1241.i.if.end.i.i1244.i_crit_edge, %set_sec_data.exit1236.i.if.end.i.i1244.i_crit_edge
  %call.i.i1242.i = call noalias ptr @krealloc(ptr noundef %341, i32 noundef 12, i32 noundef 3264) #17
  %tobool4.not.i.i1243.i = icmp eq ptr %call.i.i1242.i, null
  br i1 %tobool4.not.i.i1243.i, label %if.end.i.i1244.i.set_sec_size.exit1248.i_crit_edge, label %if.end6.i.i1246.i

if.end.i.i1244.i.set_sec_size.exit1248.i_crit_edge: ; preds = %if.end.i.i1244.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sec_size.exit1248.i

if.end6.i.i1246.i:                                ; preds = %if.end.i.i1244.i
  call void @__sanitizer_cov_trace_pc() #13
  %344 = ptrtoint ptr %arrayidx.i1416.i to i32
  call void @__asan_store4_noabort(i32 %344)
  store ptr %call.i.i1242.i, ptr %arrayidx.i1416.i, align 8
  %345 = ptrtoint ptr %sec_counter.i1417.i to i32
  call void @__asan_store4_noabort(i32 %345)
  store i32 1, ptr %sec_counter.i1417.i, align 4
  br label %set_sec_size.exit1248.i

set_sec_size.exit1248.i:                          ; preds = %if.end6.i.i1246.i, %if.end.i.i1244.i.set_sec_size.exit1248.i_crit_edge, %land.lhs.true.i.i1241.i.set_sec_size.exit1248.i_crit_edge
  %346 = ptrtoint ptr %arrayidx.i1416.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %arrayidx.i1416.i, align 8
  %size3.i1247.i = getelementptr %struct.fw_sec, ptr %347, i32 0, i32 1
  %348 = ptrtoint ptr %size3.i1247.i to i32
  call void @__asan_store4_noabort(i32 %348)
  store i32 %250, ptr %size3.i1247.i, align 4
  %349 = load ptr, ptr %arrayidx.i1416.i, align 8
  %tobool.not.i.i1250.i = icmp eq ptr %349, null
  br i1 %tobool.not.i.i1250.i, label %set_sec_size.exit1248.i.if.end.i.i1256.i_crit_edge, label %land.lhs.true.i.i1253.i

set_sec_size.exit1248.i.if.end.i.i1256.i_crit_edge: ; preds = %set_sec_size.exit1248.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i1256.i

land.lhs.true.i.i1253.i:                          ; preds = %set_sec_size.exit1248.i
  %350 = ptrtoint ptr %sec_counter.i1417.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %sec_counter.i1417.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %351)
  %cmp.not.i.i1252.i = icmp slt i32 %351, 1
  br i1 %cmp.not.i.i1252.i, label %land.lhs.true.i.i1253.i.if.end.i.i1256.i_crit_edge, label %land.lhs.true.i.i1253.i.set_sec_offset.exit1260.i_crit_edge

land.lhs.true.i.i1253.i.set_sec_offset.exit1260.i_crit_edge: ; preds = %land.lhs.true.i.i1253.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sec_offset.exit1260.i

land.lhs.true.i.i1253.i.if.end.i.i1256.i_crit_edge: ; preds = %land.lhs.true.i.i1253.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i1256.i

if.end.i.i1256.i:                                 ; preds = %land.lhs.true.i.i1253.i.if.end.i.i1256.i_crit_edge, %set_sec_size.exit1248.i.if.end.i.i1256.i_crit_edge
  %call.i.i1254.i = call noalias ptr @krealloc(ptr noundef %349, i32 noundef 12, i32 noundef 3264) #17
  %tobool4.not.i.i1255.i = icmp eq ptr %call.i.i1254.i, null
  br i1 %tobool4.not.i.i1255.i, label %if.end.i.i1256.i.set_sec_offset.exit1260.i_crit_edge, label %if.end6.i.i1258.i

if.end.i.i1256.i.set_sec_offset.exit1260.i_crit_edge: ; preds = %if.end.i.i1256.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sec_offset.exit1260.i

if.end6.i.i1258.i:                                ; preds = %if.end.i.i1256.i
  call void @__sanitizer_cov_trace_pc() #13
  %352 = ptrtoint ptr %arrayidx.i1416.i to i32
  call void @__asan_store4_noabort(i32 %352)
  store ptr %call.i.i1254.i, ptr %arrayidx.i1416.i, align 8
  %353 = ptrtoint ptr %sec_counter.i1417.i to i32
  call void @__asan_store4_noabort(i32 %353)
  store i32 1, ptr %sec_counter.i1417.i, align 4
  br label %set_sec_offset.exit1260.i

set_sec_offset.exit1260.i:                        ; preds = %if.end6.i.i1258.i, %if.end.i.i1256.i.set_sec_offset.exit1260.i_crit_edge, %land.lhs.true.i.i1253.i.set_sec_offset.exit1260.i_crit_edge
  %354 = ptrtoint ptr %arrayidx.i1416.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %arrayidx.i1416.i, align 8
  %offset3.i1259.i = getelementptr %struct.fw_sec, ptr %355, i32 0, i32 2
  %356 = ptrtoint ptr %offset3.i1259.i to i32
  call void @__asan_store4_noabort(i32 %356)
  store i32 8388608, ptr %offset3.i1259.i, align 4
  br label %sw.epilog.i522

do.end69.i:                                       ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #13
  %357 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %dev, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %358, i32 noundef 0, ptr noundef nonnull @.str.27) #11
  br label %sw.epilog.i522

sw.bb73.i:                                        ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %249)
  %cmp74.not.i = icmp eq i32 %249, 67108864
  br i1 %cmp74.not.i, label %if.end76.i518, label %sw.bb73.i.do.end724.i_crit_edge

sw.bb73.i.do.end724.i_crit_edge:                  ; preds = %sw.bb73.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end724.i

if.end76.i518:                                    ; preds = %sw.bb73.i
  call void @__sanitizer_cov_trace_pc() #13
  %359 = ptrtoint ptr %data45.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %data45.i, align 4
  %361 = call i32 @llvm.bswap.i32(i32 %360) #11
  %362 = ptrtoint ptr %ucode_capa to i32
  call void @__asan_store4_noabort(i32 %362)
  store i32 %361, ptr %ucode_capa, align 4
  br label %sw.epilog.i522

sw.bb78.i:                                        ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %249)
  %tobool79.not.i = icmp eq i32 %249, 0
  br i1 %tobool79.not.i, label %if.end81.i, label %sw.bb78.i.do.end724.i_crit_edge

sw.bb78.i.do.end724.i_crit_edge:                  ; preds = %sw.bb78.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end724.i

if.end81.i:                                       ; preds = %sw.bb78.i
  call void @__sanitizer_cov_trace_pc() #13
  %363 = ptrtoint ptr %flags90.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %flags90.i, align 4
  %or.i = or i32 %364, 1
  store i32 %or.i, ptr %flags90.i, align 4
  br label %sw.epilog.i522

sw.bb82.i:                                        ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %250)
  %cmp83.i = icmp ugt i32 %250, 3
  %rem.i = and i32 %250, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool86.not.i = icmp eq i32 %rem.i, 0
  %or.cond.i = and i1 %cmp83.i, %tobool86.not.i
  br i1 %or.cond.i, label %if.end88.i, label %sw.bb82.i.do.end724.i_crit_edge

sw.bb82.i.do.end724.i_crit_edge:                  ; preds = %sw.bb82.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end724.i

if.end88.i:                                       ; preds = %sw.bb82.i
  call void @__sanitizer_cov_trace_pc() #13
  %365 = ptrtoint ptr %data45.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %data45.i, align 4
  %367 = call i32 @llvm.bswap.i32(i32 %366) #11
  %368 = ptrtoint ptr %flags90.i to i32
  call void @__asan_store4_noabort(i32 %368)
  store i32 %367, ptr %flags90.i, align 4
  br label %sw.epilog.i522

sw.bb91.i:                                        ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %249)
  %cmp92.not.i = icmp eq i32 %249, 134217728
  br i1 %cmp92.not.i, label %if.end94.i, label %sw.bb91.i.do.end724.i_crit_edge

sw.bb91.i.do.end724.i_crit_edge:                  ; preds = %sw.bb91.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end724.i

if.end94.i:                                       ; preds = %sw.bb91.i
  %369 = ptrtoint ptr %data45.i to i32
  call void @__asan_loadN_noabort(i32 %369, i32 4)
  %370 = load i32, ptr %data45.i, align 1
  %371 = call i32 @llvm.bswap.i32(i32 %370) #11
  %api_flags2.i.i = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %data1.01600.i, i32 1, i32 1
  %372 = ptrtoint ptr %api_flags2.i.i to i32
  call void @__asan_loadN_noabort(i32 %372, i32 4)
  %373 = load i32, ptr %api_flags2.i.i, align 1
  %374 = call i32 @llvm.bswap.i32(i32 %373) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %371)
  %cmp.i1261.i = icmp ugt i32 %371, 1
  br i1 %cmp.i1261.i, label %do.end.i.i, label %for.cond.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %if.end94.i
  %mul.i.i = shl nuw nsw i32 %371, 5
  br label %for.body.i.i

do.end.i.i:                                       ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #13
  %375 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %376, ptr noundef nonnull @.str.56, i32 noundef %371) #11
  br label %sw.epilog.i522

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i
  %i.018.i.i = phi i32 [ 0, %for.cond.preheader.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %shl.i.i = shl nuw i32 1, %i.018.i.i
  %and.i.i = and i32 %shl.i.i, %374
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.then7.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.then7.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.i.i = add nuw nsw i32 %i.018.i.i, %mul.i.i
  %rem.i.i.i = and i32 %add.i.i, 31
  %shl.i.i.i = shl nuw i32 1, %rem.i.i.i
  %div2.i.i.i = lshr i32 %add.i.i, 5
  %add.ptr.i.i.i = getelementptr i32, ptr %_api.i.i, i32 %div2.i.i.i
  %377 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load i32, ptr %add.ptr.i.i.i, align 4
  %or.i.i.i = or i32 %378, %shl.i.i.i
  store i32 %or.i.i.i, ptr %add.ptr.i.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then7.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.018.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 32
  br i1 %exitcond.not.i.i, label %for.inc.i.i.sw.epilog.i522_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.sw.epilog.i522_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i522

sw.bb95.i:                                        ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %249)
  %cmp96.not.i = icmp eq i32 %249, 134217728
  br i1 %cmp96.not.i, label %if.end98.i, label %sw.bb95.i.do.end724.i_crit_edge

sw.bb95.i.do.end724.i_crit_edge:                  ; preds = %sw.bb95.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end724.i

if.end98.i:                                       ; preds = %sw.bb95.i
  %379 = ptrtoint ptr %data45.i to i32
  call void @__asan_loadN_noabort(i32 %379, i32 4)
  %380 = load i32, ptr %data45.i, align 1
  %381 = call i32 @llvm.bswap.i32(i32 %380) #11
  %api_capa.i.i = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %data1.01600.i, i32 1, i32 1
  %382 = ptrtoint ptr %api_capa.i.i to i32
  call void @__asan_loadN_noabort(i32 %382, i32 4)
  %383 = load i32, ptr %api_capa.i.i, align 1
  %384 = call i32 @llvm.bswap.i32(i32 %383) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %381)
  %cmp.i1262.i = icmp ugt i32 %381, 3
  br i1 %cmp.i1262.i, label %do.end.i1266.i, label %for.cond.preheader.i1264.i

for.cond.preheader.i1264.i:                       ; preds = %if.end98.i
  %mul.i1263.i = shl nuw nsw i32 %381, 5
  br label %for.body.i1270.i

do.end.i1266.i:                                   ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #13
  %385 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @__iwl_warn(ptr noundef %386, ptr noundef nonnull @.str.57, i32 noundef %381) #11
  br label %sw.epilog.i522

for.body.i1270.i:                                 ; preds = %for.inc.i1279.i.for.body.i1270.i_crit_edge, %for.cond.preheader.i1264.i
  %i.017.i.i = phi i32 [ 0, %for.cond.preheader.i1264.i ], [ %inc.i1277.i, %for.inc.i1279.i.for.body.i1270.i_crit_edge ]
  %shl.i1267.i = shl nuw i32 1, %i.017.i.i
  %and.i1268.i = and i32 %shl.i1267.i, %384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1268.i)
  %tobool.not.i1269.i = icmp eq i32 %and.i1268.i, 0
  br i1 %tobool.not.i1269.i, label %for.body.i1270.i.for.inc.i1279.i_crit_edge, label %if.then6.i.i

for.body.i1270.i.for.inc.i1279.i_crit_edge:       ; preds = %for.body.i1270.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i1279.i

if.then6.i.i:                                     ; preds = %for.body.i1270.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.i1271.i = add nuw nsw i32 %i.017.i.i, %mul.i1263.i
  %rem.i.i1272.i = and i32 %add.i1271.i, 31
  %shl.i.i1273.i = shl nuw i32 1, %rem.i.i1272.i
  %div2.i.i1274.i = lshr i32 %add.i1271.i, 5
  %add.ptr.i.i1275.i = getelementptr i32, ptr %_capa.i.i.i, i32 %div2.i.i1274.i
  %387 = ptrtoint ptr %add.ptr.i.i1275.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %add.ptr.i.i1275.i, align 4
  %or.i.i1276.i = or i32 %388, %shl.i.i1273.i
  store i32 %or.i.i1276.i, ptr %add.ptr.i.i1275.i, align 4
  br label %for.inc.i1279.i

for.inc.i1279.i:                                  ; preds = %if.then6.i.i, %for.body.i1270.i.for.inc.i1279.i_crit_edge
  %inc.i1277.i = add nuw nsw i32 %i.017.i.i, 1
  %exitcond.not.i1278.i = icmp eq i32 %inc.i1277.i, 32
  br i1 %exitcond.not.i1278.i, label %for.inc.i1279.i.sw.epilog.i522_crit_edge, label %for.inc.i1279.i.for.body.i1270.i_crit_edge

for.inc.i1279.i.for.body.i1270.i_crit_edge:       ; preds = %for.inc.i1279.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i1270.i

for.inc.i1279.i.sw.epilog.i522_crit_edge:         ; preds = %for.inc.i1279.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i522

sw.bb99.i:                                        ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %249)
  %cmp100.not.i = icmp eq i32 %249, 67108864
  br i1 %cmp100.not.i, label %if.end102.i, label %sw.bb99.i.do.end724.i_crit_edge

sw.bb99.i.do.end724.i_crit_edge:                  ; preds = %sw.bb99.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end724.i

if.end102.i:                                      ; preds = %sw.bb99.i
  call void @__sanitizer_cov_trace_pc() #13
  %389 = ptrtoint ptr %data45.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %data45.i, align 4
  %391 = call i32 @llvm.bswap.i32(i32 %390) #11
  %392 = ptrtoint ptr %init_evtlog_ptr.i to i32
  call void @__asan_store4_noabort(i32 %392)
  store i32 %391, ptr %init_evtlog_ptr.i, align 8
  br label %sw.epilog.i522

sw.bb104.i:                                       ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %249)
  %cmp105.not.i = icmp eq i32 %249, 67108864
  br i1 %cmp105.not.i, label %if.end107.i, label %sw.bb104.i.do.end724.i_crit_edge

sw.bb104.i.do.end724.i_crit_edge:                 ; preds = %sw.bb104.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end724.i

if.end107.i:                                      ; preds = %sw.bb104.i
  call void @__sanitizer_cov_trace_pc() #13
  %393 = ptrtoint ptr %data45.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %data45.i, align 4
  %395 = call i32 @llvm.bswap.i32(i32 %394) #11
  %396 = ptrtoint ptr %init_evtlog_size.i to i32
  call void @__asan_store4_noabort(i32 %396)
  store i32 %395, ptr %init_evtlog_size.i, align 4
  br label %sw.epilog.i522

sw.bb109.i:                                       ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %249)
  %cmp110.not.i = icmp eq i32 %249, 67108864
  br i1 %cmp110.not.i, label %if.end112.i, label %sw.bb109.i.do.end724.i_crit_edge

sw.bb109.i.do.end724.i_crit_edge:                 ; preds = %sw.bb109.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end724.i

if.end112.i:                                      ; preds = %sw.bb109.i
  call void @__sanitizer_cov_trace_pc() #13
  %397 = ptrtoint ptr %data45.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load i32, ptr %data45.i, align 4
  %399 = call i32 @llvm.bswap.i32(i32 %398) #11
  %400 = ptrtoint ptr %init_errlog_ptr.i to i32
  call void @__asan_store4_noabort(i32 %400)
  store i32 %399, ptr %init_errlog_ptr.i, align 8
  br label %sw.epilog.i522

sw.bb114.i:                                       ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %249)
  %cmp115.not.i = icmp eq i32 %249, 67108864
  br i1 %cmp115.not.i, label %if.end117.i, label %sw.bb114.i.do.end724.i_crit_edge

sw.bb114.i.do.end724.i_crit_edge:                 ; preds = %sw.bb114.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end724.i

if.end117.i:                                      ; preds = %sw.bb114.i
  call void @__sanitizer_cov_trace_pc() #13
  %401 = ptrtoint ptr %data45.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load i32, ptr %data45.i, align 4
  %403 = call i32 @llvm.bswap.i32(i32 %402) #11
  %404 = ptrtoint ptr %inst_evtlog_ptr.i to i32
  call void @__asan_store4_noabort(i32 %404)
  store i32 %403, ptr %inst_evtlog_ptr.i, align 4
  br label %sw.epilog.i522

sw.bb119.i:                                       ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %249)
  %cmp120.not.i = icmp eq i32 %249, 67108864
  br i1 %cmp120.not.i, label %if.end122.i, label %sw.bb119.i.do.end724.i_crit_edge

sw.bb119.i.do.end724.i_crit_edge:                 ; preds = %sw.bb119.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end724.i

if.end122.i:                                      ; preds = %sw.bb119.i
  call void @__sanitizer_cov_trace_pc() #13
  %405 = ptrtoint ptr %data45.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load i32, ptr %data45.i, align 4
  %407 = call i32 @llvm.bswap.i32(i32 %406) #11
  %408 = ptrtoint ptr %inst_evtlog_size.i to i32
  call void @__asan_store4_noabort(i32 %408)
  store i32 %407, ptr %inst_evtlog_size.i, align 8
  br label %sw.epilog.i522

sw.bb124.i:                                       ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %249)
  %cmp125.not.i = icmp eq i32 %249, 67108864
  br i1 %cmp125.not.i, label %if.end127.i, label %sw.bb124.i.do.end724.i_crit_edge

sw.bb124.i.do.end724.i_crit_edge:                 ; preds = %sw.bb124.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end724.i

if.end127.i:                                      ; preds = %sw.bb124.i
  call void @__sanitizer_cov_trace_pc() #13
  %409 = ptrtoint ptr %data45.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load i32, ptr %data45.i, align 4
  %411 = call i32 @llvm.bswap.i32(i32 %410) #11
  %412 = ptrtoint ptr %inst_errlog_ptr.i to i32
  call void @__asan_store4_noabort(i32 %412)
  store i32 %411, ptr %inst_errlog_ptr.i, align 4
  br label %sw.epilog.i522

sw.bb129.i:                                       ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %249)
  %tobool130.not.i = icmp eq i32 %249, 0
  br i1 %tobool130.not.i, label %if.end132.i, label %sw.bb129.i.do.end724.i_crit_edge

sw.bb129.i.do.end724.i_crit_edge:                 ; preds = %sw.bb129.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end724.i

if.end132.i:                                      ; preds = %sw.bb129.i
  call void @__sanitizer_cov_trace_pc() #13
  %413 = ptrtoint ptr %enhance_sensitivity_table.i to i32
  call void @__asan_store1_noabort(i32 %413)
  store i8 1, ptr %enhance_sensitivity_table.i, align 4
  br label %sw.epilog.i522

sw.bb134.i:                                       ; preds = %if.end56.i
  %414 = ptrtoint ptr %arrayidx.i1434.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %arrayidx.i1434.i, align 8
  %tobool.not.i.i1281.i = icmp eq ptr %415, null
  br i1 %tobool.not.i.i1281.i, label %sw.bb134.i.if.end.i.i1287.i_crit_edge, label %land.lhs.true.i.i1284.i

sw.bb134.i.if.end.i.i1287.i_crit_edge:            ; preds = %sw.bb134.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i1287.i

land.lhs.true.i.i1284.i:                          ; preds = %sw.bb134.i
  %416 = ptrtoint ptr %sec_counter.i1435.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load i32, ptr %sec_counter.i1435.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %417)
  %cmp.not.i.i1283.i = icmp slt i32 %417, 2
  br i1 %cmp.not.i.i1283.i, label %land.lhs.true.i.i1284.i.if.end.i.i1287.i_crit_edge, label %land.lhs.true.i.i1284.i.set_sec_data.exit1291.i_crit_edge

land.lhs.true.i.i1284.i.set_sec_data.exit1291.i_crit_edge: ; preds = %land.lhs.true.i.i1284.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sec_data.exit1291.i

land.lhs.true.i.i1284.i.if.end.i.i1287.i_crit_edge: ; preds = %land.lhs.true.i.i1284.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i1287.i

if.end.i.i1287.i:                                 ; preds = %land.lhs.true.i.i1284.i.if.end.i.i1287.i_crit_edge, %sw.bb134.i.if.end.i.i1287.i_crit_edge
  %call.i.i1285.i = call noalias ptr @krealloc(ptr noundef %415, i32 noundef 24, i32 noundef 3264) #17
  %tobool4.not.i.i1286.i = icmp eq ptr %call.i.i1285.i, null
  br i1 %tobool4.not.i.i1286.i, label %if.end.i.i1287.i.set_sec_data.exit1291.i_crit_edge, label %if.end6.i.i1289.i

if.end.i.i1287.i.set_sec_data.exit1291.i_crit_edge: ; preds = %if.end.i.i1287.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sec_data.exit1291.i

if.end6.i.i1289.i:                                ; preds = %if.end.i.i1287.i
  call void @__sanitizer_cov_trace_pc() #13
  %418 = ptrtoint ptr %arrayidx.i1434.i to i32
  call void @__asan_store4_noabort(i32 %418)
  store ptr %call.i.i1285.i, ptr %arrayidx.i1434.i, align 8
  %419 = ptrtoint ptr %sec_counter.i1435.i to i32
  call void @__asan_store4_noabort(i32 %419)
  store i32 2, ptr %sec_counter.i1435.i, align 4
  br label %set_sec_data.exit1291.i

set_sec_data.exit1291.i:                          ; preds = %if.end6.i.i1289.i, %if.end.i.i1287.i.set_sec_data.exit1291.i_crit_edge, %land.lhs.true.i.i1284.i.set_sec_data.exit1291.i_crit_edge
  %420 = ptrtoint ptr %arrayidx.i1434.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %arrayidx.i1434.i, align 8
  %arrayidx2.i1290.i = getelementptr %struct.fw_sec, ptr %421, i32 1
  %422 = ptrtoint ptr %arrayidx2.i1290.i to i32
  call void @__asan_store4_noabort(i32 %422)
  store ptr %data45.i, ptr %arrayidx2.i1290.i, align 4
  %423 = load ptr, ptr %arrayidx.i1434.i, align 8
  %tobool.not.i.i1293.i = icmp eq ptr %423, null
  br i1 %tobool.not.i.i1293.i, label %set_sec_data.exit1291.i.if.end.i.i1299.i_crit_edge, label %land.lhs.true.i.i1296.i

set_sec_data.exit1291.i.if.end.i.i1299.i_crit_edge: ; preds = %set_sec_data.exit1291.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i1299.i

land.lhs.true.i.i1296.i:                          ; preds = %set_sec_data.exit1291.i
  %424 = ptrtoint ptr %sec_counter.i1435.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load i32, ptr %sec_counter.i1435.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %425)
  %cmp.not.i.i1295.i = icmp slt i32 %425, 2
  br i1 %cmp.not.i.i1295.i, label %land.lhs.true.i.i1296.i.if.end.i.i1299.i_crit_edge, label %land.lhs.true.i.i1296.i.set_sec_size.exit1303.i_crit_edge

land.lhs.true.i.i1296.i.set_sec_size.exit1303.i_crit_edge: ; preds = %land.lhs.true.i.i1296.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sec_size.exit1303.i

land.lhs.true.i.i1296.i.if.end.i.i1299.i_crit_edge: ; preds = %land.lhs.true.i.i1296.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i1299.i

if.end.i.i1299.i:                                 ; preds = %land.lhs.true.i.i1296.i.if.end.i.i1299.i_crit_edge, %set_sec_data.exit1291.i.if.end.i.i1299.i_crit_edge
  %call.i.i1297.i = call noalias ptr @krealloc(ptr noundef %423, i32 noundef 24, i32 noundef 3264) #17
  %tobool4.not.i.i1298.i = icmp eq ptr %call.i.i1297.i, null
  br i1 %tobool4.not.i.i1298.i, label %if.end.i.i1299.i.set_sec_size.exit1303.i_crit_edge, label %if.end6.i.i1301.i

if.end.i.i1299.i.set_sec_size.exit1303.i_crit_edge: ; preds = %if.end.i.i1299.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sec_size.exit1303.i

if.end6.i.i1301.i:                                ; preds = %if.end.i.i1299.i
  call void @__sanitizer_cov_trace_pc() #13
  %426 = ptrtoint ptr %arrayidx.i1434.i to i32
  call void @__asan_store4_noabort(i32 %426)
  store ptr %call.i.i1297.i, ptr %arrayidx.i1434.i, align 8
  %427 = ptrtoint ptr %sec_counter.i1435.i to i32
  call void @__asan_store4_noabort(i32 %427)
  store i32 2, ptr %sec_counter.i1435.i, align 4
  br label %set_sec_size.exit1303.i

set_sec_size.exit1303.i:                          ; preds = %if.end6.i.i1301.i, %if.end.i.i1299.i.set_sec_size.exit1303.i_crit_edge, %land.lhs.true.i.i1296.i.set_sec_size.exit1303.i_crit_edge
  %428 = ptrtoint ptr %arrayidx.i1434.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %arrayidx.i1434.i, align 8
  %size3.i1302.i = getelementptr %struct.fw_sec, ptr %429, i32 1, i32 1
  %430 = ptrtoint ptr %size3.i1302.i to i32
  call void @__asan_store4_noabort(i32 %430)
  store i32 %250, ptr %size3.i1302.i, align 4
  %431 = load ptr, ptr %arrayidx.i1434.i, align 8
  %tobool.not.i.i1305.i = icmp eq ptr %431, null
  br i1 %tobool.not.i.i1305.i, label %set_sec_size.exit1303.i.if.end.i.i1311.i_crit_edge, label %land.lhs.true.i.i1308.i

set_sec_size.exit1303.i.if.end.i.i1311.i_crit_edge: ; preds = %set_sec_size.exit1303.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i1311.i

land.lhs.true.i.i1308.i:                          ; preds = %set_sec_size.exit1303.i
  %432 = ptrtoint ptr %sec_counter.i1435.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load i32, ptr %sec_counter.i1435.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %433)
  %cmp.not.i.i1307.i = icmp slt i32 %433, 2
  br i1 %cmp.not.i.i1307.i, label %land.lhs.true.i.i1308.i.if.end.i.i1311.i_crit_edge, label %land.lhs.true.i.i1308.i.set_sec_offset.exit1315.i_crit_edge

land.lhs.true.i.i1308.i.set_sec_offset.exit1315.i_crit_edge: ; preds = %land.lhs.true.i.i1308.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sec_offset.exit1315.i

land.lhs.true.i.i1308.i.if.end.i.i1311.i_crit_edge: ; preds = %land.lhs.true.i.i1308.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i1311.i

if.end.i.i1311.i:                                 ; preds = %land.lhs.true.i.i1308.i.if.end.i.i1311.i_crit_edge, %set_sec_size.exit1303.i.if.end.i.i1311.i_crit_edge
  %call.i.i1309.i = call noalias ptr @krealloc(ptr noundef %431, i32 noundef 24, i32 noundef 3264) #17
  %tobool4.not.i.i1310.i = icmp eq ptr %call.i.i1309.i, null
  br i1 %tobool4.not.i.i1310.i, label %if.end.i.i1311.i.set_sec_offset.exit1315.i_crit_edge, label %if.end6.i.i1313.i

if.end.i.i1311.i.set_sec_offset.exit1315.i_crit_edge: ; preds = %if.end.i.i1311.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sec_offset.exit1315.i

if.end6.i.i1313.i:                                ; preds = %if.end.i.i1311.i
  call void @__sanitizer_cov_trace_pc() #13
  %434 = ptrtoint ptr %arrayidx.i1434.i to i32
  call void @__asan_store4_noabort(i32 %434)
  store ptr %call.i.i1309.i, ptr %arrayidx.i1434.i, align 8
  %435 = ptrtoint ptr %sec_counter.i1435.i to i32
  call void @__asan_store4_noabort(i32 %435)
  store i32 2, ptr %sec_counter.i1435.i, align 4
  br label %set_sec_offset.exit1315.i

set_sec_offset.exit1315.i:                        ; preds = %if.end6.i.i1313.i, %if.end.i.i1311.i.set_sec_offset.exit1315.i_crit_edge, %land.lhs.true.i.i1308.i.set_sec_offset.exit1315.i_crit_edge
  %436 = ptrtoint ptr %arrayidx.i1434.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %arrayidx.i1434.i, align 8
  %offset3.i1314.i = getelementptr %struct.fw_sec, ptr %437, i32 1, i32 2
  %438 = ptrtoint ptr %offset3.i1314.i to i32
  call void @__asan_store4_noabort(i32 %438)
  store i32 0, ptr %offset3.i1314.i, align 4
  br label %sw.epilog.i522

sw.bb135.i:                                       ; preds = %if.end56.i
  %439 = ptrtoint ptr %arrayidx.i1434.i to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %arrayidx.i1434.i, align 8
  %tobool.not.i.i1317.i = icmp eq ptr %440, null
  br i1 %tobool.not.i.i1317.i, label %sw.bb135.i.if.end.i.i1323.i_crit_edge, label %land.lhs.true.i.i1320.i

sw.bb135.i.if.end.i.i1323.i_crit_edge:            ; preds = %sw.bb135.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i1323.i

land.lhs.true.i.i1320.i:                          ; preds = %sw.bb135.i
  %441 = ptrtoint ptr %sec_counter.i1435.i to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load i32, ptr %sec_counter.i1435.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %442)
  %cmp.not.i.i1319.i = icmp slt i32 %442, 1
  br i1 %cmp.not.i.i1319.i, label %land.lhs.true.i.i1320.i.if.end.i.i1323.i_crit_edge, label %land.lhs.true.i.i1320.i.set_sec_data.exit1326.i_crit_edge

land.lhs.true.i.i1320.i.set_sec_data.exit1326.i_crit_edge: ; preds = %land.lhs.true.i.i1320.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sec_data.exit1326.i

land.lhs.true.i.i1320.i.if.end.i.i1323.i_crit_edge: ; preds = %land.lhs.true.i.i1320.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i1323.i

if.end.i.i1323.i:                                 ; preds = %land.lhs.true.i.i1320.i.if.end.i.i1323.i_crit_edge, %sw.bb135.i.if.end.i.i1323.i_crit_edge
  %call.i.i1321.i = call noalias ptr @krealloc(ptr noundef %440, i32 noundef 12, i32 noundef 3264) #17
  %tobool4.not.i.i1322.i = icmp eq ptr %call.i.i1321.i, null
  br i1 %tobool4.not.i.i1322.i, label %if.end.i.i1323.i.set_sec_data.exit1326.i_crit_edge, label %if.end6.i.i1325.i

if.end.i.i1323.i.set_sec_data.exit1326.i_crit_edge: ; preds = %if.end.i.i1323.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sec_data.exit1326.i

if.end6.i.i1325.i:                                ; preds = %if.end.i.i1323.i
  call void @__sanitizer_cov_trace_pc() #13
  %443 = ptrtoint ptr %arrayidx.i1434.i to i32
  call void @__asan_store4_noabort(i32 %443)
  store ptr %call.i.i1321.i, ptr %arrayidx.i1434.i, align 8
  %444 = ptrtoint ptr %sec_counter.i1435.i to i32
  call void @__asan_store4_noabort(i32 %444)
  store i32 1, ptr %sec_counter.i1435.i, align 4
  br label %set_sec_data.exit1326.i

set_sec_data.exit1326.i:                          ; preds = %if.end6.i.i1325.i, %if.end.i.i1323.i.set_sec_data.exit1326.i_crit_edge, %land.lhs.true.i.i1320.i.set_sec_data.exit1326.i_crit_edge
  %445 = ptrtoint ptr %arrayidx.i1434.i to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %arrayidx.i1434.i, align 8
  %447 = ptrtoint ptr %446 to i32
  call void @__asan_store4_noabort(i32 %447)
  store ptr %data45.i, ptr %446, align 4
  %448 = load ptr, ptr %arrayidx.i1434.i, align 8
  %tobool.not.i.i1328.i = icmp eq ptr %448, null
  br i1 %tobool.not.i.i1328.i, label %set_sec_data.exit1326.i.if.end.i.i1334.i_crit_edge, label %land.lhs.true.i.i1331.i

set_sec_data.exit1326.i.if.end.i.i1334.i_crit_edge: ; preds = %set_sec_data.exit1326.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i1334.i

land.lhs.true.i.i1331.i:                          ; preds = %set_sec_data.exit1326.i
  %449 = ptrtoint ptr %sec_counter.i1435.i to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load i32, ptr %sec_counter.i1435.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %450)
  %cmp.not.i.i1330.i = icmp slt i32 %450, 1
  br i1 %cmp.not.i.i1330.i, label %land.lhs.true.i.i1331.i.if.end.i.i1334.i_crit_edge, label %land.lhs.true.i.i1331.i.set_sec_size.exit1338.i_crit_edge

land.lhs.true.i.i1331.i.set_sec_size.exit1338.i_crit_edge: ; preds = %land.lhs.true.i.i1331.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sec_size.exit1338.i

land.lhs.true.i.i1331.i.if.end.i.i1334.i_crit_edge: ; preds = %land.lhs.true.i.i1331.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i1334.i

if.end.i.i1334.i:                                 ; preds = %land.lhs.true.i.i1331.i.if.end.i.i1334.i_crit_edge, %set_sec_data.exit1326.i.if.end.i.i1334.i_crit_edge
  %call.i.i1332.i = call noalias ptr @krealloc(ptr noundef %448, i32 noundef 12, i32 noundef 3264) #17
  %tobool4.not.i.i1333.i = icmp eq ptr %call.i.i1332.i, null
  br i1 %tobool4.not.i.i1333.i, label %if.end.i.i1334.i.set_sec_size.exit1338.i_crit_edge, label %if.end6.i.i1336.i

if.end.i.i1334.i.set_sec_size.exit1338.i_crit_edge: ; preds = %if.end.i.i1334.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sec_size.exit1338.i

if.end6.i.i1336.i:                                ; preds = %if.end.i.i1334.i
  call void @__sanitizer_cov_trace_pc() #13
  %451 = ptrtoint ptr %arrayidx.i1434.i to i32
  call void @__asan_store4_noabort(i32 %451)
  store ptr %call.i.i1332.i, ptr %arrayidx.i1434.i, align 8
  %452 = ptrtoint ptr %sec_counter.i1435.i to i32
  call void @__asan_store4_noabort(i32 %452)
  store i32 1, ptr %sec_counter.i1435.i, align 4
  br label %set_sec_size.exit1338.i

set_sec_size.exit1338.i:                          ; preds = %if.end6.i.i1336.i, %if.end.i.i1334.i.set_sec_size.exit1338.i_crit_edge, %land.lhs.true.i.i1331.i.set_sec_size.exit1338.i_crit_edge
  %453 = ptrtoint ptr %arrayidx.i1434.i to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %arrayidx.i1434.i, align 8
  %size3.i1337.i = getelementptr %struct.fw_sec, ptr %454, i32 0, i32 1
  %455 = ptrtoint ptr %size3.i1337.i to i32
  call void @__asan_store4_noabort(i32 %455)
  store i32 %250, ptr %size3.i1337.i, align 4
  %456 = load ptr, ptr %arrayidx.i1434.i, align 8
  %tobool.not.i.i1340.i = icmp eq ptr %456, null
  br i1 %tobool.not.i.i1340.i, label %set_sec_size.exit1338.i.if.end.i.i1346.i_crit_edge, label %land.lhs.true.i.i1343.i

set_sec_size.exit1338.i.if.end.i.i1346.i_crit_edge: ; preds = %set_sec_size.exit1338.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i1346.i

land.lhs.true.i.i1343.i:                          ; preds = %set_sec_size.exit1338.i
  %457 = ptrtoint ptr %sec_counter.i1435.i to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load i32, ptr %sec_counter.i1435.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %458)
  %cmp.not.i.i1342.i = icmp slt i32 %458, 1
  br i1 %cmp.not.i.i1342.i, label %land.lhs.true.i.i1343.i.if.end.i.i1346.i_crit_edge, label %land.lhs.true.i.i1343.i.set_sec_offset.exit1350.i_crit_edge

land.lhs.true.i.i1343.i.set_sec_offset.exit1350.i_crit_edge: ; preds = %land.lhs.true.i.i1343.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sec_offset.exit1350.i

land.lhs.true.i.i1343.i.if.end.i.i1346.i_crit_edge: ; preds = %land.lhs.true.i.i1343.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i1346.i

if.end.i.i1346.i:                                 ; preds = %land.lhs.true.i.i1343.i.if.end.i.i1346.i_crit_edge, %set_sec_size.exit1338.i.if.end.i.i1346.i_crit_edge
  %call.i.i1344.i = call noalias ptr @krealloc(ptr noundef %456, i32 noundef 12, i32 noundef 3264) #17
  %tobool4.not.i.i1345.i = icmp eq ptr %call.i.i1344.i, null
  br i1 %tobool4.not.i.i1345.i, label %if.end.i.i1346.i.set_sec_offset.exit1350.i_crit_edge, label %if.end6.i.i1348.i

if.end.i.i1346.i.set_sec_offset.exit1350.i_crit_edge: ; preds = %if.end.i.i1346.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %set_sec_offset.exit1350.i

if.end6.i.i1348.i:                                ; preds = %if.end.i.i1346.i
  call void @__sanitizer_cov_trace_pc() #13
  %459 = ptrtoint ptr %arrayidx.i1434.i to i32
  call void @__asan_store4_noabort(i32 %459)
  store ptr %call.i.i1344.i, ptr %arrayidx.i1434.i, align 8
  %460 = ptrtoint ptr %sec_counter.i1435.i to i32
  call void @__asan_store4_noabort(i32 %460)
  store i32 1, ptr %sec_counter.i1435.i, align 4
  br label %set_sec_offset.exit1350.i

set_sec_offset.exit1350.i:                        ; preds = %if.end6.i.i1348.i, %if.end.i.i1346.i.set_sec_offset.exit1350.i_crit_edge, %land.lhs.true.i.i1343.i.set_sec_offset.exit1350.i_crit_edge
  %461 = ptrtoint ptr %arrayidx.i1434.i to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load ptr, ptr %arrayidx.i1434.i, align 8
  %offset3.i1349.i = getelementptr %struct.fw_sec, ptr %462, i32 0, i32 2
  %463 = ptrtoint ptr %offset3.i1349.i to i32
  call void @__asan_store4_noabort(i32 %463)
  store i32 8388608, ptr %offset3.i1349.i, align 4
  br label %sw.epilog.i522

sw.bb136.i:                                       ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %249)
  %cmp137.not.i = icmp eq i32 %249, 67108864
  br i1 %cmp137.not.i, label %if.end139.i, label %sw.bb136.i.do.end724.i_crit_edge

sw.bb136.i.do.end724.i_crit_edge:                 ; preds = %sw.bb136.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end724.i

if.end139.i:                                      ; preds = %sw.bb136.i
  call void @__sanitizer_cov_trace_pc() #13
  %464 = ptrtoint ptr %data45.i to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load i32, ptr %data45.i, align 4
  %466 = call i32 @llvm.bswap.i32(i32 %465) #11
  %467 = ptrtoint ptr %standard_phy_calibration_size to i32
  call void @__asan_store4_noabort(i32 %467)
  store i32 %466, ptr %standard_phy_calibration_size, align 4
  br label %sw.epilog.i522

if.end23.i.i519:                                  ; preds = %if.end56.i
  %468 = ptrtoint ptr %sec_counter.i1399.i to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load i32, ptr %sec_counter.i1399.i, align 4
  %470 = mul i32 %469, 12
  %mul.i1353.i = add i32 %470, 12
  %471 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %call7.i.i, align 8
  %call.i1354.i = call noalias ptr @krealloc(ptr noundef %472, i32 noundef %mul.i1353.i, i32 noundef 3264) #17
  %tobool26.not.i.i = icmp eq ptr %call.i1354.i, null
  br i1 %tobool26.not.i.i, label %if.end23.i.i519.iwl_store_ucode_sec.exit.i_crit_edge, label %if.end28.i.i

if.end23.i.i519.iwl_store_ucode_sec.exit.i_crit_edge: ; preds = %if.end23.i.i519
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_store_ucode_sec.exit.i

if.end28.i.i:                                     ; preds = %if.end23.i.i519
  call void @__sanitizer_cov_trace_pc() #13
  %473 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %473)
  store ptr %call.i1354.i, ptr %call7.i.i, align 8
  %474 = ptrtoint ptr %sec_counter.i1399.i to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load i32, ptr %sec_counter.i1399.i, align 4
  %arrayidx32.i.i = getelementptr %struct.fw_sec, ptr %call.i1354.i, i32 %475
  %476 = ptrtoint ptr %data45.i to i32
  call void @__asan_loadN_noabort(i32 %476, i32 4)
  %477 = load i32, ptr %data45.i, align 1
  %478 = call i32 @llvm.bswap.i32(i32 %477) #11
  %offset33.i.i = getelementptr %struct.fw_sec, ptr %call.i1354.i, i32 %475, i32 2
  %479 = ptrtoint ptr %offset33.i.i to i32
  call void @__asan_store4_noabort(i32 %479)
  store i32 %478, ptr %offset33.i.i, align 4
  %data34.i.i = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %data1.01600.i, i32 1, i32 1
  %480 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_store4_noabort(i32 %480)
  store ptr %data34.i.i, ptr %arrayidx32.i.i, align 4
  %sub.i.i = add i32 %250, -4
  %size36.i.i = getelementptr %struct.fw_sec, ptr %call.i1354.i, i32 %475, i32 1
  %481 = ptrtoint ptr %size36.i.i to i32
  call void @__asan_store4_noabort(i32 %481)
  store i32 %sub.i.i, ptr %size36.i.i, align 4
  %inc.i1355.i = add i32 %475, 1
  %482 = ptrtoint ptr %sec_counter.i1399.i to i32
  call void @__asan_store4_noabort(i32 %482)
  store i32 %inc.i1355.i, ptr %sec_counter.i1399.i, align 4
  br label %iwl_store_ucode_sec.exit.i

iwl_store_ucode_sec.exit.i:                       ; preds = %if.end28.i.i, %if.end23.i.i519.iwl_store_ucode_sec.exit.i_crit_edge
  %483 = ptrtoint ptr %type189.i to i32
  call void @__asan_store4_noabort(i32 %483)
  store i32 1, ptr %type189.i, align 4
  br label %sw.epilog.i522

if.end23.i1364.i:                                 ; preds = %if.end56.i
  %484 = ptrtoint ptr %sec_counter.i1417.i to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load i32, ptr %sec_counter.i1417.i, align 4
  %486 = mul i32 %485, 12
  %mul.i1361.i = add i32 %486, 12
  %487 = ptrtoint ptr %arrayidx.i1416.i to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load ptr, ptr %arrayidx.i1416.i, align 8
  %call.i1362.i = call noalias ptr @krealloc(ptr noundef %488, i32 noundef %mul.i1361.i, i32 noundef 3264) #17
  %tobool26.not.i1363.i = icmp eq ptr %call.i1362.i, null
  br i1 %tobool26.not.i1363.i, label %if.end23.i1364.i.iwl_store_ucode_sec.exit1372.i_crit_edge, label %if.end28.i1371.i

if.end23.i1364.i.iwl_store_ucode_sec.exit1372.i_crit_edge: ; preds = %if.end23.i1364.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_store_ucode_sec.exit1372.i

if.end28.i1371.i:                                 ; preds = %if.end23.i1364.i
  call void @__sanitizer_cov_trace_pc() #13
  %489 = ptrtoint ptr %arrayidx.i1416.i to i32
  call void @__asan_store4_noabort(i32 %489)
  store ptr %call.i1362.i, ptr %arrayidx.i1416.i, align 8
  %490 = ptrtoint ptr %sec_counter.i1417.i to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load i32, ptr %sec_counter.i1417.i, align 4
  %arrayidx32.i1365.i = getelementptr %struct.fw_sec, ptr %call.i1362.i, i32 %491
  %492 = ptrtoint ptr %data45.i to i32
  call void @__asan_loadN_noabort(i32 %492, i32 4)
  %493 = load i32, ptr %data45.i, align 1
  %494 = call i32 @llvm.bswap.i32(i32 %493) #11
  %offset33.i1366.i = getelementptr %struct.fw_sec, ptr %call.i1362.i, i32 %491, i32 2
  %495 = ptrtoint ptr %offset33.i1366.i to i32
  call void @__asan_store4_noabort(i32 %495)
  store i32 %494, ptr %offset33.i1366.i, align 4
  %data34.i1367.i = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %data1.01600.i, i32 1, i32 1
  %496 = ptrtoint ptr %arrayidx32.i1365.i to i32
  call void @__asan_store4_noabort(i32 %496)
  store ptr %data34.i1367.i, ptr %arrayidx32.i1365.i, align 4
  %sub.i1368.i = add i32 %250, -4
  %size36.i1369.i = getelementptr %struct.fw_sec, ptr %call.i1362.i, i32 %491, i32 1
  %497 = ptrtoint ptr %size36.i1369.i to i32
  call void @__asan_store4_noabort(i32 %497)
  store i32 %sub.i1368.i, ptr %size36.i1369.i, align 4
  %inc.i1370.i = add i32 %491, 1
  %498 = ptrtoint ptr %sec_counter.i1417.i to i32
  call void @__asan_store4_noabort(i32 %498)
  store i32 %inc.i1370.i, ptr %sec_counter.i1417.i, align 4
  br label %iwl_store_ucode_sec.exit1372.i

iwl_store_ucode_sec.exit1372.i:                   ; preds = %if.end28.i1371.i, %if.end23.i1364.i.iwl_store_ucode_sec.exit1372.i_crit_edge
  %499 = ptrtoint ptr %type189.i to i32
  call void @__asan_store4_noabort(i32 %499)
  store i32 1, ptr %type189.i, align 4
  br label %sw.epilog.i522

if.end23.i1382.i:                                 ; preds = %if.end56.i
  %500 = ptrtoint ptr %sec_counter.i1435.i to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load i32, ptr %sec_counter.i1435.i, align 4
  %502 = mul i32 %501, 12
  %mul.i1379.i = add i32 %502, 12
  %503 = ptrtoint ptr %arrayidx.i1434.i to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load ptr, ptr %arrayidx.i1434.i, align 8
  %call.i1380.i = call noalias ptr @krealloc(ptr noundef %504, i32 noundef %mul.i1379.i, i32 noundef 3264) #17
  %tobool26.not.i1381.i = icmp eq ptr %call.i1380.i, null
  br i1 %tobool26.not.i1381.i, label %if.end23.i1382.i.iwl_store_ucode_sec.exit1390.i_crit_edge, label %if.end28.i1389.i

if.end23.i1382.i.iwl_store_ucode_sec.exit1390.i_crit_edge: ; preds = %if.end23.i1382.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_store_ucode_sec.exit1390.i

if.end28.i1389.i:                                 ; preds = %if.end23.i1382.i
  call void @__sanitizer_cov_trace_pc() #13
  %505 = ptrtoint ptr %arrayidx.i1434.i to i32
  call void @__asan_store4_noabort(i32 %505)
  store ptr %call.i1380.i, ptr %arrayidx.i1434.i, align 8
  %506 = ptrtoint ptr %sec_counter.i1435.i to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load i32, ptr %sec_counter.i1435.i, align 4
  %arrayidx32.i1383.i = getelementptr %struct.fw_sec, ptr %call.i1380.i, i32 %507
  %508 = ptrtoint ptr %data45.i to i32
  call void @__asan_loadN_noabort(i32 %508, i32 4)
  %509 = load i32, ptr %data45.i, align 1
  %510 = call i32 @llvm.bswap.i32(i32 %509) #11
  %offset33.i1384.i = getelementptr %struct.fw_sec, ptr %call.i1380.i, i32 %507, i32 2
  %511 = ptrtoint ptr %offset33.i1384.i to i32
  call void @__asan_store4_noabort(i32 %511)
  store i32 %510, ptr %offset33.i1384.i, align 4
  %data34.i1385.i = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %data1.01600.i, i32 1, i32 1
  %512 = ptrtoint ptr %arrayidx32.i1383.i to i32
  call void @__asan_store4_noabort(i32 %512)
  store ptr %data34.i1385.i, ptr %arrayidx32.i1383.i, align 4
  %sub.i1386.i = add i32 %250, -4
  %size36.i1387.i = getelementptr %struct.fw_sec, ptr %call.i1380.i, i32 %507, i32 1
  %513 = ptrtoint ptr %size36.i1387.i to i32
  call void @__asan_store4_noabort(i32 %513)
  store i32 %sub.i1386.i, ptr %size36.i1387.i, align 4
  %inc.i1388.i = add i32 %507, 1
  %514 = ptrtoint ptr %sec_counter.i1435.i to i32
  call void @__asan_store4_noabort(i32 %514)
  store i32 %inc.i1388.i, ptr %sec_counter.i1435.i, align 4
  br label %iwl_store_ucode_sec.exit1390.i

iwl_store_ucode_sec.exit1390.i:                   ; preds = %if.end28.i1389.i, %if.end23.i1382.i.iwl_store_ucode_sec.exit1390.i_crit_edge
  %515 = ptrtoint ptr %type189.i to i32
  call void @__asan_store4_noabort(i32 %515)
  store i32 1, ptr %type189.i, align 4
  br label %sw.epilog.i522

sw.bb153.i:                                       ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 201326592, i32 %249)
  %cmp154.not.i = icmp eq i32 %249, 201326592
  br i1 %cmp154.not.i, label %if.end156.i, label %sw.bb153.i.do.end724.i_crit_edge

sw.bb153.i.do.end724.i_crit_edge:                 ; preds = %sw.bb153.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end724.i

if.end156.i:                                      ; preds = %sw.bb153.i
  %516 = ptrtoint ptr %data45.i to i32
  call void @__asan_loadN_noabort(i32 %516, i32 4)
  %517 = load i32, ptr %data45.i, align 1
  %518 = call i32 @llvm.bswap.i32(i32 %517) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %518)
  %cmp.i1391.i = icmp ugt i32 %518, 3
  br i1 %cmp.i1391.i, label %iwl_set_default_calib.exit.i, label %iwl_set_default_calib.exit.thread.i

iwl_set_default_calib.exit.thread.i:              ; preds = %if.end156.i
  call void @__sanitizer_cov_trace_pc() #13
  %calib.i.i = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %data1.01600.i, i32 1, i32 1
  %519 = ptrtoint ptr %calib.i.i to i32
  call void @__asan_loadN_noabort(i32 %519, i32 4)
  %520 = load i32, ptr %calib.i.i, align 1
  %arrayidx.i1394.i = getelementptr %struct.iwl_drv, ptr %context, i32 0, i32 1, i32 13, i32 %518
  %521 = ptrtoint ptr %arrayidx.i1394.i to i32
  call void @__asan_store4_noabort(i32 %521)
  store i32 %520, ptr %arrayidx.i1394.i, align 4
  %event_trigger.i.i = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %data1.01600.i, i32 2
  %522 = ptrtoint ptr %event_trigger.i.i to i32
  call void @__asan_loadN_noabort(i32 %522, i32 4)
  %523 = load i32, ptr %event_trigger.i.i, align 1
  %event_trigger10.i.i = getelementptr %struct.iwl_drv, ptr %context, i32 0, i32 1, i32 13, i32 %518, i32 1
  %524 = ptrtoint ptr %event_trigger10.i.i to i32
  call void @__asan_store4_noabort(i32 %524)
  store i32 %523, ptr %event_trigger10.i.i, align 4
  br label %sw.epilog.i522

iwl_set_default_calib.exit.i:                     ; preds = %if.end156.i
  call void @__sanitizer_cov_trace_pc() #13
  %525 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %525)
  %526 = load ptr, ptr %dev, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %526, i32 noundef 0, ptr noundef nonnull @.str.58, i32 noundef %518) #11
  br label %do.body728.i

sw.bb161.i:                                       ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %249)
  %cmp162.not.i = icmp eq i32 %249, 67108864
  br i1 %cmp162.not.i, label %if.end164.i, label %sw.bb161.i.do.end724.i_crit_edge

sw.bb161.i.do.end724.i_crit_edge:                 ; preds = %sw.bb161.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end724.i

if.end164.i:                                      ; preds = %sw.bb161.i
  call void @__sanitizer_cov_trace_pc() #13
  %527 = ptrtoint ptr %data45.i to i32
  call void @__asan_load4_noabort(i32 %527)
  %528 = load i32, ptr %data45.i, align 4
  %529 = call i32 @llvm.bswap.i32(i32 %528) #11
  %530 = ptrtoint ptr %phy_config.i to i32
  call void @__asan_store4_noabort(i32 %530)
  store i32 %529, ptr %phy_config.i, align 4
  %and169.i = lshr i32 %529, 16
  %531 = trunc i32 %and169.i to i8
  %conv.i = and i8 %531, 15
  %532 = ptrtoint ptr %valid_tx_ant.i to i32
  call void @__asan_store1_noabort(i32 %532)
  store i8 %conv.i, ptr %valid_tx_ant.i, align 4
  %and174.i = lshr i32 %529, 20
  %533 = trunc i32 %and174.i to i8
  %conv176.i = and i8 %533, 15
  %534 = ptrtoint ptr %valid_rx_ant.i to i32
  call void @__asan_store1_noabort(i32 %534)
  store i8 %conv176.i, ptr %valid_rx_ant.i, align 1
  br label %sw.epilog.i522

if.end23.i1403.i:                                 ; preds = %if.end56.i
  %535 = ptrtoint ptr %sec_counter.i1399.i to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load i32, ptr %sec_counter.i1399.i, align 4
  %537 = mul i32 %536, 12
  %mul.i1400.i = add i32 %537, 12
  %538 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load ptr, ptr %call7.i.i, align 8
  %call.i1401.i = call noalias ptr @krealloc(ptr noundef %539, i32 noundef %mul.i1400.i, i32 noundef 3264) #17
  %tobool26.not.i1402.i = icmp eq ptr %call.i1401.i, null
  br i1 %tobool26.not.i1402.i, label %if.end23.i1403.i.iwl_store_ucode_sec.exit1411.i_crit_edge, label %if.end28.i1410.i

if.end23.i1403.i.iwl_store_ucode_sec.exit1411.i_crit_edge: ; preds = %if.end23.i1403.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_store_ucode_sec.exit1411.i

if.end28.i1410.i:                                 ; preds = %if.end23.i1403.i
  call void @__sanitizer_cov_trace_pc() #13
  %540 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %540)
  store ptr %call.i1401.i, ptr %call7.i.i, align 8
  %541 = ptrtoint ptr %sec_counter.i1399.i to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load i32, ptr %sec_counter.i1399.i, align 4
  %arrayidx32.i1404.i = getelementptr %struct.fw_sec, ptr %call.i1401.i, i32 %542
  %543 = ptrtoint ptr %data45.i to i32
  call void @__asan_loadN_noabort(i32 %543, i32 4)
  %544 = load i32, ptr %data45.i, align 1
  %545 = call i32 @llvm.bswap.i32(i32 %544) #11
  %offset33.i1405.i = getelementptr %struct.fw_sec, ptr %call.i1401.i, i32 %542, i32 2
  %546 = ptrtoint ptr %offset33.i1405.i to i32
  call void @__asan_store4_noabort(i32 %546)
  store i32 %545, ptr %offset33.i1405.i, align 4
  %data34.i1406.i = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %data1.01600.i, i32 1, i32 1
  %547 = ptrtoint ptr %arrayidx32.i1404.i to i32
  call void @__asan_store4_noabort(i32 %547)
  store ptr %data34.i1406.i, ptr %arrayidx32.i1404.i, align 4
  %sub.i1407.i = add i32 %250, -4
  %size36.i1408.i = getelementptr %struct.fw_sec, ptr %call.i1401.i, i32 %542, i32 1
  %548 = ptrtoint ptr %size36.i1408.i to i32
  call void @__asan_store4_noabort(i32 %548)
  store i32 %sub.i1407.i, ptr %size36.i1408.i, align 4
  %inc.i1409.i = add i32 %542, 1
  %549 = ptrtoint ptr %sec_counter.i1399.i to i32
  call void @__asan_store4_noabort(i32 %549)
  store i32 %inc.i1409.i, ptr %sec_counter.i1399.i, align 4
  br label %iwl_store_ucode_sec.exit1411.i

iwl_store_ucode_sec.exit1411.i:                   ; preds = %if.end28.i1410.i, %if.end23.i1403.i.iwl_store_ucode_sec.exit1411.i_crit_edge
  %550 = ptrtoint ptr %type189.i to i32
  call void @__asan_store4_noabort(i32 %550)
  store i32 1, ptr %type189.i, align 4
  br label %sw.epilog.i522

if.end23.i1421.i:                                 ; preds = %if.end56.i
  %551 = ptrtoint ptr %sec_counter.i1417.i to i32
  call void @__asan_load4_noabort(i32 %551)
  %552 = load i32, ptr %sec_counter.i1417.i, align 4
  %553 = mul i32 %552, 12
  %mul.i1418.i = add i32 %553, 12
  %554 = ptrtoint ptr %arrayidx.i1416.i to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load ptr, ptr %arrayidx.i1416.i, align 8
  %call.i1419.i = call noalias ptr @krealloc(ptr noundef %555, i32 noundef %mul.i1418.i, i32 noundef 3264) #17
  %tobool26.not.i1420.i = icmp eq ptr %call.i1419.i, null
  br i1 %tobool26.not.i1420.i, label %if.end23.i1421.i.iwl_store_ucode_sec.exit1429.i_crit_edge, label %if.end28.i1428.i

if.end23.i1421.i.iwl_store_ucode_sec.exit1429.i_crit_edge: ; preds = %if.end23.i1421.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_store_ucode_sec.exit1429.i

if.end28.i1428.i:                                 ; preds = %if.end23.i1421.i
  call void @__sanitizer_cov_trace_pc() #13
  %556 = ptrtoint ptr %arrayidx.i1416.i to i32
  call void @__asan_store4_noabort(i32 %556)
  store ptr %call.i1419.i, ptr %arrayidx.i1416.i, align 8
  %557 = ptrtoint ptr %sec_counter.i1417.i to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load i32, ptr %sec_counter.i1417.i, align 4
  %arrayidx32.i1422.i = getelementptr %struct.fw_sec, ptr %call.i1419.i, i32 %558
  %559 = ptrtoint ptr %data45.i to i32
  call void @__asan_loadN_noabort(i32 %559, i32 4)
  %560 = load i32, ptr %data45.i, align 1
  %561 = call i32 @llvm.bswap.i32(i32 %560) #11
  %offset33.i1423.i = getelementptr %struct.fw_sec, ptr %call.i1419.i, i32 %558, i32 2
  %562 = ptrtoint ptr %offset33.i1423.i to i32
  call void @__asan_store4_noabort(i32 %562)
  store i32 %561, ptr %offset33.i1423.i, align 4
  %data34.i1424.i = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %data1.01600.i, i32 1, i32 1
  %563 = ptrtoint ptr %arrayidx32.i1422.i to i32
  call void @__asan_store4_noabort(i32 %563)
  store ptr %data34.i1424.i, ptr %arrayidx32.i1422.i, align 4
  %sub.i1425.i = add i32 %250, -4
  %size36.i1426.i = getelementptr %struct.fw_sec, ptr %call.i1419.i, i32 %558, i32 1
  %564 = ptrtoint ptr %size36.i1426.i to i32
  call void @__asan_store4_noabort(i32 %564)
  store i32 %sub.i1425.i, ptr %size36.i1426.i, align 4
  %inc.i1427.i = add i32 %558, 1
  %565 = ptrtoint ptr %sec_counter.i1417.i to i32
  call void @__asan_store4_noabort(i32 %565)
  store i32 %inc.i1427.i, ptr %sec_counter.i1417.i, align 4
  br label %iwl_store_ucode_sec.exit1429.i

iwl_store_ucode_sec.exit1429.i:                   ; preds = %if.end28.i1428.i, %if.end23.i1421.i.iwl_store_ucode_sec.exit1429.i_crit_edge
  %566 = ptrtoint ptr %type189.i to i32
  call void @__asan_store4_noabort(i32 %566)
  store i32 1, ptr %type189.i, align 4
  br label %sw.epilog.i522

if.end23.i1439.i:                                 ; preds = %if.end56.i
  %567 = ptrtoint ptr %sec_counter.i1435.i to i32
  call void @__asan_load4_noabort(i32 %567)
  %568 = load i32, ptr %sec_counter.i1435.i, align 4
  %569 = mul i32 %568, 12
  %mul.i1436.i = add i32 %569, 12
  %570 = ptrtoint ptr %arrayidx.i1434.i to i32
  call void @__asan_load4_noabort(i32 %570)
  %571 = load ptr, ptr %arrayidx.i1434.i, align 8
  %call.i1437.i = call noalias ptr @krealloc(ptr noundef %571, i32 noundef %mul.i1436.i, i32 noundef 3264) #17
  %tobool26.not.i1438.i = icmp eq ptr %call.i1437.i, null
  br i1 %tobool26.not.i1438.i, label %if.end23.i1439.i.iwl_store_ucode_sec.exit1447.i_crit_edge, label %if.end28.i1446.i

if.end23.i1439.i.iwl_store_ucode_sec.exit1447.i_crit_edge: ; preds = %if.end23.i1439.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_store_ucode_sec.exit1447.i

if.end28.i1446.i:                                 ; preds = %if.end23.i1439.i
  call void @__sanitizer_cov_trace_pc() #13
  %572 = ptrtoint ptr %arrayidx.i1434.i to i32
  call void @__asan_store4_noabort(i32 %572)
  store ptr %call.i1437.i, ptr %arrayidx.i1434.i, align 8
  %573 = ptrtoint ptr %sec_counter.i1435.i to i32
  call void @__asan_load4_noabort(i32 %573)
  %574 = load i32, ptr %sec_counter.i1435.i, align 4
  %arrayidx32.i1440.i = getelementptr %struct.fw_sec, ptr %call.i1437.i, i32 %574
  %575 = ptrtoint ptr %data45.i to i32
  call void @__asan_loadN_noabort(i32 %575, i32 4)
  %576 = load i32, ptr %data45.i, align 1
  %577 = call i32 @llvm.bswap.i32(i32 %576) #11
  %offset33.i1441.i = getelementptr %struct.fw_sec, ptr %call.i1437.i, i32 %574, i32 2
  %578 = ptrtoint ptr %offset33.i1441.i to i32
  call void @__asan_store4_noabort(i32 %578)
  store i32 %577, ptr %offset33.i1441.i, align 4
  %data34.i1442.i = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %data1.01600.i, i32 1, i32 1
  %579 = ptrtoint ptr %arrayidx32.i1440.i to i32
  call void @__asan_store4_noabort(i32 %579)
  store ptr %data34.i1442.i, ptr %arrayidx32.i1440.i, align 4
  %sub.i1443.i = add i32 %250, -4
  %size36.i1444.i = getelementptr %struct.fw_sec, ptr %call.i1437.i, i32 %574, i32 1
  %580 = ptrtoint ptr %size36.i1444.i to i32
  call void @__asan_store4_noabort(i32 %580)
  store i32 %sub.i1443.i, ptr %size36.i1444.i, align 4
  %inc.i1445.i = add i32 %574, 1
  %581 = ptrtoint ptr %sec_counter.i1435.i to i32
  call void @__asan_store4_noabort(i32 %581)
  store i32 %inc.i1445.i, ptr %sec_counter.i1435.i, align 4
  br label %iwl_store_ucode_sec.exit1447.i

iwl_store_ucode_sec.exit1447.i:                   ; preds = %if.end28.i1446.i, %if.end23.i1439.i.iwl_store_ucode_sec.exit1447.i_crit_edge
  %582 = ptrtoint ptr %type189.i to i32
  call void @__asan_store4_noabort(i32 %582)
  store i32 1, ptr %type189.i, align 4
  br label %sw.epilog.i522

sw.bb190.i:                                       ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %249)
  %cmp191.not.i = icmp eq i32 %249, 67108864
  br i1 %cmp191.not.i, label %if.end194.i, label %sw.bb190.i.do.end724.i_crit_edge

sw.bb190.i.do.end724.i_crit_edge:                 ; preds = %sw.bb190.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end724.i

if.end194.i:                                      ; preds = %sw.bb190.i
  %583 = ptrtoint ptr %data45.i to i32
  call void @__asan_load4_noabort(i32 %583)
  %584 = load i32, ptr %data45.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554432, i32 %584)
  %cmp196.i = icmp eq i32 %584, 33554432
  br i1 %cmp196.i, label %if.then198.i, label %if.else209.i

if.then198.i:                                     ; preds = %if.end194.i
  call void @__sanitizer_cov_trace_pc() #13
  %585 = ptrtoint ptr %is_dual_cpus.i to i32
  call void @__asan_store1_noabort(i32 %585)
  store i8 1, ptr %is_dual_cpus.i, align 4
  %586 = ptrtoint ptr %is_dual_cpus204.i to i32
  call void @__asan_store1_noabort(i32 %586)
  store i8 1, ptr %is_dual_cpus204.i, align 4
  %587 = ptrtoint ptr %is_dual_cpus208.i to i32
  call void @__asan_store1_noabort(i32 %587)
  store i8 1, ptr %is_dual_cpus208.i, align 4
  br label %sw.epilog.i522

if.else209.i:                                     ; preds = %if.end194.i
  %588 = call i32 @llvm.bswap.i32(i32 %584) #11
  %589 = add i32 %588, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %589)
  %590 = icmp ult i32 %589, -2
  br i1 %590, label %do.end218.i, label %if.else209.i.sw.epilog.i522_crit_edge

if.else209.i.sw.epilog.i522_crit_edge:            ; preds = %if.else209.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i522

do.end218.i:                                      ; preds = %if.else209.i
  call void @__sanitizer_cov_trace_pc() #13
  %591 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %591)
  %592 = load ptr, ptr %dev, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %592, i32 noundef 0, ptr noundef nonnull @.str.28) #11
  br label %iwl_parse_tlv_firmware.exit

sw.bb224.i:                                       ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %249)
  %cmp.i1448.i = icmp eq i32 %249, 0
  br i1 %cmp.i1448.i, label %sw.bb224.i.do.end724.i_crit_edge, label %lor.lhs.false.i.i

sw.bb224.i.do.end724.i_crit_edge:                 ; preds = %sw.bb224.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end724.i

lor.lhs.false.i.i:                                ; preds = %sw.bb224.i
  %593 = ptrtoint ptr %data45.i to i32
  call void @__asan_load1_noabort(i32 %593)
  %594 = load i8, ptr %data45.i, align 1
  %conv.i.i = zext i8 %594 to i32
  %mul.i1449.i = mul nuw nsw i32 %conv.i.i, 13
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i1449.i, i32 %250)
  %cmp1.not.i.i = icmp ult i32 %mul.i1449.i, %250
  br i1 %cmp1.not.i.i, label %land.rhs.i.i, label %lor.lhs.false.i.i.do.end724.i_crit_edge

lor.lhs.false.i.i.do.end724.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end724.i

land.rhs.i.i:                                     ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %594)
  %cmp7.not.i.i = icmp eq i8 %594, 0
  br i1 %cmp7.not.i.i, label %land.rhs.i.i.sw.epilog.i522_crit_edge, label %for.body.i1452.i

land.rhs.i.i.sw.epilog.i522_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i522

for.body.i1452.i:                                 ; preds = %land.rhs.i.i
  %arrayidx.i1450.i = getelementptr %struct.iwl_fw_cscheme_list, ptr %data45.i, i32 0, i32 1, i32 0
  %595 = ptrtoint ptr %arrayidx.i1450.i to i32
  call void @__asan_loadN_noabort(i32 %595, i32 4)
  %596 = load i32, ptr %arrayidx.i1450.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %596)
  %tobool.not.i1451.i = icmp eq i32 %596, 0
  br i1 %tobool.not.i1451.i, label %for.body.i1452.i.sw.epilog.i522_crit_edge, label %if.end10.i.i

for.body.i1452.i.sw.epilog.i522_crit_edge:        ; preds = %for.body.i1452.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i522

if.end10.i.i:                                     ; preds = %for.body.i1452.i
  call void @__sanitizer_cov_trace_pc() #13
  %597 = call ptr @memcpy(ptr %arrayidx12.i.i, ptr %arrayidx.i1450.i, i32 13)
  br label %sw.epilog.i522

sw.bb230.i:                                       ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %249)
  %cmp231.not.i = icmp eq i32 %249, 67108864
  br i1 %cmp231.not.i, label %if.end234.i, label %sw.bb230.i.do.end724.i_crit_edge

sw.bb230.i.do.end724.i_crit_edge:                 ; preds = %sw.bb230.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end724.i

if.end234.i:                                      ; preds = %sw.bb230.i
  call void @__sanitizer_cov_trace_pc() #13
  %598 = ptrtoint ptr %data45.i to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load i32, ptr %data45.i, align 4
  %600 = call i32 @llvm.bswap.i32(i32 %599) #11
  %601 = ptrtoint ptr %n_scan_channels to i32
  call void @__asan_store4_noabort(i32 %601)
  store i32 %600, ptr %n_scan_channels, align 4
  br label %sw.epilog.i522

sw.bb236.i:                                       ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 201326592, i32 %249)
  %cmp237.not.i = icmp eq i32 %249, 201326592
  br i1 %cmp237.not.i, label %if.end240.i, label %sw.bb236.i.do.end724.i_crit_edge

sw.bb236.i.do.end724.i_crit_edge:                 ; preds = %sw.bb236.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end724.i

if.end240.i:                                      ; preds = %sw.bb236.i
  %incdec.ptr.i = getelementptr %struct.iwl_ucode_tlv, ptr %data1.01600.i, i32 1, i32 1
  %602 = ptrtoint ptr %data45.i to i32
  call void @__asan_load4_noabort(i32 %602)
  %603 = load i32, ptr %data45.i, align 4
  %604 = call i32 @llvm.bswap.i32(i32 %603) #11
  %incdec.ptr242.i = getelementptr %struct.iwl_ucode_tlv, ptr %data1.01600.i, i32 2
  %605 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %605)
  %606 = load i32, ptr %incdec.ptr.i, align 4
  %607 = call i32 @llvm.bswap.i32(i32 %606) #11
  %608 = ptrtoint ptr %incdec.ptr242.i to i32
  call void @__asan_load4_noabort(i32 %608)
  %609 = load i32, ptr %incdec.ptr242.i, align 4
  %610 = lshr i32 %609, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %604)
  %cmp246.i = icmp ugt i32 %604, 34
  %call.i1455.i = call i32 @strncmp(ptr noundef %firmware_name, ptr noundef nonnull dereferenceable(9) @.str.23, i32 noundef 8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1455.i)
  %cmp.i1456.i = icmp eq i32 %call.i1455.i, 0
  %spec.select.i1458.i = select i1 %cmp.i1456.i, ptr %add.ptr.i.i499, ptr %firmware_name
  br i1 %cmp246.i, label %if.then248.i, label %if.else255.i

if.then248.i:                                     ; preds = %if.end240.i
  call void @__sanitizer_cov_trace_pc() #13
  %call254.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fw_version.i495, i32 noundef 64, ptr noundef nonnull @.str.29, i32 noundef %604, i32 noundef %607, i32 noundef %610, ptr noundef %spec.select.i1458.i) #11
  br label %sw.epilog.i522

if.else255.i:                                     ; preds = %if.end240.i
  call void @__sanitizer_cov_trace_pc() #13
  %call261.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fw_version.i495, i32 noundef 64, ptr noundef nonnull @.str.30, i32 noundef %604, i32 noundef %607, i32 noundef %610, ptr noundef %spec.select.i1458.i) #11
  br label %sw.epilog.i522

sw.bb266.i:                                       ; preds = %if.end56.i
  %611 = ptrtoint ptr %dbg_dest_ver.i to i32
  call void @__asan_store4_noabort(i32 %611)
  store ptr %data45.i, ptr %dbg_dest_ver.i, align 4
  %612 = ptrtoint ptr %data45.i to i32
  call void @__asan_load1_noabort(i32 %612)
  %613 = load i8, ptr %data45.i, align 1
  %614 = zext i8 %613 to i64
  call void @__sanitizer_cov_trace_switch(i64 %614, ptr @__sancov_gen_cov_switch_values.83)
  switch i8 %613, label %do.end282.i [
    i8 1, label %if.end289.thread.i
    i8 0, label %if.end289.i
  ]

do.end282.i:                                      ; preds = %sw.bb266.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv268.i = zext i8 %613 to i32
  %615 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %615)
  %616 = load ptr, ptr %dev, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %616, i32 noundef 0, ptr noundef nonnull @.str.31, i32 noundef %conv268.i) #11
  br label %sw.epilog.i522

if.end289.i:                                      ; preds = %sw.bb266.i
  %617 = ptrtoint ptr %dbg_dest_tlv_init329.i to i32
  call void @__asan_load1_noabort(i32 %617)
  %618 = load i8, ptr %dbg_dest_tlv_init329.i, align 8, !range !284
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %618)
  %tobool290.not.i = icmp eq i8 %618, 0
  br i1 %tobool290.not.i, label %if.end299.i, label %if.end289.i.do.end295.i_crit_edge

if.end289.i.do.end295.i_crit_edge:                ; preds = %if.end289.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end295.i

if.end289.thread.i:                               ; preds = %sw.bb266.i
  %619 = ptrtoint ptr %dbg_dest_tlv_init329.i to i32
  call void @__asan_load1_noabort(i32 %619)
  %620 = load i8, ptr %dbg_dest_tlv_init329.i, align 8, !range !284
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %620)
  %tobool290.not1513.i = icmp eq i8 %620, 0
  br i1 %tobool290.not1513.i, label %if.end299.thread.i, label %if.end289.thread.i.do.end295.i_crit_edge

if.end289.thread.i.do.end295.i_crit_edge:         ; preds = %if.end289.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end295.i

if.end299.thread.i:                               ; preds = %if.end289.thread.i
  %621 = ptrtoint ptr %dbg_dest_tlv_init329.i to i32
  call void @__asan_store1_noabort(i32 %621)
  store i8 1, ptr %dbg_dest_tlv_init329.i, align 8
  %622 = ptrtoint ptr %247 to i32
  call void @__asan_store4_noabort(i32 %622)
  store ptr %data45.i, ptr %247, align 8
  %monitor_mode304.i = getelementptr inbounds %struct.iwl_fw_dbg_dest_tlv, ptr %data45.i, i32 0, i32 1
  %623 = ptrtoint ptr %monitor_mode304.i to i32
  call void @__asan_load1_noabort(i32 %623)
  %mon_mode.0.c1531.i = load i8, ptr %monitor_mode304.i, align 1
  %624 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %624)
  %625 = load ptr, ptr %dev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %mon_mode.0.c1531.i)
  %626 = icmp ult i8 %mon_mode.0.c1531.i, 4
  br i1 %626, label %switch.lookup, label %if.end299.thread.i.get_fw_dbg_mode_string.exit1470.i_crit_edge

if.end299.thread.i.get_fw_dbg_mode_string.exit1470.i_crit_edge: ; preds = %if.end299.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_fw_dbg_mode_string.exit1470.i

do.end295.i:                                      ; preds = %if.end289.thread.i.do.end295.i_crit_edge, %if.end289.i.do.end295.i_crit_edge
  %627 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %627)
  %628 = load ptr, ptr %dev, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %628, i32 noundef 0, ptr noundef nonnull @.str.32) #11
  br label %sw.epilog.i522

if.end299.i:                                      ; preds = %if.end289.i
  %629 = ptrtoint ptr %dbg_dest_tlv_init329.i to i32
  call void @__asan_store1_noabort(i32 %629)
  store i8 1, ptr %dbg_dest_tlv_init329.i, align 8
  %630 = ptrtoint ptr %247 to i32
  call void @__asan_store4_noabort(i32 %630)
  store ptr %data45.i, ptr %247, align 8
  %monitor_mode.i = getelementptr inbounds %struct.iwl_fw_dbg_dest_tlv_v1, ptr %data45.i, i32 0, i32 1
  %631 = ptrtoint ptr %monitor_mode.i to i32
  call void @__asan_load1_noabort(i32 %631)
  %mon_mode.0.c11371530.i = load i8, ptr %monitor_mode.i, align 1
  %632 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %632)
  %633 = load ptr, ptr %dev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %mon_mode.0.c11371530.i)
  %634 = icmp ult i8 %mon_mode.0.c11371530.i, 4
  br i1 %634, label %switch.lookup794, label %if.end299.i.get_fw_dbg_mode_string.exit.i_crit_edge

if.end299.i.get_fw_dbg_mode_string.exit.i_crit_edge: ; preds = %if.end299.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_fw_dbg_mode_string.exit.i

switch.lookup794:                                 ; preds = %if.end299.i
  call void @__sanitizer_cov_trace_pc() #13
  %635 = sext i8 %mon_mode.0.c11371530.i to i32
  %switch.gep795 = getelementptr inbounds [4 x ptr], ptr @switch.table.iwl_req_fw_callback.82, i32 0, i32 %635
  %636 = ptrtoint ptr %switch.gep795 to i32
  call void @__asan_load4_noabort(i32 %636)
  %switch.load796 = load ptr, ptr %switch.gep795, align 4
  br label %get_fw_dbg_mode_string.exit.i

get_fw_dbg_mode_string.exit.i:                    ; preds = %switch.lookup794, %if.end299.i.get_fw_dbg_mode_string.exit.i_crit_edge
  %retval.0.i1464.i = phi ptr [ %switch.load796, %switch.lookup794 ], [ @.str.63, %if.end299.i.get_fw_dbg_mode_string.exit.i_crit_edge ]
  call void (ptr, ptr, ...) @__iwl_info(ptr noundef %633, ptr noundef nonnull @.str.33, ptr noundef nonnull %retval.0.i1464.i) #11
  br label %cond.end.i

switch.lookup:                                    ; preds = %if.end299.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  %637 = sext i8 %mon_mode.0.c1531.i to i32
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.iwl_req_fw_callback, i32 0, i32 %637
  %638 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %638)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %get_fw_dbg_mode_string.exit1470.i

get_fw_dbg_mode_string.exit1470.i:                ; preds = %switch.lookup, %if.end299.thread.i.get_fw_dbg_mode_string.exit1470.i_crit_edge
  %retval.0.i1469.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.63, %if.end299.thread.i.get_fw_dbg_mode_string.exit1470.i_crit_edge ]
  call void (ptr, ptr, ...) @__iwl_info(ptr noundef %625, ptr noundef nonnull @.str.33, ptr noundef nonnull %retval.0.i1469.i) #11
  br label %cond.end.i

cond.end.i:                                       ; preds = %get_fw_dbg_mode_string.exit1470.i, %get_fw_dbg_mode_string.exit.i
  %.sink.i = phi i32 [ -18, %get_fw_dbg_mode_string.exit1470.i ], [ -22, %get_fw_dbg_mode_string.exit.i ]
  %sub317.i = add i32 %.sink.i, %250
  %639 = trunc i32 %sub317.i to i8
  %div1529.i = udiv i8 %639, 12
  %640 = ptrtoint ptr %n_dest_reg.i to i32
  call void @__asan_store1_noabort(i32 %640)
  store i8 %div1529.i, ptr %n_dest_reg.i, align 4
  br label %sw.epilog.i522

sw.bb328.i:                                       ; preds = %if.end56.i
  %641 = ptrtoint ptr %dbg_dest_tlv_init329.i to i32
  call void @__asan_load1_noabort(i32 %641)
  %642 = load i8, ptr %dbg_dest_tlv_init329.i, align 8, !range !284
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %642)
  %tobool330.not.i = icmp eq i8 %642, 0
  br i1 %tobool330.not.i, label %do.end335.i, label %if.end340.i

do.end335.i:                                      ; preds = %sw.bb328.i
  call void @__sanitizer_cov_trace_pc() #13
  %643 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %643)
  %644 = load ptr, ptr %dev, align 4
  %645 = ptrtoint ptr %data45.i to i32
  call void @__asan_load1_noabort(i32 %645)
  %646 = load i8, ptr %data45.i, align 1
  %conv337.i = zext i8 %646 to i32
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %644, i32 noundef 0, ptr noundef nonnull @.str.34, i32 noundef %conv337.i) #11
  br label %sw.epilog.i522

if.end340.i:                                      ; preds = %sw.bb328.i
  %647 = ptrtoint ptr %data45.i to i32
  call void @__asan_load1_noabort(i32 %647)
  %648 = load i8, ptr %data45.i, align 1
  %conv342.i = zext i8 %648 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %648)
  %cmp343.i = icmp ugt i8 %648, 31
  br i1 %cmp343.i, label %do.end349.i, label %if.end355.i

do.end349.i:                                      ; preds = %if.end340.i
  call void @__sanitizer_cov_trace_pc() #13
  %649 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %649)
  %650 = load ptr, ptr %dev, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %650, i32 noundef 0, ptr noundef nonnull @.str.35, i32 noundef %conv342.i) #11
  br label %sw.epilog.i522

if.end355.i:                                      ; preds = %if.end340.i
  %arrayidx357.i = getelementptr %struct.iwl_firmware_pieces, ptr %call7.i.i, i32 0, i32 10, i32 %conv342.i
  %651 = ptrtoint ptr %arrayidx357.i to i32
  call void @__asan_load4_noabort(i32 %651)
  %652 = load ptr, ptr %arrayidx357.i, align 4
  %tobool358.not.i = icmp eq ptr %652, null
  br i1 %tobool358.not.i, label %if.end369.i, label %do.end363.i

do.end363.i:                                      ; preds = %if.end355.i
  call void @__sanitizer_cov_trace_pc() #13
  %653 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %653)
  %654 = load ptr, ptr %dev, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %654, i32 noundef 0, ptr noundef nonnull @.str.36, i32 noundef %conv342.i) #11
  br label %sw.epilog.i522

if.end369.i:                                      ; preds = %if.end355.i
  call void @__sanitizer_cov_trace_pc() #13
  %usniffer.i = getelementptr inbounds %struct.iwl_fw_dbg_conf_tlv, ptr %data45.i, i32 0, i32 1
  %655 = ptrtoint ptr %usniffer.i to i32
  call void @__asan_load1_noabort(i32 %655)
  %656 = load i8, ptr %usniffer.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %656)
  %tobool370.not.i = icmp ne i8 %656, 0
  %spec.select.i = select i1 %tobool370.not.i, i1 true, i1 %usniffer_req.0.off01602.i
  %657 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %657)
  %658 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @__iwl_info(ptr noundef %658, ptr noundef nonnull @.str.37, i32 noundef %conv342.i) #11
  %659 = ptrtoint ptr %data45.i to i32
  call void @__asan_load1_noabort(i32 %659)
  %660 = load i8, ptr %data45.i, align 1
  %idxprom384.i = zext i8 %660 to i32
  %arrayidx385.i = getelementptr %struct.iwl_firmware_pieces, ptr %call7.i.i, i32 0, i32 10, i32 %idxprom384.i
  %661 = ptrtoint ptr %arrayidx385.i to i32
  call void @__asan_store4_noabort(i32 %661)
  store ptr %data45.i, ptr %arrayidx385.i, align 4
  %662 = load i8, ptr %data45.i, align 1
  %idxprom387.i = zext i8 %662 to i32
  %arrayidx388.i = getelementptr %struct.iwl_firmware_pieces, ptr %call7.i.i, i32 0, i32 11, i32 %idxprom387.i
  %663 = ptrtoint ptr %arrayidx388.i to i32
  call void @__asan_store4_noabort(i32 %663)
  store i32 %250, ptr %arrayidx388.i, align 4
  br label %sw.epilog.i522

sw.bb390.i:                                       ; preds = %if.end56.i
  %664 = ptrtoint ptr %data45.i to i32
  call void @__asan_loadN_noabort(i32 %664, i32 4)
  %665 = load i32, ptr %data45.i, align 1
  %666 = call i32 @llvm.bswap.i32(i32 %665) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %666)
  %cmp392.i = icmp ugt i32 %666, 16
  br i1 %cmp392.i, label %do.end398.i, label %if.end403.i

do.end398.i:                                      ; preds = %sw.bb390.i
  call void @__sanitizer_cov_trace_pc() #13
  %667 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %667)
  %668 = load ptr, ptr %dev, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %668, i32 noundef 0, ptr noundef nonnull @.str.38, i32 noundef %665) #11
  br label %sw.epilog.i522

if.end403.i:                                      ; preds = %sw.bb390.i
  %arrayidx404.i = getelementptr %struct.iwl_firmware_pieces, ptr %call7.i.i, i32 0, i32 12, i32 %666
  %669 = ptrtoint ptr %arrayidx404.i to i32
  call void @__asan_load4_noabort(i32 %669)
  %670 = load ptr, ptr %arrayidx404.i, align 4
  %tobool405.not.i = icmp eq ptr %670, null
  %671 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %671)
  %672 = load ptr, ptr %dev, align 4
  br i1 %tobool405.not.i, label %do.end419.i, label %do.end410.i

do.end410.i:                                      ; preds = %if.end403.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %672, i32 noundef 0, ptr noundef nonnull @.str.39, i32 noundef %665) #11
  br label %sw.epilog.i522

do.end419.i:                                      ; preds = %if.end403.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__iwl_info(ptr noundef %672, ptr noundef nonnull @.str.40, i32 noundef %665) #11
  %673 = ptrtoint ptr %arrayidx404.i to i32
  call void @__asan_store4_noabort(i32 %673)
  store ptr %data45.i, ptr %arrayidx404.i, align 4
  %arrayidx426.i = getelementptr %struct.iwl_firmware_pieces, ptr %call7.i.i, i32 0, i32 13, i32 %666
  %674 = ptrtoint ptr %arrayidx426.i to i32
  call void @__asan_store4_noabort(i32 %674)
  store i32 %250, ptr %arrayidx426.i, align 4
  br label %sw.epilog.i522

sw.bb429.i:                                       ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %249)
  %cmp430.not.i = icmp eq i32 %249, 67108864
  br i1 %cmp430.not.i, label %if.end440.i, label %do.end436.i

do.end436.i:                                      ; preds = %sw.bb429.i
  call void @__sanitizer_cov_trace_pc() #13
  %675 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %675)
  %676 = load ptr, ptr %dev, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %676, i32 noundef 0, ptr noundef nonnull @.str.41) #11
  br label %sw.epilog.i522

if.end440.i:                                      ; preds = %sw.bb429.i
  call void @__sanitizer_cov_trace_pc() #13
  %677 = ptrtoint ptr %data45.i to i32
  call void @__asan_load4_noabort(i32 %677)
  %678 = load i32, ptr %data45.i, align 4
  %679 = call i32 @llvm.bswap.i32(i32 %678) #11
  %680 = ptrtoint ptr %dump_mask to i32
  call void @__asan_store4_noabort(i32 %680)
  store i32 %679, ptr %dump_mask, align 4
  br label %sw.epilog.i522

if.end23.i1480.i:                                 ; preds = %if.end56.i
  %681 = ptrtoint ptr %sec_counter.i1476.i to i32
  call void @__asan_load4_noabort(i32 %681)
  %682 = load i32, ptr %sec_counter.i1476.i, align 4
  %683 = mul i32 %682, 12
  %mul.i1477.i = add i32 %683, 12
  %684 = ptrtoint ptr %arrayidx.i1475.i to i32
  call void @__asan_load4_noabort(i32 %684)
  %685 = load ptr, ptr %arrayidx.i1475.i, align 8
  %call.i1478.i = call noalias ptr @krealloc(ptr noundef %685, i32 noundef %mul.i1477.i, i32 noundef 3264) #17
  %tobool26.not.i1479.i = icmp eq ptr %call.i1478.i, null
  br i1 %tobool26.not.i1479.i, label %if.end23.i1480.i.sw.epilog.i522_crit_edge, label %if.end28.i1487.i

if.end23.i1480.i.sw.epilog.i522_crit_edge:        ; preds = %if.end23.i1480.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i522

if.end28.i1487.i:                                 ; preds = %if.end23.i1480.i
  call void @__sanitizer_cov_trace_pc() #13
  %686 = ptrtoint ptr %arrayidx.i1475.i to i32
  call void @__asan_store4_noabort(i32 %686)
  store ptr %call.i1478.i, ptr %arrayidx.i1475.i, align 8
  %687 = ptrtoint ptr %sec_counter.i1476.i to i32
  call void @__asan_load4_noabort(i32 %687)
  %688 = load i32, ptr %sec_counter.i1476.i, align 4
  %arrayidx32.i1481.i = getelementptr %struct.fw_sec, ptr %call.i1478.i, i32 %688
  %689 = ptrtoint ptr %data45.i to i32
  call void @__asan_loadN_noabort(i32 %689, i32 4)
  %690 = load i32, ptr %data45.i, align 1
  %691 = call i32 @llvm.bswap.i32(i32 %690) #11
  %offset33.i1482.i = getelementptr %struct.fw_sec, ptr %call.i1478.i, i32 %688, i32 2
  %692 = ptrtoint ptr %offset33.i1482.i to i32
  call void @__asan_store4_noabort(i32 %692)
  store i32 %691, ptr %offset33.i1482.i, align 4
  %data34.i1483.i = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %data1.01600.i, i32 1, i32 1
  %693 = ptrtoint ptr %arrayidx32.i1481.i to i32
  call void @__asan_store4_noabort(i32 %693)
  store ptr %data34.i1483.i, ptr %arrayidx32.i1481.i, align 4
  %sub.i1484.i = add i32 %250, -4
  %size36.i1485.i = getelementptr %struct.fw_sec, ptr %call.i1478.i, i32 %688, i32 1
  %694 = ptrtoint ptr %size36.i1485.i to i32
  call void @__asan_store4_noabort(i32 %694)
  store i32 %sub.i1484.i, ptr %size36.i1485.i, align 4
  %inc.i1486.i = add i32 %688, 1
  %695 = ptrtoint ptr %sec_counter.i1476.i to i32
  call void @__asan_store4_noabort(i32 %695)
  store i32 %inc.i1486.i, ptr %sec_counter.i1476.i, align 4
  br label %sw.epilog.i522

sw.bb446.i:                                       ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %249)
  %cmp447.not.i = icmp eq i32 %249, 67108864
  br i1 %cmp447.not.i, label %if.end450.i, label %sw.bb446.i.do.end724.i_crit_edge

sw.bb446.i.do.end724.i_crit_edge:                 ; preds = %sw.bb446.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end724.i

if.end450.i:                                      ; preds = %sw.bb446.i
  %696 = ptrtoint ptr %data45.i to i32
  call void @__asan_load4_noabort(i32 %696)
  %697 = load i32, ptr %data45.i, align 4
  %698 = call i32 @llvm.bswap.i32(i32 %697) #11
  %699 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %699)
  %700 = load ptr, ptr %dev, align 4
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %700, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_parse_tlv_firmware, ptr noundef nonnull @.str.42, i32 noundef %698) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %698)
  %cmp459.i = icmp ugt i32 %698, 1048576
  br i1 %cmp459.i, label %do.end465.i, label %if.end469.i

do.end465.i:                                      ; preds = %if.end450.i
  call void @__sanitizer_cov_trace_pc() #13
  %701 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %701)
  %702 = load ptr, ptr %dev, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %702, i32 noundef 0, ptr noundef nonnull @.str.43, i32 noundef 1048576) #11
  br label %iwl_parse_tlv_firmware.exit

if.end469.i:                                      ; preds = %if.end450.i
  %and470.i = and i32 %698, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and470.i)
  %tobool471.not.i = icmp eq i32 %and470.i, 0
  br i1 %tobool471.not.i, label %if.end480.i, label %do.end476.i

do.end476.i:                                      ; preds = %if.end469.i
  call void @__sanitizer_cov_trace_pc() #13
  %703 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %703)
  %704 = load ptr, ptr %dev, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %704, i32 noundef 0, ptr noundef nonnull @.str.44, i32 noundef 4096) #11
  br label %iwl_parse_tlv_firmware.exit

if.end480.i:                                      ; preds = %if.end469.i
  call void @__sanitizer_cov_trace_pc() #13
  %705 = ptrtoint ptr %paging_mem_size484.i to i32
  call void @__asan_store4_noabort(i32 %705)
  store i32 %698, ptr %paging_mem_size484.i, align 4
  %706 = ptrtoint ptr %paging_mem_size488.i to i32
  call void @__asan_store4_noabort(i32 %706)
  store i32 %698, ptr %paging_mem_size488.i, align 4
  br label %sw.epilog.i522

sw.bb489.i:                                       ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 201326592, i32 %249)
  %cmp491.not.i = icmp eq i32 %249, 201326592
  br i1 %cmp491.not.i, label %do.end498.i, label %sw.bb489.i.do.end724.i_crit_edge

sw.bb489.i.do.end724.i_crit_edge:                 ; preds = %sw.bb489.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end724.i

do.end498.i:                                      ; preds = %sw.bb489.i
  %707 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %707)
  %708 = load ptr, ptr %dev, align 4
  %709 = ptrtoint ptr %data45.i to i32
  call void @__asan_loadN_noabort(i32 %709, i32 4)
  %710 = load i32, ptr %data45.i, align 1
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %708, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_parse_tlv_firmware, ptr noundef nonnull @.str.45, i32 noundef %710) #11
  %711 = ptrtoint ptr %n_mem_tlv.i to i32
  call void @__asan_load4_noabort(i32 %711)
  %712 = load i32, ptr %n_mem_tlv.i, align 8
  %713 = mul i32 %712, 12
  %mul.i = add i32 %713, 12
  %714 = ptrtoint ptr %dbg_mem_tlv.i to i32
  call void @__asan_load4_noabort(i32 %714)
  %715 = load ptr, ptr %dbg_mem_tlv.i, align 4
  %call503.i = call noalias ptr @krealloc(ptr noundef %715, i32 noundef %mul.i, i32 noundef 3264) #17
  %tobool504.not.i = icmp eq ptr %call503.i, null
  br i1 %tobool504.not.i, label %do.end498.i.iwl_parse_tlv_firmware.exit_crit_edge, label %cleanup512.thread1523.i

do.end498.i.iwl_parse_tlv_firmware.exit_crit_edge: ; preds = %do.end498.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_parse_tlv_firmware.exit

cleanup512.thread1523.i:                          ; preds = %do.end498.i
  call void @__sanitizer_cov_trace_pc() #13
  %716 = ptrtoint ptr %dbg_mem_tlv.i to i32
  call void @__asan_store4_noabort(i32 %716)
  store ptr %call503.i, ptr %dbg_mem_tlv.i, align 4
  %717 = ptrtoint ptr %n_mem_tlv.i to i32
  call void @__asan_load4_noabort(i32 %717)
  %718 = load i32, ptr %n_mem_tlv.i, align 8
  %arrayidx510.i = getelementptr %struct.iwl_fw_dbg_mem_seg_tlv, ptr %call503.i, i32 %718
  %719 = call ptr @memcpy(ptr %arrayidx510.i, ptr %data45.i, i32 12)
  %inc.i = add i32 %718, 1
  store i32 %inc.i, ptr %n_mem_tlv.i, align 8
  br label %sw.epilog.i522

sw.bb516.i:                                       ; preds = %if.end56.i
  %720 = ptrtoint ptr %iml_len.i to i32
  call void @__asan_store4_noabort(i32 %720)
  store i32 %250, ptr %iml_len.i, align 4
  %call518.i = call ptr @kmemdup(ptr noundef %data45.i, i32 noundef %250, i32 noundef 3264) #11
  %721 = ptrtoint ptr %iml.i to i32
  call void @__asan_store4_noabort(i32 %721)
  store ptr %call518.i, ptr %iml.i, align 4
  %tobool522.not.i = icmp eq ptr %call518.i, null
  br i1 %tobool522.not.i, label %sw.bb516.i.iwl_parse_tlv_firmware.exit_crit_edge, label %sw.bb516.i.sw.epilog.i522_crit_edge

sw.bb516.i.sw.epilog.i522_crit_edge:              ; preds = %sw.bb516.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i522

sw.bb516.i.iwl_parse_tlv_firmware.exit_crit_edge: ; preds = %sw.bb516.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_parse_tlv_firmware.exit

sw.bb525.i:                                       ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %249)
  %cmp526.not.i = icmp eq i32 %249, 134217728
  br i1 %cmp526.not.i, label %cleanup530.thread.i, label %sw.bb525.i.do.end724.i_crit_edge

sw.bb525.i.do.end724.i_crit_edge:                 ; preds = %sw.bb525.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end724.i

cleanup530.thread.i:                              ; preds = %sw.bb525.i
  call void @__sanitizer_cov_trace_pc() #13
  %722 = ptrtoint ptr %data45.i to i32
  call void @__asan_load4_noabort(i32 %722)
  %723 = load i32, ptr %data45.i, align 4
  %724 = call i32 @llvm.bswap.i32(i32 %723) #11
  %725 = ptrtoint ptr %error_log_addr.i to i32
  call void @__asan_store4_noabort(i32 %725)
  store i32 %724, ptr %error_log_addr.i, align 4
  %buf_size.i = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %data1.01600.i, i32 1, i32 1
  %726 = ptrtoint ptr %buf_size.i to i32
  call void @__asan_load4_noabort(i32 %726)
  %727 = load i32, ptr %buf_size.i, align 4
  %728 = call i32 @llvm.bswap.i32(i32 %727) #11
  %729 = ptrtoint ptr %error_log_size.i to i32
  call void @__asan_store4_noabort(i32 %729)
  store i32 %728, ptr %error_log_size.i, align 4
  br label %sw.epilog.i522

sw.bb532.i:                                       ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 872415232, i32 %249)
  %cmp533.not.i = icmp eq i32 %249, 872415232
  br i1 %cmp533.not.i, label %cleanup545.thread.i, label %sw.bb532.i.do.end724.i_crit_edge

sw.bb532.i.do.end724.i_crit_edge:                 ; preds = %sw.bb532.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end724.i

cleanup545.thread.i:                              ; preds = %sw.bb532.i
  call void @__sanitizer_cov_trace_pc() #13
  %730 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %730)
  %731 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @__iwl_info(ptr noundef %731, ptr noundef nonnull @.str.46, ptr noundef %data45.i) #11
  br label %sw.epilog.i522

sw.bb548.i:                                       ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %249)
  %cmp549.not.i = icmp eq i32 %249, 67108864
  br i1 %cmp549.not.i, label %if.end552.i, label %sw.bb548.i.do.end724.i_crit_edge

sw.bb548.i.do.end724.i_crit_edge:                 ; preds = %sw.bb548.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end724.i

if.end552.i:                                      ; preds = %sw.bb548.i
  %732 = ptrtoint ptr %data45.i to i32
  call void @__asan_load4_noabort(i32 %732)
  %733 = load i32, ptr %data45.i, align 4
  %734 = call i32 @llvm.bswap.i32(i32 %733) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %734)
  %cmp554.i = icmp ugt i32 %734, 16
  br i1 %cmp554.i, label %do.end560.i, label %if.end565.i

do.end560.i:                                      ; preds = %if.end552.i
  call void @__sanitizer_cov_trace_pc() #13
  %735 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %735)
  %736 = load ptr, ptr %dev, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %736, i32 noundef 0, ptr noundef nonnull @.str.47, i32 noundef %734) #11
  br label %do.body728.i

if.end565.i:                                      ; preds = %if.end552.i
  call void @__sanitizer_cov_trace_pc() #13
  %737 = ptrtoint ptr %num_stations to i32
  call void @__asan_store4_noabort(i32 %737)
  store i32 %734, ptr %num_stations, align 4
  br label %sw.epilog.i522

sw.bb567.i:                                       ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %249)
  %cmp568.not.i = icmp eq i32 %249, 134217728
  br i1 %cmp568.not.i, label %if.end571.i, label %sw.bb567.i.do.end724.i_crit_edge

sw.bb567.i.do.end724.i_crit_edge:                 ; preds = %sw.bb567.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end724.i

if.end571.i:                                      ; preds = %sw.bb567.i
  %738 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %738)
  %739 = load ptr, ptr %trans, align 4
  %trans_cfg.i = getelementptr inbounds %struct.iwl_trans, ptr %739, i32 0, i32 3
  %740 = ptrtoint ptr %trans_cfg.i to i32
  call void @__asan_load4_noabort(i32 %740)
  %741 = load ptr, ptr %trans_cfg.i, align 4
  %device_family.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %741, i32 0, i32 1
  %742 = ptrtoint ptr %device_family.i to i32
  call void @__asan_load4_noabort(i32 %742)
  %743 = load i32, ptr %device_family.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %743)
  %cmp572.i = icmp ult i32 %743, 18
  br i1 %cmp572.i, label %if.end571.i.sw.epilog.i522_crit_edge, label %if.end575.i

if.end571.i.sw.epilog.i522_crit_edge:             ; preds = %if.end571.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i522

if.end575.i:                                      ; preds = %if.end571.i
  call void @__sanitizer_cov_trace_pc() #13
  %744 = ptrtoint ptr %data45.i to i32
  call void @__asan_loadN_noabort(i32 %744, i32 4)
  %745 = load i32, ptr %data45.i, align 1
  %746 = and i32 %745, -193
  %747 = call i32 @llvm.bswap.i32(i32 %746) #11
  %umac_error_event_table.i = getelementptr inbounds %struct.iwl_trans, ptr %739, i32 0, i32 32, i32 6
  %748 = ptrtoint ptr %umac_error_event_table.i to i32
  call void @__asan_store4_noabort(i32 %748)
  store i32 %747, ptr %umac_error_event_table.i, align 4
  %749 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %749)
  %750 = load ptr, ptr %trans, align 4
  %error_event_table_tlv_status.i = getelementptr inbounds %struct.iwl_trans, ptr %750, i32 0, i32 32, i32 9
  %751 = ptrtoint ptr %error_event_table_tlv_status.i to i32
  call void @__asan_load4_noabort(i32 %751)
  %752 = load i32, ptr %error_event_table_tlv_status.i, align 8
  %or581.i = or i32 %752, 4
  store i32 %or581.i, ptr %error_event_table_tlv_status.i, align 8
  br label %sw.epilog.i522

sw.bb584.i:                                       ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %249)
  %cmp586.not.i = icmp eq i32 %249, 536870912
  br i1 %cmp586.not.i, label %if.end589.i, label %sw.bb584.i.do.end724.i_crit_edge

sw.bb584.i.do.end724.i_crit_edge:                 ; preds = %sw.bb584.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end724.i

if.end589.i:                                      ; preds = %sw.bb584.i
  %753 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %753)
  %754 = load ptr, ptr %trans, align 4
  %trans_cfg591.i = getelementptr inbounds %struct.iwl_trans, ptr %754, i32 0, i32 3
  %755 = ptrtoint ptr %trans_cfg591.i to i32
  call void @__asan_load4_noabort(i32 %755)
  %756 = load ptr, ptr %trans_cfg591.i, align 4
  %device_family592.i = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %756, i32 0, i32 1
  %757 = ptrtoint ptr %device_family592.i to i32
  call void @__asan_load4_noabort(i32 %757)
  %758 = load i32, ptr %device_family592.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %758)
  %cmp593.i = icmp ult i32 %758, 18
  br i1 %cmp593.i, label %if.end589.i.sw.epilog.i522_crit_edge, label %if.end596.i

if.end589.i.sw.epilog.i522_crit_edge:             ; preds = %if.end589.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i522

if.end596.i:                                      ; preds = %if.end589.i
  call void @__sanitizer_cov_trace_pc() #13
  %759 = ptrtoint ptr %data45.i to i32
  call void @__asan_loadN_noabort(i32 %759, i32 4)
  %760 = load i32, ptr %data45.i, align 1
  %761 = and i32 %760, -193
  %762 = call i32 @llvm.bswap.i32(i32 %761) #11
  %lmac_error_event_table.i = getelementptr inbounds %struct.iwl_trans, ptr %754, i32 0, i32 32, i32 5
  %763 = ptrtoint ptr %lmac_error_event_table.i to i32
  call void @__asan_store4_noabort(i32 %763)
  store i32 %762, ptr %lmac_error_event_table.i, align 4
  %764 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %764)
  %765 = load ptr, ptr %trans, align 4
  %error_event_table_tlv_status603.i = getelementptr inbounds %struct.iwl_trans, ptr %765, i32 0, i32 32, i32 9
  %766 = ptrtoint ptr %error_event_table_tlv_status603.i to i32
  call void @__asan_load4_noabort(i32 %766)
  %767 = load i32, ptr %error_event_table_tlv_status603.i, align 8
  %or604.i = or i32 %767, 1
  store i32 %or604.i, ptr %error_event_table_tlv_status603.i, align 8
  br label %sw.epilog.i522

sw.bb607.i:                                       ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %250)
  %cmp.i1489.i = icmp ult i32 %250, 64
  br i1 %cmp.i1489.i, label %sw.bb607.i.sw.bb608.i_crit_edge, label %if.end.i1492.i

sw.bb607.i.sw.bb608.i_crit_edge:                  ; preds = %sw.bb607.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb608.i

if.end.i1492.i:                                   ; preds = %sw.bb607.i
  %base_addr.i.i = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %data1.01600.i, i32 7, i32 1
  %768 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_loadN_noabort(i32 %768, i32 4)
  %769 = load i32, ptr %base_addr.i.i, align 1
  %770 = call i32 @llvm.bswap.i32(i32 %769) #11
  %offset.i.i = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %data1.01600.i, i32 8, i32 1
  %771 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_loadN_noabort(i32 %771, i32 4)
  %772 = load i32, ptr %offset.i.i, align 1
  %773 = call i32 @llvm.bswap.i32(i32 %772) #11
  %add.i1490.i = add i32 %773, %770
  %and.i1491.i = and i32 %add.i1490.i, 1073741823
  %type.i.i = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %data1.01600.i, i32 2, i32 1
  %774 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load1_noabort(i32 %774)
  %775 = load i8, ptr %type.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %775)
  %cmp2.not.i.i = icmp eq i8 %775, 17
  br i1 %cmp2.not.i.i, label %if.end5.i.i, label %if.end.i1492.i.sw.bb608.i_crit_edge

if.end.i1492.i.sw.bb608.i_crit_edge:              ; preds = %if.end.i1492.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb608.i

if.end5.i.i:                                      ; preds = %if.end.i1492.i
  %sub_type.i.i = getelementptr inbounds %struct.iwl_fw_ini_region_tlv, ptr %data45.i, i32 0, i32 3
  %776 = ptrtoint ptr %sub_type.i.i to i32
  call void @__asan_load1_noabort(i32 %776)
  %777 = load i8, ptr %sub_type.i.i, align 1
  %778 = zext i8 %777 to i64
  call void @__sanitizer_cov_trace_switch(i64 %778, ptr @__sancov_gen_cov_switch_values.84)
  switch i8 %777, label %if.end5.i.i.sw.bb608.i_crit_edge [
    i8 5, label %sw.bb.i.i
    i8 7, label %sw.bb9.i.i
    i8 10, label %sw.bb16.i.i
    i8 14, label %sw.bb25.i.i
    i8 16, label %sw.bb33.i.i
    i8 18, label %sw.bb42.i.i
    i8 20, label %sw.bb50.i.i
  ]

if.end5.i.i.sw.bb608.i_crit_edge:                 ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb608.i

sw.bb.i.i:                                        ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %779 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %779)
  %780 = load ptr, ptr %trans, align 4
  %umac_error_event_table.i.i = getelementptr inbounds %struct.iwl_trans, ptr %780, i32 0, i32 32, i32 6
  %781 = ptrtoint ptr %umac_error_event_table.i.i to i32
  call void @__asan_store4_noabort(i32 %781)
  store i32 %and.i1491.i, ptr %umac_error_event_table.i.i, align 4
  br label %cleanup.sink.split.i.i

sw.bb9.i.i:                                       ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %782 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %782)
  %783 = load ptr, ptr %trans, align 4
  %lmac_error_event_table.i.i = getelementptr inbounds %struct.iwl_trans, ptr %783, i32 0, i32 32, i32 5
  %784 = ptrtoint ptr %lmac_error_event_table.i.i to i32
  call void @__asan_store4_noabort(i32 %784)
  store i32 %and.i1491.i, ptr %lmac_error_event_table.i.i, align 4
  br label %cleanup.sink.split.i.i

sw.bb16.i.i:                                      ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %785 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %785)
  %786 = load ptr, ptr %trans, align 4
  %arrayidx20.i.i = getelementptr %struct.iwl_trans, ptr %786, i32 0, i32 32, i32 5, i32 1
  %787 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_store4_noabort(i32 %787)
  store i32 %and.i1491.i, ptr %arrayidx20.i.i, align 4
  br label %cleanup.sink.split.i.i

sw.bb25.i.i:                                      ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %788 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %788)
  %789 = load ptr, ptr %trans, align 4
  %tcm_error_event_table.i.i = getelementptr inbounds %struct.iwl_trans, ptr %789, i32 0, i32 32, i32 7
  %790 = ptrtoint ptr %tcm_error_event_table.i.i to i32
  call void @__asan_store4_noabort(i32 %790)
  store i32 %and.i1491.i, ptr %tcm_error_event_table.i.i, align 8
  br label %cleanup.sink.split.i.i

sw.bb33.i.i:                                      ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %791 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %791)
  %792 = load ptr, ptr %trans, align 4
  %arrayidx37.i.i = getelementptr %struct.iwl_trans, ptr %792, i32 0, i32 32, i32 7, i32 1
  %793 = ptrtoint ptr %arrayidx37.i.i to i32
  call void @__asan_store4_noabort(i32 %793)
  store i32 %and.i1491.i, ptr %arrayidx37.i.i, align 4
  br label %cleanup.sink.split.i.i

sw.bb42.i.i:                                      ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %794 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %794)
  %795 = load ptr, ptr %trans, align 4
  %rcm_error_event_table.i.i = getelementptr inbounds %struct.iwl_trans, ptr %795, i32 0, i32 32, i32 8
  %796 = ptrtoint ptr %rcm_error_event_table.i.i to i32
  call void @__asan_store4_noabort(i32 %796)
  store i32 %and.i1491.i, ptr %rcm_error_event_table.i.i, align 8
  br label %cleanup.sink.split.i.i

sw.bb50.i.i:                                      ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %797 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %797)
  %798 = load ptr, ptr %trans, align 4
  %arrayidx54.i.i = getelementptr %struct.iwl_trans, ptr %798, i32 0, i32 32, i32 8, i32 1
  %799 = ptrtoint ptr %arrayidx54.i.i to i32
  call void @__asan_store4_noabort(i32 %799)
  store i32 %and.i1491.i, ptr %arrayidx54.i.i, align 4
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %sw.bb50.i.i, %sw.bb42.i.i, %sw.bb33.i.i, %sw.bb25.i.i, %sw.bb16.i.i, %sw.bb9.i.i, %sw.bb.i.i
  %.sink86.i.i = phi i32 [ 64, %sw.bb50.i.i ], [ 32, %sw.bb42.i.i ], [ 16, %sw.bb33.i.i ], [ 8, %sw.bb25.i.i ], [ 2, %sw.bb16.i.i ], [ 1, %sw.bb9.i.i ], [ 4, %sw.bb.i.i ]
  %800 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %800)
  %801 = load ptr, ptr %trans, align 4
  %error_event_table_tlv_status57.i.i = getelementptr inbounds %struct.iwl_trans, ptr %801, i32 0, i32 32, i32 9
  %802 = ptrtoint ptr %error_event_table_tlv_status57.i.i to i32
  call void @__asan_load4_noabort(i32 %802)
  %803 = load i32, ptr %error_event_table_tlv_status57.i.i, align 8
  %or.i.i = or i32 %803, %.sink86.i.i
  store i32 %or.i.i, ptr %error_event_table_tlv_status57.i.i, align 8
  br label %sw.bb608.i

sw.bb608.i:                                       ; preds = %cleanup.sink.split.i.i, %if.end5.i.i.sw.bb608.i_crit_edge, %if.end.i1492.i.sw.bb608.i_crit_edge, %sw.bb607.i.sw.bb608.i_crit_edge, %if.end56.i.sw.bb608.i_crit_edge, %if.end56.i.sw.bb608.i_crit_edge913, %if.end56.i.sw.bb608.i_crit_edge914, %if.end56.i.sw.bb608.i_crit_edge915, %if.end56.i.sw.bb608.i_crit_edge916
  %804 = load i8, ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 14), align 1, !range !284
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %804)
  %tobool609.not.i = icmp eq i8 %804, 0
  br i1 %tobool609.not.i, label %sw.bb608.i.sw.epilog.i522_crit_edge, label %if.then610.i

sw.bb608.i.sw.epilog.i522_crit_edge:              ; preds = %sw.bb608.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i522

if.then610.i:                                     ; preds = %sw.bb608.i
  call void @__sanitizer_cov_trace_pc() #13
  %805 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %805)
  %806 = load ptr, ptr %trans, align 4
  call void @iwl_dbg_tlv_alloc(ptr noundef %806, ptr noundef %data1.01600.i, i1 noundef zeroext false) #11
  br label %sw.epilog.i522

sw.bb613.i:                                       ; preds = %if.end56.i
  %rem614.i = and i32 %250, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem614.i)
  %tobool615.not.i = icmp eq i32 %rem614.i, 0
  br i1 %tobool615.not.i, label %sw.bb613.i.if.end626.i_crit_edge, label %do.end620.i

sw.bb613.i.if.end626.i_crit_edge:                 ; preds = %sw.bb613.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end626.i

do.end620.i:                                      ; preds = %sw.bb613.i
  call void @__sanitizer_cov_trace_pc() #13
  %807 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %807)
  %808 = load ptr, ptr %dev, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %808, i32 noundef 0, ptr noundef nonnull @.str.48, i32 noundef %250) #11
  %div6241135.i = and i32 %250, -4
  br label %if.end626.i

if.end626.i:                                      ; preds = %do.end620.i, %sw.bb613.i.if.end626.i_crit_edge
  %tlv_len.0.i = phi i32 [ %div6241135.i, %do.end620.i ], [ %250, %sw.bb613.i.if.end626.i_crit_edge ]
  %809 = ptrtoint ptr %cmd_versions.i to i32
  call void @__asan_load4_noabort(i32 %809)
  %810 = load ptr, ptr %cmd_versions.i, align 4
  %tobool627.not.i = icmp eq ptr %810, null
  br i1 %tobool627.not.i, label %if.end654.i, label %do.end639.i, !prof !285

do.end639.i:                                      ; preds = %if.end626.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 1238, i32 noundef 9, ptr noundef null) #11
  br label %iwl_parse_tlv_firmware.exit

if.end654.i:                                      ; preds = %if.end626.i
  %call655.i = call ptr @kmemdup(ptr noundef %data45.i, i32 noundef %tlv_len.0.i, i32 noundef 3264) #11
  %811 = ptrtoint ptr %cmd_versions.i to i32
  call void @__asan_store4_noabort(i32 %811)
  store ptr %call655.i, ptr %cmd_versions.i, align 4
  %tobool658.not.i = icmp eq ptr %call655.i, null
  br i1 %tobool658.not.i, label %if.end654.i.iwl_parse_tlv_firmware.exit_crit_edge, label %if.end660.i

if.end654.i.iwl_parse_tlv_firmware.exit_crit_edge: ; preds = %if.end654.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_parse_tlv_firmware.exit

if.end660.i:                                      ; preds = %if.end654.i
  call void @__sanitizer_cov_trace_pc() #13
  %div6611134.i = lshr i32 %tlv_len.0.i, 2
  %812 = ptrtoint ptr %n_cmd_versions.i to i32
  call void @__asan_store4_noabort(i32 %812)
  store i32 %div6611134.i, ptr %n_cmd_versions.i, align 4
  br label %sw.epilog.i522

sw.bb662.i:                                       ; preds = %if.end56.i
  %813 = ptrtoint ptr %phy_integration_ver.i to i32
  call void @__asan_load4_noabort(i32 %813)
  %814 = load ptr, ptr %phy_integration_ver.i, align 4
  %tobool664.not.i = icmp eq ptr %814, null
  br i1 %tobool664.not.i, label %if.end673.i, label %do.end669.i

do.end669.i:                                      ; preds = %sw.bb662.i
  call void @__sanitizer_cov_trace_pc() #13
  %815 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %815)
  %816 = load ptr, ptr %dev, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %816, i32 noundef 0, ptr noundef nonnull @.str.49) #11
  br label %sw.epilog.i522

if.end673.i:                                      ; preds = %sw.bb662.i
  %call674.i = call ptr @kmemdup(ptr noundef %data45.i, i32 noundef %250, i32 noundef 3264) #11
  %817 = ptrtoint ptr %phy_integration_ver.i to i32
  call void @__asan_store4_noabort(i32 %817)
  store ptr %call674.i, ptr %phy_integration_ver.i, align 4
  %tobool679.not.i = icmp eq ptr %call674.i, null
  br i1 %tobool679.not.i, label %if.end673.i.iwl_parse_tlv_firmware.exit_crit_edge, label %if.end681.i

if.end673.i.iwl_parse_tlv_firmware.exit_crit_edge: ; preds = %if.end673.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_parse_tlv_firmware.exit

if.end681.i:                                      ; preds = %if.end673.i
  call void @__sanitizer_cov_trace_pc() #13
  %818 = ptrtoint ptr %phy_integration_ver_len.i to i32
  call void @__asan_store4_noabort(i32 %818)
  store i32 %250, ptr %phy_integration_ver_len.i, align 4
  br label %sw.epilog.i522

sw.bb683.i:                                       ; preds = %if.end56.i.sw.bb683.i_crit_edge, %if.end56.i.sw.bb683.i_crit_edge917
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %250)
  %cmp.i1493.i = icmp ult i32 %250, 8
  br i1 %cmp.i1493.i, label %sw.bb683.i.sw.epilog.i522_crit_edge, label %if.end.i1494.i

sw.bb683.i.sw.epilog.i522_crit_edge:              ; preds = %sw.bb683.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i522

if.end.i1494.i:                                   ; preds = %sw.bb683.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1107296256, i32 %252)
  %cmp1.i.i = icmp eq i32 %252, 1107296256
  br i1 %cmp1.i.i, label %if.then2.i.i, label %if.else.i.i

if.then2.i.i:                                     ; preds = %if.end.i1494.i
  call void @__sanitizer_cov_trace_pc() #13
  %819 = ptrtoint ptr %dump_excl11.i.i to i32
  call void @__asan_load4_noabort(i32 %819)
  %820 = load i32, ptr %dump_excl11.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %820)
  %tobool.not.i1495.i = icmp eq i32 %820, 0
  %spec.select.i1496.i = select i1 %tobool.not.i1495.i, ptr %dump_excl11.i.i, ptr %dump_excl_wowlan15.i.i
  br label %if.end18.i.i

if.else.i.i:                                      ; preds = %if.end.i1494.i
  call void @__sanitizer_cov_trace_pc() #13
  %821 = ptrtoint ptr %_capa.i.i.i to i32
  call void @__asan_load4_noabort(i32 %821)
  %822 = load volatile i32, ptr %_capa.i.i.i, align 4
  %823 = and i32 %822, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %823)
  %tobool.i.not.i.i = icmp eq i32 %823, 0
  %dump_excl_wowlan15.i.dump_excl11.i.i = select i1 %tobool.i.not.i.i, ptr %dump_excl_wowlan15.i.i, ptr %dump_excl11.i.i
  br label %if.end18.i.i

if.end18.i.i:                                     ; preds = %if.else.i.i, %if.then2.i.i
  %excl.0.i.i = phi ptr [ %spec.select.i1496.i, %if.then2.i.i ], [ %dump_excl_wowlan15.i.dump_excl11.i.i, %if.else.i.i ]
  %824 = ptrtoint ptr %excl.0.i.i to i32
  call void @__asan_load4_noabort(i32 %824)
  %825 = load i32, ptr %excl.0.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %825)
  %tobool20.not.i.i = icmp ne i32 %825, 0
  %spec.select45.idx.i.i = zext i1 %tobool20.not.i.i to i32
  %spec.select45.i.i = getelementptr %struct.iwl_dump_exclude, ptr %excl.0.i.i, i32 %spec.select45.idx.i.i
  %826 = ptrtoint ptr %spec.select45.i.i to i32
  call void @__asan_load4_noabort(i32 %826)
  %827 = load i32, ptr %spec.select45.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %827)
  %tobool24.not.i.i = icmp eq i32 %827, 0
  br i1 %tobool24.not.i.i, label %if.end29.i.i521, label %do.end.i1498.i

do.end.i1498.i:                                   ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %828 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %828)
  %829 = load ptr, ptr %dev, align 4
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %829, i32 noundef 65537, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_drv_set_dump_exclude, ptr noundef nonnull @.str.64) #11
  br label %sw.epilog.i522

if.end29.i.i521:                                  ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %830 = ptrtoint ptr %data45.i to i32
  call void @__asan_load4_noabort(i32 %830)
  %831 = load i32, ptr %data45.i, align 4
  %832 = and i32 %831, -193
  %833 = call i32 @llvm.bswap.i32(i32 %832) #11
  %834 = ptrtoint ptr %spec.select45.i.i to i32
  call void @__asan_store4_noabort(i32 %834)
  store i32 %833, ptr %spec.select45.i.i, align 4
  %size.i.i520 = getelementptr inbounds %struct.iwl_ucode_tlv, ptr %data1.01600.i, i32 1, i32 1
  %835 = ptrtoint ptr %size.i.i520 to i32
  call void @__asan_load4_noabort(i32 %835)
  %836 = load i32, ptr %size.i.i520, align 4
  %837 = call i32 @llvm.bswap.i32(i32 %836) #11
  %size32.i.i = getelementptr %struct.iwl_dump_exclude, ptr %excl.0.i.i, i32 %spec.select45.idx.i.i, i32 1
  %838 = ptrtoint ptr %size32.i.i to i32
  call void @__asan_store4_noabort(i32 %838)
  store i32 %837, ptr %size32.i.i, align 4
  br label %sw.epilog.i522

do.end687.i:                                      ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #13
  %839 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %839)
  %840 = load ptr, ptr %dev, align 4
  call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %840, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_parse_tlv_firmware, ptr noundef nonnull @.str.50, i32 noundef %253) #11
  br label %sw.epilog.i522

sw.epilog.i522:                                   ; preds = %do.end687.i, %if.end29.i.i521, %do.end.i1498.i, %sw.bb683.i.sw.epilog.i522_crit_edge, %if.end681.i, %do.end669.i, %if.end660.i, %if.then610.i, %sw.bb608.i.sw.epilog.i522_crit_edge, %if.end596.i, %if.end589.i.sw.epilog.i522_crit_edge, %if.end575.i, %if.end571.i.sw.epilog.i522_crit_edge, %if.end565.i, %cleanup545.thread.i, %cleanup530.thread.i, %sw.bb516.i.sw.epilog.i522_crit_edge, %cleanup512.thread1523.i, %if.end480.i, %if.end28.i1487.i, %if.end23.i1480.i.sw.epilog.i522_crit_edge, %if.end440.i, %do.end436.i, %do.end419.i, %do.end410.i, %do.end398.i, %if.end369.i, %do.end363.i, %do.end349.i, %do.end335.i, %cond.end.i, %do.end295.i, %do.end282.i, %if.else255.i, %if.then248.i, %if.end234.i, %if.end10.i.i, %for.body.i1452.i.sw.epilog.i522_crit_edge, %land.rhs.i.i.sw.epilog.i522_crit_edge, %if.else209.i.sw.epilog.i522_crit_edge, %if.then198.i, %iwl_store_ucode_sec.exit1447.i, %iwl_store_ucode_sec.exit1429.i, %iwl_store_ucode_sec.exit1411.i, %if.end164.i, %iwl_set_default_calib.exit.thread.i, %iwl_store_ucode_sec.exit1390.i, %iwl_store_ucode_sec.exit1372.i, %iwl_store_ucode_sec.exit.i, %if.end139.i, %set_sec_offset.exit1350.i, %set_sec_offset.exit1315.i, %if.end132.i, %if.end127.i, %if.end122.i, %if.end117.i, %if.end112.i, %if.end107.i, %if.end102.i, %for.inc.i1279.i.sw.epilog.i522_crit_edge, %do.end.i1266.i, %for.inc.i.i.sw.epilog.i522_crit_edge, %do.end.i.i, %if.end88.i, %if.end81.i, %if.end76.i518, %do.end69.i, %set_sec_offset.exit1260.i, %set_sec_offset.exit1225.i, %set_sec_offset.exit1190.i, %set_sec_offset.exit.i517, %if.end56.i.sw.epilog.i522_crit_edge
  %usniffer_images.1 = phi i8 [ %usniffer_images.0, %do.end687.i ], [ %usniffer_images.0, %sw.bb683.i.sw.epilog.i522_crit_edge ], [ %usniffer_images.0, %if.end29.i.i521 ], [ %usniffer_images.0, %do.end.i1498.i ], [ %usniffer_images.0, %if.end681.i ], [ %usniffer_images.0, %do.end669.i ], [ %usniffer_images.0, %if.end660.i ], [ %usniffer_images.0, %sw.bb608.i.sw.epilog.i522_crit_edge ], [ %usniffer_images.0, %if.then610.i ], [ %usniffer_images.0, %if.end589.i.sw.epilog.i522_crit_edge ], [ %usniffer_images.0, %if.end596.i ], [ %usniffer_images.0, %if.end571.i.sw.epilog.i522_crit_edge ], [ %usniffer_images.0, %if.end575.i ], [ %usniffer_images.0, %if.end565.i ], [ %usniffer_images.0, %cleanup545.thread.i ], [ %usniffer_images.0, %cleanup530.thread.i ], [ %usniffer_images.0, %sw.bb516.i.sw.epilog.i522_crit_edge ], [ %usniffer_images.0, %cleanup512.thread1523.i ], [ %usniffer_images.0, %if.end56.i.sw.epilog.i522_crit_edge ], [ %usniffer_images.0, %if.end480.i ], [ 1, %if.end23.i1480.i.sw.epilog.i522_crit_edge ], [ 1, %if.end28.i1487.i ], [ %usniffer_images.0, %if.end440.i ], [ %usniffer_images.0, %do.end436.i ], [ %usniffer_images.0, %do.end398.i ], [ %usniffer_images.0, %do.end419.i ], [ %usniffer_images.0, %do.end410.i ], [ %usniffer_images.0, %do.end335.i ], [ %usniffer_images.0, %do.end349.i ], [ %usniffer_images.0, %if.end369.i ], [ %usniffer_images.0, %do.end363.i ], [ %usniffer_images.0, %do.end282.i ], [ %usniffer_images.0, %cond.end.i ], [ %usniffer_images.0, %do.end295.i ], [ %usniffer_images.0, %if.then248.i ], [ %usniffer_images.0, %if.else255.i ], [ %usniffer_images.0, %if.end234.i ], [ %usniffer_images.0, %land.rhs.i.i.sw.epilog.i522_crit_edge ], [ %usniffer_images.0, %for.body.i1452.i.sw.epilog.i522_crit_edge ], [ %usniffer_images.0, %if.end10.i.i ], [ %usniffer_images.0, %if.then198.i ], [ %usniffer_images.0, %if.else209.i.sw.epilog.i522_crit_edge ], [ %usniffer_images.0, %iwl_store_ucode_sec.exit1447.i ], [ %usniffer_images.0, %iwl_store_ucode_sec.exit1429.i ], [ %usniffer_images.0, %iwl_store_ucode_sec.exit1411.i ], [ %usniffer_images.0, %if.end164.i ], [ %usniffer_images.0, %iwl_set_default_calib.exit.thread.i ], [ %usniffer_images.0, %iwl_store_ucode_sec.exit1390.i ], [ %usniffer_images.0, %iwl_store_ucode_sec.exit1372.i ], [ %usniffer_images.0, %iwl_store_ucode_sec.exit.i ], [ %usniffer_images.0, %if.end139.i ], [ %usniffer_images.0, %set_sec_offset.exit1350.i ], [ %usniffer_images.0, %set_sec_offset.exit1315.i ], [ %usniffer_images.0, %if.end132.i ], [ %usniffer_images.0, %if.end127.i ], [ %usniffer_images.0, %if.end122.i ], [ %usniffer_images.0, %if.end117.i ], [ %usniffer_images.0, %if.end112.i ], [ %usniffer_images.0, %if.end107.i ], [ %usniffer_images.0, %if.end102.i ], [ %usniffer_images.0, %do.end.i1266.i ], [ %usniffer_images.0, %do.end.i.i ], [ %usniffer_images.0, %if.end88.i ], [ %usniffer_images.0, %if.end81.i ], [ %usniffer_images.0, %if.end76.i518 ], [ %usniffer_images.0, %do.end69.i ], [ %usniffer_images.0, %set_sec_offset.exit1260.i ], [ %usniffer_images.0, %set_sec_offset.exit1225.i ], [ %usniffer_images.0, %set_sec_offset.exit1190.i ], [ %usniffer_images.0, %set_sec_offset.exit.i517 ], [ %usniffer_images.0, %for.inc.i.i.sw.epilog.i522_crit_edge ], [ %usniffer_images.0, %for.inc.i1279.i.sw.epilog.i522_crit_edge ]
  %usniffer_req.3.off0.i = phi i1 [ %usniffer_req.0.off01602.i, %do.end687.i ], [ %usniffer_req.0.off01602.i, %sw.bb683.i.sw.epilog.i522_crit_edge ], [ %usniffer_req.0.off01602.i, %if.end29.i.i521 ], [ %usniffer_req.0.off01602.i, %do.end.i1498.i ], [ %usniffer_req.0.off01602.i, %if.end681.i ], [ %usniffer_req.0.off01602.i, %do.end669.i ], [ %usniffer_req.0.off01602.i, %if.end660.i ], [ %usniffer_req.0.off01602.i, %sw.bb608.i.sw.epilog.i522_crit_edge ], [ %usniffer_req.0.off01602.i, %if.then610.i ], [ %usniffer_req.0.off01602.i, %if.end589.i.sw.epilog.i522_crit_edge ], [ %usniffer_req.0.off01602.i, %if.end596.i ], [ %usniffer_req.0.off01602.i, %if.end571.i.sw.epilog.i522_crit_edge ], [ %usniffer_req.0.off01602.i, %if.end575.i ], [ %usniffer_req.0.off01602.i, %if.end565.i ], [ %usniffer_req.0.off01602.i, %cleanup545.thread.i ], [ %usniffer_req.0.off01602.i, %cleanup530.thread.i ], [ %usniffer_req.0.off01602.i, %sw.bb516.i.sw.epilog.i522_crit_edge ], [ %usniffer_req.0.off01602.i, %cleanup512.thread1523.i ], [ %usniffer_req.0.off01602.i, %if.end56.i.sw.epilog.i522_crit_edge ], [ %usniffer_req.0.off01602.i, %if.end480.i ], [ %usniffer_req.0.off01602.i, %if.end23.i1480.i.sw.epilog.i522_crit_edge ], [ %usniffer_req.0.off01602.i, %if.end28.i1487.i ], [ %usniffer_req.0.off01602.i, %if.end440.i ], [ %usniffer_req.0.off01602.i, %do.end436.i ], [ %usniffer_req.0.off01602.i, %do.end398.i ], [ %usniffer_req.0.off01602.i, %do.end419.i ], [ %usniffer_req.0.off01602.i, %do.end410.i ], [ %usniffer_req.0.off01602.i, %do.end335.i ], [ %usniffer_req.0.off01602.i, %do.end349.i ], [ %spec.select.i, %if.end369.i ], [ %usniffer_req.0.off01602.i, %do.end363.i ], [ %usniffer_req.0.off01602.i, %do.end282.i ], [ %usniffer_req.0.off01602.i, %cond.end.i ], [ %usniffer_req.0.off01602.i, %do.end295.i ], [ %usniffer_req.0.off01602.i, %if.then248.i ], [ %usniffer_req.0.off01602.i, %if.else255.i ], [ %usniffer_req.0.off01602.i, %if.end234.i ], [ %usniffer_req.0.off01602.i, %land.rhs.i.i.sw.epilog.i522_crit_edge ], [ %usniffer_req.0.off01602.i, %for.body.i1452.i.sw.epilog.i522_crit_edge ], [ %usniffer_req.0.off01602.i, %if.end10.i.i ], [ %usniffer_req.0.off01602.i, %if.then198.i ], [ %usniffer_req.0.off01602.i, %if.else209.i.sw.epilog.i522_crit_edge ], [ %usniffer_req.0.off01602.i, %iwl_store_ucode_sec.exit1447.i ], [ %usniffer_req.0.off01602.i, %iwl_store_ucode_sec.exit1429.i ], [ %usniffer_req.0.off01602.i, %iwl_store_ucode_sec.exit1411.i ], [ %usniffer_req.0.off01602.i, %if.end164.i ], [ %usniffer_req.0.off01602.i, %iwl_set_default_calib.exit.thread.i ], [ %usniffer_req.0.off01602.i, %iwl_store_ucode_sec.exit1390.i ], [ %usniffer_req.0.off01602.i, %iwl_store_ucode_sec.exit1372.i ], [ %usniffer_req.0.off01602.i, %iwl_store_ucode_sec.exit.i ], [ %usniffer_req.0.off01602.i, %if.end139.i ], [ %usniffer_req.0.off01602.i, %set_sec_offset.exit1350.i ], [ %usniffer_req.0.off01602.i, %set_sec_offset.exit1315.i ], [ %usniffer_req.0.off01602.i, %if.end132.i ], [ %usniffer_req.0.off01602.i, %if.end127.i ], [ %usniffer_req.0.off01602.i, %if.end122.i ], [ %usniffer_req.0.off01602.i, %if.end117.i ], [ %usniffer_req.0.off01602.i, %if.end112.i ], [ %usniffer_req.0.off01602.i, %if.end107.i ], [ %usniffer_req.0.off01602.i, %if.end102.i ], [ %usniffer_req.0.off01602.i, %do.end.i1266.i ], [ %usniffer_req.0.off01602.i, %do.end.i.i ], [ %usniffer_req.0.off01602.i, %if.end88.i ], [ %usniffer_req.0.off01602.i, %if.end81.i ], [ %usniffer_req.0.off01602.i, %if.end76.i518 ], [ %usniffer_req.0.off01602.i, %do.end69.i ], [ %usniffer_req.0.off01602.i, %set_sec_offset.exit1260.i ], [ %usniffer_req.0.off01602.i, %set_sec_offset.exit1225.i ], [ %usniffer_req.0.off01602.i, %set_sec_offset.exit1190.i ], [ %usniffer_req.0.off01602.i, %set_sec_offset.exit.i517 ], [ %usniffer_req.0.off01602.i, %for.inc.i.i.sw.epilog.i522_crit_edge ], [ %usniffer_req.0.off01602.i, %for.inc.i1279.i.sw.epilog.i522_crit_edge ]
  %cmp43.i = icmp ugt i32 %sub58.i, 7
  br i1 %cmp43.i, label %sw.epilog.i522.while.body.i_crit_edge, label %while.end.i

sw.epilog.i522.while.body.i_crit_edge:            ; preds = %sw.epilog.i522
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.end.i:                                      ; preds = %sw.epilog.i522
  %arrayidx.i.i1500.i = getelementptr %struct.iwl_drv, ptr %context, i32 0, i32 1, i32 5, i32 8, i32 2
  %841 = ptrtoint ptr %arrayidx.i.i1500.i to i32
  call void @__asan_load4_noabort(i32 %841)
  %842 = load volatile i32, ptr %arrayidx.i.i1500.i, align 4
  %843 = and i32 %842, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %843)
  %tobool.i.i = icmp eq i32 %843, 0
  %brmerge.i.not = select i1 %tobool.i.i, i1 %usniffer_req.3.off0.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %usniffer_images.1)
  %tobool695.not.i = icmp eq i8 %usniffer_images.1, 0
  %or.cond543 = select i1 %brmerge.i.not, i1 %tobool695.not.i, i1 false
  br i1 %or.cond543, label %do.end700.i, label %while.end.i.if.end704.i_crit_edge

while.end.i.if.end704.i_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end704.i

do.end700.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %844 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %844)
  %845 = load ptr, ptr %dev, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %845, i32 noundef 0, ptr noundef nonnull @.str.51) #11
  br label %iwl_parse_tlv_firmware.exit

if.end704.i:                                      ; preds = %while.end.i.if.end704.i_crit_edge, %while.end.thread.i
  %data1.0.lcssa1672.i = phi ptr [ %data41.i, %while.end.thread.i ], [ %add.ptr.i503, %while.end.i.if.end704.i_crit_edge ]
  %len.0.lcssa1671.i = phi i32 [ %sub.i, %while.end.thread.i ], [ %sub58.i, %while.end.i.if.end704.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0.lcssa1671.i)
  %tobool705.not.i = icmp eq i32 %len.0.lcssa1671.i, 0
  br i1 %tobool705.not.i, label %if.end704.i.iwl_parse_tlv_firmware.exit_crit_edge, label %do.end710.i

if.end704.i.iwl_parse_tlv_firmware.exit_crit_edge: ; preds = %if.end704.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_parse_tlv_firmware.exit

do.end710.i:                                      ; preds = %if.end704.i
  %846 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %846)
  %847 = load ptr, ptr %dev, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %847, i32 noundef 0, ptr noundef nonnull @.str.52, i32 noundef %len.0.lcssa1671.i) #11
  %848 = load i32, ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 8), align 4
  %and.i1501.i = and i32 %848, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1501.i)
  %tobool.i1502.not.i = icmp eq i32 %and.i1501.i, 0
  br i1 %tobool.i1502.not.i, label %do.end710.i.iwl_parse_tlv_firmware.exit_crit_edge, label %if.then716.i

do.end710.i.iwl_parse_tlv_firmware.exit_crit_edge: ; preds = %do.end710.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_parse_tlv_firmware.exit

if.then716.i:                                     ; preds = %do.end710.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @print_hex_dump(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %data1.0.lcssa1672.i, i32 noundef %len.0.lcssa1671.i, i1 noundef zeroext true) #11
  br label %iwl_parse_tlv_firmware.exit

do.end724.i:                                      ; preds = %sw.bb584.i.do.end724.i_crit_edge, %sw.bb567.i.do.end724.i_crit_edge, %sw.bb548.i.do.end724.i_crit_edge, %sw.bb532.i.do.end724.i_crit_edge, %sw.bb525.i.do.end724.i_crit_edge, %sw.bb489.i.do.end724.i_crit_edge, %sw.bb446.i.do.end724.i_crit_edge, %sw.bb236.i.do.end724.i_crit_edge, %sw.bb230.i.do.end724.i_crit_edge, %lor.lhs.false.i.i.do.end724.i_crit_edge, %sw.bb224.i.do.end724.i_crit_edge, %sw.bb190.i.do.end724.i_crit_edge, %sw.bb161.i.do.end724.i_crit_edge, %sw.bb153.i.do.end724.i_crit_edge, %sw.bb136.i.do.end724.i_crit_edge, %sw.bb129.i.do.end724.i_crit_edge, %sw.bb124.i.do.end724.i_crit_edge, %sw.bb119.i.do.end724.i_crit_edge, %sw.bb114.i.do.end724.i_crit_edge, %sw.bb109.i.do.end724.i_crit_edge, %sw.bb104.i.do.end724.i_crit_edge, %sw.bb99.i.do.end724.i_crit_edge, %sw.bb95.i.do.end724.i_crit_edge, %sw.bb91.i.do.end724.i_crit_edge, %sw.bb82.i.do.end724.i_crit_edge, %sw.bb78.i.do.end724.i_crit_edge, %sw.bb73.i.do.end724.i_crit_edge
  %849 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %849)
  %850 = load ptr, ptr %dev, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %850, i32 noundef 0, ptr noundef nonnull @.str.55, i32 noundef %253, i32 noundef %250) #11
  br label %do.body728.i

do.body728.i:                                     ; preds = %do.end724.i, %do.end560.i, %iwl_set_default_calib.exit.i
  %851 = load i32, ptr getelementptr inbounds (%struct.iwl_mod_params, ptr @iwlwifi_mod_params, i32 0, i32 8), align 4
  %and.i1503.i = and i32 %851, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1503.i)
  %tobool.i1504.not.i = icmp eq i32 %and.i1503.i, 0
  br i1 %tobool.i1504.not.i, label %do.body728.i.iwl_parse_tlv_firmware.exit_crit_edge, label %if.then730.i

do.body728.i.iwl_parse_tlv_firmware.exit_crit_edge: ; preds = %do.body728.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %iwl_parse_tlv_firmware.exit

if.then730.i:                                     ; preds = %do.body728.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @print_hex_dump(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %data45.i, i32 noundef %250, i1 noundef zeroext true) #11
  br label %iwl_parse_tlv_firmware.exit

iwl_parse_tlv_firmware.exit:                      ; preds = %if.then730.i, %do.body728.i.iwl_parse_tlv_firmware.exit_crit_edge, %if.then716.i, %do.end710.i.iwl_parse_tlv_firmware.exit_crit_edge, %if.end704.i.iwl_parse_tlv_firmware.exit_crit_edge, %do.end700.i, %if.end673.i.iwl_parse_tlv_firmware.exit_crit_edge, %if.end654.i.iwl_parse_tlv_firmware.exit_crit_edge, %do.end639.i, %sw.bb516.i.iwl_parse_tlv_firmware.exit_crit_edge, %do.end498.i.iwl_parse_tlv_firmware.exit_crit_edge, %do.end476.i, %do.end465.i, %do.end218.i, %do.end52.i, %do.end10.i, %do.end.i489
  %retval.3.i = phi i32 [ -22, %do.end.i489 ], [ -22, %do.end10.i ], [ -22, %do.end52.i ], [ -22, %do.end639.i ], [ -22, %do.end465.i ], [ -22, %do.end476.i ], [ -22, %do.end218.i ], [ -22, %do.end700.i ], [ -22, %if.then716.i ], [ -22, %do.end710.i.iwl_parse_tlv_firmware.exit_crit_edge ], [ 0, %if.end704.i.iwl_parse_tlv_firmware.exit_crit_edge ], [ -22, %if.then730.i ], [ -22, %do.body728.i.iwl_parse_tlv_firmware.exit_crit_edge ], [ -12, %if.end673.i.iwl_parse_tlv_firmware.exit_crit_edge ], [ -12, %if.end654.i.iwl_parse_tlv_firmware.exit_crit_edge ], [ -12, %sw.bb516.i.iwl_parse_tlv_firmware.exit_crit_edge ], [ -12, %do.end498.i.iwl_parse_tlv_firmware.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 25, ptr nonnull %buildstr.i485) #11
  br label %if.end30

if.end30:                                         ; preds = %iwl_parse_tlv_firmware.exit, %iwl_parse_v1_v2_firmware.exit
  %err.0 = phi i32 [ %retval.0.i, %iwl_parse_v1_v2_firmware.exit ], [ %retval.3.i, %iwl_parse_tlv_firmware.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool31.not = icmp eq i32 %err.0, 0
  br i1 %tobool31.not, label %if.end33, label %if.end30.try_again_crit_edge

if.end30.try_again_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %try_again

if.end33:                                         ; preds = %if.end30
  %_api.i = getelementptr inbounds %struct.iwl_drv, ptr %context, i32 0, i32 1, i32 5, i32 7
  %852 = ptrtoint ptr %_api.i to i32
  call void @__asan_load4_noabort(i32 %852)
  %853 = load volatile i32, ptr %_api.i, align 4
  %854 = and i32 %853, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %854)
  %tobool.i.not = icmp eq i32 %854, 0
  %855 = ptrtoint ptr %fw1 to i32
  call void @__asan_load4_noabort(i32 %855)
  %856 = load i32, ptr %fw1, align 4
  %and = lshr i32 %856, 8
  %shr = and i32 %and, 255
  %api_ver.0 = select i1 %tobool.i.not, i32 %shr, i32 %856
  call void @__sanitizer_cov_trace_cmp4(i32 %api_ver.0, i32 %conv4)
  %cmp43 = icmp ult i32 %api_ver.0, %conv4
  call void @__sanitizer_cov_trace_cmp4(i32 %api_ver.0, i32 %conv)
  %cmp45 = icmp ugt i32 %api_ver.0, %conv
  %or.cond = select i1 %cmp43, i1 true, i1 %cmp45
  br i1 %or.cond, label %do.end51, label %if.end55

do.end51:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  %857 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %857)
  %858 = load ptr, ptr %dev, align 4
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %858, i32 noundef 0, ptr noundef nonnull @.str.14, i32 noundef %conv, i32 noundef %api_ver.0) #11
  br label %try_again

if.end55:                                         ; preds = %if.end33
  %type = getelementptr inbounds %struct.iwl_drv, ptr %context, i32 0, i32 1, i32 17
  %859 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %859)
  %860 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %860)
  %cmp56 = icmp eq i32 %860, 0
  br i1 %cmp56, label %land.lhs.true, label %if.end55.for.body.preheader_crit_edge

if.end55.for.body.preheader_crit_edge:            ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.preheader

land.lhs.true:                                    ; preds = %if.end55
  %861 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %861)
  %862 = load ptr, ptr %trans, align 4
  %cfg59 = getelementptr inbounds %struct.iwl_trans, ptr %862, i32 0, i32 4
  %863 = ptrtoint ptr %cfg59 to i32
  call void @__asan_load4_noabort(i32 %863)
  %864 = load ptr, ptr %cfg59, align 8
  %call60 = call fastcc i32 @validate_sec_sizes(ptr noundef %context, ptr noundef nonnull %call7.i.i, ptr noundef %864)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.for.body.preheader_crit_edge, label %land.lhs.true.try_again_crit_edge

land.lhs.true.try_again_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %try_again

land.lhs.true.for.body.preheader_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.preheader

for.body.preheader:                               ; preds = %land.lhs.true.for.body.preheader_crit_edge, %if.end55.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0604 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %sec_counter.i = getelementptr [4 x %struct.fw_img_parsing], ptr %call7.i.i, i32 0, i32 %i.0604, i32 1
  %865 = ptrtoint ptr %sec_counter.i to i32
  call void @__asan_load4_noabort(i32 %865)
  %866 = load i32, ptr %sec_counter.i, align 4
  %867 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %866, i32 12) #11
  %868 = extractvalue { i32, i1 } %867, 1
  br i1 %868, label %for.body.out_free_fw_crit_edge, label %if.end7.i.i.i, !prof !286

for.body.out_free_fw_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free_fw

if.end7.i.i.i:                                    ; preds = %for.body
  %869 = extractvalue { i32, i1 } %867, 0
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %869, i32 noundef 3520) #18
  %tobool.not.i524 = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i524, label %if.end7.i.i.i.out_free_fw_crit_edge, label %if.end.i526

if.end7.i.i.i.out_free_fw_crit_edge:              ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free_fw

if.end.i526:                                      ; preds = %if.end7.i.i.i
  %arrayidx2.i = getelementptr %struct.iwl_drv, ptr %context, i32 0, i32 1, i32 2, i32 %i.0604
  %870 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %870)
  store ptr %call8.i.i.i, ptr %arrayidx2.i, align 4
  %871 = ptrtoint ptr %sec_counter.i to i32
  call void @__asan_load4_noabort(i32 %871)
  %872 = load i32, ptr %sec_counter.i, align 4
  %num_sec.i = getelementptr %struct.iwl_drv, ptr %context, i32 0, i32 1, i32 2, i32 %i.0604, i32 1
  %873 = ptrtoint ptr %num_sec.i to i32
  call void @__asan_store4_noabort(i32 %873)
  store i32 %872, ptr %num_sec.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %872)
  %cmp43.i525 = icmp sgt i32 %872, 0
  br i1 %cmp43.i525, label %for.body.lr.ph.i, label %if.end.i526.for.inc_crit_edge

if.end.i526.for.inc_crit_edge:                    ; preds = %if.end.i526
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.body.lr.ph.i:                                 ; preds = %if.end.i526
  %arrayidx.i.i527 = getelementptr [4 x %struct.fw_img_parsing], ptr %call7.i.i, i32 0, i32 %i.0604
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.044.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i534, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx13.i = getelementptr %struct.fw_desc, ptr %call8.i.i.i, i32 %i.044.i
  %874 = ptrtoint ptr %arrayidx.i.i527 to i32
  call void @__asan_load4_noabort(i32 %874)
  %875 = load ptr, ptr %arrayidx.i.i527, align 8
  %arrayidx2.i.i528 = getelementptr %struct.fw_sec, ptr %875, i32 %i.044.i
  %876 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %876)
  store ptr null, ptr %arrayidx13.i, align 4
  %tobool.not.i.i529 = icmp eq ptr %arrayidx2.i.i528, null
  br i1 %tobool.not.i.i529, label %for.body.i.out_free_fw_crit_edge, label %lor.lhs.false.i.i531

for.body.i.out_free_fw_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free_fw

lor.lhs.false.i.i531:                             ; preds = %for.body.i
  %size.i.i530 = getelementptr %struct.fw_sec, ptr %875, i32 %i.044.i, i32 1
  %877 = ptrtoint ptr %size.i.i530 to i32
  call void @__asan_load4_noabort(i32 %877)
  %878 = load i32, ptr %size.i.i530, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %878)
  %tobool2.not.i.i = icmp eq i32 %878, 0
  br i1 %tobool2.not.i.i, label %lor.lhs.false.i.i531.out_free_fw_crit_edge, label %if.end.i.i

lor.lhs.false.i.i531.out_free_fw_crit_edge:       ; preds = %lor.lhs.false.i.i531
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free_fw

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i531
  %call.i.i532 = call noalias ptr @vmalloc(i32 noundef %878) #18
  %tobool4.not.i.i = icmp eq ptr %call.i.i532, null
  br i1 %tobool4.not.i.i, label %if.end.i.i.out_free_fw_crit_edge, label %for.inc.i

if.end.i.i.out_free_fw_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free_fw

for.inc.i:                                        ; preds = %if.end.i.i
  %879 = ptrtoint ptr %size.i.i530 to i32
  call void @__asan_load4_noabort(i32 %879)
  %880 = load i32, ptr %size.i.i530, align 4
  %len.i.i = getelementptr %struct.fw_desc, ptr %call8.i.i.i, i32 %i.044.i, i32 1
  %881 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %881)
  store i32 %880, ptr %len.i.i, align 4
  %offset.i.i533 = getelementptr %struct.fw_sec, ptr %875, i32 %i.044.i, i32 2
  %882 = ptrtoint ptr %offset.i.i533 to i32
  call void @__asan_load4_noabort(i32 %882)
  %883 = load i32, ptr %offset.i.i533, align 4
  %offset8.i.i = getelementptr %struct.fw_desc, ptr %call8.i.i.i, i32 %i.044.i, i32 2
  %884 = ptrtoint ptr %offset8.i.i to i32
  call void @__asan_store4_noabort(i32 %884)
  store i32 %883, ptr %offset8.i.i, align 4
  %885 = ptrtoint ptr %arrayidx2.i.i528 to i32
  call void @__asan_load4_noabort(i32 %885)
  %886 = load ptr, ptr %arrayidx2.i.i528, align 4
  %887 = call ptr @memcpy(ptr %call.i.i532, ptr %886, i32 %880)
  %888 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %888)
  store ptr %call.i.i532, ptr %arrayidx13.i, align 4
  %inc.i534 = add nuw nsw i32 %i.044.i, 1
  %889 = ptrtoint ptr %sec_counter.i to i32
  call void @__asan_load4_noabort(i32 %889)
  %890 = load i32, ptr %sec_counter.i, align 4
  %cmp.i535 = icmp slt i32 %inc.i534, %890
  br i1 %cmp.i535, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.inc_crit_edge

for.inc.i.for.inc_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc:                                          ; preds = %for.inc.i.for.inc_crit_edge, %if.end.i526.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0604, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  %dbg_dest_tlv_init = getelementptr inbounds %struct.iwl_firmware_pieces, ptr %call7.i.i, i32 0, i32 7
  %891 = ptrtoint ptr %dbg_dest_tlv_init to i32
  call void @__asan_load1_noabort(i32 %891)
  %892 = load i8, ptr %dbg_dest_tlv_init, align 8, !range !284
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %892)
  %tobool70.not = icmp eq i8 %892, 0
  br i1 %tobool70.not, label %for.end.for.body115.preheader_crit_edge, label %if.then71

for.end.for.body115.preheader_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body115.preheader

if.then71:                                        ; preds = %for.end
  %n_dest_reg = getelementptr inbounds %struct.iwl_drv, ptr %context, i32 0, i32 1, i32 20, i32 1
  %893 = ptrtoint ptr %n_dest_reg to i32
  call void @__asan_load1_noabort(i32 %893)
  %894 = load i8, ptr %n_dest_reg, align 4
  %conv74 = zext i8 %894 to i32
  %mul = mul nuw nsw i32 %conv74, 12
  %add = add nuw nsw i32 %mul, 22
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #18
  %895 = ptrtoint ptr %dbg to i32
  call void @__asan_store4_noabort(i32 %895)
  store ptr %call9.i, ptr %dbg, align 4
  %tobool81.not = icmp eq ptr %call9.i, null
  br i1 %tobool81.not, label %if.then71.out_free_fw_crit_edge, label %if.end83

if.then71.out_free_fw_crit_edge:                  ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free_fw

if.end83:                                         ; preds = %if.then71
  %dbg_dest_ver = getelementptr inbounds %struct.iwl_firmware_pieces, ptr %call7.i.i, i32 0, i32 8
  %896 = ptrtoint ptr %dbg_dest_ver to i32
  call void @__asan_load4_noabort(i32 %896)
  %897 = load ptr, ptr %dbg_dest_ver, align 4
  %898 = ptrtoint ptr %897 to i32
  call void @__asan_load1_noabort(i32 %898)
  %899 = load i8, ptr %897, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %899)
  %cmp85 = icmp eq i8 %899, 0
  %900 = getelementptr inbounds %struct.iwl_firmware_pieces, ptr %call7.i.i, i32 0, i32 9
  %901 = ptrtoint ptr %900 to i32
  call void @__asan_load4_noabort(i32 %901)
  %902 = load ptr, ptr %900, align 8
  br i1 %cmp85, label %if.then87, label %if.else91

if.then87:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #13
  %903 = call ptr @memcpy(ptr %call9.i, ptr %902, i32 %add)
  br label %for.body115.preheader

if.else91:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #13
  %904 = ptrtoint ptr %902 to i32
  call void @__asan_load1_noabort(i32 %904)
  %905 = load i8, ptr %902, align 1
  %906 = ptrtoint ptr %call9.i to i32
  call void @__asan_store1_noabort(i32 %906)
  store i8 %905, ptr %call9.i, align 128
  %monitor_mode = getelementptr inbounds %struct.iwl_fw_dbg_dest_tlv, ptr %902, i32 0, i32 1
  %907 = ptrtoint ptr %monitor_mode to i32
  call void @__asan_load1_noabort(i32 %907)
  %908 = load i8, ptr %monitor_mode, align 1
  %monitor_mode97 = getelementptr inbounds %struct.iwl_fw_dbg_dest_tlv_v1, ptr %call9.i, i32 0, i32 1
  %909 = ptrtoint ptr %monitor_mode97 to i32
  call void @__asan_store1_noabort(i32 %909)
  store i8 %908, ptr %monitor_mode97, align 1
  %size_power = getelementptr inbounds %struct.iwl_fw_dbg_dest_tlv, ptr %902, i32 0, i32 2
  %910 = ptrtoint ptr %size_power to i32
  call void @__asan_load1_noabort(i32 %910)
  %911 = load i8, ptr %size_power, align 1
  %size_power98 = getelementptr inbounds %struct.iwl_fw_dbg_dest_tlv_v1, ptr %call9.i, i32 0, i32 2
  %912 = ptrtoint ptr %size_power98 to i32
  call void @__asan_store1_noabort(i32 %912)
  store i8 %911, ptr %size_power98, align 2
  %wrap_count = getelementptr inbounds %struct.iwl_fw_dbg_dest_tlv, ptr %902, i32 0, i32 6
  %913 = ptrtoint ptr %wrap_count to i32
  call void @__asan_loadN_noabort(i32 %913, i32 4)
  %914 = load i32, ptr %wrap_count, align 1
  %wrap_count99 = getelementptr inbounds %struct.iwl_fw_dbg_dest_tlv_v1, ptr %call9.i, i32 0, i32 7
  %915 = ptrtoint ptr %wrap_count99 to i32
  call void @__asan_store4_noabort(i32 %915)
  store i32 %914, ptr %wrap_count99, align 16
  %write_ptr_reg = getelementptr inbounds %struct.iwl_fw_dbg_dest_tlv, ptr %902, i32 0, i32 5
  %916 = ptrtoint ptr %write_ptr_reg to i32
  call void @__asan_loadN_noabort(i32 %916, i32 4)
  %917 = load i32, ptr %write_ptr_reg, align 1
  %write_ptr_reg100 = getelementptr inbounds %struct.iwl_fw_dbg_dest_tlv_v1, ptr %call9.i, i32 0, i32 6
  %918 = ptrtoint ptr %write_ptr_reg100 to i32
  call void @__asan_store4_noabort(i32 %918)
  store i32 %917, ptr %write_ptr_reg100, align 4
  %base_shift = getelementptr inbounds %struct.iwl_fw_dbg_dest_tlv, ptr %902, i32 0, i32 7
  %919 = ptrtoint ptr %base_shift to i32
  call void @__asan_load1_noabort(i32 %919)
  %920 = load i8, ptr %base_shift, align 1
  %base_shift101 = getelementptr inbounds %struct.iwl_fw_dbg_dest_tlv_v1, ptr %call9.i, i32 0, i32 8
  %921 = ptrtoint ptr %base_shift101 to i32
  call void @__asan_store1_noabort(i32 %921)
  store i8 %920, ptr %base_shift101, align 4
  %reg_ops = getelementptr inbounds %struct.iwl_fw_dbg_dest_tlv_v1, ptr %call9.i, i32 0, i32 10
  %reg_ops103 = getelementptr inbounds %struct.iwl_fw_dbg_dest_tlv, ptr %902, i32 0, i32 9
  %922 = ptrtoint ptr %n_dest_reg to i32
  call void @__asan_load1_noabort(i32 %922)
  %923 = load i8, ptr %n_dest_reg, align 4
  %conv108 = zext i8 %923 to i32
  %mul109 = mul nuw nsw i32 %conv108, 12
  %924 = call ptr @memcpy(ptr %reg_ops, ptr %reg_ops103, i32 %mul109)
  %cfg_reg = getelementptr inbounds %struct.iwl_fw_dbg_dest_tlv, ptr %902, i32 0, i32 4
  %925 = ptrtoint ptr %cfg_reg to i32
  call void @__asan_loadN_noabort(i32 %925, i32 4)
  %926 = load i32, ptr %cfg_reg, align 1
  %base_reg = getelementptr inbounds %struct.iwl_fw_dbg_dest_tlv_v1, ptr %call9.i, i32 0, i32 4
  %927 = ptrtoint ptr %base_reg to i32
  call void @__asan_store4_noabort(i32 %927)
  store i32 %926, ptr %base_reg, align 4
  %size_shift = getelementptr inbounds %struct.iwl_fw_dbg_dest_tlv, ptr %902, i32 0, i32 8
  %928 = ptrtoint ptr %size_shift to i32
  call void @__asan_load1_noabort(i32 %928)
  %929 = load i8, ptr %size_shift, align 1
  %end_shift = getelementptr inbounds %struct.iwl_fw_dbg_dest_tlv_v1, ptr %call9.i, i32 0, i32 9
  %930 = ptrtoint ptr %end_shift to i32
  call void @__asan_store1_noabort(i32 %930)
  store i8 %929, ptr %end_shift, align 1
  br label %for.body115.preheader

for.body115.preheader:                            ; preds = %if.else91, %if.then87, %for.end.for.body115.preheader_crit_edge
  br label %for.body115

for.body115:                                      ; preds = %for.inc133.for.body115_crit_edge, %for.body115.preheader
  %i.1606 = phi i32 [ %inc134, %for.inc133.for.body115_crit_edge ], [ 0, %for.body115.preheader ]
  %arrayidx = getelementptr %struct.iwl_firmware_pieces, ptr %call7.i.i, i32 0, i32 10, i32 %i.1606
  %931 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %931)
  %932 = load ptr, ptr %arrayidx, align 4
  %tobool116.not = icmp eq ptr %932, null
  br i1 %tobool116.not, label %for.body115.for.inc133_crit_edge, label %if.then117

for.body115.for.inc133_crit_edge:                 ; preds = %for.body115
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc133

if.then117:                                       ; preds = %for.body115
  %arrayidx120 = getelementptr %struct.iwl_firmware_pieces, ptr %call7.i.i, i32 0, i32 11, i32 %i.1606
  %933 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load4_noabort(i32 %933)
  %934 = load i32, ptr %arrayidx120, align 4
  %call121 = call ptr @kmemdup(ptr noundef nonnull %932, i32 noundef %934, i32 noundef 3264) #11
  %arrayidx124 = getelementptr %struct.iwl_drv, ptr %context, i32 0, i32 1, i32 20, i32 2, i32 %i.1606
  %935 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_store4_noabort(i32 %935)
  store ptr %call121, ptr %arrayidx124, align 4
  %tobool129.not = icmp eq ptr %call121, null
  br i1 %tobool129.not, label %if.then117.out_free_fw_crit_edge, label %if.then117.for.inc133_crit_edge

if.then117.for.inc133_crit_edge:                  ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc133

if.then117.out_free_fw_crit_edge:                 ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free_fw

for.inc133:                                       ; preds = %if.then117.for.inc133_crit_edge, %for.body115.for.inc133_crit_edge
  %inc134 = add nuw nsw i32 %i.1606, 1
  %exitcond671.not = icmp eq i32 %inc134, 32
  br i1 %exitcond671.not, label %for.end135, label %for.inc133.for.body115_crit_edge

for.inc133.for.body115_crit_edge:                 ; preds = %for.inc133
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body115

for.end135:                                       ; preds = %for.inc133
  %936 = call ptr @memset(ptr %trigger_tlv_sz, i32 255, i32 68)
  %arrayidx136 = getelementptr inbounds [17 x i32], ptr %trigger_tlv_sz, i32 0, i32 3
  %937 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_store4_noabort(i32 %937)
  store i32 32, ptr %arrayidx136, align 4
  %arrayidx137 = getelementptr inbounds [17 x i32], ptr %trigger_tlv_sz, i32 0, i32 4
  %938 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_store4_noabort(i32 %938)
  store i32 0, ptr %arrayidx137, align 4
  %arrayidx138 = getelementptr inbounds [17 x i32], ptr %trigger_tlv_sz, i32 0, i32 5
  %939 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_store4_noabort(i32 %939)
  store i32 32, ptr %arrayidx138, align 4
  %arrayidx139 = getelementptr inbounds [17 x i32], ptr %trigger_tlv_sz, i32 0, i32 6
  %940 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_store4_noabort(i32 %940)
  store i32 16, ptr %arrayidx139, align 4
  %arrayidx140 = getelementptr inbounds [17 x i32], ptr %trigger_tlv_sz, i32 0, i32 7
  %941 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_store4_noabort(i32 %941)
  store i32 16, ptr %arrayidx140, align 4
  %arrayidx141 = getelementptr inbounds [17 x i32], ptr %trigger_tlv_sz, i32 0, i32 8
  %942 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_store4_noabort(i32 %942)
  store i32 4, ptr %arrayidx141, align 4
  %arrayidx142 = getelementptr inbounds [17 x i32], ptr %trigger_tlv_sz, i32 0, i32 9
  %943 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_store4_noabort(i32 %943)
  store i32 48, ptr %arrayidx142, align 4
  %arrayidx143 = getelementptr inbounds [17 x i32], ptr %trigger_tlv_sz, i32 0, i32 10
  %944 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_store4_noabort(i32 %944)
  store i32 192, ptr %arrayidx143, align 4
  %arrayidx144 = getelementptr inbounds [17 x i32], ptr %trigger_tlv_sz, i32 0, i32 11
  %945 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_store4_noabort(i32 %945)
  store i32 14, ptr %arrayidx144, align 4
  %arrayidx145 = getelementptr inbounds [17 x i32], ptr %trigger_tlv_sz, i32 0, i32 13
  %946 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_store4_noabort(i32 %946)
  store i32 12, ptr %arrayidx145, align 4
  br label %for.body149

for.body149:                                      ; preds = %for.inc208.for.body149_crit_edge, %for.end135
  %i.2608 = phi i32 [ 0, %for.end135 ], [ %inc209, %for.inc208.for.body149_crit_edge ]
  %arrayidx150 = getelementptr %struct.iwl_firmware_pieces, ptr %call7.i.i, i32 0, i32 12, i32 %i.2608
  %947 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_load4_noabort(i32 %947)
  %948 = load ptr, ptr %arrayidx150, align 4
  %tobool151.not = icmp eq ptr %948, null
  br i1 %tobool151.not, label %for.body149.for.inc208_crit_edge, label %if.then152

for.body149.for.inc208_crit_edge:                 ; preds = %for.body149
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc208

if.then152:                                       ; preds = %for.body149
  %arrayidx153 = getelementptr %struct.iwl_firmware_pieces, ptr %call7.i.i, i32 0, i32 13, i32 %i.2608
  %949 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_load4_noabort(i32 %949)
  %950 = load i32, ptr %arrayidx153, align 4
  %arrayidx154 = getelementptr [17 x i32], ptr %trigger_tlv_sz, i32 0, i32 %i.2608
  %951 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_load4_noabort(i32 %951)
  %952 = load i32, ptr %arrayidx154, align 4
  %add155 = add i32 %952, 28
  call void @__sanitizer_cov_trace_cmp4(i32 %950, i32 %add155)
  %cmp156 = icmp ult i32 %950, %add155
  br i1 %cmp156, label %do.end169, label %if.end184.critedge, !prof !286

do.end169:                                        ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 1597, i32 noundef 9, ptr noundef null) #11
  br label %out_free_fw

if.end184.critedge:                               ; preds = %if.then152
  %arrayidx189 = getelementptr %struct.iwl_drv, ptr %context, i32 0, i32 1, i32 20, i32 4, i32 %i.2608
  %953 = ptrtoint ptr %arrayidx189 to i32
  call void @__asan_store4_noabort(i32 %953)
  store i32 %950, ptr %arrayidx189, align 4
  %call196 = call ptr @kmemdup(ptr noundef nonnull %948, i32 noundef %950, i32 noundef 3264) #11
  %arrayidx199 = getelementptr %struct.iwl_drv, ptr %context, i32 0, i32 1, i32 20, i32 3, i32 %i.2608
  %954 = ptrtoint ptr %arrayidx199 to i32
  call void @__asan_store4_noabort(i32 %954)
  store ptr %call196, ptr %arrayidx199, align 4
  %tobool204.not = icmp eq ptr %call196, null
  br i1 %tobool204.not, label %if.end184.critedge.out_free_fw_crit_edge, label %if.end184.critedge.for.inc208_crit_edge

if.end184.critedge.for.inc208_crit_edge:          ; preds = %if.end184.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc208

if.end184.critedge.out_free_fw_crit_edge:         ; preds = %if.end184.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free_fw

for.inc208:                                       ; preds = %if.end184.critedge.for.inc208_crit_edge, %for.body149.for.inc208_crit_edge
  %inc209 = add nuw nsw i32 %i.2608, 1
  %exitcond672.not = icmp eq i32 %inc209, 17
  br i1 %exitcond672.not, label %for.end210, label %for.inc208.for.body149_crit_edge

for.inc208.for.body149_crit_edge:                 ; preds = %for.inc208
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body149

for.end210:                                       ; preds = %for.inc208
  %dbg_mem_tlv = getelementptr inbounds %struct.iwl_firmware_pieces, ptr %call7.i.i, i32 0, i32 14
  %955 = ptrtoint ptr %dbg_mem_tlv to i32
  call void @__asan_load4_noabort(i32 %955)
  %956 = load ptr, ptr %dbg_mem_tlv, align 4
  %mem_tlv = getelementptr inbounds %struct.iwl_drv, ptr %context, i32 0, i32 1, i32 20, i32 5
  %957 = ptrtoint ptr %mem_tlv to i32
  call void @__asan_store4_noabort(i32 %957)
  store ptr %956, ptr %mem_tlv, align 4
  store ptr null, ptr %dbg_mem_tlv, align 4
  %n_mem_tlv = getelementptr inbounds %struct.iwl_firmware_pieces, ptr %call7.i.i, i32 0, i32 15
  %958 = ptrtoint ptr %n_mem_tlv to i32
  call void @__asan_load4_noabort(i32 %958)
  %959 = load i32, ptr %n_mem_tlv, align 8
  %n_mem_tlv216 = getelementptr inbounds %struct.iwl_drv, ptr %context, i32 0, i32 1, i32 20, i32 6
  %960 = ptrtoint ptr %n_mem_tlv216 to i32
  call void @__asan_store4_noabort(i32 %960)
  store i32 %959, ptr %n_mem_tlv216, align 4
  %init_evtlog_ptr = getelementptr inbounds %struct.iwl_firmware_pieces, ptr %call7.i.i, i32 0, i32 1
  %961 = ptrtoint ptr %init_evtlog_ptr to i32
  call void @__asan_load4_noabort(i32 %961)
  %962 = load i32, ptr %init_evtlog_ptr, align 8
  %init_evtlog_ptr217 = getelementptr inbounds %struct.iwl_drv, ptr %context, i32 0, i32 1, i32 7
  %963 = ptrtoint ptr %init_evtlog_ptr217 to i32
  call void @__asan_store4_noabort(i32 %963)
  store i32 %962, ptr %init_evtlog_ptr217, align 4
  %init_evtlog_size = getelementptr inbounds %struct.iwl_firmware_pieces, ptr %call7.i.i, i32 0, i32 2
  %964 = ptrtoint ptr %init_evtlog_size to i32
  call void @__asan_load4_noabort(i32 %964)
  %965 = load i32, ptr %init_evtlog_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %965)
  %tobool218.not = icmp eq i32 %965, 0
  br i1 %tobool218.not, label %if.else222, label %if.then219

if.then219:                                       ; preds = %for.end210
  call void @__sanitizer_cov_trace_pc() #13
  %sub = add i32 %965, -16
  %div = udiv i32 %sub, 12
  br label %if.end226

if.else222:                                       ; preds = %for.end210
  call void @__sanitizer_cov_trace_pc() #13
  %966 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %966)
  %967 = load ptr, ptr %trans, align 4
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %967, i32 0, i32 3
  %968 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %968)
  %969 = load ptr, ptr %trans_cfg, align 4
  %970 = ptrtoint ptr %969 to i32
  call void @__asan_load4_noabort(i32 %970)
  %971 = load ptr, ptr %969, align 4
  %max_event_log_size = getelementptr inbounds %struct.iwl_base_params, ptr %971, i32 0, i32 2
  %972 = ptrtoint ptr %max_event_log_size to i32
  call void @__asan_load2_noabort(i32 %972)
  %973 = load i16, ptr %max_event_log_size, align 2
  %conv224 = zext i16 %973 to i32
  br label %if.end226

if.end226:                                        ; preds = %if.else222, %if.then219
  %div.sink = phi i32 [ %conv224, %if.else222 ], [ %div, %if.then219 ]
  %974 = getelementptr inbounds %struct.iwl_drv, ptr %context, i32 0, i32 1, i32 8
  %975 = ptrtoint ptr %974 to i32
  call void @__asan_store4_noabort(i32 %975)
  store i32 %div.sink, ptr %974, align 4
  %init_errlog_ptr = getelementptr inbounds %struct.iwl_firmware_pieces, ptr %call7.i.i, i32 0, i32 3
  %976 = ptrtoint ptr %init_errlog_ptr to i32
  call void @__asan_load4_noabort(i32 %976)
  %977 = load i32, ptr %init_errlog_ptr, align 8
  %init_errlog_ptr227 = getelementptr inbounds %struct.iwl_drv, ptr %context, i32 0, i32 1, i32 9
  %978 = ptrtoint ptr %init_errlog_ptr227 to i32
  call void @__asan_store4_noabort(i32 %978)
  store i32 %977, ptr %init_errlog_ptr227, align 4
  %inst_evtlog_ptr = getelementptr inbounds %struct.iwl_firmware_pieces, ptr %call7.i.i, i32 0, i32 4
  %979 = ptrtoint ptr %inst_evtlog_ptr to i32
  call void @__asan_load4_noabort(i32 %979)
  %980 = load i32, ptr %inst_evtlog_ptr, align 4
  %inst_evtlog_ptr228 = getelementptr inbounds %struct.iwl_drv, ptr %context, i32 0, i32 1, i32 10
  %981 = ptrtoint ptr %inst_evtlog_ptr228 to i32
  call void @__asan_store4_noabort(i32 %981)
  store i32 %980, ptr %inst_evtlog_ptr228, align 4
  %inst_evtlog_size = getelementptr inbounds %struct.iwl_firmware_pieces, ptr %call7.i.i, i32 0, i32 5
  %982 = ptrtoint ptr %inst_evtlog_size to i32
  call void @__asan_load4_noabort(i32 %982)
  %983 = load i32, ptr %inst_evtlog_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %983)
  %tobool229.not = icmp eq i32 %983, 0
  br i1 %tobool229.not, label %if.else235, label %if.then230

if.then230:                                       ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #13
  %sub232 = add i32 %983, -16
  %div233 = udiv i32 %sub232, 12
  br label %if.end242

if.else235:                                       ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #13
  %984 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %984)
  %985 = load ptr, ptr %trans, align 4
  %trans_cfg237 = getelementptr inbounds %struct.iwl_trans, ptr %985, i32 0, i32 3
  %986 = ptrtoint ptr %trans_cfg237 to i32
  call void @__asan_load4_noabort(i32 %986)
  %987 = load ptr, ptr %trans_cfg237, align 4
  %988 = ptrtoint ptr %987 to i32
  call void @__asan_load4_noabort(i32 %988)
  %989 = load ptr, ptr %987, align 4
  %max_event_log_size239 = getelementptr inbounds %struct.iwl_base_params, ptr %989, i32 0, i32 2
  %990 = ptrtoint ptr %max_event_log_size239 to i32
  call void @__asan_load2_noabort(i32 %990)
  %991 = load i16, ptr %max_event_log_size239, align 2
  %conv240 = zext i16 %991 to i32
  br label %if.end242

if.end242:                                        ; preds = %if.else235, %if.then230
  %div233.sink = phi i32 [ %conv240, %if.else235 ], [ %div233, %if.then230 ]
  %992 = getelementptr inbounds %struct.iwl_drv, ptr %context, i32 0, i32 1, i32 11
  %993 = ptrtoint ptr %992 to i32
  call void @__asan_store4_noabort(i32 %993)
  store i32 %div233.sink, ptr %992, align 4
  %inst_errlog_ptr = getelementptr inbounds %struct.iwl_firmware_pieces, ptr %call7.i.i, i32 0, i32 6
  %994 = ptrtoint ptr %inst_errlog_ptr to i32
  call void @__asan_load4_noabort(i32 %994)
  %995 = load i32, ptr %inst_errlog_ptr, align 4
  %inst_errlog_ptr243 = getelementptr inbounds %struct.iwl_drv, ptr %context, i32 0, i32 1, i32 12
  %996 = ptrtoint ptr %inst_errlog_ptr243 to i32
  call void @__asan_store4_noabort(i32 %996)
  store i32 %995, ptr %inst_errlog_ptr243, align 4
  %997 = ptrtoint ptr %standard_phy_calibration_size to i32
  call void @__asan_load4_noabort(i32 %997)
  %998 = load i32, ptr %standard_phy_calibration_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 253, i32 %998)
  %cmp246 = icmp ugt i32 %998, 253
  br i1 %cmp246, label %if.then248, label %if.end242.if.end251_crit_edge

if.end242.if.end251_crit_edge:                    ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end251

if.then248:                                       ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #13
  %999 = ptrtoint ptr %standard_phy_calibration_size to i32
  call void @__asan_store4_noabort(i32 %999)
  store i32 19, ptr %standard_phy_calibration_size, align 4
  br label %if.end251

if.end251:                                        ; preds = %if.then248, %if.end242.if.end251_crit_edge
  call void @release_firmware(ptr noundef nonnull %ucode_raw) #11
  call void @mutex_lock_nested(ptr noundef nonnull @iwlwifi_opmode_table_mtx, i32 noundef 0) #11
  %1000 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %1000)
  %1001 = load i32, ptr %type, align 4
  %1002 = zext i32 %1001 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1002, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %1001, label %do.end265 [
    i32 0, label %if.end251.do.end284_crit_edge
    i32 1, label %if.end251.sw.bb280_crit_edge
  ]

if.end251.sw.bb280_crit_edge:                     ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb280

if.end251.do.end284_crit_edge:                    ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end284

do.end265:                                        ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 1654, i32 noundef 9, ptr noundef nonnull @.str.16, i32 noundef %1001) #11
  br label %sw.bb280

sw.bb280:                                         ; preds = %do.end265, %if.end251.sw.bb280_crit_edge
  br label %do.end284

do.end284:                                        ; preds = %sw.bb280, %if.end251.do.end284_crit_edge
  %op.0 = phi ptr [ getelementptr inbounds ([2 x %struct.iwlwifi_opmode_table], ptr @iwlwifi_opmode_table, i32 0, i32 1), %sw.bb280 ], [ @iwlwifi_opmode_table, %if.end251.do.end284_crit_edge ]
  %1003 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1003)
  %1004 = load ptr, ptr %dev, align 4
  %fw_version = getelementptr inbounds %struct.iwl_drv, ptr %context, i32 0, i32 1, i32 1
  %1005 = ptrtoint ptr %op.0 to i32
  call void @__asan_load4_noabort(i32 %1005)
  %1006 = load ptr, ptr %op.0, align 4
  call void (ptr, ptr, ...) @__iwl_info(ptr noundef %1004, ptr noundef nonnull @.str.17, ptr noundef %fw_version, ptr noundef %1006) #11
  %1007 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %1007)
  %1008 = load ptr, ptr %trans, align 4
  %dev291 = getelementptr inbounds %struct.iwl_trans, ptr %1008, i32 0, i32 8
  %1009 = ptrtoint ptr %dev291 to i32
  call void @__asan_load4_noabort(i32 %1009)
  %1010 = load ptr, ptr %dev291, align 8
  call void @iwl_dbg_tlv_load_bin(ptr noundef %1010, ptr noundef %1008) #11
  %drv293 = getelementptr inbounds %struct.iwlwifi_opmode_table, ptr %op.0, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.iwlwifi_opmode_table, ptr %op.0, i32 0, i32 2, i32 1
  %1011 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %1011)
  %1012 = load ptr, ptr %prev.i, align 4
  %call.i.i537 = call zeroext i1 @__list_add_valid(ptr noundef %context, ptr noundef %1012, ptr noundef %drv293) #11
  br i1 %call.i.i537, label %if.end.i.i538, label %do.end284.list_add_tail.exit_crit_edge

do.end284.list_add_tail.exit_crit_edge:           ; preds = %do.end284
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i538:                                    ; preds = %do.end284
  call void @__sanitizer_cov_trace_pc() #13
  %1013 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1013)
  store ptr %context, ptr %prev.i, align 4
  %1014 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %1014)
  store ptr %drv293, ptr %context, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %context, i32 0, i32 1
  %1015 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %1015)
  store ptr %1012, ptr %prev3.i.i, align 4
  %1016 = ptrtoint ptr %1012 to i32
  call void @__asan_store4_noabort(i32 %1016)
  store volatile ptr %context, ptr %1012, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i538, %do.end284.list_add_tail.exit_crit_edge
  %ops = getelementptr inbounds %struct.iwlwifi_opmode_table, ptr %op.0, i32 0, i32 1
  %1017 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1017)
  %1018 = load ptr, ptr %ops, align 4
  %tobool294.not = icmp eq ptr %1018, null
  br i1 %tobool294.not, label %if.then304.critedge, label %if.then295

if.then295:                                       ; preds = %list_add_tail.exit
  %call296 = call fastcc ptr @_iwl_op_mode_start(ptr noundef %context, ptr noundef %op.0)
  %op_mode = getelementptr inbounds %struct.iwl_drv, ptr %context, i32 0, i32 2
  %1019 = ptrtoint ptr %op_mode to i32
  call void @__asan_store4_noabort(i32 %1019)
  store ptr %call296, ptr %op_mode, align 4
  %tobool298.not = icmp eq ptr %call296, null
  call void @mutex_unlock(ptr noundef nonnull @iwlwifi_opmode_table_mtx) #11
  br i1 %tobool298.not, label %if.then295.out_unbind_crit_edge, label %if.end307.critedge

if.then295.out_unbind_crit_edge:                  ; preds = %if.then295
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unbind

if.then304.critedge:                              ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @mutex_unlock(ptr noundef nonnull @iwlwifi_opmode_table_mtx) #11
  %request_firmware_complete.c = getelementptr inbounds %struct.iwl_drv, ptr %context, i32 0, i32 7
  call void @complete(ptr noundef %request_firmware_complete.c) #11
  %1020 = ptrtoint ptr %op.0 to i32
  call void @__asan_load4_noabort(i32 %1020)
  %1021 = load ptr, ptr %op.0, align 4
  %call306 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.18, ptr noundef %1021) #11
  br label %if.end317

if.end307.critedge:                               ; preds = %if.then295
  call void @__sanitizer_cov_trace_pc() #13
  %request_firmware_complete.c480 = getelementptr inbounds %struct.iwl_drv, ptr %context, i32 0, i32 7
  call void @complete(ptr noundef %request_firmware_complete.c480) #11
  br label %if.end317

try_again:                                        ; preds = %land.lhs.true.try_again_crit_edge, %do.end51, %if.end30.try_again_crit_edge, %do.end20, %if.end.try_again_crit_edge
  call void @release_firmware(ptr noundef %ucode_raw) #11
  %call308 = call fastcc i32 @iwl_request_firmware(ptr noundef %context, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call308)
  %tobool309.not = icmp eq i32 %call308, 0
  br i1 %tobool309.not, label %if.then316.critedge, label %try_again.out_unbind_crit_edge

try_again.out_unbind_crit_edge:                   ; preds = %try_again
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unbind

out_free_fw:                                      ; preds = %if.end184.critedge.out_free_fw_crit_edge, %do.end169, %if.then117.out_free_fw_crit_edge, %if.then71.out_free_fw_crit_edge, %if.end.i.i.out_free_fw_crit_edge, %lor.lhs.false.i.i531.out_free_fw_crit_edge, %for.body.i.out_free_fw_crit_edge, %if.end7.i.i.i.out_free_fw_crit_edge, %for.body.out_free_fw_crit_edge, %entry.out_free_fw_crit_edge
  call void @release_firmware(ptr noundef %ucode_raw) #11
  br label %out_unbind

out_unbind:                                       ; preds = %out_free_fw, %try_again.out_unbind_crit_edge, %if.then295.out_unbind_crit_edge
  %request_firmware_complete312 = getelementptr inbounds %struct.iwl_drv, ptr %context, i32 0, i32 7
  call void @complete(ptr noundef %request_firmware_complete312) #11
  %1022 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %1022)
  %1023 = load ptr, ptr %trans, align 4
  %dev314 = getelementptr inbounds %struct.iwl_trans, ptr %1023, i32 0, i32 8
  %1024 = ptrtoint ptr %dev314 to i32
  call void @__asan_load4_noabort(i32 %1024)
  %1025 = load ptr, ptr %dev314, align 8
  call void @device_release_driver(ptr noundef %1025) #11
  br label %if.end317

if.then316.critedge:                              ; preds = %try_again
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @iwl_dealloc_ucode(ptr noundef %context)
  br label %if.end317

if.end317:                                        ; preds = %if.then316.critedge, %out_unbind, %if.end307.critedge, %if.then304.critedge
  br i1 %tobool.not, label %if.end317.if.end329_crit_edge, label %for.body323.preheader

if.end317.if.end329_crit_edge:                    ; preds = %if.end317
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end329

for.body323.preheader:                            ; preds = %if.end317
  call void @__sanitizer_cov_trace_pc() #13
  %1026 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %1026)
  %1027 = load ptr, ptr %call7.i.i, align 8
  call void @kfree(ptr noundef %1027) #11
  %arrayidx324.1 = getelementptr [4 x %struct.fw_img_parsing], ptr %call7.i.i, i32 0, i32 1
  %1028 = ptrtoint ptr %arrayidx324.1 to i32
  call void @__asan_load4_noabort(i32 %1028)
  %1029 = load ptr, ptr %arrayidx324.1, align 8
  call void @kfree(ptr noundef %1029) #11
  %arrayidx324.2 = getelementptr [4 x %struct.fw_img_parsing], ptr %call7.i.i, i32 0, i32 2
  %1030 = ptrtoint ptr %arrayidx324.2 to i32
  call void @__asan_load4_noabort(i32 %1030)
  %1031 = load ptr, ptr %arrayidx324.2, align 8
  call void @kfree(ptr noundef %1031) #11
  %arrayidx324.3 = getelementptr [4 x %struct.fw_img_parsing], ptr %call7.i.i, i32 0, i32 3
  %1032 = ptrtoint ptr %arrayidx324.3 to i32
  call void @__asan_load4_noabort(i32 %1032)
  %1033 = load ptr, ptr %arrayidx324.3, align 8
  call void @kfree(ptr noundef %1033) #11
  %dbg_mem_tlv328 = getelementptr inbounds %struct.iwl_firmware_pieces, ptr %call7.i.i, i32 0, i32 14
  %1034 = ptrtoint ptr %dbg_mem_tlv328 to i32
  call void @__asan_load4_noabort(i32 %1034)
  %1035 = load ptr, ptr %dbg_mem_tlv328, align 4
  call void @kfree(ptr noundef %1035) #11
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %if.end329

if.end329:                                        ; preds = %for.body323.preheader, %if.end317.if.end329_crit_edge
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %trigger_tlv_sz) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @validate_sec_sizes(ptr nocapture noundef readonly %drv, ptr nocapture noundef readonly %pieces, ptr nocapture noundef readonly %cfg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.iwl_drv, ptr %drv, i32 0, i32 4
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %2 = ptrtoint ptr %pieces to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pieces, align 4
  %size.i = getelementptr %struct.fw_sec, ptr %3, i32 1, i32 1
  %4 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size.i, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %1, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.validate_sec_sizes, ptr noundef nonnull @.str.65, i32 noundef %5) #11
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %8 = ptrtoint ptr %pieces to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pieces, align 4
  %size.i81 = getelementptr %struct.fw_sec, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %size.i81 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size.i81, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %7, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.validate_sec_sizes, ptr noundef nonnull @.str.66, i32 noundef %11) #11
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %arrayidx.i = getelementptr [4 x %struct.fw_img_parsing], ptr %pieces, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %size.i82 = getelementptr %struct.fw_sec, ptr %15, i32 1, i32 1
  %16 = ptrtoint ptr %size.i82 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size.i82, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %13, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.validate_sec_sizes, ptr noundef nonnull @.str.67, i32 noundef %17) #11
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  %size.i84 = getelementptr %struct.fw_sec, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %size.i84 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %size.i84, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %19, i32 noundef 1, i1 noundef zeroext false, ptr noundef nonnull @__func__.validate_sec_sizes, ptr noundef nonnull @.str.68, i32 noundef %23) #11
  %24 = ptrtoint ptr %pieces to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pieces, align 4
  %size.i85 = getelementptr %struct.fw_sec, ptr %25, i32 1, i32 1
  %26 = ptrtoint ptr %size.i85 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size.i85, align 4
  %max_inst_size = getelementptr inbounds %struct.iwl_cfg, ptr %cfg, i32 0, i32 11
  %28 = ptrtoint ptr %max_inst_size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %max_inst_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp = icmp ugt i32 %27, %29
  br i1 %cmp, label %do.end24, label %if.end

do.end24:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %31, i32 noundef 0, ptr noundef nonnull @.str.69, i32 noundef %27) #11
  br label %return

if.end:                                           ; preds = %entry
  %size.i87 = getelementptr %struct.fw_sec, ptr %25, i32 0, i32 1
  %32 = ptrtoint ptr %size.i87 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %size.i87, align 4
  %max_data_size = getelementptr inbounds %struct.iwl_cfg, ptr %cfg, i32 0, i32 10
  %34 = ptrtoint ptr %max_data_size to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %max_data_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp29 = icmp ugt i32 %33, %35
  br i1 %cmp29, label %do.end33, label %if.end37

do.end33:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %37, i32 noundef 0, ptr noundef nonnull @.str.70, i32 noundef %33) #11
  br label %return

if.end37:                                         ; preds = %if.end
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i, align 4
  %size.i90 = getelementptr %struct.fw_sec, ptr %39, i32 1, i32 1
  %40 = ptrtoint ptr %size.i90 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %size.i90, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %29)
  %cmp40 = icmp ugt i32 %41, %29
  br i1 %cmp40, label %do.end44, label %if.end48

do.end44:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %43, i32 noundef 0, ptr noundef nonnull @.str.71, i32 noundef %41) #11
  br label %return

if.end48:                                         ; preds = %if.end37
  %size.i94 = getelementptr %struct.fw_sec, ptr %39, i32 0, i32 1
  %44 = ptrtoint ptr %size.i94 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %size.i94, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %35)
  %cmp51 = icmp ugt i32 %45, %35
  br i1 %cmp51, label %do.end55, label %if.end48.return_crit_edge

if.end48.return_crit_edge:                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

do.end55:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev, align 4
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %47, i32 noundef 0, ptr noundef nonnull @.str.72, i32 noundef %33) #11
  br label %return

return:                                           ; preds = %do.end55, %if.end48.return_crit_edge, %do.end44, %do.end33, %do.end24
  %retval.0 = phi i32 [ -1, %do.end24 ], [ -1, %do.end33 ], [ -1, %do.end44 ], [ -1, %do.end55 ], [ 0, %if.end48.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_dbg_tlv_load_bin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_release_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iwl_dbg_tlv_alloc(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_pci_register_driver() local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nobuiltin }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(1) }
attributes #18 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !17, !18, !20, !22, !23, !25, !27, !28, !30, !32, !33, !35, !37, !38, !40, !42, !43, !45, !47, !48, !50, !52, !53, !55, !57, !58, !60, !62, !63, !65, !67, !68, !70, !72, !73, !75, !77, !78, !80, !82, !83, !85, !87, !88, !90, !92, !94, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !114, !116, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !222, !224, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !244, !245, !247, !249, !251, !253, !255, !256, !257, !258, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274}
!llvm.module.flags = !{!275, !276, !277, !278, !279, !280, !281, !282}
!llvm.ident = !{!283}

!0 = !{ptr @__UNIQUE_ID_description348, !1, !"__UNIQUE_ID_description348", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 33, i32 1}
!2 = !{ptr @__UNIQUE_ID_file349, !3, !"__UNIQUE_ID_file349", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 34, i32 1}
!4 = !{ptr @__UNIQUE_ID_license350, !3, !"__UNIQUE_ID_license350", i1 false, i1 false}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1747, i32 45}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1754, i32 3}
!9 = !{ptr @iwlwifi_mod_params, !10, !"iwlwifi_mod_params", i1 false, i1 false}
!10 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1801, i32 23}
!11 = !{ptr @__initcall__kmod_iwlwifi__407_1883_iwl_drv_init6, !12, !"__initcall__kmod_iwlwifi__407_1883_iwl_drv_init6", i1 false, i1 false}
!12 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1883, i32 1}
!13 = !{ptr @__exitcall_iwl_drv_exit, !14, !"__exitcall_iwl_drv_exit", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1893, i32 1}
!15 = !{ptr @__param_debug, !16, !"__param_debug", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1896, i32 1}
!17 = !{ptr @__UNIQUE_ID_debugtype408, !16, !"__UNIQUE_ID_debugtype408", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_debug409, !19, !"__UNIQUE_ID_debug409", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1897, i32 1}
!20 = !{ptr @__param_swcrypto, !21, !"__param_swcrypto", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1900, i32 1}
!22 = !{ptr @__UNIQUE_ID_swcryptotype410, !21, !"__UNIQUE_ID_swcryptotype410", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_swcrypto411, !24, !"__UNIQUE_ID_swcrypto411", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1901, i32 1}
!25 = !{ptr @__param_11n_disable, !26, !"__param_11n_disable", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1902, i32 1}
!27 = !{ptr @__UNIQUE_ID_11n_disabletype412, !26, !"__UNIQUE_ID_11n_disabletype412", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_11n_disable413, !29, !"__UNIQUE_ID_11n_disable413", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1903, i32 1}
!30 = !{ptr @__param_amsdu_size, !31, !"__param_amsdu_size", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1905, i32 1}
!32 = !{ptr @__UNIQUE_ID_amsdu_sizetype414, !31, !"__UNIQUE_ID_amsdu_sizetype414", i1 false, i1 false}
!33 = !{ptr @__UNIQUE_ID_amsdu_size415, !34, !"__UNIQUE_ID_amsdu_size415", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1906, i32 1}
!35 = !{ptr @__param_fw_restart, !36, !"__param_fw_restart", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1909, i32 1}
!37 = !{ptr @__UNIQUE_ID_fw_restarttype416, !36, !"__UNIQUE_ID_fw_restarttype416", i1 false, i1 false}
!38 = !{ptr @__UNIQUE_ID_fw_restart417, !39, !"__UNIQUE_ID_fw_restart417", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1910, i32 1}
!40 = !{ptr @__param_nvm_file, !41, !"__param_nvm_file", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1912, i32 1}
!42 = !{ptr @__UNIQUE_ID_nvm_filetype418, !41, !"__UNIQUE_ID_nvm_filetype418", i1 false, i1 false}
!43 = !{ptr @__UNIQUE_ID_nvm_file419, !44, !"__UNIQUE_ID_nvm_file419", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1913, i32 1}
!45 = !{ptr @__param_uapsd_disable, !46, !"__param_uapsd_disable", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1915, i32 1}
!47 = !{ptr @__UNIQUE_ID_uapsd_disabletype420, !46, !"__UNIQUE_ID_uapsd_disabletype420", i1 false, i1 false}
!48 = !{ptr @__UNIQUE_ID_uapsd_disable421, !49, !"__UNIQUE_ID_uapsd_disable421", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1916, i32 1}
!50 = !{ptr @__param_enable_ini, !51, !"__param_enable_ini", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1918, i32 1}
!52 = !{ptr @__UNIQUE_ID_enable_initype422, !51, !"__UNIQUE_ID_enable_initype422", i1 false, i1 false}
!53 = !{ptr @__UNIQUE_ID_enable_ini423, !54, !"__UNIQUE_ID_enable_ini423", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1920, i32 1}
!55 = !{ptr @__param_bt_coex_active, !56, !"__param_bt_coex_active", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1939, i32 1}
!57 = !{ptr @__UNIQUE_ID_bt_coex_activetype424, !56, !"__UNIQUE_ID_bt_coex_activetype424", i1 false, i1 false}
!58 = !{ptr @__UNIQUE_ID_bt_coex_active425, !59, !"__UNIQUE_ID_bt_coex_active425", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1941, i32 1}
!60 = !{ptr @__param_led_mode, !61, !"__param_led_mode", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1943, i32 1}
!62 = !{ptr @__UNIQUE_ID_led_modetype426, !61, !"__UNIQUE_ID_led_modetype426", i1 false, i1 false}
!63 = !{ptr @__UNIQUE_ID_led_mode427, !64, !"__UNIQUE_ID_led_mode427", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1944, i32 1}
!65 = !{ptr @__param_power_save, !66, !"__param_power_save", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1947, i32 1}
!67 = !{ptr @__UNIQUE_ID_power_savetype428, !66, !"__UNIQUE_ID_power_savetype428", i1 false, i1 false}
!68 = !{ptr @__UNIQUE_ID_power_save429, !69, !"__UNIQUE_ID_power_save429", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1948, i32 1}
!70 = !{ptr @__param_power_level, !71, !"__param_power_level", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1951, i32 1}
!72 = !{ptr @__UNIQUE_ID_power_leveltype430, !71, !"__UNIQUE_ID_power_leveltype430", i1 false, i1 false}
!73 = !{ptr @__UNIQUE_ID_power_level431, !74, !"__UNIQUE_ID_power_level431", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1952, i32 1}
!75 = !{ptr @__param_disable_11ac, !76, !"__param_disable_11ac", i1 false, i1 false}
!76 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1955, i32 1}
!77 = !{ptr @__UNIQUE_ID_disable_11actype432, !76, !"__UNIQUE_ID_disable_11actype432", i1 false, i1 false}
!78 = !{ptr @__UNIQUE_ID_disable_11ac433, !79, !"__UNIQUE_ID_disable_11ac433", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1956, i32 1}
!80 = !{ptr @__param_remove_when_gone, !81, !"__param_remove_when_gone", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1958, i32 1}
!82 = !{ptr @__UNIQUE_ID_remove_when_gonetype434, !81, !"__UNIQUE_ID_remove_when_gonetype434", i1 false, i1 false}
!83 = !{ptr @__UNIQUE_ID_remove_when_gone435, !84, !"__UNIQUE_ID_remove_when_gone435", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1961, i32 1}
!85 = !{ptr @__param_disable_11ax, !86, !"__param_disable_11ax", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1964, i32 1}
!87 = !{ptr @__UNIQUE_ID_disable_11axtype436, !86, !"__UNIQUE_ID_disable_11axtype436", i1 false, i1 false}
!88 = !{ptr @__UNIQUE_ID_disable_11ax437, !89, !"__UNIQUE_ID_disable_11ax437", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1966, i32 1}
!90 = !{ptr @iwl_dbgfs_root, !91, !"iwl_dbgfs_root", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 37, i32 23}
!92 = !{ptr @init_completion.__key, !93, !"__key", i1 false, i1 false}
!93 = !{!"../include/linux/completion.h", i32 87, i32 2}
!94 = !{ptr @.str.2, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.3, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 171, i32 3}
!97 = !{ptr @.str.4, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 179, i32 16}
!99 = !{ptr @.str.5, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 186, i32 3}
!101 = !{ptr @.str.6, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 189, i32 4}
!103 = !{ptr @.str.7, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 192, i32 4}
!105 = !{ptr @.str.8, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 194, i32 4}
!107 = !{ptr @.str.9, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 198, i32 3}
!109 = !{ptr @.str.10, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 203, i32 59}
!111 = !{ptr @__func__.iwl_request_firmware, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 206, i32 2}
!113 = !{ptr @.str.11, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @__func__.iwl_req_fw_callback, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1449, i32 2}
!116 = !{ptr @.str.12, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.13, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1454, i32 3}
!119 = !{ptr @.str.14, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1481, i32 3}
!121 = !{ptr @.str.15, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1595, i32 8}
!123 = !{ptr @.str.16, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1654, i32 3}
!125 = !{ptr @.str.17, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1661, i32 2}
!127 = !{ptr @.str.18, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1694, i32 3}
!129 = !{ptr @.str.19, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 472, i32 4}
!131 = !{ptr @.str.20, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 508, i32 21}
!133 = !{ptr @.str.21, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 514, i32 4}
!135 = !{ptr @.str.22, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 529, i32 3}
!137 = !{ptr @.str.23, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 450, i32 20}
!139 = !{ptr @.str.24, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 672, i32 3}
!141 = !{ptr @.str.25, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 677, i32 3}
!143 = !{ptr @.str.26, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 714, i32 4}
!145 = !{ptr @.str.27, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 759, i32 4}
!147 = !{ptr @.str.28, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 924, i32 5}
!149 = !{ptr @.str.29, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 953, i32 6}
!151 = !{ptr @.str.30, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 958, i32 6}
!153 = !{ptr @.str.31, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 973, i32 5}
!155 = !{ptr @.str.32, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 980, i32 5}
!157 = !{ptr @.str.33, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 995, i32 4}
!159 = !{ptr @.str.34, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1015, i32 5}
!161 = !{ptr @.str.35, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1022, i32 5}
!163 = !{ptr @.str.36, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1029, i32 5}
!165 = !{ptr @.str.37, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1038, i32 4}
!167 = !{ptr @.str.38, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1051, i32 5}
!169 = !{ptr @.str.39, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1058, i32 5}
!171 = !{ptr @.str.40, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1064, i32 4}
!173 = !{ptr @.str.41, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1072, i32 5}
!175 = !{ptr @__func__.iwl_parse_tlv_firmware, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1092, i32 4}
!177 = !{ptr @.str.42, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @.str.43, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1097, i32 5}
!180 = !{ptr @.str.44, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1104, i32 5}
!182 = !{ptr @.str.45, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1128, i32 4}
!184 = !{ptr @.str.46, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1170, i32 4}
!186 = !{ptr @.str.47, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1179, i32 5}
!188 = !{ptr @.str.48, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1232, i32 5}
!190 = !{ptr @.str.49, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1249, i32 5}
!192 = !{ptr @.str.50, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1266, i32 4}
!194 = !{ptr @.str.51, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1273, i32 3}
!196 = !{ptr @.str.52, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1279, i32 3}
!198 = !{ptr @.str.53, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1280, i32 3}
!200 = !{ptr @.str.54, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @.str.55, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1287, i32 2}
!203 = !{ptr @.str.56, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 413, i32 3}
!205 = !{ptr @.str.57, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 434, i32 3}
!207 = !{ptr @.str.58, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 392, i32 3}
!209 = !{ptr @.str.59, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/img.h", i32 246, i32 10}
!211 = !{ptr @.str.60, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/img.h", i32 248, i32 10}
!213 = !{ptr @.str.61, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/img.h", i32 250, i32 10}
!215 = !{ptr @.str.62, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/img.h", i32 252, i32 10}
!217 = !{ptr @.str.63, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/img.h", i32 254, i32 10}
!219 = !{ptr @__func__.iwl_drv_set_dump_exclude, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 584, i32 3}
!221 = !{ptr @.str.64, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @__func__.validate_sec_sizes, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1318, i32 2}
!224 = !{ptr @.str.65, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @.str.66, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1321, i32 2}
!227 = !{ptr @.str.67, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1324, i32 2}
!229 = !{ptr @.str.68, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1326, i32 2}
!231 = !{ptr @.str.69, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1332, i32 3}
!233 = !{ptr @.str.70, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1340, i32 3}
!235 = !{ptr @.str.71, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1348, i32 3}
!237 = !{ptr @.str.72, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1356, i32 3}
!239 = !{ptr @.str.73, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-op-mode.h", i32 131, i32 2}
!241 = !{ptr @.str.74, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 80, i32 8}
!243 = !{ptr @.str.75, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @iwlwifi_opmode_table_mtx, !242, !"iwlwifi_opmode_table_mtx", i1 false, i1 false}
!245 = !{ptr @.str.76, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 86, i32 28}
!247 = !{ptr @.str.77, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 87, i32 28}
!249 = !{ptr @iwlwifi_opmode_table, !250, !"iwlwifi_opmode_table", i1 false, i1 false}
!250 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 85, i32 3}
!251 = !{ptr @.str.78, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1386, i32 3}
!253 = !{ptr @.str.79, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1864, i32 2}
!255 = !{ptr @.str.80, !254, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @iwl_drv_init._entry, !254, !"_entry", i1 false, i1 false}
!257 = !{ptr @iwl_drv_init._entry_ptr, !254, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @.str.81, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/net/wireless/intel/iwlwifi/iwl-drv.c", i32 1868, i32 38}
!260 = !{ptr @__param_str_debug, !16, !"__param_str_debug", i1 false, i1 false}
!261 = !{ptr @__param_str_swcrypto, !21, !"__param_str_swcrypto", i1 false, i1 false}
!262 = !{ptr @__param_str_11n_disable, !26, !"__param_str_11n_disable", i1 false, i1 false}
!263 = !{ptr @__param_str_amsdu_size, !31, !"__param_str_amsdu_size", i1 false, i1 false}
!264 = !{ptr @__param_str_fw_restart, !36, !"__param_str_fw_restart", i1 false, i1 false}
!265 = !{ptr @__param_str_nvm_file, !41, !"__param_str_nvm_file", i1 false, i1 false}
!266 = !{ptr @__param_str_uapsd_disable, !46, !"__param_str_uapsd_disable", i1 false, i1 false}
!267 = !{ptr @__param_str_enable_ini, !51, !"__param_str_enable_ini", i1 false, i1 false}
!268 = !{ptr @__param_str_bt_coex_active, !56, !"__param_str_bt_coex_active", i1 false, i1 false}
!269 = !{ptr @__param_str_led_mode, !61, !"__param_str_led_mode", i1 false, i1 false}
!270 = !{ptr @__param_str_power_save, !66, !"__param_str_power_save", i1 false, i1 false}
!271 = !{ptr @__param_str_power_level, !71, !"__param_str_power_level", i1 false, i1 false}
!272 = !{ptr @__param_str_disable_11ac, !76, !"__param_str_disable_11ac", i1 false, i1 false}
!273 = !{ptr @__param_str_remove_when_gone, !81, !"__param_str_remove_when_gone", i1 false, i1 false}
!274 = !{ptr @__param_str_disable_11ax, !86, !"__param_str_disable_11ax", i1 false, i1 false}
!275 = !{i32 1, !"wchar_size", i32 2}
!276 = !{i32 1, !"min_enum_size", i32 4}
!277 = !{i32 8, !"branch-target-enforcement", i32 0}
!278 = !{i32 8, !"sign-return-address", i32 0}
!279 = !{i32 8, !"sign-return-address-all", i32 0}
!280 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!281 = !{i32 7, !"uwtable", i32 1}
!282 = !{i32 7, !"frame-pointer", i32 2}
!283 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!284 = !{i8 0, i8 2}
!285 = !{!"branch_weights", i32 2000, i32 1}
!286 = !{!"branch_weights", i32 1, i32 2000}
