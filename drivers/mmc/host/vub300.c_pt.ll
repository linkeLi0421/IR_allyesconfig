; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/vub300.c_pt.bc'
source_filename = "../drivers/mmc/host/vub300.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.69 }
%union.anon.69 = type { ptr }
%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, %struct.fault_attr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, %struct.blk_crypto_profile, i8, [15 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.mmc_supply = type { ptr, ptr }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.blk_crypto_profile = type { %struct.blk_crypto_ll_ops, i32, [4 x i32], ptr, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, ptr, i32, ptr }
%struct.blk_crypto_ll_ops = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.vub300_mmc_host = type { ptr, ptr, %struct.kref, %struct.mutex, %struct.mutex, [80 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, [16 x %struct.sdio_register], [8 x %struct.offload_interrupt_function_register], [8 x i16], ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, %union.sd_command, %union.sd_response, %struct.timer_list, %struct.usb_sg_request, %struct.timer_list, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.host_controller_info, %struct.sd_status_header, [64 x i8] }
%struct.sdio_register = type { i32, i8, i32 }
%struct.offload_interrupt_function_register = type { i8, i32, [16 x %struct.offload_registers_access] }
%struct.offload_registers_access = type { [4 x i8], [4 x i8] }
%union.sd_command = type { %struct.sd_command_header }
%struct.sd_command_header = type { i8, i8, i8, i8, i8, [4 x i8], i8, [4 x i8], [2 x i8], [2 x i8], [2 x i8], [44 x i8] }
%union.sd_response = type { %struct.sd_offloaded_interrupt }
%struct.sd_offloaded_interrupt = type { i8, i8, i8, [15 x %struct.offload_registers_access] }
%struct.usb_sg_request = type { i32, i32, %struct.spinlock, ptr, i32, i32, ptr, i32, %struct.completion }
%struct.host_controller_info = type <{ i8, i16, i8 }>
%struct.sd_status_header = type <{ i8, i8, i8, i16, i32, i16, i16, i16 }>
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.mmc_card = type { ptr, %struct.device, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i8, [4 x i32], [4 x i32], [2 x i32], [16 x i32], %struct.mmc_cid, %struct.mmc_csd, %struct.mmc_ext_csd, %struct.sd_scr, %struct.sd_ssr, %struct.sd_switch_caps, %struct.sd_ext_reg, %struct.sd_ext_reg, i32, %struct.atomic_t, %struct.sdio_cccr, %struct.sdio_cis, [7 x ptr], ptr, i8, i8, i32, ptr, ptr, i32, i32, i32, ptr, [7 x %struct.mmc_part], i32, ptr }
%struct.mmc_cid = type { i32, [8 x i8], i8, i32, i16, i16, i8, i8, i8 }
%struct.mmc_csd = type { i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.mmc_ext_csd = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i8, i8, i32, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, i8, i32 }
%struct.sd_scr = type { i8, i8, i8, i8, i8, i8 }
%struct.sd_ssr = type { i32, i32, i32 }
%struct.sd_switch_caps = type { i32, i32, i32, i32, i32 }
%struct.sd_ext_reg = type { i8, i8, i16, i8, i8, i8 }
%struct.sdio_cccr = type { i32, i32, i8 }
%struct.sdio_cis = type { i16, i16, i16, i32 }
%struct.mmc_part = type { i64, i32, [20 x i8], i8, i32 }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32, ptr, i32 }
%struct.sdio_func = type { ptr, %struct.device, ptr, i32, i8, i16, i16, i32, i32, i32, i32, ptr, i8, i8, i32, ptr, ptr }
%struct.firmware = type { i32, ptr, ptr }

@__param_str_limit_speed_to_24_MHz = internal constant [29 x i8] c"vub300.limit_speed_to_24_MHz\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@limit_speed_to_24_MHz = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_limit_speed_to_24_MHz = internal constant %struct.kernel_param { ptr @__param_str_limit_speed_to_24_MHz, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.69 { ptr @limit_speed_to_24_MHz } }, section "__param", align 4
@__UNIQUE_ID_limit_speed_to_24_MHztype276 = internal constant [43 x i8] c"vub300.parmtype=limit_speed_to_24_MHz:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_limit_speed_to_24_MHz277 = internal constant [71 x i8] c"vub300.parm=limit_speed_to_24_MHz:Limit Max SDIO Clock Speed to 24 MHz\00", section ".modinfo", align 1
@__param_str_pad_input_to_usb_pkt = internal constant [28 x i8] c"vub300.pad_input_to_usb_pkt\00", align 1
@pad_input_to_usb_pkt = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_pad_input_to_usb_pkt = internal constant %struct.kernel_param { ptr @__param_str_pad_input_to_usb_pkt, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.69 { ptr @pad_input_to_usb_pkt } }, section "__param", align 4
@__UNIQUE_ID_pad_input_to_usb_pkttype278 = internal constant [42 x i8] c"vub300.parmtype=pad_input_to_usb_pkt:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_pad_input_to_usb_pkt279 = internal constant [82 x i8] c"vub300.parm=pad_input_to_usb_pkt:Pad USB data input transfers to whole USB Packet\00", section ".modinfo", align 1
@__param_str_disable_offload_processing = internal constant [34 x i8] c"vub300.disable_offload_processing\00", align 1
@disable_offload_processing = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_disable_offload_processing = internal constant %struct.kernel_param { ptr @__param_str_disable_offload_processing, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.69 { ptr @disable_offload_processing } }, section "__param", align 4
@__UNIQUE_ID_disable_offload_processingtype280 = internal constant [48 x i8] c"vub300.parmtype=disable_offload_processing:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_disable_offload_processing281 = internal constant [66 x i8] c"vub300.parm=disable_offload_processing:Disable Offload Processing\00", section ".modinfo", align 1
@__param_str_force_1_bit_data_xfers = internal constant [30 x i8] c"vub300.force_1_bit_data_xfers\00", align 1
@force_1_bit_data_xfers = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_force_1_bit_data_xfers = internal constant %struct.kernel_param { ptr @__param_str_force_1_bit_data_xfers, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.69 { ptr @force_1_bit_data_xfers } }, section "__param", align 4
@__UNIQUE_ID_force_1_bit_data_xferstype282 = internal constant [44 x i8] c"vub300.parmtype=force_1_bit_data_xfers:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_force_1_bit_data_xfers283 = internal constant [75 x i8] c"vub300.parm=force_1_bit_data_xfers:Force SDIO Data Transfers to 1-bit Mode\00", section ".modinfo", align 1
@__param_str_force_polling_for_irqs = internal constant [30 x i8] c"vub300.force_polling_for_irqs\00", align 1
@force_polling_for_irqs = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_force_polling_for_irqs = internal constant %struct.kernel_param { ptr @__param_str_force_polling_for_irqs, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.69 { ptr @force_polling_for_irqs } }, section "__param", align 4
@__UNIQUE_ID_force_polling_for_irqstype284 = internal constant [44 x i8] c"vub300.parmtype=force_polling_for_irqs:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_force_polling_for_irqs285 = internal constant [69 x i8] c"vub300.parm=force_polling_for_irqs:Force Polling for SDIO interrupts\00", section ".modinfo", align 1
@__param_str_firmware_irqpoll_timeout = internal constant [32 x i8] c"vub300.firmware_irqpoll_timeout\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@firmware_irqpoll_timeout = internal global { i32, [28 x i8] } { i32 1024, [28 x i8] zeroinitializer }, align 32
@__param_firmware_irqpoll_timeout = internal constant %struct.kernel_param { ptr @__param_str_firmware_irqpoll_timeout, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.69 { ptr @firmware_irqpoll_timeout } }, section "__param", align 4
@__UNIQUE_ID_firmware_irqpoll_timeouttype286 = internal constant [45 x i8] c"vub300.parmtype=firmware_irqpoll_timeout:int\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware_irqpoll_timeout287 = internal constant [69 x i8] c"vub300.parm=firmware_irqpoll_timeout:VUB300 firmware irqpoll timeout\00", section ".modinfo", align 1
@__param_str_force_max_req_size = internal constant [26 x i8] c"vub300.force_max_req_size\00", align 1
@force_max_req_size = internal global { i32, [28 x i8] } { i32 128, [28 x i8] zeroinitializer }, align 32
@__param_force_max_req_size = internal constant %struct.kernel_param { ptr @__param_str_force_max_req_size, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.69 { ptr @force_max_req_size } }, section "__param", align 4
@__UNIQUE_ID_force_max_req_sizetype288 = internal constant [39 x i8] c"vub300.parmtype=force_max_req_size:int\00", section ".modinfo", align 1
@__UNIQUE_ID_force_max_req_size289 = internal constant [62 x i8] c"vub300.parm=force_max_req_size:set max request size in kBytes\00", section ".modinfo", align 1
@__param_str_firmware_rom_wait_states = internal constant [32 x i8] c"vub300.firmware_rom_wait_states\00", align 1
@firmware_rom_wait_states = internal global { i32, [28 x i8] } { i32 28, [28 x i8] zeroinitializer }, align 32
@__param_firmware_rom_wait_states = internal constant %struct.kernel_param { ptr @__param_str_firmware_rom_wait_states, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.69 { ptr @firmware_rom_wait_states } }, section "__param", align 4
@__UNIQUE_ID_firmware_rom_wait_statestype290 = internal constant [45 x i8] c"vub300.parmtype=firmware_rom_wait_states:int\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware_rom_wait_states291 = internal constant [96 x i8] c"vub300.parm=firmware_rom_wait_states:ROM wait states byte=RRRIIEEE (Reserved Internal External)\00", section ".modinfo", align 1
@vub300_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @vub300_probe, ptr @vub300_disconnect, ptr null, ptr @vub300_suspend, ptr @vub300_resume, ptr null, ptr @vub300_pre_reset, ptr @vub300_post_reset, ptr @vub300_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 64 }, [44 x i8] zeroinitializer }, align 32
@cmndworkqueue = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@pollworkqueue = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@deadworkqueue = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_vub300__293_2465_vub300_init6 = internal global ptr @vub300_init, section ".initcall6.init", align 4
@__exitcall_vub300_exit = internal global ptr @vub300_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author294 = internal constant [61 x i8] c"vub300.author=Tony Olech <tony.olech@elandigitalsystems.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description295 = internal constant [60 x i8] c"vub300.description=VUB300 USB to SD/MMC/SDIO adapter driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [36 x i8] c"vub300.file=drivers/mmc/host/vub300\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [19 x i8] c"vub300.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vub300\00", [25 x i8] zeroinitializer }, align 32
@vub300_table = internal constant { [3 x %struct.usb_device_id], [56 x i8] } { [3 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 8705, i16 300, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1060, i16 300, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@vub300_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2102, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"probing VID:PID(%04X:%04X) %s %s %s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vub300_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/mmc/host/vub300.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vub300_probe._entry_ptr = internal global ptr @vub300_probe._entry, section ".printk_index", align 4
@vub300_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 2117, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"not enough memory for the mmc_host\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@vub300_probe._entry_ptr.9 = internal global ptr @vub300_probe._entry.6, section ".printk_index", align 4
@vub300_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 2136, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"limiting SDIO speed to 24_MHz\0A\00", [33 x i8] zeroinitializer }, align 32
@vub300_probe._entry_ptr.12 = internal global ptr @vub300_probe._entry.10, section ".printk_index", align 4
@vub300_mmc_ops = internal constant { %struct.mmc_host_ops, [32 x i8] } { %struct.mmc_host_ops { ptr null, ptr null, ptr @vub300_mmc_request, ptr null, ptr @vub300_mmc_set_ios, ptr @vub300_mmc_get_ro, ptr null, ptr @vub300_enable_sdio_irq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@vub300_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&vub300->cmd_mutex\00", [45 x i8] zeroinitializer }, align 32
@vub300_probe.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&vub300->irq_mutex\00", [45 x i8] zeroinitializer }, align 32
@vub300_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 2225, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"vub300 testing %s EndPoint(%d) %02X\0A\00", [59 x i8] zeroinitializer }, align 32
@vub300_probe._entry_ptr.18 = internal global ptr @vub300_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"BULK IN\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"BULK OUT\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UNKNOWN\00", [24 x i8] zeroinitializer }, align 32
@vub300_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 2238, ptr @.str.24, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ignoring unexpected bulk_in endpoint\00", [59 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@vub300_probe._entry_ptr.25 = internal global ptr @vub300_probe._entry.22, section ".printk_index", align 4
@vub300_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.2, ptr @.str.3, i32 2250, ptr @.str.24, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ignoring unexpected bulk_out endpoint\00", [58 x i8] zeroinitializer }, align 32
@vub300_probe._entry_ptr.28 = internal global ptr @vub300_probe._entry.26, section ".printk_index", align 4
@vub300_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.2, ptr @.str.3, i32 2255, ptr @.str.24, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"vub300 ignoring EndPoint(%d) %02X\00", [62 x i8] zeroinitializer }, align 32
@vub300_probe._entry_ptr.31 = internal global ptr @vub300_probe._entry.29, section ".printk_index", align 4
@vub300_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.2, ptr @.str.3, i32 2265, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"vub300 %s packets using EndPoints %02X %02X %02X %02X\0A\00", [41 x i8] zeroinitializer }, align 32
@vub300_probe._entry_ptr.34 = internal global ptr @vub300_probe._entry.32, section ".printk_index", align 4
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LARGE\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SMALL\00", [26 x i8] zeroinitializer }, align 32
@vub300_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.2, ptr @.str.3, i32 2269, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Could not find two sets of bulk-in/out endpoint pairs\0A\00", [41 x i8] zeroinitializer }, align 32
@vub300_probe._entry_ptr.39 = internal global ptr @vub300_probe._entry.37, section ".printk_index", align 4
@vub300_probe._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.2, ptr @.str.3, i32 2294, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"operating_mode = %s %s %d MHz %s %d byte USB packets\0A\00", [42 x i8] zeroinitializer }, align 32
@vub300_probe._entry_ptr.42 = internal global ptr @vub300_probe._entry.40, section ".printk_index", align 4
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IRQs\00", [27 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"POLL\00", [27 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"4-bit\00", [26 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1-bit\00", [26 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"padding input data to\00", [42 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"with\00", [27 x i8] zeroinitializer }, align 32
@vub300_probe.__key.49 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.50 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&(&vub300->pollwork)->work)\00", [50 x i8] zeroinitializer }, align 32
@vub300_probe.__key.51 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.52 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&(&vub300->pollwork)->timer\00", [36 x i8] zeroinitializer }, align 32
@vub300_probe.__key.53 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.54 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&vub300->cmndwork)\00", [59 x i8] zeroinitializer }, align 32
@vub300_probe.__key.55 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.56 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&vub300->deadwork)\00", [59 x i8] zeroinitializer }, align 32
@vub300_probe.__key.57 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.58 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"(&vub300->sg_transfer_timer)\00", [35 x i8] zeroinitializer }, align 32
@vub300_probe.__key.59 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.60 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"(&vub300->inactivity_timer)\00", [36 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@vub300_probe._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.2, ptr @.str.3, i32 2326, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"USB vub300 remote SDIO host controller[%d]connected with SD/SDIO card inserted\0A\00", [48 x i8] zeroinitializer }, align 32
@vub300_probe._entry_ptr.63 = internal global ptr @vub300_probe._entry.61, section ".printk_index", align 4
@vub300_probe._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.2, ptr @.str.3, i32 2331, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"USB vub300 remote SDIO host controller[%d]connected with no SD/SDIO card inserted\0A\00", [45 x i8] zeroinitializer }, align 32
@vub300_probe._entry_ptr.66 = internal global ptr @vub300_probe._entry.64, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__set_clock_speed._entry = internal constant %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.3, i32 1997, ptr @.str.8, ptr @.str.5 }, align 1
@.str.67 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"SET_CLOCK_SPEED %dkHz failed with retval=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__set_clock_speed\00", [46 x i8] zeroinitializer }, align 32
@__set_clock_speed._entry_ptr = internal global ptr @__set_clock_speed._entry, section ".printk_index", align 4
@__set_clock_speed.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.68, ptr @.str.3, ptr @.str.69, i8 1, i8 -12, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SET_CLOCK_SPEED %dkHz\0A\00", [41 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.70 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@new_system_port_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.3, i32 511, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"card just inserted\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"new_system_port_status\00", [41 x i8] zeroinitializer }, align 32
@new_system_port_status._entry_ptr = internal global ptr @new_system_port_status._entry, section ".printk_index", align 4
@new_system_port_status._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.72, ptr @.str.3, i32 521, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"card just ejected\0A\00", [45 x i8] zeroinitializer }, align 32
@new_system_port_status._entry_ptr.76 = internal global ptr @new_system_port_status._entry.74, section ".printk_index", align 4
@.str.78 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vub_%04X%04X\00", [19 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"_%04X%04X\00", [22 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c".bin\00", [27 x i8] zeroinitializer }, align 32
@download_offload_pseudocode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.3, i32 1372, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"requesting offload firmware %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"download_offload_pseudocode\00", [36 x i8] zeroinitializer }, align 32
@download_offload_pseudocode._entry_ptr = internal global ptr @download_offload_pseudocode._entry, section ".printk_index", align 4
@__download_offload_pseudocode._entry = internal constant %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.3, i32 1209, ptr @.str.4, ptr @.str.5 }, align 1
@.str.85 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"using %s for SDIO offload processing\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"__download_offload_pseudocode\00", [34 x i8] zeroinitializer }, align 32
@__download_offload_pseudocode._entry_ptr = internal global ptr @__download_offload_pseudocode._entry, section ".printk_index", align 4
@__download_offload_pseudocode._entry.87 = internal constant %struct.pi_entry { ptr @.str.88, ptr @.str.86, ptr @.str.3, i32 1214, ptr @.str.4, ptr @.str.5 }, align 1
@.str.88 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"using offload firmware %s %s\0A\00", [34 x i8] zeroinitializer }, align 32
@__download_offload_pseudocode._entry_ptr.89 = internal global ptr @__download_offload_pseudocode._entry.87, section ".printk_index", align 4
@__download_offload_pseudocode._entry.90 = internal constant %struct.pi_entry { ptr @.str.91, ptr @.str.86, ptr @.str.3, i32 1218, ptr @.str.8, ptr @.str.5 }, align 1
@.str.91 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"corrupt offload pseudocode in firmware %s\0A\00", [53 x i8] zeroinitializer }, align 32
@__download_offload_pseudocode._entry_ptr.92 = internal global ptr @__download_offload_pseudocode._entry.90, section ".printk_index", align 4
@__download_offload_pseudocode._entry.94 = internal constant %struct.pi_entry { ptr @.str.95, ptr @.str.86, ptr @.str.3, i32 1252, ptr @.str.8, ptr @.str.5 }, align 1
@.str.95 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"not enough memory for xfer buffer to send INTERRUPT_PSEUDOCODE for %s %s\0A\00", [54 x i8] zeroinitializer }, align 32
@__download_offload_pseudocode._entry_ptr.96 = internal global ptr @__download_offload_pseudocode._entry.94, section ".printk_index", align 4
@__download_offload_pseudocode._entry.98 = internal constant %struct.pi_entry { ptr @.str.99, ptr @.str.86, ptr @.str.3, i32 1261, ptr @.str.8, ptr @.str.5 }, align 1
@.str.99 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"corrupt interrupt pseudocode in firmware %s %s\0A\00", [48 x i8] zeroinitializer }, align 32
@__download_offload_pseudocode._entry_ptr.100 = internal global ptr @__download_offload_pseudocode._entry.98, section ".printk_index", align 4
@__download_offload_pseudocode._entry.102 = internal constant %struct.pi_entry { ptr @.str.103, ptr @.str.86, ptr @.str.3, i32 1295, ptr @.str.8, ptr @.str.5 }, align 1
@.str.103 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"not enough memory for xfer buffer to send TRANSFER_PSEUDOCODE for %s %s\0A\00", [55 x i8] zeroinitializer }, align 32
@__download_offload_pseudocode._entry_ptr.104 = internal global ptr @__download_offload_pseudocode._entry.102, section ".printk_index", align 4
@__download_offload_pseudocode._entry.106 = internal constant %struct.pi_entry { ptr @.str.107, ptr @.str.86, ptr @.str.3, i32 1304, ptr @.str.8, ptr @.str.5 }, align 1
@.str.107 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"corrupt transfer pseudocode in firmware %s %s\0A\00", [49 x i8] zeroinitializer }, align 32
@__download_offload_pseudocode._entry_ptr.108 = internal global ptr @__download_offload_pseudocode._entry.106, section ".printk_index", align 4
@__download_offload_pseudocode._entry.110 = internal constant %struct.pi_entry { ptr @.str.111, ptr @.str.86, ptr @.str.3, i32 1333, ptr @.str.4, ptr @.str.5 }, align 1
@.str.111 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"initialized %d dynamic pseudocode registers\0A\00", [51 x i8] zeroinitializer }, align 32
@__download_offload_pseudocode._entry_ptr.112 = internal global ptr @__download_offload_pseudocode._entry.110, section ".printk_index", align 4
@__download_offload_pseudocode._entry.113 = internal constant %struct.pi_entry { ptr @.str.114, ptr @.str.86, ptr @.str.3, i32 1338, ptr @.str.8, ptr @.str.5 }, align 1
@.str.114 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"corrupt dynamic registers in firmware %s\0A\00", [54 x i8] zeroinitializer }, align 32
@__download_offload_pseudocode._entry_ptr.115 = internal global ptr @__download_offload_pseudocode._entry.113, section ".printk_index", align 4
@send_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.119, ptr @.str.3, i32 909, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unexpected ACMD6 bus_width=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"send_command\00", [19 x i8] zeroinitializer }, align 32
@send_command._entry_ptr = internal global ptr @send_command._entry, section ".printk_index", align 4
@vub300_disconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.121, ptr @.str.3, i32 2366, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016USB vub300 remote SDIO host controller[%d] now disconnected\00", [34 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vub300_disconnect\00", [46 x i8] zeroinitializer }, align 32
@vub300_disconnect._entry_ptr = internal global ptr @vub300_disconnect._entry, section ".printk_index", align 4
@vub300_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.123, ptr @.str.3, i32 2419, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016VUB300 Driver rom wait states = %02X irqpoll timeout = %04X\00", [34 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vub300_init\00", [20 x i8] zeroinitializer }, align 32
@vub300_init._entry_ptr = internal global ptr @vub300_init._entry, section ".printk_index", align 4
@.str.124 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"kvub300c\00", [23 x i8] zeroinitializer }, align 32
@vub300_init._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.123, ptr @.str.3, i32 2422, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013not enough memory for the REQUEST workqueue\00", [50 x i8] zeroinitializer }, align 32
@vub300_init._entry_ptr.128 = internal global ptr @vub300_init._entry.126, section ".printk_index", align 4
@.str.129 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"kvub300p\00", [23 x i8] zeroinitializer }, align 32
@vub300_init._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.123, ptr @.str.3, i32 2428, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013not enough memory for the IRQPOLL workqueue\00", [50 x i8] zeroinitializer }, align 32
@vub300_init._entry_ptr.132 = internal global ptr @vub300_init._entry.130, section ".printk_index", align 4
@.str.133 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"kvub300d\00", [23 x i8] zeroinitializer }, align 32
@vub300_init._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.123, ptr @.str.3, i32 2434, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013not enough memory for the EXPIRED workqueue\00", [50 x i8] zeroinitializer }, align 32
@vub300_init._entry_ptr.136 = internal global ptr @vub300_init._entry.134, section ".printk_index", align 4
@vub300_init._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.123, ptr @.str.3, i32 2440, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013usb_register failed. Error number %d\00", [57 x i8] zeroinitializer }, align 32
@vub300_init._entry_ptr.139 = internal global ptr @vub300_init._entry.137, section ".printk_index", align 4
@str = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"SD memory device\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [47 x i8] zeroinitializer }, align 32
@str.140 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"EMPTY Processing Disabled\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [47 x i8] zeroinitializer }, align 32
@str.141 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"vub_default.bin\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [47 x i8] zeroinitializer }, align 32
@str.142 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"no SDIO offload firmware found\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [47 x i8] zeroinitializer }, align 32
@str.143 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"corrupt interrupt pseudocode\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [47 x i8] zeroinitializer }, align 32
@str.144 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"SDIO interrupt pseudocode download failed\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [47 x i8] zeroinitializer }, align 32
@str.145 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"SDIO pseudocode download failed\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [47 x i8] zeroinitializer }, align 32
@str.146 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"corrupt transfer pseudocode\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [47 x i8] zeroinitializer }, align 32
@str.147 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"SDIO transfer pseudocode download failed\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [47 x i8] zeroinitializer }, align 32
@str.148 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"corrupt dynamic registers\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [47 x i8] zeroinitializer }, align 32
@str.149 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"corrupt offload pseudocode\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [47 x i8] zeroinitializer }, align 32
@switch.table.command_res_completed = internal constant { [33 x i32], [60 x i8] } { [33 x i32] [i32 -110, i32 -110, i32 -84, i32 -84, i32 -84, i32 -84, i32 -84, i32 -84, i32 -84, i32 -84, i32 -84, i32 -22, i32 -123, i32 -19, i32 -84, i32 -84, i32 -19, i32 -19, i32 -19, i32 -19, i32 -19, i32 -84, i32 -84, i32 -84, i32 -84, i32 -84, i32 -84, i32 -110, i32 -19, i32 -19, i32 -19, i32 -19, i32 -84], [60 x i8] zeroinitializer }, align 32
@switch.table.command_res_completed.150 = internal constant { [33 x i32], [60 x i8] } { [33 x i32] [i32 -110, i32 -110, i32 -84, i32 -84, i32 -84, i32 -84, i32 -84, i32 -84, i32 -84, i32 -84, i32 -84, i32 -22, i32 -123, i32 -19, i32 -84, i32 -84, i32 -19, i32 -19, i32 -19, i32 -19, i32 -19, i32 -84, i32 -84, i32 -84, i32 -84, i32 -84, i32 -84, i32 -110, i32 -19, i32 -19, i32 -19, i32 -19, i32 -84], [60 x i8] zeroinitializer }, align 32
@switch.table.vub300_response_error = internal constant { [33 x i32], [60 x i8] } { [33 x i32] [i32 -110, i32 -110, i32 -84, i32 -84, i32 -84, i32 -84, i32 -84, i32 -84, i32 -84, i32 -84, i32 -84, i32 -22, i32 -123, i32 -19, i32 -84, i32 -84, i32 -19, i32 -19, i32 -19, i32 -19, i32 -19, i32 -84, i32 -84, i32 -84, i32 -84, i32 -84, i32 -84, i32 -110, i32 -19, i32 -19, i32 -19, i32 -19, i32 -84], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 3, i64 5, i64 6, i64 8]
@__sancov_gen_cov_switch_values.151 = internal global [10 x i64] [i64 8, i64 32, i64 6, i64 13, i64 22, i64 23, i64 41, i64 42, i64 51, i64 55]
@__sancov_gen_cov_switch_values.152 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.153 = internal global [33 x i64] [i64 31, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 12, i64 13, i64 15, i64 16, i64 17, i64 18, i64 24, i64 25, i64 27, i64 28, i64 29, i64 30, i64 32, i64 33, i64 38, i64 42, i64 52, i64 53, i64 55, i64 56]
@__sancov_gen_cov_switch_values.154 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 2, i64 7, i64 9, i64 10]
@__sancov_gen_cov_switch_values.155 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967173]
@__sancov_gen_cov_switch_values.156 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.157 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.158 = internal global [16 x i64] [i64 14, i64 32, i64 2147622912, i64 2147623424, i64 2147753984, i64 2147754496, i64 2147885056, i64 2147885568, i64 2148016128, i64 2148016640, i64 2148147200, i64 2148147712, i64 2148278272, i64 2148278784, i64 2148409344, i64 2148409856]
@__sancov_gen_cov_switch_values.159 = internal global [4 x i64] [i64 2, i64 32, i64 2147487232, i64 2147487234]
@___asan_gen_.160 = private unnamed_addr constant [22 x i8] c"limit_speed_to_24_MHz\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 223, i32 13 }
@___asan_gen_.163 = private unnamed_addr constant [21 x i8] c"pad_input_to_usb_pkt\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 227, i32 13 }
@___asan_gen_.166 = private unnamed_addr constant [27 x i8] c"disable_offload_processing\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 232, i32 13 }
@___asan_gen_.169 = private unnamed_addr constant [23 x i8] c"force_1_bit_data_xfers\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 236, i32 13 }
@___asan_gen_.172 = private unnamed_addr constant [23 x i8] c"force_polling_for_irqs\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 241, i32 13 }
@___asan_gen_.175 = private unnamed_addr constant [25 x i8] c"firmware_irqpoll_timeout\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 245, i32 12 }
@___asan_gen_.178 = private unnamed_addr constant [19 x i8] c"force_max_req_size\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 249, i32 12 }
@___asan_gen_.181 = private unnamed_addr constant [25 x i8] c"firmware_rom_wait_states\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 256, i32 12 }
@___asan_gen_.184 = private unnamed_addr constant [14 x i8] c"vub300_driver\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 2402, i32 26 }
@___asan_gen_.187 = private unnamed_addr constant [14 x i8] c"cmndworkqueue\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 273, i32 33 }
@___asan_gen_.190 = private unnamed_addr constant [14 x i8] c"pollworkqueue\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 274, i32 33 }
@___asan_gen_.193 = private unnamed_addr constant [14 x i8] c"deadworkqueue\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 275, i32 33 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 2403, i32 10 }
@___asan_gen_.199 = private unnamed_addr constant [13 x i8] c"vub300_table\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 266, i32 35 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 2099, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 2117, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 2136, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant [15 x i8] c"vub300_mmc_ops\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 2073, i32 34 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 2177, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 2178, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 2221, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 2236, i32 5 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 2248, i32 5 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 2253, i32 4 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 2260, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 2268, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 2288, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 2312, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 2313, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 2314, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 2316, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 2318, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 2323, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 2328, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 1996, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 1999, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.389 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 87, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 511, i32 3 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 521, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 1361, i32 5 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 1367, i32 40 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 1370, i32 63 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 1371, i32 2 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 1208, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 1213, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 1216, i32 3 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 1249, i32 4 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 1259, i32 3 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 1292, i32 4 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 1302, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 1331, i32 3 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 1336, i32 3 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 907, i32 5 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 2365, i32 4 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 2418, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 2420, i32 18 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 2422, i32 3 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 2426, i32 18 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 2428, i32 3 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 2432, i32 18 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 2434, i32 3 }
@___asan_gen_.511 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.514 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.515 = private constant [29 x i8] c"../drivers/mmc/host/vub300.c\00", align 1
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 2440, i32 3 }
@___asan_gen_.517 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@___asan_gen_.518 = private unnamed_addr constant [8 x i8] c"str.140\00", align 1
@___asan_gen_.519 = private unnamed_addr constant [8 x i8] c"str.141\00", align 1
@___asan_gen_.520 = private unnamed_addr constant [8 x i8] c"str.142\00", align 1
@___asan_gen_.521 = private unnamed_addr constant [8 x i8] c"str.143\00", align 1
@___asan_gen_.522 = private unnamed_addr constant [8 x i8] c"str.144\00", align 1
@___asan_gen_.523 = private unnamed_addr constant [8 x i8] c"str.145\00", align 1
@___asan_gen_.524 = private unnamed_addr constant [8 x i8] c"str.146\00", align 1
@___asan_gen_.525 = private unnamed_addr constant [8 x i8] c"str.147\00", align 1
@___asan_gen_.526 = private unnamed_addr constant [8 x i8] c"str.148\00", align 1
@___asan_gen_.527 = private unnamed_addr constant [8 x i8] c"str.149\00", align 1
@___asan_gen_.528 = private unnamed_addr constant [35 x i8] c"switch.table.command_res_completed\00", align 1
@___asan_gen_.529 = private unnamed_addr constant [39 x i8] c"switch.table.command_res_completed.150\00", align 1
@___asan_gen_.530 = private unnamed_addr constant [35 x i8] c"switch.table.vub300_response_error\00", align 1
@llvm.compiler.used = appending global [206 x ptr] [ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_disable_offload_processing281, ptr @__UNIQUE_ID_disable_offload_processingtype280, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_firmware_irqpoll_timeout287, ptr @__UNIQUE_ID_firmware_irqpoll_timeouttype286, ptr @__UNIQUE_ID_firmware_rom_wait_states291, ptr @__UNIQUE_ID_firmware_rom_wait_statestype290, ptr @__UNIQUE_ID_force_1_bit_data_xfers283, ptr @__UNIQUE_ID_force_1_bit_data_xferstype282, ptr @__UNIQUE_ID_force_max_req_size289, ptr @__UNIQUE_ID_force_max_req_sizetype288, ptr @__UNIQUE_ID_force_polling_for_irqs285, ptr @__UNIQUE_ID_force_polling_for_irqstype284, ptr @__UNIQUE_ID_license297, ptr @__UNIQUE_ID_limit_speed_to_24_MHz277, ptr @__UNIQUE_ID_limit_speed_to_24_MHztype276, ptr @__UNIQUE_ID_pad_input_to_usb_pkt279, ptr @__UNIQUE_ID_pad_input_to_usb_pkttype278, ptr @__download_offload_pseudocode._entry, ptr @__download_offload_pseudocode._entry.102, ptr @__download_offload_pseudocode._entry.106, ptr @__download_offload_pseudocode._entry.110, ptr @__download_offload_pseudocode._entry.113, ptr @__download_offload_pseudocode._entry.87, ptr @__download_offload_pseudocode._entry.90, ptr @__download_offload_pseudocode._entry.94, ptr @__download_offload_pseudocode._entry.98, ptr @__download_offload_pseudocode._entry_ptr, ptr @__download_offload_pseudocode._entry_ptr.100, ptr @__download_offload_pseudocode._entry_ptr.104, ptr @__download_offload_pseudocode._entry_ptr.108, ptr @__download_offload_pseudocode._entry_ptr.112, ptr @__download_offload_pseudocode._entry_ptr.115, ptr @__download_offload_pseudocode._entry_ptr.89, ptr @__download_offload_pseudocode._entry_ptr.92, ptr @__download_offload_pseudocode._entry_ptr.96, ptr @__exitcall_vub300_exit, ptr @__initcall__kmod_vub300__293_2465_vub300_init6, ptr @__param_disable_offload_processing, ptr @__param_firmware_irqpoll_timeout, ptr @__param_firmware_rom_wait_states, ptr @__param_force_1_bit_data_xfers, ptr @__param_force_max_req_size, ptr @__param_force_polling_for_irqs, ptr @__param_limit_speed_to_24_MHz, ptr @__param_pad_input_to_usb_pkt, ptr @__set_clock_speed._entry, ptr @__set_clock_speed._entry_ptr, ptr @download_offload_pseudocode._entry, ptr @download_offload_pseudocode._entry_ptr, ptr @new_system_port_status._entry, ptr @new_system_port_status._entry.74, ptr @new_system_port_status._entry_ptr, ptr @new_system_port_status._entry_ptr.76, ptr @send_command._entry, ptr @send_command._entry_ptr, ptr @vub300_disconnect._entry, ptr @vub300_disconnect._entry_ptr, ptr @vub300_exit, ptr @vub300_init._entry, ptr @vub300_init._entry.126, ptr @vub300_init._entry.130, ptr @vub300_init._entry.134, ptr @vub300_init._entry.137, ptr @vub300_init._entry_ptr, ptr @vub300_init._entry_ptr.128, ptr @vub300_init._entry_ptr.132, ptr @vub300_init._entry_ptr.136, ptr @vub300_init._entry_ptr.139, ptr @vub300_probe._entry, ptr @vub300_probe._entry.10, ptr @vub300_probe._entry.16, ptr @vub300_probe._entry.22, ptr @vub300_probe._entry.26, ptr @vub300_probe._entry.29, ptr @vub300_probe._entry.32, ptr @vub300_probe._entry.37, ptr @vub300_probe._entry.40, ptr @vub300_probe._entry.6, ptr @vub300_probe._entry.61, ptr @vub300_probe._entry.64, ptr @vub300_probe._entry_ptr, ptr @vub300_probe._entry_ptr.12, ptr @vub300_probe._entry_ptr.18, ptr @vub300_probe._entry_ptr.25, ptr @vub300_probe._entry_ptr.28, ptr @vub300_probe._entry_ptr.31, ptr @vub300_probe._entry_ptr.34, ptr @vub300_probe._entry_ptr.39, ptr @vub300_probe._entry_ptr.42, ptr @vub300_probe._entry_ptr.63, ptr @vub300_probe._entry_ptr.66, ptr @vub300_probe._entry_ptr.9, ptr @limit_speed_to_24_MHz, ptr @pad_input_to_usb_pkt, ptr @disable_offload_processing, ptr @force_1_bit_data_xfers, ptr @force_polling_for_irqs, ptr @firmware_irqpoll_timeout, ptr @force_max_req_size, ptr @firmware_rom_wait_states, ptr @vub300_driver, ptr @cmndworkqueue, ptr @pollworkqueue, ptr @deadworkqueue, ptr @.str, ptr @vub300_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.11, ptr @vub300_mmc_ops, ptr @vub300_probe.__key, ptr @.str.13, ptr @vub300_probe.__key.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @vub300_probe.__key.49, ptr @.str.50, ptr @vub300_probe.__key.51, ptr @.str.52, ptr @vub300_probe.__key.53, ptr @.str.54, ptr @vub300_probe.__key.55, ptr @.str.56, ptr @vub300_probe.__key.57, ptr @.str.58, ptr @vub300_probe.__key.59, ptr @.str.60, ptr @.str.62, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @init_completion.__key, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.75, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.85, ptr @.str.86, ptr @.str.88, ptr @.str.91, ptr @.str.95, ptr @.str.99, ptr @.str.103, ptr @.str.107, ptr @.str.111, ptr @.str.114, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.127, ptr @.str.129, ptr @.str.131, ptr @.str.133, ptr @.str.135, ptr @.str.138, ptr @str, ptr @str.140, ptr @str.141, ptr @str.142, ptr @str.143, ptr @str.144, ptr @str.145, ptr @str.146, ptr @str.147, ptr @str.148, ptr @str.149, ptr @switch.table.command_res_completed, ptr @switch.table.command_res_completed.150, ptr @switch.table.vub300_response_error], section "llvm.metadata"
@0 = internal global [133 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @limit_speed_to_24_MHz to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pad_input_to_usb_pkt to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disable_offload_processing to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @force_1_bit_data_xfers to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @force_polling_for_irqs to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @firmware_irqpoll_timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @force_max_req_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @firmware_rom_wait_states to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vub300_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmndworkqueue to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pollworkqueue to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deadworkqueue to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vub300_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vub300_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vub300_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vub300_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vub300_mmc_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vub300_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vub300_probe.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vub300_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vub300_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vub300_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vub300_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vub300_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vub300_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vub300_probe._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vub300_probe.__key.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vub300_probe.__key.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vub300_probe.__key.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vub300_probe.__key.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vub300_probe.__key.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vub300_probe.__key.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vub300_probe._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vub300_probe._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @new_system_port_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @new_system_port_status._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @download_offload_pseudocode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vub300_disconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vub300_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vub300_init._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vub300_init._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vub300_init._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vub300_init._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.140 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.141 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.142 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.143 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.144 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.145 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.146 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.147 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.148 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.149 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.command_res_completed to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.command_res_completed.150 to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vub300_response_error to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vub300_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @usb_deregister(ptr noundef nonnull @vub300_driver) #15
  %0 = load ptr, ptr @cmndworkqueue, align 4
  tail call void @flush_workqueue(ptr noundef %0) #15
  %1 = load ptr, ptr @pollworkqueue, align 4
  tail call void @flush_workqueue(ptr noundef %1) #15
  %2 = load ptr, ptr @deadworkqueue, align 4
  tail call void @flush_workqueue(ptr noundef %2) #15
  %3 = load ptr, ptr @cmndworkqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %3) #15
  %4 = load ptr, ptr @pollworkqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %4) #15
  %5 = load ptr, ptr @deadworkqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %5) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vub300_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @firmware_rom_wait_states, align 4
  %1 = load i32, ptr @firmware_irqpoll_timeout, align 4
  %and = and i32 %1, 65535
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, i32 noundef %0, i32 noundef %and) #18
  %call1 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.124, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str.125) #15
  store ptr %call1, ptr @cmndworkqueue, align 4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end4, label %if.end

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %call7 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.124, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str.129) #15
  store ptr %call7, ptr @pollworkqueue, align 4
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %do.end12, label %if.end15

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131) #18
  br label %out2

if.end15:                                         ; preds = %if.end
  %call16 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.124, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str.133) #15
  store ptr %call16, ptr @deadworkqueue, align 4
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %do.end21, label %if.end24

do.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.135) #18
  br label %out3

if.end24:                                         ; preds = %if.end15
  %call25 = tail call i32 @usb_register_driver(ptr noundef nonnull @vub300_driver, ptr noundef null, ptr noundef nonnull @.str) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end24.cleanup_crit_edge, label %do.end30

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end30:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, i32 noundef %call25) #18
  %2 = load ptr, ptr @deadworkqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %2) #15
  br label %out3

out3:                                             ; preds = %do.end30, %do.end21
  %result.0 = phi i32 [ %call25, %do.end30 ], [ -12, %do.end21 ]
  %3 = load ptr, ptr @pollworkqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %3) #15
  br label %out2

out2:                                             ; preds = %out3, %do.end12
  %result.1 = phi i32 [ %result.0, %out3 ], [ -12, %do.end12 ]
  %4 = load ptr, ptr @cmndworkqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %4) #15
  br label %cleanup

cleanup:                                          ; preds = %out2, %if.end24.cleanup_crit_edge, %do.end4
  %retval.0 = phi i32 [ 0, %if.end24.cleanup_crit_edge ], [ %result.1, %out2 ], [ -12, %do.end4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vub300_probe(ptr noundef %interface, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %manufacturer = alloca [48 x i8], align 1
  %product = alloca [32 x i8], align 1
  %serial_number = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %call1 = tail call ptr @usb_get_dev(ptr noundef %add.ptr.i) #15
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %manufacturer) #15
  %2 = call ptr @memset(ptr %manufacturer, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %product) #15
  %3 = call ptr @memset(ptr %product, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %serial_number) #15
  %iManufacturer = getelementptr inbounds %struct.usb_device, ptr %call1, i32 0, i32 16, i32 10
  %4 = call ptr @memset(ptr %serial_number, i32 255, i32 32)
  %5 = ptrtoint ptr %iManufacturer to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %iManufacturer, align 2
  %conv = zext i8 %6 to i32
  %call3 = call i32 @usb_string(ptr noundef %call1, i32 noundef %conv, ptr noundef nonnull %manufacturer, i32 noundef 48) #15
  %iProduct = getelementptr inbounds %struct.usb_device, ptr %call1, i32 0, i32 16, i32 11
  %7 = ptrtoint ptr %iProduct to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %iProduct, align 1
  %conv5 = zext i8 %8 to i32
  %call7 = call i32 @usb_string(ptr noundef %call1, i32 noundef %conv5, ptr noundef nonnull %product, i32 noundef 32) #15
  %iSerialNumber = getelementptr inbounds %struct.usb_device, ptr %call1, i32 0, i32 16, i32 12
  %9 = ptrtoint ptr %iSerialNumber to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %iSerialNumber, align 8
  %conv9 = zext i8 %10 to i32
  %call11 = call i32 @usb_string(ptr noundef %call1, i32 noundef %conv9, ptr noundef nonnull %serial_number, i32 noundef 32) #15
  %dev = getelementptr inbounds %struct.usb_device, ptr %call1, i32 0, i32 15
  %idVendor = getelementptr inbounds %struct.usb_device, ptr %call1, i32 0, i32 16, i32 7
  %11 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %idVendor, align 8
  %13 = call i16 @llvm.bswap.i16(i16 %12)
  %conv13 = zext i16 %13 to i32
  %idProduct = getelementptr inbounds %struct.usb_device, ptr %call1, i32 0, i32 16, i32 8
  %14 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %idProduct, align 2
  %16 = call i16 @llvm.bswap.i16(i16 %15)
  %conv15 = zext i16 %16 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %conv13, i32 noundef %conv15, ptr noundef nonnull %manufacturer, ptr noundef nonnull %product, ptr noundef nonnull %serial_number) #18
  %call19 = call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #15
  %tobool.not = icmp eq ptr %call19, null
  br i1 %tobool.not, label %entry.error0_crit_edge, label %if.end

entry.error0_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %error0

if.end:                                           ; preds = %entry
  %call20 = call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #15
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %if.end.error1_crit_edge, label %if.end23

if.end.error1_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %error1

if.end23:                                         ; preds = %if.end
  %call25 = call ptr @mmc_alloc_host(i32 noundef 2432, ptr noundef %dev) #15
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %if.then27, label %if.end32

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #18
  br label %error4

if.end32:                                         ; preds = %if.end23
  %caps = getelementptr inbounds %struct.mmc_host, ptr %call25, i32 0, i32 16
  %17 = load i8, ptr @force_1_bit_data_xfers, align 1, !range !314
  %18 = xor i8 %17, 1
  %19 = zext i8 %18 to i32
  %20 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %caps, align 32
  %21 = load i8, ptr @force_polling_for_irqs, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool37.not = icmp eq i8 %21, 0
  br i1 %tobool37.not, label %if.then38, label %if.end32.if.end41_crit_edge

if.end32.if.end41_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end41

if.then38:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  %or40 = or i32 %19, 8
  %22 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or40, ptr %caps, align 32
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %if.end32.if.end41_crit_edge
  %23 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %caps, align 32
  %and = and i32 %24, -33
  store i32 %and, ptr %caps, align 32
  %25 = load i8, ptr @limit_speed_to_24_MHz, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool43.not = icmp eq i8 %25, 0
  %or56 = or i32 %and, 6
  %26 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or56, ptr %caps, align 32
  %f_max57 = getelementptr inbounds %struct.mmc_host, ptr %call25, i32 0, i32 6
  br i1 %tobool43.not, label %if.else, label %if.then44

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #17
  %27 = ptrtoint ptr %f_max57 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 24000000, ptr %f_max57, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.11) #18
  br label %if.end58

if.else:                                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #17
  %28 = ptrtoint ptr %f_max57 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 48000000, ptr %f_max57, align 8
  br label %if.end58

if.end58:                                         ; preds = %if.else, %if.then44
  %f_min = getelementptr inbounds %struct.mmc_host, ptr %call25, i32 0, i32 5
  %29 = ptrtoint ptr %f_min to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 200000, ptr %f_min, align 4
  %max_blk_count = getelementptr inbounds %struct.mmc_host, ptr %call25, i32 0, i32 25
  %30 = ptrtoint ptr %max_blk_count to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 511, ptr %max_blk_count, align 128
  %max_blk_size = getelementptr inbounds %struct.mmc_host, ptr %call25, i32 0, i32 24
  %31 = ptrtoint ptr %max_blk_size to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 512, ptr %max_blk_size, align 4
  %max_segs = getelementptr inbounds %struct.mmc_host, ptr %call25, i32 0, i32 21
  %32 = ptrtoint ptr %max_segs to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 128, ptr %max_segs, align 4
  %33 = load i32, ptr @force_max_req_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool59.not = icmp eq i32 %33, 0
  %mul = shl i32 %33, 10
  %spec.select = select i1 %tobool59.not, i32 65536, i32 %mul
  %34 = getelementptr inbounds %struct.mmc_host, ptr %call25, i32 0, i32 23
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %spec.select, ptr %34, align 8
  %max_seg_size = getelementptr inbounds %struct.mmc_host, ptr %call25, i32 0, i32 20
  %36 = ptrtoint ptr %max_seg_size to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %spec.select, ptr %max_seg_size, align 16
  %ocr_avail = getelementptr inbounds %struct.mmc_host, ptr %call25, i32 0, i32 8
  %37 = ptrtoint ptr %ocr_avail to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 16777088, ptr %ocr_avail, align 64
  %ops = getelementptr inbounds %struct.mmc_host, ptr %call25, i32 0, i32 3
  %38 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @vub300_mmc_ops, ptr %ops, align 4
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %call25, i32 0, i32 70
  %mmc100 = getelementptr inbounds %struct.mmc_host, ptr %call25, i32 1, i32 57, i32 13
  %39 = ptrtoint ptr %mmc100 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call25, ptr %mmc100, align 4
  %card_powered = getelementptr inbounds %struct.mmc_host, ptr %call25, i32 1, i32 1, i32 10, i32 1, i32 2
  %40 = ptrtoint ptr %card_powered to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %card_powered, align 4
  %bus_width = getelementptr inbounds %struct.vub300_mmc_host, ptr %private.i, i32 0, i32 17
  %41 = ptrtoint ptr %bus_width to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load = load i8, ptr %bus_width, align 1
  %bf.clear = and i8 %bf.load, 15
  store i8 %bf.clear, ptr %bus_width, align 1
  %block_size = getelementptr inbounds %struct.mmc_host, ptr %call25, i32 1, i32 67, i32 5, i32 6, i32 1
  %42 = ptrtoint ptr %block_size to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %block_size, align 4
  %arrayidx103 = getelementptr %struct.vub300_mmc_host, ptr %private.i, i32 0, i32 38, i32 0, i32 9, i32 1
  %43 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %arrayidx103, align 1
  %app_spec = getelementptr inbounds %struct.mmc_host, ptr %call25, i32 1, i32 1, i32 10, i32 1, i32 3
  %44 = ptrtoint ptr %app_spec to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %app_spec, align 4
  %cmd_mutex = getelementptr inbounds %struct.mmc_host, ptr %call25, i32 1, i32 1, i32 0, i32 1
  call void @__mutex_init(ptr noundef %cmd_mutex, ptr noundef nonnull @.str.13, ptr noundef nonnull @vub300_probe.__key) #15
  %irq_mutex = getelementptr inbounds %struct.mmc_host, ptr %call25, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4
  call void @__mutex_init(ptr noundef %irq_mutex, ptr noundef nonnull @.str.15, ptr noundef nonnull @vub300_probe.__key.14) #15
  %command_out_urb110 = getelementptr inbounds %struct.mmc_host, ptr %call25, i32 1, i32 59
  %45 = ptrtoint ptr %command_out_urb110 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call19, ptr %command_out_urb110, align 4
  %command_res_urb111 = getelementptr inbounds %struct.mmc_host, ptr %call25, i32 1, i32 60
  %46 = ptrtoint ptr %command_res_urb111 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call20, ptr %command_res_urb111, align 4
  %usb_timed_out = getelementptr inbounds %struct.mmc_host, ptr %call25, i32 1, i32 1, i32 10, i32 1, i32 4, i32 3
  %47 = ptrtoint ptr %usb_timed_out to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %usb_timed_out, align 4
  %dynamic_register_count = getelementptr inbounds %struct.vub300_mmc_host, ptr %private.i, i32 0, i32 19
  %48 = ptrtoint ptr %dynamic_register_count to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %dynamic_register_count, align 1
  %arrayidx113 = getelementptr %struct.mmc_host, ptr %call25, i32 1, i32 1, i32 12, i32 5, i32 1, i32 1
  %offload_point = getelementptr %struct.mmc_host, ptr %call25, i32 1, i32 1, i32 12, i32 5, i32 1, i32 1, i32 1
  %49 = ptrtoint ptr %offload_point to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %offload_point, align 4
  %50 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %arrayidx113, align 4
  %arrayidx113.1 = getelementptr %struct.mmc_host, ptr %call25, i32 1, i32 1, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4, i32 1
  %offload_point.1 = getelementptr %struct.mmc_host, ptr %call25, i32 1, i32 1, i32 12, i32 11, i32 0, i32 0, i32 0, i32 4, i32 1, i32 1
  %51 = ptrtoint ptr %offload_point.1 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %offload_point.1, align 4
  %52 = ptrtoint ptr %arrayidx113.1 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %arrayidx113.1, align 4
  %arrayidx113.2 = getelementptr %struct.mmc_host, ptr %call25, i32 1, i32 1, i32 16, i32 1
  %offload_point.2 = getelementptr %struct.mmc_host, ptr %call25, i32 1, i32 1, i32 17
  %53 = ptrtoint ptr %offload_point.2 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %offload_point.2, align 4
  %54 = ptrtoint ptr %arrayidx113.2 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %arrayidx113.2, align 4
  %arrayidx113.3 = getelementptr %struct.mmc_host, ptr %call25, i32 1, i32 1, i32 34
  %offload_point.3 = getelementptr %struct.mmc_host, ptr %call25, i32 1, i32 1, i32 35
  %55 = ptrtoint ptr %offload_point.3 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %offload_point.3, align 4
  %56 = ptrtoint ptr %arrayidx113.3 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %arrayidx113.3, align 4
  %arrayidx113.4 = getelementptr %struct.mmc_host, ptr %call25, i32 1, i32 27, i32 0, i32 0, i32 4
  %offload_point.4 = getelementptr %struct.mmc_host, ptr %call25, i32 1, i32 27, i32 0, i32 0, i32 4, i32 1
  %57 = ptrtoint ptr %offload_point.4 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %offload_point.4, align 4
  %58 = ptrtoint ptr %arrayidx113.4 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %arrayidx113.4, align 4
  %arrayidx113.5 = getelementptr %struct.mmc_host, ptr %call25, i32 1, i32 38, i32 0, i32 0, i32 0, i32 2
  %offload_point.5 = getelementptr %struct.mmc_host, ptr %call25, i32 1, i32 38, i32 0, i32 0, i32 0, i32 3
  %59 = ptrtoint ptr %offload_point.5 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %offload_point.5, align 4
  %60 = ptrtoint ptr %arrayidx113.5 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %arrayidx113.5, align 4
  %arrayidx113.6 = getelementptr %struct.mmc_host, ptr %call25, i32 1, i32 42, i32 1, i32 4, i32 3
  %offload_point.6 = getelementptr %struct.mmc_host, ptr %call25, i32 1, i32 42, i32 1, i32 4, i32 6
  %61 = ptrtoint ptr %offload_point.6 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %offload_point.6, align 4
  %62 = ptrtoint ptr %arrayidx113.6 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %arrayidx113.6, align 4
  %arrayidx113.7 = getelementptr %struct.mmc_host, ptr %call25, i32 1, i32 48, i32 1, i32 4, i32 7
  %offload_point.7 = getelementptr %struct.mmc_host, ptr %call25, i32 1, i32 48, i32 2
  %63 = ptrtoint ptr %offload_point.7 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %offload_point.7, align 4
  %64 = ptrtoint ptr %arrayidx113.7 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %arrayidx113.7, align 4
  %total_offload_count = getelementptr inbounds %struct.mmc_host, ptr %call25, i32 1, i32 1, i32 10, i32 1, i32 4
  %65 = ptrtoint ptr %total_offload_count to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %total_offload_count, align 4
  %irq_enabled = getelementptr inbounds %struct.vub300_mmc_host, ptr %private.i, i32 0, i32 15
  %66 = ptrtoint ptr %irq_enabled to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %irq_enabled, align 1
  %irq_disabled = getelementptr inbounds %struct.vub300_mmc_host, ptr %private.i, i32 0, i32 16
  %67 = ptrtoint ptr %irq_disabled to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %irq_disabled, align 2
  %irqs_queued = getelementptr inbounds %struct.mmc_host, ptr %call25, i32 1, i32 1, i32 10, i32 1, i32 4, i32 6
  %68 = ptrtoint ptr %irqs_queued to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %irqs_queued, align 4
  %arrayidx121 = getelementptr %struct.mmc_host, ptr %call25, i32 1, i32 1, i32 10, i32 1, i32 4, i32 7
  %69 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load4_noabort(i32 %69)
  %bf.load122 = load i32, ptr %arrayidx121, align 4
  %bf.clear123 = and i32 %bf.load122, -2049
  store i32 %bf.clear123, ptr %arrayidx121, align 4
  %arrayidx121.1 = getelementptr %struct.mmc_host, ptr %call25, i32 1, i32 1, i32 10, i32 5, i32 1
  %70 = ptrtoint ptr %arrayidx121.1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %bf.load122.1 = load i32, ptr %arrayidx121.1, align 4
  %bf.clear123.1 = and i32 %bf.load122.1, -2049
  store i32 %bf.clear123.1, ptr %arrayidx121.1, align 4
  %arrayidx121.2 = getelementptr %struct.mmc_host, ptr %call25, i32 1, i32 1, i32 11
  %71 = ptrtoint ptr %arrayidx121.2 to i32
  call void @__asan_load4_noabort(i32 %71)
  %bf.load122.2 = load i32, ptr %arrayidx121.2, align 4
  %bf.clear123.2 = and i32 %bf.load122.2, -2049
  store i32 %bf.clear123.2, ptr %arrayidx121.2, align 4
  %arrayidx121.3 = getelementptr %struct.mmc_host, ptr %call25, i32 1, i32 1, i32 11, i32 3
  %72 = ptrtoint ptr %arrayidx121.3 to i32
  call void @__asan_load4_noabort(i32 %72)
  %bf.load122.3 = load i32, ptr %arrayidx121.3, align 4
  %bf.clear123.3 = and i32 %bf.load122.3, -2049
  store i32 %bf.clear123.3, ptr %arrayidx121.3, align 4
  %arrayidx121.4 = getelementptr %struct.mmc_host, ptr %call25, i32 1, i32 1, i32 12, i32 3, i32 0, i32 0, i32 1
  %73 = ptrtoint ptr %arrayidx121.4 to i32
  call void @__asan_load4_noabort(i32 %73)
  %bf.load122.4 = load i32, ptr %arrayidx121.4, align 4
  %bf.clear123.4 = and i32 %bf.load122.4, -2049
  store i32 %bf.clear123.4, ptr %arrayidx121.4, align 4
  %arrayidx121.5 = getelementptr %struct.mmc_host, ptr %call25, i32 1, i32 1, i32 12, i32 3, i32 0, i32 0, i32 4, i32 2
  %74 = ptrtoint ptr %arrayidx121.5 to i32
  call void @__asan_load4_noabort(i32 %74)
  %bf.load122.5 = load i32, ptr %arrayidx121.5, align 4
  %bf.clear123.5 = and i32 %bf.load122.5, -2049
  store i32 %bf.clear123.5, ptr %arrayidx121.5, align 4
  %arrayidx121.6 = getelementptr %struct.mmc_host, ptr %call25, i32 1, i32 1, i32 12, i32 5
  %75 = ptrtoint ptr %arrayidx121.6 to i32
  call void @__asan_load4_noabort(i32 %75)
  %bf.load122.6 = load i32, ptr %arrayidx121.6, align 4
  %bf.clear123.6 = and i32 %bf.load122.6, -2049
  store i32 %bf.clear123.6, ptr %arrayidx121.6, align 4
  %arrayidx121.7 = getelementptr %struct.mmc_host, ptr %call25, i32 1, i32 1, i32 12, i32 5, i32 1, i32 0, i32 4, i32 1
  %76 = ptrtoint ptr %arrayidx121.7 to i32
  call void @__asan_load4_noabort(i32 %76)
  %bf.load122.7 = load i32, ptr %arrayidx121.7, align 4
  %bf.clear123.7 = and i32 %bf.load122.7, -2049
  store i32 %bf.clear123.7, ptr %arrayidx121.7, align 4
  %77 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call1, ptr %private.i, align 4
  %interface129 = getelementptr inbounds %struct.vub300_mmc_host, ptr %private.i, i32 0, i32 1
  %78 = ptrtoint ptr %interface129 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %interface, ptr %interface129, align 4
  %cmnd_res_ep = getelementptr inbounds %struct.vub300_mmc_host, ptr %private.i, i32 0, i32 7
  %cmnd_out_ep = getelementptr inbounds %struct.mmc_host, ptr %call25, i32 1, i32 1, i32 10, i32 1, i32 1
  %data_inp_ep = getelementptr inbounds %struct.vub300_mmc_host, ptr %private.i, i32 0, i32 9
  %data_out_ep = getelementptr inbounds %struct.vub300_mmc_host, ptr %private.i, i32 0, i32 8
  %arrayidx134 = getelementptr %struct.mmc_host, ptr %call25, i32 1, i32 57, i32 12, i32 0, i32 4, i32 7
  %79 = ptrtoint ptr %cmnd_out_ep to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %cmnd_out_ep, align 4
  %80 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 512, ptr %arrayidx134, align 2
  %arrayidx134.1 = getelementptr %struct.vub300_mmc_host, ptr %private.i, i32 0, i32 28, i32 1
  %81 = ptrtoint ptr %arrayidx134.1 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 512, ptr %arrayidx134.1, align 2
  %arrayidx134.2 = getelementptr %struct.mmc_host, ptr %call25, i32 1, i32 57, i32 12, i32 1
  %82 = ptrtoint ptr %arrayidx134.2 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 512, ptr %arrayidx134.2, align 2
  %arrayidx134.3 = getelementptr %struct.vub300_mmc_host, ptr %private.i, i32 0, i32 28, i32 3
  %83 = ptrtoint ptr %arrayidx134.3 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 512, ptr %arrayidx134.3, align 2
  %arrayidx134.4 = getelementptr %struct.mmc_host, ptr %call25, i32 1, i32 57, i32 12, i32 2
  %84 = ptrtoint ptr %arrayidx134.4 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 512, ptr %arrayidx134.4, align 2
  %arrayidx134.5 = getelementptr %struct.vub300_mmc_host, ptr %private.i, i32 0, i32 28, i32 5
  %85 = ptrtoint ptr %arrayidx134.5 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 512, ptr %arrayidx134.5, align 2
  %arrayidx134.6 = getelementptr %struct.mmc_host, ptr %call25, i32 1, i32 57, i32 12, i32 3
  %86 = ptrtoint ptr %arrayidx134.6 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 512, ptr %arrayidx134.6, align 2
  %arrayidx134.7 = getelementptr %struct.vub300_mmc_host, ptr %private.i, i32 0, i32 28, i32 7
  %87 = ptrtoint ptr %arrayidx134.7 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 512, ptr %arrayidx134.7, align 2
  %large_usb_packets = getelementptr inbounds %struct.vub300_mmc_host, ptr %private.i, i32 0, i32 13
  %88 = ptrtoint ptr %large_usb_packets to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %large_usb_packets, align 1
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 1
  %89 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %cur_altsetting, align 4
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %90, i32 0, i32 4
  %91 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %bNumEndpoints, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %cmp140635.not = icmp eq i8 %92, 0
  br i1 %cmp140635.not, label %if.end58.for.end220_crit_edge, label %for.body142.lr.ph

if.end58.for.end220_crit_edge:                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end220

for.body142.lr.ph:                                ; preds = %if.end58
  %endpoint143 = getelementptr inbounds %struct.usb_host_interface, ptr %90, i32 0, i32 3
  br label %for.body142

for.body142:                                      ; preds = %if.end217.for.body142_crit_edge, %for.body142.lr.ph
  %i.3636 = phi i32 [ 0, %for.body142.lr.ph ], [ %inc219, %if.end217.for.body142_crit_edge ]
  %93 = ptrtoint ptr %endpoint143 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %endpoint143, align 4
  %arrayidx144 = getelementptr %struct.usb_host_endpoint, ptr %94, i32 %i.3636
  %95 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %private.i, align 4
  %dev150 = getelementptr inbounds %struct.usb_device, ptr %96, i32 0, i32 15
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx144, i32 0, i32 3
  %97 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %bmAttributes.i.i, align 1
  %99 = and i8 %98, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %99)
  %cmp.i.not.i = icmp eq i8 %99, 2
  br i1 %cmp.i.not.i, label %usb_endpoint_is_bulk_in.exit, label %for.body142.usb_endpoint_is_bulk_out.exit.thread_crit_edge

for.body142.usb_endpoint_is_bulk_out.exit.thread_crit_edge: ; preds = %for.body142
  call void @__sanitizer_cov_trace_pc() #17
  br label %usb_endpoint_is_bulk_out.exit.thread

usb_endpoint_is_bulk_in.exit:                     ; preds = %for.body142
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx144, i32 0, i32 2
  %100 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %bEndpointAddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %101)
  %tobool152.not = icmp sgt i8 %101, -1
  br i1 %tobool152.not, label %usb_endpoint_is_bulk_out.exit, label %usb_endpoint_is_bulk_in.exit.cond.end_crit_edge

usb_endpoint_is_bulk_in.exit.cond.end_crit_edge:  ; preds = %usb_endpoint_is_bulk_in.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

usb_endpoint_is_bulk_out.exit:                    ; preds = %usb_endpoint_is_bulk_in.exit
  %102 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %bEndpointAddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool154.not = icmp slt i8 %103, 0
  br i1 %tobool154.not, label %usb_endpoint_is_bulk_out.exit.usb_endpoint_is_bulk_out.exit.thread_crit_edge, label %usb_endpoint_is_bulk_out.exit.cond.end_crit_edge

usb_endpoint_is_bulk_out.exit.cond.end_crit_edge: ; preds = %usb_endpoint_is_bulk_out.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

usb_endpoint_is_bulk_out.exit.usb_endpoint_is_bulk_out.exit.thread_crit_edge: ; preds = %usb_endpoint_is_bulk_out.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %usb_endpoint_is_bulk_out.exit.thread

usb_endpoint_is_bulk_out.exit.thread:             ; preds = %usb_endpoint_is_bulk_out.exit.usb_endpoint_is_bulk_out.exit.thread_crit_edge, %for.body142.usb_endpoint_is_bulk_out.exit.thread_crit_edge
  br label %cond.end

cond.end:                                         ; preds = %usb_endpoint_is_bulk_out.exit.thread, %usb_endpoint_is_bulk_out.exit.cond.end_crit_edge, %usb_endpoint_is_bulk_in.exit.cond.end_crit_edge
  %cond155 = phi ptr [ @.str.19, %usb_endpoint_is_bulk_in.exit.cond.end_crit_edge ], [ @.str.21, %usb_endpoint_is_bulk_out.exit.thread ], [ @.str.20, %usb_endpoint_is_bulk_out.exit.cond.end_crit_edge ]
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx144, i32 0, i32 2
  %104 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %bEndpointAddress, align 1
  %conv156 = zext i8 %105 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev150, ptr noundef nonnull @.str.17, ptr noundef nonnull %cond155, i32 noundef %i.3636, i32 noundef %conv156) #18
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx144, i32 0, i32 4
  %106 = ptrtoint ptr %wMaxPacketSize to i32
  call void @__asan_loadN_noabort(i32 %106, i32 2)
  %107 = load i16, ptr %wMaxPacketSize, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %107)
  %cmp158 = icmp ugt i16 %107, 64
  br i1 %cmp158, label %if.then160, label %cond.end.if.end162_crit_edge

cond.end.if.end162_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end162

if.then160:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  %108 = ptrtoint ptr %large_usb_packets to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 1, ptr %large_usb_packets, align 1
  br label %if.end162

if.end162:                                        ; preds = %if.then160, %cond.end.if.end162_crit_edge
  %109 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %bmAttributes.i.i, align 1
  %111 = and i8 %110, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %111)
  %cmp.i.not.i603 = icmp eq i8 %111, 2
  br i1 %cmp.i.not.i603, label %usb_endpoint_is_bulk_in.exit607, label %if.end162.do.end211_crit_edge

if.end162.do.end211_crit_edge:                    ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end211

usb_endpoint_is_bulk_in.exit607:                  ; preds = %if.end162
  %112 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %bEndpointAddress, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %113)
  %tobool164.not = icmp sgt i8 %113, -1
  br i1 %tobool164.not, label %usb_endpoint_is_bulk_out.exit613, label %if.then165

if.then165:                                       ; preds = %usb_endpoint_is_bulk_in.exit607
  %114 = ptrtoint ptr %cmnd_res_ep to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %cmnd_res_ep, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool167.not = icmp eq i8 %115, 0
  br i1 %tobool167.not, label %if.then168, label %if.else171

if.then168:                                       ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #17
  %116 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %bEndpointAddress, align 1
  %118 = ptrtoint ptr %cmnd_res_ep to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %117, ptr %cmnd_res_ep, align 1
  br label %if.end217

if.else171:                                       ; preds = %if.then165
  %119 = ptrtoint ptr %data_inp_ep to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %data_inp_ep, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool173.not = icmp eq i8 %120, 0
  br i1 %tobool173.not, label %if.then174, label %do.end180

if.then174:                                       ; preds = %if.else171
  call void @__sanitizer_cov_trace_pc() #17
  %121 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %bEndpointAddress, align 1
  %123 = ptrtoint ptr %data_inp_ep to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %122, ptr %data_inp_ep, align 1
  br label %if.end217

do.end180:                                        ; preds = %if.else171
  call void @__sanitizer_cov_trace_pc() #17
  %124 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %private.i, align 4
  %dev182 = getelementptr inbounds %struct.usb_device, ptr %125, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev182, ptr noundef nonnull @.str.23) #18
  br label %if.end217

usb_endpoint_is_bulk_out.exit613:                 ; preds = %usb_endpoint_is_bulk_in.exit607
  %126 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %bEndpointAddress, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool187.not = icmp slt i8 %127, 0
  br i1 %tobool187.not, label %usb_endpoint_is_bulk_out.exit613.do.end211_crit_edge, label %if.then188

usb_endpoint_is_bulk_out.exit613.do.end211_crit_edge: ; preds = %usb_endpoint_is_bulk_out.exit613
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end211

if.then188:                                       ; preds = %usb_endpoint_is_bulk_out.exit613
  %128 = ptrtoint ptr %cmnd_out_ep to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %cmnd_out_ep, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool190.not = icmp eq i8 %129, 0
  br i1 %tobool190.not, label %if.then191, label %if.else194

if.then191:                                       ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #17
  %130 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %bEndpointAddress, align 1
  %132 = ptrtoint ptr %cmnd_out_ep to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %131, ptr %cmnd_out_ep, align 4
  br label %if.end217

if.else194:                                       ; preds = %if.then188
  %133 = ptrtoint ptr %data_out_ep to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %data_out_ep, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool196.not = icmp eq i8 %134, 0
  br i1 %tobool196.not, label %if.then197, label %do.end203

if.then197:                                       ; preds = %if.else194
  call void @__sanitizer_cov_trace_pc() #17
  %135 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %bEndpointAddress, align 1
  %137 = ptrtoint ptr %data_out_ep to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %136, ptr %data_out_ep, align 2
  br label %if.end217

do.end203:                                        ; preds = %if.else194
  call void @__sanitizer_cov_trace_pc() #17
  %138 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %private.i, align 4
  %dev205 = getelementptr inbounds %struct.usb_device, ptr %139, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev205, ptr noundef nonnull @.str.27) #18
  br label %if.end217

do.end211:                                        ; preds = %usb_endpoint_is_bulk_out.exit613.do.end211_crit_edge, %if.end162.do.end211_crit_edge
  %140 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %private.i, align 4
  %dev213 = getelementptr inbounds %struct.usb_device, ptr %141, i32 0, i32 15
  %142 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %bEndpointAddress, align 1
  %conv215 = zext i8 %143 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev213, ptr noundef nonnull @.str.30, i32 noundef %i.3636, i32 noundef %conv215) #18
  br label %if.end217

if.end217:                                        ; preds = %do.end211, %do.end203, %if.then197, %if.then191, %do.end180, %if.then174, %if.then168
  %inc219 = add nuw nsw i32 %i.3636, 1
  %144 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %bNumEndpoints, align 4
  %conv139 = zext i8 %145 to i32
  %cmp140 = icmp ult i32 %inc219, %conv139
  br i1 %cmp140, label %if.end217.for.body142_crit_edge, label %if.end217.for.end220_crit_edge

if.end217.for.end220_crit_edge:                   ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end220

if.end217.for.body142_crit_edge:                  ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body142

for.end220:                                       ; preds = %if.end217.for.end220_crit_edge, %if.end58.for.end220_crit_edge
  %146 = ptrtoint ptr %cmnd_res_ep to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %cmnd_res_ep, align 1
  %conv222 = zext i8 %147 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %147)
  %tobool223.not = icmp eq i8 %147, 0
  br i1 %tobool223.not, label %for.end220.do.end256_crit_edge, label %land.lhs.true

for.end220.do.end256_crit_edge:                   ; preds = %for.end220
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end256

land.lhs.true:                                    ; preds = %for.end220
  %148 = ptrtoint ptr %cmnd_out_ep to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %cmnd_out_ep, align 4
  %conv225 = zext i8 %149 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %tobool226.not = icmp eq i8 %149, 0
  br i1 %tobool226.not, label %land.lhs.true.do.end256_crit_edge, label %land.lhs.true227

land.lhs.true.do.end256_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end256

land.lhs.true227:                                 ; preds = %land.lhs.true
  %150 = ptrtoint ptr %data_inp_ep to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %data_inp_ep, align 1
  %conv229 = zext i8 %151 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %151)
  %tobool230.not = icmp eq i8 %151, 0
  br i1 %tobool230.not, label %land.lhs.true227.do.end256_crit_edge, label %land.lhs.true231

land.lhs.true227.do.end256_crit_edge:             ; preds = %land.lhs.true227
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end256

land.lhs.true231:                                 ; preds = %land.lhs.true227
  %152 = ptrtoint ptr %data_out_ep to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %data_out_ep, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %153)
  %tobool234.not = icmp eq i8 %153, 0
  br i1 %tobool234.not, label %land.lhs.true231.do.end256_crit_edge, label %do.end238

land.lhs.true231.do.end256_crit_edge:             ; preds = %land.lhs.true231
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end256

do.end238:                                        ; preds = %land.lhs.true231
  %conv233 = zext i8 %153 to i32
  %154 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %private.i, align 4
  %dev240 = getelementptr inbounds %struct.usb_device, ptr %155, i32 0, i32 15
  %156 = ptrtoint ptr %large_usb_packets to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %large_usb_packets, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %157)
  %tobool242.not = icmp eq i8 %157, 0
  %cond244 = select i1 %tobool242.not, ptr @.str.36, ptr @.str.35
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev240, ptr noundef nonnull @.str.33, ptr noundef nonnull %cond244, i32 noundef %conv225, i32 noundef %conv222, i32 noundef %conv233, i32 noundef %conv229) #18
  %158 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %private.i, align 4
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %159, align 8
  %shl.i = shl i32 %161, 8
  %or264 = or i32 %shl.i, -2147483520
  %hc_info = getelementptr inbounds %struct.mmc_host, ptr %call25, i32 2, i32 1, i32 12, i32 3, i32 0, i32 0, i32 4, i32 1, i32 1
  %call265 = call i32 @usb_control_msg(ptr noundef %159, i32 noundef %or264, i8 noundef zeroext 1, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %hc_info, i16 noundef zeroext 4, i32 noundef 1000) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call265)
  %cmp266 = icmp slt i32 %call265, 0
  br i1 %cmp266, label %do.end238.error5_crit_edge, label %if.end269

do.end238.error5_crit_edge:                       ; preds = %do.end238
  call void @__sanitizer_cov_trace_pc() #17
  br label %error5

do.end256:                                        ; preds = %land.lhs.true231.do.end256_crit_edge, %land.lhs.true227.do.end256_crit_edge, %land.lhs.true.do.end256_crit_edge, %for.end220.do.end256_crit_edge
  %162 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %private.i, align 4
  %dev258 = getelementptr inbounds %struct.usb_device, ptr %163, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev258, ptr noundef nonnull @.str.38) #18
  br label %error5

if.end269:                                        ; preds = %do.end238
  %164 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %private.i, align 4
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %165, align 8
  %shl.i614 = shl i32 %167, 8
  %or273 = or i32 %shl.i614, -2147483648
  %168 = load i32, ptr @firmware_rom_wait_states, align 4
  %conv274 = trunc i32 %168 to i16
  %call275 = call i32 @usb_control_msg(ptr noundef %165, i32 noundef %or273, i8 noundef zeroext 16, i8 noundef zeroext 64, i16 noundef zeroext %conv274, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call275)
  %cmp276 = icmp slt i32 %call275, 0
  br i1 %cmp276, label %if.end269.error5_crit_edge, label %do.end282

if.end269.error5_crit_edge:                       ; preds = %if.end269
  call void @__sanitizer_cov_trace_pc() #17
  br label %error5

do.end282:                                        ; preds = %if.end269
  %169 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %private.i, align 4
  %dev284 = getelementptr inbounds %struct.usb_device, ptr %170, i32 0, i32 15
  %171 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %caps, align 32
  %and286 = and i32 %172, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and286)
  %tobool287.not = icmp eq i32 %and286, 0
  %cond288 = select i1 %tobool287.not, ptr @.str.44, ptr @.str.43
  %and290 = and i32 %172, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and290)
  %tobool291.not = icmp eq i32 %and290, 0
  %cond292 = select i1 %tobool291.not, ptr @.str.46, ptr @.str.45
  %f_max293 = getelementptr inbounds %struct.mmc_host, ptr %call25, i32 0, i32 6
  %173 = ptrtoint ptr %f_max293 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %f_max293, align 8
  %div = udiv i32 %174, 1000000
  %175 = load i8, ptr @pad_input_to_usb_pkt, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %175)
  %tobool294.not = icmp eq i8 %175, 0
  %cond296 = select i1 %tobool294.not, ptr @.str.48, ptr @.str.47
  %176 = ptrtoint ptr %large_usb_packets to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %large_usb_packets, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %177)
  %tobool298.not = icmp eq i8 %177, 0
  %cond300 = select i1 %tobool298.not, i32 64, i32 512
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev284, ptr noundef nonnull @.str.41, ptr noundef nonnull %cond288, ptr noundef nonnull %cond292, i32 noundef %div, ptr noundef nonnull %cond296, i32 noundef %cond300) #18
  %178 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %private.i, align 4
  %180 = ptrtoint ptr %179 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %179, align 8
  %shl.i615 = shl i32 %181, 8
  %or305 = or i32 %shl.i615, -2147483520
  %system_port_status = getelementptr inbounds %struct.mmc_host, ptr %call25, i32 2, i32 1, i32 12, i32 3, i32 0, i32 0, i32 4, i32 2
  %call306 = call i32 @usb_control_msg(ptr noundef %179, i32 noundef %or305, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %system_port_status, i16 noundef zeroext 15, i32 noundef 1000) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %call306)
  %cmp311 = icmp eq i32 %call306, 15
  br i1 %cmp311, label %if.then313, label %do.end282.error4_crit_edge

do.end282.error4_crit_edge:                       ; preds = %do.end282
  call void @__sanitizer_cov_trace_pc() #17
  br label %error4

if.then313:                                       ; preds = %do.end282
  %port_flags = getelementptr inbounds %struct.vub300_mmc_host, ptr %private.i, i32 0, i32 47, i32 3
  %182 = ptrtoint ptr %port_flags to i32
  call void @__asan_loadN_noabort(i32 %182, i32 2)
  %183 = load i16, ptr %port_flags, align 1
  %card_present = getelementptr inbounds %struct.vub300_mmc_host, ptr %private.i, i32 0, i32 11
  %184 = trunc i16 %183 to i8
  %185 = and i8 %184, 1
  %186 = ptrtoint ptr %card_present to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 %185, ptr %card_present, align 1
  %read_only = getelementptr inbounds %struct.vub300_mmc_host, ptr %private.i, i32 0, i32 12
  %187 = lshr i8 %184, 4
  %188 = and i8 %187, 1
  %189 = ptrtoint ptr %read_only to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 %188, ptr %read_only, align 2
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %190 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %private.i, ptr %driver_data.i.i, align 4
  %pollwork = getelementptr inbounds %struct.mmc_host, ptr %call25, i32 2, i32 1, i32 10, i32 4
  call void @__init_work(ptr noundef %pollwork, i32 noundef 0) #15
  %191 = ptrtoint ptr %pollwork to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 -64, ptr %pollwork, align 4
  %lockdep_map = getelementptr inbounds %struct.mmc_host, ptr %call25, i32 2, i32 1, i32 10, i32 5, i32 2
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.50, ptr noundef nonnull @vub300_probe.__key.49, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %entry339 = getelementptr inbounds %struct.mmc_host, ptr %call25, i32 2, i32 1, i32 10, i32 5
  %192 = ptrtoint ptr %entry339 to i32
  call void @__asan_store4_noabort(i32 %192)
  store volatile ptr %entry339, ptr %entry339, align 4
  %prev.i = getelementptr inbounds %struct.mmc_host, ptr %call25, i32 2, i32 1, i32 10, i32 5, i32 1
  %193 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr %entry339, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.mmc_host, ptr %call25, i32 2, i32 1, i32 10, i32 5, i32 1, i32 1
  %194 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr @vub300_pollwork_thread, ptr %func, align 4
  %timer = getelementptr inbounds %struct.mmc_host, ptr %call25, i32 2, i32 1, i32 11, i32 1, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.52, ptr noundef nonnull @vub300_probe.__key.51) #15
  %cmndwork = getelementptr inbounds %struct.mmc_host, ptr %call25, i32 2, i32 1, i32 10, i32 1, i32 3
  call void @__init_work(ptr noundef %cmndwork, i32 noundef 0) #15
  %195 = ptrtoint ptr %cmndwork to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 -64, ptr %cmndwork, align 4
  %lockdep_map356 = getelementptr inbounds %struct.mmc_host, ptr %call25, i32 2, i32 1, i32 10, i32 1, i32 4, i32 2
  call void @lockdep_init_map_type(ptr noundef %lockdep_map356, ptr noundef nonnull @.str.54, ptr noundef nonnull @vub300_probe.__key.53, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %entry358 = getelementptr inbounds %struct.mmc_host, ptr %call25, i32 2, i32 1, i32 10, i32 1, i32 4
  %196 = ptrtoint ptr %entry358 to i32
  call void @__asan_store4_noabort(i32 %196)
  store volatile ptr %entry358, ptr %entry358, align 4
  %prev.i616 = getelementptr inbounds %struct.mmc_host, ptr %call25, i32 2, i32 1, i32 10, i32 1, i32 4, i32 1
  %197 = ptrtoint ptr %prev.i616 to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %entry358, ptr %prev.i616, align 4
  %func360 = getelementptr inbounds %struct.mmc_host, ptr %call25, i32 2, i32 1, i32 10, i32 1, i32 4, i32 1, i32 1
  %198 = ptrtoint ptr %func360 to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr @vub300_cmndwork_thread, ptr %func360, align 4
  %deadwork = getelementptr inbounds %struct.mmc_host, ptr %call25, i32 2, i32 1, i32 9, i32 5
  call void @__init_work(ptr noundef %deadwork, i32 noundef 0) #15
  %199 = ptrtoint ptr %deadwork to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 -64, ptr %deadwork, align 4
  %lockdep_map369 = getelementptr inbounds %struct.mmc_host, ptr %call25, i32 2, i32 1, i32 9, i32 5, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map369, ptr noundef nonnull @.str.56, ptr noundef nonnull @vub300_probe.__key.55, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %entry371 = getelementptr inbounds %struct.mmc_host, ptr %call25, i32 2, i32 1, i32 9, i32 5, i32 1
  %200 = ptrtoint ptr %entry371 to i32
  call void @__asan_store4_noabort(i32 %200)
  store volatile ptr %entry371, ptr %entry371, align 4
  %prev.i617 = getelementptr inbounds %struct.mmc_host, ptr %call25, i32 2, i32 1, i32 9, i32 5, i32 1, i32 1
  %201 = ptrtoint ptr %prev.i617 to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr %entry371, ptr %prev.i617, align 4
  %func373 = getelementptr inbounds %struct.mmc_host, ptr %call25, i32 2, i32 1, i32 9, i32 5, i32 2
  %202 = ptrtoint ptr %func373 to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr @vub300_deadwork_thread, ptr %func373, align 4
  %kref = getelementptr inbounds %struct.mmc_host, ptr %call25, i32 1, i32 1
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #15
  %203 = ptrtoint ptr %kref to i32
  call void @__asan_store4_noabort(i32 %203)
  store volatile i32 1, ptr %kref, align 4
  %sg_transfer_timer = getelementptr inbounds %struct.mmc_host, ptr %call25, i32 2, i32 1, i32 0, i32 1, i32 1
  call void @init_timer_key(ptr noundef %sg_transfer_timer, ptr noundef nonnull @vub300_sg_timed_out, i32 noundef 0, ptr noundef nonnull @.str.58, ptr noundef nonnull @vub300_probe.__key.57) #15
  call fastcc void @kref_get(ptr noundef %kref)
  %inactivity_timer = getelementptr inbounds %struct.mmc_host, ptr %call25, i32 2, i32 1, i32 9, i32 1, i32 3
  call void @init_timer_key(ptr noundef %inactivity_timer, ptr noundef nonnull @vub300_inactivity_timer_expired, i32 noundef 0, ptr noundef nonnull @.str.60, ptr noundef nonnull @vub300_probe.__key.59) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %204 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %204, 100
  %expires = getelementptr inbounds %struct.mmc_host, ptr %call25, i32 2, i32 1, i32 9, i32 1, i32 4, i32 1
  %205 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %add, ptr %expires, align 4
  call void @add_timer(ptr noundef %inactivity_timer) #15
  %206 = ptrtoint ptr %card_present to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %card_present, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %207)
  %tobool386.not = icmp eq i8 %207, 0
  %208 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %private.i, align 4
  %dev399 = getelementptr inbounds %struct.usb_device, ptr %209, i32 0, i32 15
  %tobool.not.i618 = icmp eq ptr %interface, null
  br i1 %tobool386.not, label %do.end397, label %do.end390

do.end390:                                        ; preds = %if.then313
  br i1 %tobool.not.i618, label %do.end390.interface_to_InterfaceNumber.exit_crit_edge, label %if.end.i

do.end390.interface_to_InterfaceNumber.exit_crit_edge: ; preds = %do.end390
  call void @__sanitizer_cov_trace_pc() #17
  br label %interface_to_InterfaceNumber.exit

if.end.i:                                         ; preds = %do.end390
  %210 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %cur_altsetting, align 4
  %tobool1.not.i = icmp eq ptr %211, null
  br i1 %tobool1.not.i, label %if.end.i.interface_to_InterfaceNumber.exit_crit_edge, label %if.end3.i

if.end.i.interface_to_InterfaceNumber.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %interface_to_InterfaceNumber.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %bInterfaceNumber.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %211, i32 0, i32 2
  %212 = ptrtoint ptr %bInterfaceNumber.i to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %bInterfaceNumber.i, align 2
  %conv.i = zext i8 %213 to i32
  br label %interface_to_InterfaceNumber.exit

interface_to_InterfaceNumber.exit:                ; preds = %if.end3.i, %if.end.i.interface_to_InterfaceNumber.exit_crit_edge, %do.end390.interface_to_InterfaceNumber.exit_crit_edge
  %retval.0.i = phi i32 [ %conv.i, %if.end3.i ], [ -1, %do.end390.interface_to_InterfaceNumber.exit_crit_edge ], [ -1, %if.end.i.interface_to_InterfaceNumber.exit_crit_edge ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev399, ptr noundef nonnull @.str.62, i32 noundef %retval.0.i) #18
  br label %if.end401

do.end397:                                        ; preds = %if.then313
  br i1 %tobool.not.i618, label %do.end397.interface_to_InterfaceNumber.exit626_crit_edge, label %if.end.i621

do.end397.interface_to_InterfaceNumber.exit626_crit_edge: ; preds = %do.end397
  call void @__sanitizer_cov_trace_pc() #17
  br label %interface_to_InterfaceNumber.exit626

if.end.i621:                                      ; preds = %do.end397
  %214 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %cur_altsetting, align 4
  %tobool1.not.i620 = icmp eq ptr %215, null
  br i1 %tobool1.not.i620, label %if.end.i621.interface_to_InterfaceNumber.exit626_crit_edge, label %if.end3.i624

if.end.i621.interface_to_InterfaceNumber.exit626_crit_edge: ; preds = %if.end.i621
  call void @__sanitizer_cov_trace_pc() #17
  br label %interface_to_InterfaceNumber.exit626

if.end3.i624:                                     ; preds = %if.end.i621
  call void @__sanitizer_cov_trace_pc() #17
  %bInterfaceNumber.i622 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %215, i32 0, i32 2
  %216 = ptrtoint ptr %bInterfaceNumber.i622 to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %bInterfaceNumber.i622, align 2
  %conv.i623 = zext i8 %217 to i32
  br label %interface_to_InterfaceNumber.exit626

interface_to_InterfaceNumber.exit626:             ; preds = %if.end3.i624, %if.end.i621.interface_to_InterfaceNumber.exit626_crit_edge, %do.end397.interface_to_InterfaceNumber.exit626_crit_edge
  %retval.0.i625 = phi i32 [ %conv.i623, %if.end3.i624 ], [ -1, %do.end397.interface_to_InterfaceNumber.exit626_crit_edge ], [ -1, %if.end.i621.interface_to_InterfaceNumber.exit626_crit_edge ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev399, ptr noundef nonnull @.str.65, i32 noundef %retval.0.i625) #18
  br label %if.end401

if.end401:                                        ; preds = %interface_to_InterfaceNumber.exit626, %interface_to_InterfaceNumber.exit
  %call402 = call i32 @mmc_add_host(ptr noundef nonnull %call25) #15
  br label %cleanup

error5:                                           ; preds = %if.end269.error5_crit_edge, %do.end256, %do.end238.error5_crit_edge
  %retval2.0 = phi i32 [ %call265, %do.end238.error5_crit_edge ], [ %call275, %if.end269.error5_crit_edge ], [ -22, %do.end256 ]
  call void @mmc_free_host(ptr noundef nonnull %call25) #15
  br label %error4

error4:                                           ; preds = %error5, %do.end282.error4_crit_edge, %if.then27
  %retval2.1 = phi i32 [ %retval2.0, %error5 ], [ %call306, %do.end282.error4_crit_edge ], [ -12, %if.then27 ]
  call void @usb_free_urb(ptr noundef nonnull %call20) #15
  br label %error1

error1:                                           ; preds = %error4, %if.end.error1_crit_edge
  %retval2.2 = phi i32 [ %retval2.1, %error4 ], [ -12, %if.end.error1_crit_edge ]
  call void @usb_free_urb(ptr noundef nonnull %call19) #15
  br label %error0

error0:                                           ; preds = %error1, %entry.error0_crit_edge
  %retval2.3 = phi i32 [ %retval2.2, %error1 ], [ -12, %entry.error0_crit_edge ]
  call void @usb_put_dev(ptr noundef %call1) #15
  br label %cleanup

cleanup:                                          ; preds = %error0, %if.end401
  %retval.0 = phi i32 [ %retval2.3, %error0 ], [ 0, %if.end401 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %serial_number) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %product) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %manufacturer) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vub300_disconnect(ptr noundef %interface) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup12_crit_edge, label %lor.lhs.false

entry.cleanup12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup12

lor.lhs.false:                                    ; preds = %entry
  %mmc = getelementptr %struct.vub300_mmc_host, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmc, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup12_crit_edge, label %if.else7

lor.lhs.false.cleanup12_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup12

if.else7:                                         ; preds = %lor.lhs.false
  %tobool.not.i = icmp eq ptr %interface, null
  br i1 %tobool.not.i, label %if.else7.interface_to_InterfaceNumber.exit_crit_edge, label %if.end.i

if.else7.interface_to_InterfaceNumber.exit_crit_edge: ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #17
  br label %interface_to_InterfaceNumber.exit

if.end.i:                                         ; preds = %if.else7
  %cur_altsetting.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 1
  %4 = ptrtoint ptr %cur_altsetting.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cur_altsetting.i, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %if.end.i.interface_to_InterfaceNumber.exit_crit_edge, label %if.end3.i

if.end.i.interface_to_InterfaceNumber.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %interface_to_InterfaceNumber.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %bInterfaceNumber.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %bInterfaceNumber.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bInterfaceNumber.i, align 2
  %conv.i = zext i8 %7 to i32
  br label %interface_to_InterfaceNumber.exit

interface_to_InterfaceNumber.exit:                ; preds = %if.end3.i, %if.end.i.interface_to_InterfaceNumber.exit_crit_edge, %if.else7.interface_to_InterfaceNumber.exit_crit_edge
  %retval.0.i = phi i32 [ %conv.i, %if.end3.i ], [ -1, %if.else7.interface_to_InterfaceNumber.exit_crit_edge ], [ -1, %if.end.i.interface_to_InterfaceNumber.exit_crit_edge ]
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %driver_data.i.i, align 4
  %interface9 = getelementptr inbounds %struct.vub300_mmc_host, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %interface9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %interface9, align 4
  %kref = getelementptr inbounds %struct.vub300_mmc_host, ptr %1, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !315
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #15
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #15, !srcloc !316
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %interface_to_InterfaceNumber.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !317

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #15
  br label %kref_put.exit

if.then.i:                                        ; preds = %interface_to_InterfaceNumber.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !318
  %11 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmc, align 4
  %command_out_urb.i.i = getelementptr %struct.vub300_mmc_host, ptr %1, i32 0, i32 34
  %13 = ptrtoint ptr %command_out_urb.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %command_out_urb.i.i, align 4
  tail call void @usb_free_urb(ptr noundef %14) #15
  %15 = ptrtoint ptr %command_out_urb.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %command_out_urb.i.i, align 4
  %command_res_urb.i.i = getelementptr %struct.vub300_mmc_host, ptr %1, i32 0, i32 35
  %16 = ptrtoint ptr %command_res_urb.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %command_res_urb.i.i, align 4
  tail call void @usb_free_urb(ptr noundef %17) #15
  %18 = ptrtoint ptr %command_res_urb.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %command_res_urb.i.i, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  tail call void @usb_put_dev(ptr noundef %20) #15
  tail call void @mmc_free_host(ptr noundef %12) #15
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  tail call void @mmc_remove_host(ptr noundef nonnull %3) #15
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, i32 noundef %retval.0.i) #18
  br label %cleanup12

cleanup12:                                        ; preds = %kref_put.exit, %lor.lhs.false.cleanup12_crit_edge, %entry.cleanup12_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vub300_suspend(ptr nocapture noundef readnone %intf, [1 x i32] %message.coerce) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vub300_resume(ptr nocapture noundef readnone %intf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vub300_pre_reset(ptr nocapture noundef readonly %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cmd_mutex = getelementptr inbounds %struct.vub300_mmc_host, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %cmd_mutex, i32 noundef 0) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vub300_post_reset(ptr nocapture noundef readonly %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %errors = getelementptr inbounds %struct.vub300_mmc_host, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %errors to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -32, ptr %errors, align 4
  %cmd_mutex = getelementptr inbounds %struct.vub300_mmc_host, ptr %1, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %cmd_mutex) #15
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmc_alloc_host(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vub300_pollwork_thread(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -2248
  %interface = getelementptr i8, ptr %work, i32 -2244
  %0 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %interface, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %kref = getelementptr i8, ptr %work, i32 -2240
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !315
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #15
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #15, !srcloc !316
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !317

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #15
  br label %cleanup

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !318
  %mmc1.i.i = getelementptr i8, ptr %work, i32 -628
  %3 = ptrtoint ptr %mmc1.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmc1.i.i, align 4
  %command_out_urb.i.i = getelementptr i8, ptr %work, i32 -620
  %5 = ptrtoint ptr %command_out_urb.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %command_out_urb.i.i, align 4
  tail call void @usb_free_urb(ptr noundef %6) #15
  %7 = ptrtoint ptr %command_out_urb.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %command_out_urb.i.i, align 4
  %command_res_urb.i.i = getelementptr i8, ptr %work, i32 -616
  %8 = ptrtoint ptr %command_res_urb.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %command_res_urb.i.i, align 4
  tail call void @usb_free_urb(ptr noundef %9) #15
  %10 = ptrtoint ptr %command_res_urb.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %command_res_urb.i.i, align 4
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 4
  tail call void @usb_put_dev(ptr noundef %12) #15
  tail call void @mmc_free_host(ptr noundef %4) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmd_mutex = getelementptr i8, ptr %work, i32 -2236
  tail call void @mutex_lock_nested(ptr noundef %cmd_mutex, i32 noundef 0) #15
  %cmd = getelementptr i8, ptr %work, i32 -640
  %13 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cmd, align 4
  %tobool1.not = icmp eq ptr %14, null
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @vub300_queue_poll_work(ptr noundef %add.ptr, i32 noundef 1)
  br label %if.end20

if.else:                                          ; preds = %if.end
  %card_present = getelementptr i8, ptr %work, i32 -1967
  %15 = ptrtoint ptr %card_present to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %card_present, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool3.not = icmp eq i8 %16, 0
  br i1 %tobool3.not, label %if.else.if.end20_crit_edge, label %if.else5

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

if.else5:                                         ; preds = %if.else
  %irq_mutex = getelementptr i8, ptr %work, i32 -2144
  tail call void @mutex_lock_nested(ptr noundef %irq_mutex, i32 noundef 0) #15
  %irq_enabled = getelementptr i8, ptr %work, i32 -1963
  %17 = ptrtoint ptr %irq_enabled to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %irq_enabled, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool6.not = icmp eq i8 %18, 0
  br i1 %tobool6.not, label %if.then7, label %if.else9

if.then7:                                         ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @mutex_unlock(ptr noundef %irq_mutex) #15
  br label %if.end20

if.else9:                                         ; preds = %if.else5
  %irqs_queued = getelementptr i8, ptr %work, i32 -1940
  %19 = ptrtoint ptr %irqs_queued to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irqs_queued, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool10.not = icmp eq i32 %20, 0
  br i1 %tobool10.not, label %if.else15, label %if.then11

if.then11:                                        ; preds = %if.else9
  %sub = add i32 %20, -1
  %21 = ptrtoint ptr %irqs_queued to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %sub, ptr %irqs_queued, align 4
  %mmc = getelementptr i8, ptr %work, i32 -628
  %22 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmc, align 4
  %ops.i = getelementptr inbounds %struct.mmc_host, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops.i, align 4
  %enable_sdio_irq.i = getelementptr inbounds %struct.mmc_host_ops, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %enable_sdio_irq.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %enable_sdio_irq.i, align 4
  tail call void %27(ptr noundef %23, i32 noundef 0) #15
  %sdio_irq_pending.i = getelementptr inbounds %struct.mmc_host, ptr %23, i32 0, i32 49
  %28 = ptrtoint ptr %sdio_irq_pending.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %sdio_irq_pending.i, align 4
  %sdio_irq_thread.i = getelementptr inbounds %struct.mmc_host, ptr %23, i32 0, i32 47
  %29 = ptrtoint ptr %sdio_irq_thread.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sdio_irq_thread.i, align 4
  %tobool.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i, label %if.then11.mmc_signal_sdio_irq.exit_crit_edge, label %if.then.i41

if.then11.mmc_signal_sdio_irq.exit_crit_edge:     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #17
  br label %mmc_signal_sdio_irq.exit

if.then.i41:                                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = tail call i32 @wake_up_process(ptr noundef nonnull %30) #15
  br label %mmc_signal_sdio_irq.exit

mmc_signal_sdio_irq.exit:                         ; preds = %if.then.i41, %if.then11.mmc_signal_sdio_irq.exit_crit_edge
  %inactivity_timer = getelementptr i8, ptr %work, i32 -136
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %31, 100
  %call13 = tail call i32 @mod_timer(ptr noundef %inactivity_timer, i32 noundef %add) #15
  tail call void @mutex_unlock(ptr noundef %irq_mutex) #15
  br label %if.end20

if.else15:                                        ; preds = %if.else9
  tail call void @mutex_unlock(ptr noundef %irq_mutex) #15
  %inactivity_timer.i = getelementptr i8, ptr %work, i32 -136
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %32 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %32, 100
  %call.i42 = tail call i32 @mod_timer(ptr noundef %inactivity_timer.i, i32 noundef %add.i) #15
  %irqpoll_complete.i = getelementptr i8, ptr %work, i32 -556
  %33 = ptrtoint ptr %irqpoll_complete.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %irqpoll_complete.i, align 4
  %wait.i.i = getelementptr i8, ptr %work, i32 -552
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.70, ptr noundef nonnull @init_completion.__key) #15
  %34 = load i32, ptr @firmware_irqpoll_timeout, align 4
  %sub.i.i = sub i32 65535, %34
  %cmnd.i.i = getelementptr i8, ptr %work, i32 -500
  %35 = ptrtoint ptr %cmnd.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 22, ptr %cmnd.i.i, align 4
  %header_type.i.i = getelementptr i8, ptr %work, i32 -499
  %36 = ptrtoint ptr %header_type.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %header_type.i.i, align 1
  %port_number.i.i = getelementptr i8, ptr %work, i32 -498
  %37 = ptrtoint ptr %port_number.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %port_number.i.i, align 2
  %command_type.i.i = getelementptr i8, ptr %work, i32 -497
  %38 = ptrtoint ptr %command_type.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 2, ptr %command_type.i.i, align 1
  %conv.i.i = trunc i32 %sub.i.i to i8
  %poll_timeout_lsb.i.i = getelementptr i8, ptr %work, i32 -479
  %39 = ptrtoint ptr %poll_timeout_lsb.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv.i.i, ptr %poll_timeout_lsb.i.i, align 1
  %and.i.i = lshr i32 %sub.i.i, 8
  %conv7.i.i = trunc i32 %and.i.i to i8
  %poll_timeout_msb.i.i = getelementptr i8, ptr %work, i32 -480
  %40 = ptrtoint ptr %poll_timeout_msb.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv7.i.i, ptr %poll_timeout_msb.i.i, align 4
  %command_out_urb.i.i43 = getelementptr i8, ptr %work, i32 -620
  %41 = ptrtoint ptr %command_out_urb.i.i43 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %command_out_urb.i.i43, align 4
  %43 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %add.ptr, align 4
  %cmnd_out_ep.i.i = getelementptr i8, ptr %work, i32 -1972
  %45 = ptrtoint ptr %cmnd_out_ep.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %cmnd_out_ep.i.i, align 4
  %conv10.i.i = zext i8 %46 to i32
  %47 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %44, align 8
  %shl.i.i.i = shl i32 %48, 8
  %shl1.i.i.i = shl nuw nsw i32 %conv10.i.i, 15
  %or.i.i.i = or i32 %shl1.i.i.i, %shl.i.i.i
  %or.i.i = or i32 %or.i.i.i, -1073741824
  %dev1.i.i.i = getelementptr inbounds %struct.urb, ptr %42, i32 0, i32 8
  %49 = ptrtoint ptr %dev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %44, ptr %dev1.i.i.i, align 4
  %pipe2.i.i.i = getelementptr inbounds %struct.urb, ptr %42, i32 0, i32 10
  %50 = ptrtoint ptr %pipe2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %or.i.i, ptr %pipe2.i.i.i, align 4
  %transfer_buffer3.i.i.i = getelementptr inbounds %struct.urb, ptr %42, i32 0, i32 14
  %51 = ptrtoint ptr %transfer_buffer3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %cmnd.i.i, ptr %transfer_buffer3.i.i.i, align 4
  %transfer_buffer_length.i.i.i = getelementptr inbounds %struct.urb, ptr %42, i32 0, i32 19
  %52 = ptrtoint ptr %transfer_buffer_length.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 64, ptr %transfer_buffer_length.i.i.i, align 4
  %complete.i.i.i = getelementptr inbounds %struct.urb, ptr %42, i32 0, i32 28
  %53 = ptrtoint ptr %complete.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @irqpoll_out_completed, ptr %complete.i.i.i, align 4
  %context4.i.i.i = getelementptr inbounds %struct.urb, ptr %42, i32 0, i32 27
  %54 = ptrtoint ptr %context4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %add.ptr, ptr %context4.i.i.i, align 4
  %55 = load ptr, ptr %command_out_urb.i.i43, align 4
  %call13.i.i = tail call i32 @usb_submit_urb(ptr noundef %55, i32 noundef 3264) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %cmp.i.i = icmp slt i32 %call13.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else15.send_irqpoll.exit.i_crit_edge

if.else15.send_irqpoll.exit.i_crit_edge:          ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #17
  br label %send_irqpoll.exit.i

if.then.i.i:                                      ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #17
  %usb_transport_fail.i.i = getelementptr i8, ptr %work, i32 -1948
  %56 = ptrtoint ptr %usb_transport_fail.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %call13.i.i, ptr %usb_transport_fail.i.i, align 4
  tail call fastcc void @vub300_queue_poll_work(ptr noundef %add.ptr, i32 noundef 1) #15
  tail call void @complete(ptr noundef %irqpoll_complete.i) #15
  br label %send_irqpoll.exit.i

send_irqpoll.exit.i:                              ; preds = %if.then.i.i, %if.else15.send_irqpoll.exit.i_crit_edge
  %call3.i = tail call i32 @wait_for_completion_timeout(ptr noundef %irqpoll_complete.i, i32 noundef 50) #15
  %usb_transport_fail.i = getelementptr i8, ptr %work, i32 -1948
  %57 = ptrtoint ptr %usb_transport_fail.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %usb_transport_fail.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i44 = icmp eq i32 %58, 0
  br i1 %tobool.not.i44, label %if.else.i, label %send_irqpoll.exit.i.if.end20_crit_edge

send_irqpoll.exit.i.if.end20_crit_edge:           ; preds = %send_irqpoll.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

if.else.i:                                        ; preds = %send_irqpoll.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp eq i32 %call3.i, 0
  br i1 %cmp.i, label %if.then4.i, label %if.else5.i

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  %usb_timed_out.i = getelementptr i8, ptr %work, i32 -1944
  %59 = ptrtoint ptr %usb_timed_out.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1, ptr %usb_timed_out.i, align 4
  %60 = ptrtoint ptr %command_out_urb.i.i43 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %command_out_urb.i.i43, align 4
  tail call void @usb_kill_urb(ptr noundef %61) #15
  %command_res_urb.i = getelementptr i8, ptr %work, i32 -616
  %62 = ptrtoint ptr %command_res_urb.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %command_res_urb.i, align 4
  tail call void @usb_kill_urb(ptr noundef %63) #15
  br label %if.end20

if.else5.i:                                       ; preds = %if.else.i
  %command_res_urb.i.i45 = getelementptr i8, ptr %work, i32 -616
  %64 = ptrtoint ptr %command_res_urb.i.i45 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %command_res_urb.i.i45, align 4
  %actual_length.i.i = getelementptr inbounds %struct.urb, ptr %65, i32 0, i32 20
  %66 = ptrtoint ptr %actual_length.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %actual_length.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp.i15.i = icmp eq i32 %67, 0
  br i1 %cmp.i15.i, label %if.else5.i.if.end20_crit_edge, label %if.end.i.i

if.else5.i.if.end20_crit_edge:                    ; preds = %if.else5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

if.end.i.i:                                       ; preds = %if.else5.i
  %resp.i.i = getelementptr i8, ptr %work, i32 -436
  %header_type.i16.i = getelementptr i8, ptr %work, i32 -435
  %68 = ptrtoint ptr %header_type.i16.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %header_type.i16.i, align 1
  %70 = zext i8 %69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values)
  switch i8 %69, label %if.end.i.i.if.end20_crit_edge [
    i8 1, label %sw.bb.i.i
    i8 2, label %sw.bb4.i.i
    i8 3, label %sw.bb11.i.i
    i8 5, label %sw.bb16.i.i
    i8 6, label %sw.bb33.i.i
    i8 8, label %sw.bb62.i.i
  ]

if.end.i.i.if.end20_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

sw.bb.i.i:                                        ; preds = %if.end.i.i
  tail call void @mutex_lock_nested(ptr noundef %irq_mutex, i32 noundef 0) #15
  %71 = ptrtoint ptr %irq_enabled to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %irq_enabled, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool.not.i.i = icmp eq i8 %72, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then1.i.i

if.then1.i.i:                                     ; preds = %sw.bb.i.i
  %mmc.i.i = getelementptr i8, ptr %work, i32 -628
  %73 = ptrtoint ptr %mmc.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mmc.i.i, align 4
  %ops.i.i.i = getelementptr inbounds %struct.mmc_host, ptr %74, i32 0, i32 3
  %75 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ops.i.i.i, align 4
  %enable_sdio_irq.i.i.i = getelementptr inbounds %struct.mmc_host_ops, ptr %76, i32 0, i32 7
  %77 = ptrtoint ptr %enable_sdio_irq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %enable_sdio_irq.i.i.i, align 4
  tail call void %78(ptr noundef %74, i32 noundef 0) #15
  %sdio_irq_pending.i.i.i = getelementptr inbounds %struct.mmc_host, ptr %74, i32 0, i32 49
  %79 = ptrtoint ptr %sdio_irq_pending.i.i.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 1, ptr %sdio_irq_pending.i.i.i, align 4
  %sdio_irq_thread.i.i.i = getelementptr inbounds %struct.mmc_host, ptr %74, i32 0, i32 47
  %80 = ptrtoint ptr %sdio_irq_thread.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %sdio_irq_thread.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %81, null
  br i1 %tobool.not.i.i.i, label %if.then1.i.i.if.end2.i.i_crit_edge, label %if.then.i.i.i

if.then1.i.i.if.end2.i.i_crit_edge:               ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end2.i.i

if.then.i.i.i:                                    ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i = tail call i32 @wake_up_process(ptr noundef nonnull %81) #15
  br label %if.end2.i.i

if.else.i.i:                                      ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %82 = ptrtoint ptr %irqs_queued to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %irqs_queued, align 4
  %add.i.i = add i32 %83, 1
  store i32 %add.i.i, ptr %irqs_queued, align 4
  br label %if.end2.i.i

if.end2.i.i:                                      ; preds = %if.else.i.i, %if.then.i.i.i, %if.then1.i.i.if.end2.i.i_crit_edge
  %irq_disabled.i.i = getelementptr i8, ptr %work, i32 -1962
  %84 = ptrtoint ptr %irq_disabled.i.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 1, ptr %irq_disabled.i.i, align 2
  tail call void @mutex_unlock(ptr noundef %irq_mutex) #15
  br label %if.end20

sw.bb4.i.i:                                       ; preds = %if.end.i.i
  %error_code.i.i = getelementptr i8, ptr %work, i32 -433
  %85 = ptrtoint ptr %error_code.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %error_code.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %86)
  %cmp7.i.i = icmp eq i8 %86, 13
  br i1 %cmp7.i.i, label %if.then9.i.i, label %sw.bb4.i.i.if.end20_crit_edge

sw.bb4.i.i.if.end20_crit_edge:                    ; preds = %sw.bb4.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

if.then9.i.i:                                     ; preds = %sw.bb4.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @check_vub300_port_status(ptr noundef %add.ptr) #15
  br label %if.end20

sw.bb11.i.i:                                      ; preds = %if.end.i.i
  %system_port_status.i.i = getelementptr i8, ptr %work, i32 104
  %87 = call ptr @memcpy(ptr %system_port_status.i.i, ptr %resp.i.i, i32 15)
  %88 = ptrtoint ptr %card_present to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %card_present, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool.not.i98.i.i = icmp eq i8 %89, 0
  %port_flags.i.i.i = getelementptr i8, ptr %work, i32 107
  %90 = ptrtoint ptr %port_flags.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %90, i32 2)
  %91 = load i16, ptr %port_flags.i.i.i, align 1
  %92 = and i16 %91, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %92)
  %tobool2.not.i.i.i = icmp eq i16 %92, 0
  %read_only.i.i.i = getelementptr i8, ptr %work, i32 -1966
  %93 = trunc i16 %91 to i8
  %94 = lshr i8 %93, 4
  %95 = and i8 %94, 1
  %96 = ptrtoint ptr %read_only.i.i.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %95, ptr %read_only.i.i.i, align 2
  %tobool.not.not.i.i.i = xor i1 %tobool.not.i98.i.i, true
  %brmerge.i.i.i = select i1 %tobool2.not.i.i.i, i1 true, i1 %tobool.not.not.i.i.i
  br i1 %brmerge.i.i.i, label %if.else16.i.i.i, label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %sw.bb11.i.i
  %97 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %add.ptr, align 4
  %dev.i.i.i = getelementptr inbounds %struct.usb_device, ptr %98, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.71) #18
  %99 = ptrtoint ptr %card_present to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 1, ptr %card_present, align 1
  %bus_width.i.i.i = getelementptr i8, ptr %work, i32 -1961
  %100 = ptrtoint ptr %bus_width.i.i.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %bf.load.i.i.i = load i8, ptr %bus_width.i.i.i, align 1
  %bf.clear.i.i.i = and i8 %bf.load.i.i.i, 15
  store i8 %bf.clear.i.i.i, ptr %bus_width.i.i.i, align 1
  %101 = load i8, ptr @disable_offload_processing, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool13.not.i.i.i = icmp eq i8 %101, 0
  %vub_name15.i.i.i = getelementptr i8, ptr %work, i32 -2052
  br i1 %tobool13.not.i.i.i, label %if.else.i.i.i, label %if.then14.i.i.i

if.then14.i.i.i:                                  ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %102 = call ptr @memcpy(ptr %vub_name15.i.i.i, ptr @str.140, i32 80)
  br label %if.end30.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %103 = ptrtoint ptr %vub_name15.i.i.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 0, ptr %vub_name15.i.i.i, align 4
  br label %if.end30.sink.split.i.i.i

if.else16.i.i.i:                                  ; preds = %sw.bb11.i.i
  %tobool2.not.not.i.i.i = xor i1 %tobool2.not.i.i.i, true
  %brmerge45.i.i.i = select i1 %tobool2.not.not.i.i.i, i1 true, i1 %tobool.not.i98.i.i
  br i1 %brmerge45.i.i.i, label %if.else16.i.i.i.new_system_port_status.exit.i.i_crit_edge, label %do.end23.i.i.i

if.else16.i.i.i.new_system_port_status.exit.i.i_crit_edge: ; preds = %if.else16.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %new_system_port_status.exit.i.i

do.end23.i.i.i:                                   ; preds = %if.else16.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %104 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %add.ptr, align 4
  %dev25.i.i.i = getelementptr inbounds %struct.usb_device, ptr %105, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev25.i.i.i, ptr noundef nonnull @.str.75) #18
  %106 = ptrtoint ptr %card_present to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 0, ptr %card_present, align 1
  br label %if.end30.sink.split.i.i.i

if.end30.sink.split.i.i.i:                        ; preds = %do.end23.i.i.i, %if.else.i.i.i, %if.then14.i.i.i
  %.sink46.i.i.i = phi i32 [ 0, %do.end23.i.i.i ], [ 1, %if.else.i.i.i ], [ 1, %if.then14.i.i.i ]
  %mmc27.i.i.i = getelementptr i8, ptr %work, i32 -628
  %107 = ptrtoint ptr %mmc27.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %mmc27.i.i.i, align 4
  tail call void @mmc_detect_change(ptr noundef %108, i32 noundef %.sink46.i.i.i) #15
  br label %new_system_port_status.exit.i.i

new_system_port_status.exit.i.i:                  ; preds = %if.end30.sink.split.i.i.i, %if.else16.i.i.i.new_system_port_status.exit.i.i_crit_edge
  %109 = ptrtoint ptr %card_present to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %card_present, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool13.not.i.i = icmp eq i8 %110, 0
  br i1 %tobool13.not.i.i, label %if.then14.i.i, label %new_system_port_status.exit.i.i.if.end20_crit_edge

new_system_port_status.exit.i.i.if.end20_crit_edge: ; preds = %new_system_port_status.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

if.then14.i.i:                                    ; preds = %new_system_port_status.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @vub300_queue_poll_work(ptr noundef %add.ptr, i32 noundef 20) #15
  br label %if.end20

sw.bb16.i.i:                                      ; preds = %if.end.i.i
  %111 = ptrtoint ptr %resp.i.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %resp.i.i, align 4
  %conv18.i.i = zext i8 %112 to i32
  %sub.i17.i = add nsw i32 %conv18.i.i, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i17.i)
  %tobool19.not118.i.i = icmp ult i32 %sub.i17.i, 8
  br i1 %tobool19.not118.i.i, label %sw.bb16.i.i.while.end.i.i_crit_edge, label %while.body.preheader.i.i

sw.bb16.i.i.while.end.i.i_crit_edge:              ; preds = %sw.bb16.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i.i

while.body.preheader.i.i:                         ; preds = %sw.bb16.i.i
  %shr.i.i = ashr i32 %sub.i17.i, 3
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.preheader.i.i
  %register_count.0120.i.i = phi i32 [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %shr.i.i, %while.body.preheader.i.i ]
  %ri.0119.i.i = phi i32 [ %add21.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 0, %while.body.preheader.i.i ]
  %dec.i.i = add i32 %register_count.0120.i.i, -1
  %arrayidx.i.i = getelementptr %struct.vub300_mmc_host, ptr %add.ptr, i32 0, i32 39, i32 0, i32 3, i32 %ri.0119.i.i
  tail call fastcc void @add_offloaded_reg(ptr noundef %add.ptr, ptr noundef %arrayidx.i.i) #15
  %add21.i.i = add i32 %ri.0119.i.i, 1
  %tobool19.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool19.not.i.i, label %while.body.i.i.while.end.i.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i.i

while.body.i.i.while.end.i.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %while.body.i.i.while.end.i.i_crit_edge, %sw.bb16.i.i.while.end.i.i_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %irq_mutex, i32 noundef 0) #15
  %113 = ptrtoint ptr %irq_enabled to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %irq_enabled, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool24.not.i.i = icmp eq i8 %114, 0
  br i1 %tobool24.not.i.i, label %if.else27.i.i, label %if.then25.i.i

if.then25.i.i:                                    ; preds = %while.end.i.i
  %mmc26.i.i = getelementptr i8, ptr %work, i32 -628
  %115 = ptrtoint ptr %mmc26.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %mmc26.i.i, align 4
  %ops.i99.i.i = getelementptr inbounds %struct.mmc_host, ptr %116, i32 0, i32 3
  %117 = ptrtoint ptr %ops.i99.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %ops.i99.i.i, align 4
  %enable_sdio_irq.i100.i.i = getelementptr inbounds %struct.mmc_host_ops, ptr %118, i32 0, i32 7
  %119 = ptrtoint ptr %enable_sdio_irq.i100.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %enable_sdio_irq.i100.i.i, align 4
  tail call void %120(ptr noundef %116, i32 noundef 0) #15
  %sdio_irq_pending.i101.i.i = getelementptr inbounds %struct.mmc_host, ptr %116, i32 0, i32 49
  %121 = ptrtoint ptr %sdio_irq_pending.i101.i.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 1, ptr %sdio_irq_pending.i101.i.i, align 4
  %sdio_irq_thread.i102.i.i = getelementptr inbounds %struct.mmc_host, ptr %116, i32 0, i32 47
  %122 = ptrtoint ptr %sdio_irq_thread.i102.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %sdio_irq_thread.i102.i.i, align 4
  %tobool.not.i103.i.i = icmp eq ptr %123, null
  br i1 %tobool.not.i103.i.i, label %if.then25.i.i.if.end30.i.i_crit_edge, label %if.then.i105.i.i

if.then25.i.i.if.end30.i.i_crit_edge:             ; preds = %if.then25.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30.i.i

if.then.i105.i.i:                                 ; preds = %if.then25.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i104.i.i = tail call i32 @wake_up_process(ptr noundef nonnull %123) #15
  br label %if.end30.i.i

if.else27.i.i:                                    ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %124 = ptrtoint ptr %irqs_queued to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %irqs_queued, align 4
  %add29.i.i = add i32 %125, 1
  store i32 %add29.i.i, ptr %irqs_queued, align 4
  br label %if.end30.i.i

if.end30.i.i:                                     ; preds = %if.else27.i.i, %if.then.i105.i.i, %if.then25.i.i.if.end30.i.i_crit_edge
  %irq_disabled31.i.i = getelementptr i8, ptr %work, i32 -1962
  %126 = ptrtoint ptr %irq_disabled31.i.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 1, ptr %irq_disabled31.i.i, align 2
  tail call void @mutex_unlock(ptr noundef %irq_mutex) #15
  br label %if.end20

sw.bb33.i.i:                                      ; preds = %if.end.i.i
  %127 = ptrtoint ptr %resp.i.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %resp.i.i, align 4
  %conv37.i.i = zext i8 %128 to i32
  %sub38.i.i = add nsw i32 %conv37.i.i, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub38.i.i)
  %tobool44.not115.i.i = icmp ult i32 %sub38.i.i, 8
  br i1 %tobool44.not115.i.i, label %sw.bb33.i.i.while.end50.i.i_crit_edge, label %while.body45.preheader.i.i

sw.bb33.i.i.while.end50.i.i_crit_edge:            ; preds = %sw.bb33.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end50.i.i

while.body45.preheader.i.i:                       ; preds = %sw.bb33.i.i
  %shr40.i.i = ashr i32 %sub38.i.i, 3
  br label %while.body45.i.i

while.body45.i.i:                                 ; preds = %while.body45.i.i.while.body45.i.i_crit_edge, %while.body45.preheader.i.i
  %ri41.0117.i.i = phi i32 [ %add49.i.i, %while.body45.i.i.while.body45.i.i_crit_edge ], [ 0, %while.body45.preheader.i.i ]
  %register_count39.0116.i.i = phi i32 [ %dec43.i.i, %while.body45.i.i.while.body45.i.i_crit_edge ], [ %shr40.i.i, %while.body45.preheader.i.i ]
  %dec43.i.i = add i32 %register_count39.0116.i.i, -1
  %arrayidx48.i.i = getelementptr %struct.vub300_mmc_host, ptr %add.ptr, i32 0, i32 39, i32 0, i32 3, i32 %ri41.0117.i.i
  tail call fastcc void @add_offloaded_reg(ptr noundef %add.ptr, ptr noundef %arrayidx48.i.i) #15
  %add49.i.i = add i32 %ri41.0117.i.i, 1
  %tobool44.not.i.i = icmp eq i32 %dec43.i.i, 0
  br i1 %tobool44.not.i.i, label %while.body45.i.i.while.end50.i.i_crit_edge, label %while.body45.i.i.while.body45.i.i_crit_edge

while.body45.i.i.while.body45.i.i_crit_edge:      ; preds = %while.body45.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body45.i.i

while.body45.i.i.while.end50.i.i_crit_edge:       ; preds = %while.body45.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end50.i.i

while.end50.i.i:                                  ; preds = %while.body45.i.i.while.end50.i.i_crit_edge, %sw.bb33.i.i.while.end50.i.i_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %irq_mutex, i32 noundef 0) #15
  %129 = ptrtoint ptr %irq_enabled to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %irq_enabled, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool53.not.i.i = icmp eq i8 %130, 0
  br i1 %tobool53.not.i.i, label %if.else56.i.i, label %if.then54.i.i

if.then54.i.i:                                    ; preds = %while.end50.i.i
  %mmc55.i.i = getelementptr i8, ptr %work, i32 -628
  %131 = ptrtoint ptr %mmc55.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %mmc55.i.i, align 4
  %ops.i107.i.i = getelementptr inbounds %struct.mmc_host, ptr %132, i32 0, i32 3
  %133 = ptrtoint ptr %ops.i107.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %ops.i107.i.i, align 4
  %enable_sdio_irq.i108.i.i = getelementptr inbounds %struct.mmc_host_ops, ptr %134, i32 0, i32 7
  %135 = ptrtoint ptr %enable_sdio_irq.i108.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %enable_sdio_irq.i108.i.i, align 4
  tail call void %136(ptr noundef %132, i32 noundef 0) #15
  %sdio_irq_pending.i109.i.i = getelementptr inbounds %struct.mmc_host, ptr %132, i32 0, i32 49
  %137 = ptrtoint ptr %sdio_irq_pending.i109.i.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 1, ptr %sdio_irq_pending.i109.i.i, align 4
  %sdio_irq_thread.i110.i.i = getelementptr inbounds %struct.mmc_host, ptr %132, i32 0, i32 47
  %138 = ptrtoint ptr %sdio_irq_thread.i110.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %sdio_irq_thread.i110.i.i, align 4
  %tobool.not.i111.i.i = icmp eq ptr %139, null
  br i1 %tobool.not.i111.i.i, label %if.then54.i.i.if.end59.i.i_crit_edge, label %if.then.i113.i.i

if.then54.i.i.if.end59.i.i_crit_edge:             ; preds = %if.then54.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end59.i.i

if.then.i113.i.i:                                 ; preds = %if.then54.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i112.i.i = tail call i32 @wake_up_process(ptr noundef nonnull %139) #15
  br label %if.end59.i.i

if.else56.i.i:                                    ; preds = %while.end50.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %140 = ptrtoint ptr %irqs_queued to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %irqs_queued, align 4
  %add58.i.i = add i32 %141, 1
  store i32 %add58.i.i, ptr %irqs_queued, align 4
  br label %if.end59.i.i

if.end59.i.i:                                     ; preds = %if.else56.i.i, %if.then.i113.i.i, %if.then54.i.i.if.end59.i.i_crit_edge
  %irq_disabled60.i.i = getelementptr i8, ptr %work, i32 -1962
  %142 = ptrtoint ptr %irq_disabled60.i.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 0, ptr %irq_disabled60.i.i, align 2
  tail call void @mutex_unlock(ptr noundef %irq_mutex) #15
  br label %if.end20

sw.bb62.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @vub300_queue_poll_work(ptr noundef %add.ptr, i32 noundef 1) #15
  br label %if.end20

if.end20:                                         ; preds = %sw.bb62.i.i, %if.end59.i.i, %if.end30.i.i, %if.then14.i.i, %new_system_port_status.exit.i.i.if.end20_crit_edge, %if.then9.i.i, %sw.bb4.i.i.if.end20_crit_edge, %if.end2.i.i, %if.end.i.i.if.end20_crit_edge, %if.else5.i.if.end20_crit_edge, %if.then4.i, %send_irqpoll.exit.i.if.end20_crit_edge, %mmc_signal_sdio_irq.exit, %if.then7, %if.else.if.end20_crit_edge, %if.then2
  tail call void @mutex_unlock(ptr noundef %cmd_mutex) #15
  %kref22 = getelementptr i8, ptr %work, i32 -2240
  %call.i.i.i.i.i.i46 = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref22, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !315
  tail call void @llvm.prefetch.p0(ptr %kref22, i32 1, i32 3, i32 1) #15
  %143 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref22, ptr %kref22, i32 1, ptr elementtype(i32) %kref22) #15, !srcloc !316
  %asmresult.i.i.i.i.i.i.i47 = extractvalue { i32, i32, i32 } %143, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i47)
  %cmp.i.i.i.i48 = icmp eq i32 %asmresult.i.i.i.i.i.i.i47, 1
  br i1 %cmp.i.i.i.i48, label %if.then.i56, label %if.end5.i.i.i.i50

if.end5.i.i.i.i50:                                ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i47)
  %.not.i.i.i.i49 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i47, 0
  br i1 %.not.i.i.i.i49, label %if.end5.i.i.i.i50.cleanup_crit_edge, label %if.then10.i.i.i.i51, !prof !317

if.end5.i.i.i.i50.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i50
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.i.i.i.i51:                              ; preds = %if.end5.i.i.i.i50
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %kref22, i32 noundef 3) #15
  br label %cleanup

if.then.i56:                                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !318
  %mmc1.i.i53 = getelementptr i8, ptr %work, i32 -628
  %144 = ptrtoint ptr %mmc1.i.i53 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %mmc1.i.i53, align 4
  %command_out_urb.i.i54 = getelementptr i8, ptr %work, i32 -620
  %146 = ptrtoint ptr %command_out_urb.i.i54 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %command_out_urb.i.i54, align 4
  tail call void @usb_free_urb(ptr noundef %147) #15
  %148 = ptrtoint ptr %command_out_urb.i.i54 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr null, ptr %command_out_urb.i.i54, align 4
  %command_res_urb.i.i55 = getelementptr i8, ptr %work, i32 -616
  %149 = ptrtoint ptr %command_res_urb.i.i55 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %command_res_urb.i.i55, align 4
  tail call void @usb_free_urb(ptr noundef %150) #15
  %151 = ptrtoint ptr %command_res_urb.i.i55 to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr null, ptr %command_res_urb.i.i55, align 4
  %152 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %add.ptr, align 4
  tail call void @usb_put_dev(ptr noundef %153) #15
  tail call void @mmc_free_host(ptr noundef %145) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i56, %if.then10.i.i.i.i51, %if.end5.i.i.i.i50.cleanup_crit_edge, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vub300_cmndwork_thread(ptr noundef %work) #2 align 64 {
entry:
  %actual_length.i99 = alloca i32, align 4
  %actual_length28.i = alloca i32, align 4
  %buf51.i = alloca [256 x i8], align 1
  %actual_length.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -2204
  %interface = getelementptr i8, ptr %work, i32 -2200
  %0 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %interface, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %kref = getelementptr i8, ptr %work, i32 -2196
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !315
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #15
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #15, !srcloc !316
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup48_crit_edge, label %if.then10.i.i.i.i, !prof !317

if.end5.i.i.i.i.cleanup48_crit_edge:              ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup48

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #15
  br label %cleanup48

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !318
  %mmc1.i.i = getelementptr i8, ptr %work, i32 -584
  %3 = ptrtoint ptr %mmc1.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmc1.i.i, align 4
  %command_out_urb.i.i = getelementptr i8, ptr %work, i32 -576
  %5 = ptrtoint ptr %command_out_urb.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %command_out_urb.i.i, align 4
  tail call void @usb_free_urb(ptr noundef %6) #15
  %7 = ptrtoint ptr %command_out_urb.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %command_out_urb.i.i, align 4
  %command_res_urb.i.i = getelementptr i8, ptr %work, i32 -572
  %8 = ptrtoint ptr %command_res_urb.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %command_res_urb.i.i, align 4
  tail call void @usb_free_urb(ptr noundef %9) #15
  %10 = ptrtoint ptr %command_res_urb.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %command_res_urb.i.i, align 4
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 4
  tail call void @usb_put_dev(ptr noundef %12) #15
  tail call void @mmc_free_host(ptr noundef %4) #15
  br label %cleanup48

if.else:                                          ; preds = %entry
  %req1 = getelementptr i8, ptr %work, i32 -592
  %13 = ptrtoint ptr %req1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %req1, align 4
  %cmd2 = getelementptr i8, ptr %work, i32 -596
  %15 = ptrtoint ptr %cmd2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cmd2, align 4
  %data3 = getelementptr i8, ptr %work, i32 -588
  %17 = ptrtoint ptr %data3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data3, align 4
  %cmd_mutex = getelementptr i8, ptr %work, i32 -2192
  tail call void @mutex_lock_nested(ptr noundef %cmd_mutex, i32 noundef 0) #15
  %command_complete = getelementptr i8, ptr %work, i32 -568
  %19 = ptrtoint ptr %command_complete to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %command_complete, align 4
  %wait.i = getelementptr i8, ptr %work, i32 -564
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.70, ptr noundef nonnull @init_completion.__key) #15
  %vub_name = getelementptr i8, ptr %work, i32 -2008
  %20 = ptrtoint ptr %vub_name to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %vub_name, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool4.not = icmp eq i8 %21, 0
  br i1 %tobool4.not, label %lor.lhs.false, label %if.else.if.end16_crit_edge, !prof !319

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

lor.lhs.false:                                    ; preds = %if.else
  %mmc = getelementptr i8, ptr %work, i32 -584
  %22 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmc, align 4
  %card = getelementptr inbounds %struct.mmc_host, ptr %23, i32 0, i32 37
  %24 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %card, align 4
  %tobool7.not = icmp eq ptr %25, null
  br i1 %tobool7.not, label %lor.lhs.false.if.end16_crit_edge, label %if.else9

lor.lhs.false.if.end16_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

if.else9:                                         ; preds = %lor.lhs.false
  %sdio_funcs = getelementptr inbounds %struct.mmc_card, ptr %25, i32 0, i32 27
  %26 = ptrtoint ptr %sdio_funcs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sdio_funcs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp = icmp eq i32 %27, 0
  br i1 %cmp, label %if.then12, label %if.else15

if.then12:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #17
  %28 = call ptr @memcpy(ptr %vub_name, ptr @str, i32 80)
  br label %if.end16

if.else15:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @download_offload_pseudocode(ptr noundef %add.ptr)
  br label %if.end16

if.end16:                                         ; preds = %if.else15, %if.then12, %lor.lhs.false.if.end16_crit_edge, %if.else.if.end16_crit_edge
  %29 = ptrtoint ptr %cmd2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cmd2, align 4
  %31 = ptrtoint ptr %data3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data3, align 4
  %app_spec.i = getelementptr i8, ptr %work, i32 -1920
  %33 = ptrtoint ptr %app_spec.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %app_spec.i, align 4, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i = icmp eq i8 %34, 0
  %35 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %30, align 4
  br i1 %tobool.not.i, label %if.else32.i, label %if.then.i88

if.then.i88:                                      ; preds = %if.end16
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.151)
  switch i32 %36, label %if.then.i88.cleanup.sink.split.sink.split.i_crit_edge [
    i32 6, label %sw.bb.i
    i32 13, label %sw.bb16.i
    i32 22, label %sw.bb18.i
    i32 23, label %sw.bb20.i
    i32 41, label %sw.bb22.i
    i32 42, label %sw.bb24.i
    i32 51, label %sw.bb26.i
    i32 55, label %sw.bb28.i
  ]

if.then.i88.cleanup.sink.split.sink.split.i_crit_edge: ; preds = %if.then.i88
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split.sink.split.i

sw.bb.i:                                          ; preds = %if.then.i88
  %resp_len.i = getelementptr i8, ptr %work, i32 -1914
  %38 = ptrtoint ptr %resp_len.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 6, ptr %resp_len.i, align 2
  %arg.i = getelementptr inbounds %struct.mmc_command, ptr %30, i32 0, i32 1
  %39 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arg.i, align 4
  %and.i = and i32 %40, 3
  %41 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.152)
  switch i32 %and.i, label %do.end.i [
    i32 0, label %if.then3.i
    i32 2, label %if.then7.i
  ]

if.then3.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #17
  %bus_width.i = getelementptr i8, ptr %work, i32 -1917
  %42 = ptrtoint ptr %bus_width.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load.i = load i8, ptr %bus_width.i, align 1
  %bf.clear.i = and i8 %bf.load.i, 15
  %bf.set.i = or i8 %bf.clear.i, 16
  store i8 %bf.set.i, ptr %bus_width.i, align 1
  br label %sw.epilog.i

if.then7.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #17
  %bus_width8.i = getelementptr i8, ptr %work, i32 -1917
  %43 = ptrtoint ptr %bus_width8.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load9.i = load i8, ptr %bus_width8.i, align 1
  %bf.clear10.i = and i8 %bf.load9.i, 15
  %bf.set11.i = or i8 %bf.clear10.i, 64
  store i8 %bf.set11.i, ptr %bus_width8.i, align 1
  br label %sw.epilog.i

do.end.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #17
  %44 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %add.ptr, align 4
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %45, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.118, i32 noundef %and.i) #18
  br label %sw.epilog.i

sw.bb16.i:                                        ; preds = %if.then.i88
  call void @__sanitizer_cov_trace_pc() #17
  %resp_len17.i = getelementptr i8, ptr %work, i32 -1914
  %46 = ptrtoint ptr %resp_len17.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 6, ptr %resp_len17.i, align 2
  br label %sw.epilog.i

sw.bb18.i:                                        ; preds = %if.then.i88
  call void @__sanitizer_cov_trace_pc() #17
  %resp_len19.i = getelementptr i8, ptr %work, i32 -1914
  %47 = ptrtoint ptr %resp_len19.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 6, ptr %resp_len19.i, align 2
  br label %sw.epilog.i

sw.bb20.i:                                        ; preds = %if.then.i88
  call void @__sanitizer_cov_trace_pc() #17
  %resp_len21.i = getelementptr i8, ptr %work, i32 -1914
  %48 = ptrtoint ptr %resp_len21.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 6, ptr %resp_len21.i, align 2
  br label %sw.epilog.i

sw.bb22.i:                                        ; preds = %if.then.i88
  call void @__sanitizer_cov_trace_pc() #17
  %resp_len23.i = getelementptr i8, ptr %work, i32 -1914
  %49 = ptrtoint ptr %resp_len23.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 6, ptr %resp_len23.i, align 2
  br label %sw.epilog.i

sw.bb24.i:                                        ; preds = %if.then.i88
  call void @__sanitizer_cov_trace_pc() #17
  %resp_len25.i = getelementptr i8, ptr %work, i32 -1914
  %50 = ptrtoint ptr %resp_len25.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 6, ptr %resp_len25.i, align 2
  br label %sw.epilog.i

sw.bb26.i:                                        ; preds = %if.then.i88
  call void @__sanitizer_cov_trace_pc() #17
  %resp_len27.i = getelementptr i8, ptr %work, i32 -1914
  %51 = ptrtoint ptr %resp_len27.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 6, ptr %resp_len27.i, align 2
  br label %sw.epilog.i

sw.bb28.i:                                        ; preds = %if.then.i88
  call void @__sanitizer_cov_trace_pc() #17
  %resp_len29.i = getelementptr i8, ptr %work, i32 -1914
  %52 = ptrtoint ptr %resp_len29.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 6, ptr %resp_len29.i, align 2
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb28.i, %sw.bb26.i, %sw.bb24.i, %sw.bb22.i, %sw.bb20.i, %sw.bb18.i, %sw.bb16.i, %do.end.i, %if.then7.i, %if.then3.i
  %response_type.0.i = phi i8 [ 2, %sw.bb28.i ], [ 2, %sw.bb26.i ], [ 2, %sw.bb24.i ], [ 5, %sw.bb22.i ], [ 2, %sw.bb20.i ], [ 2, %sw.bb18.i ], [ 2, %sw.bb16.i ], [ 2, %if.then3.i ], [ 2, %if.then7.i ], [ 2, %do.end.i ]
  %53 = ptrtoint ptr %app_spec.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %app_spec.i, align 4
  br label %if.end92.i

if.else32.i:                                      ; preds = %if.end16
  %54 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.153)
  switch i32 %36, label %if.else32.i.cleanup.sink.split.sink.split.i_crit_edge [
    i32 0, label %sw.bb34.i
    i32 1, label %sw.bb36.i
    i32 2, label %sw.bb38.i
    i32 3, label %sw.bb40.i
    i32 4, label %sw.bb42.i
    i32 5, label %sw.bb44.i
    i32 6, label %sw.bb46.i
    i32 7, label %sw.bb48.i
    i32 8, label %sw.bb50.i
    i32 9, label %sw.bb52.i
    i32 10, label %sw.bb54.i
    i32 12, label %sw.bb56.i
    i32 13, label %sw.bb58.i
    i32 15, label %sw.bb60.i
    i32 16, label %for.cond.preheader.i
    i32 17, label %if.else32.i.sw.bb67.i_crit_edge
    i32 18, label %if.else32.i.sw.bb67.i_crit_edge228
    i32 24, label %if.else32.i.sw.bb67.i_crit_edge229
    i32 25, label %if.else32.i.sw.bb67.i_crit_edge230
    i32 27, label %if.else32.i.sw.bb67.i_crit_edge231
    i32 28, label %if.else32.i.sw.bb69.i_crit_edge
    i32 29, label %if.else32.i.sw.bb69.i_crit_edge232
    i32 30, label %if.else32.i.sw.bb71.i_crit_edge
    i32 32, label %if.else32.i.sw.bb71.i_crit_edge233
    i32 33, label %if.else32.i.sw.bb71.i_crit_edge234
    i32 38, label %sw.bb73.i
    i32 42, label %sw.bb75.i
    i32 52, label %sw.bb77.i
    i32 53, label %sw.bb80.i
    i32 55, label %sw.bb82.i
    i32 56, label %sw.bb85.i
  ]

if.else32.i.sw.bb71.i_crit_edge234:               ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb71.i

if.else32.i.sw.bb71.i_crit_edge233:               ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb71.i

if.else32.i.sw.bb71.i_crit_edge:                  ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb71.i

if.else32.i.sw.bb69.i_crit_edge232:               ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb69.i

if.else32.i.sw.bb69.i_crit_edge:                  ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb69.i

if.else32.i.sw.bb67.i_crit_edge231:               ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb67.i

if.else32.i.sw.bb67.i_crit_edge230:               ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb67.i

if.else32.i.sw.bb67.i_crit_edge229:               ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb67.i

if.else32.i.sw.bb67.i_crit_edge228:               ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb67.i

if.else32.i.sw.bb67.i_crit_edge:                  ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb67.i

if.else32.i.cleanup.sink.split.sink.split.i_crit_edge: ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split.sink.split.i

for.cond.preheader.i:                             ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #17
  %arg64.i = getelementptr inbounds %struct.mmc_command, ptr %30, i32 0, i32 1
  %55 = ptrtoint ptr %arg64.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arg64.i, align 4
  %conv.i = trunc i32 %56 to i16
  %arrayidx.i = getelementptr i8, ptr %work, i32 -612
  %57 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv.i, ptr %arrayidx.i, align 2
  %58 = load i32, ptr %arg64.i, align 4
  %conv.1.i = trunc i32 %58 to i16
  %arrayidx.1.i = getelementptr i8, ptr %work, i32 -610
  %59 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %conv.1.i, ptr %arrayidx.1.i, align 2
  %60 = load i32, ptr %arg64.i, align 4
  %conv.2.i = trunc i32 %60 to i16
  %arrayidx.2.i = getelementptr i8, ptr %work, i32 -608
  %61 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv.2.i, ptr %arrayidx.2.i, align 2
  %62 = load i32, ptr %arg64.i, align 4
  %conv.3.i = trunc i32 %62 to i16
  %arrayidx.3.i = getelementptr i8, ptr %work, i32 -606
  %63 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %conv.3.i, ptr %arrayidx.3.i, align 2
  %64 = load i32, ptr %arg64.i, align 4
  %conv.4.i = trunc i32 %64 to i16
  %arrayidx.4.i = getelementptr i8, ptr %work, i32 -604
  %65 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv.4.i, ptr %arrayidx.4.i, align 2
  %66 = load i32, ptr %arg64.i, align 4
  %conv.5.i = trunc i32 %66 to i16
  %arrayidx.5.i = getelementptr i8, ptr %work, i32 -602
  %67 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %conv.5.i, ptr %arrayidx.5.i, align 2
  %68 = load i32, ptr %arg64.i, align 4
  %conv.6.i = trunc i32 %68 to i16
  %arrayidx.6.i = getelementptr i8, ptr %work, i32 -600
  %69 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %conv.6.i, ptr %arrayidx.6.i, align 2
  %70 = load i32, ptr %arg64.i, align 4
  %conv.7.i = trunc i32 %70 to i16
  %arrayidx.7.i = getelementptr i8, ptr %work, i32 -598
  %71 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %conv.7.i, ptr %arrayidx.7.i, align 2
  %resp_len66.i = getelementptr i8, ptr %work, i32 -1914
  %72 = ptrtoint ptr %resp_len66.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 6, ptr %resp_len66.i, align 2
  br label %if.end92.i

sw.bb34.i:                                        ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #17
  %resp_len35.i = getelementptr i8, ptr %work, i32 -1914
  %73 = ptrtoint ptr %resp_len35.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %resp_len35.i, align 2
  br label %if.end92.i

sw.bb36.i:                                        ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #17
  %resp_len37.i = getelementptr i8, ptr %work, i32 -1914
  %74 = ptrtoint ptr %resp_len37.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 6, ptr %resp_len37.i, align 2
  br label %if.end92.i

sw.bb38.i:                                        ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #17
  %resp_len39.i = getelementptr i8, ptr %work, i32 -1914
  %75 = ptrtoint ptr %resp_len39.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 17, ptr %resp_len39.i, align 2
  br label %if.end92.i

sw.bb40.i:                                        ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #17
  %resp_len41.i = getelementptr i8, ptr %work, i32 -1914
  %76 = ptrtoint ptr %resp_len41.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 6, ptr %resp_len41.i, align 2
  br label %if.end92.i

sw.bb42.i:                                        ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #17
  %resp_len43.i = getelementptr i8, ptr %work, i32 -1914
  %77 = ptrtoint ptr %resp_len43.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %resp_len43.i, align 2
  br label %if.end92.i

sw.bb44.i:                                        ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #17
  %resp_len45.i = getelementptr i8, ptr %work, i32 -1914
  %78 = ptrtoint ptr %resp_len45.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 6, ptr %resp_len45.i, align 2
  br label %if.end92.i

sw.bb46.i:                                        ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #17
  %resp_len47.i = getelementptr i8, ptr %work, i32 -1914
  %79 = ptrtoint ptr %resp_len47.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 6, ptr %resp_len47.i, align 2
  br label %if.end92.i

sw.bb48.i:                                        ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #17
  %resp_len49.i = getelementptr i8, ptr %work, i32 -1914
  %80 = ptrtoint ptr %resp_len49.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 6, ptr %resp_len49.i, align 2
  br label %if.end92.i

sw.bb50.i:                                        ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #17
  %resp_len51.i = getelementptr i8, ptr %work, i32 -1914
  %81 = ptrtoint ptr %resp_len51.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 6, ptr %resp_len51.i, align 2
  br label %if.end92.i

sw.bb52.i:                                        ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #17
  %resp_len53.i = getelementptr i8, ptr %work, i32 -1914
  %82 = ptrtoint ptr %resp_len53.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 17, ptr %resp_len53.i, align 2
  br label %if.end92.i

sw.bb54.i:                                        ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #17
  %resp_len55.i = getelementptr i8, ptr %work, i32 -1914
  %83 = ptrtoint ptr %resp_len55.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 17, ptr %resp_len55.i, align 2
  br label %if.end92.i

sw.bb56.i:                                        ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #17
  %resp_len57.i = getelementptr i8, ptr %work, i32 -1914
  %84 = ptrtoint ptr %resp_len57.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 6, ptr %resp_len57.i, align 2
  br label %if.end92.i

sw.bb58.i:                                        ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #17
  %resp_len59.i = getelementptr i8, ptr %work, i32 -1914
  %85 = ptrtoint ptr %resp_len59.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 6, ptr %resp_len59.i, align 2
  br label %if.end92.i

sw.bb60.i:                                        ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #17
  %resp_len61.i = getelementptr i8, ptr %work, i32 -1914
  %86 = ptrtoint ptr %resp_len61.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %resp_len61.i, align 2
  br label %if.end92.i

sw.bb67.i:                                        ; preds = %if.else32.i.sw.bb67.i_crit_edge, %if.else32.i.sw.bb67.i_crit_edge228, %if.else32.i.sw.bb67.i_crit_edge229, %if.else32.i.sw.bb67.i_crit_edge230, %if.else32.i.sw.bb67.i_crit_edge231
  %resp_len68.i = getelementptr i8, ptr %work, i32 -1914
  %87 = ptrtoint ptr %resp_len68.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 6, ptr %resp_len68.i, align 2
  br label %if.end92.i

sw.bb69.i:                                        ; preds = %if.else32.i.sw.bb69.i_crit_edge, %if.else32.i.sw.bb69.i_crit_edge232
  %resp_len70.i = getelementptr i8, ptr %work, i32 -1914
  %88 = ptrtoint ptr %resp_len70.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 6, ptr %resp_len70.i, align 2
  br label %if.end92.i

sw.bb71.i:                                        ; preds = %if.else32.i.sw.bb71.i_crit_edge, %if.else32.i.sw.bb71.i_crit_edge233, %if.else32.i.sw.bb71.i_crit_edge234
  %resp_len72.i = getelementptr i8, ptr %work, i32 -1914
  %89 = ptrtoint ptr %resp_len72.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 6, ptr %resp_len72.i, align 2
  br label %if.end92.i

sw.bb73.i:                                        ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #17
  %resp_len74.i = getelementptr i8, ptr %work, i32 -1914
  %90 = ptrtoint ptr %resp_len74.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 6, ptr %resp_len74.i, align 2
  br label %if.end92.i

sw.bb75.i:                                        ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #17
  %resp_len76.i = getelementptr i8, ptr %work, i32 -1914
  %91 = ptrtoint ptr %resp_len76.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 6, ptr %resp_len76.i, align 2
  br label %if.end92.i

sw.bb77.i:                                        ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #17
  %resp_len78.i = getelementptr i8, ptr %work, i32 -1914
  %92 = ptrtoint ptr %resp_len78.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 6, ptr %resp_len78.i, align 2
  %arg79.i = getelementptr inbounds %struct.mmc_command, ptr %30, i32 0, i32 1
  %93 = ptrtoint ptr %arg79.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arg79.i, align 4
  tail call fastcc void @snoop_block_size_and_bus_width(ptr noundef %add.ptr, i32 noundef %94) #15
  br label %if.end92.i

sw.bb80.i:                                        ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #17
  %resp_len81.i = getelementptr i8, ptr %work, i32 -1914
  %95 = ptrtoint ptr %resp_len81.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 6, ptr %resp_len81.i, align 2
  br label %if.end92.i

sw.bb82.i:                                        ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #17
  %resp_len83.i = getelementptr i8, ptr %work, i32 -1914
  %96 = ptrtoint ptr %resp_len83.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 6, ptr %resp_len83.i, align 2
  %97 = ptrtoint ptr %app_spec.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 1, ptr %app_spec.i, align 4
  br label %if.end92.i

sw.bb85.i:                                        ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #17
  %resp_len86.i = getelementptr i8, ptr %work, i32 -1914
  %98 = ptrtoint ptr %resp_len86.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 6, ptr %resp_len86.i, align 2
  br label %if.end92.i

if.end92.i:                                       ; preds = %sw.bb85.i, %sw.bb82.i, %sw.bb80.i, %sw.bb77.i, %sw.bb75.i, %sw.bb73.i, %sw.bb71.i, %sw.bb69.i, %sw.bb67.i, %sw.bb60.i, %sw.bb58.i, %sw.bb56.i, %sw.bb54.i, %sw.bb52.i, %sw.bb50.i, %sw.bb48.i, %sw.bb46.i, %sw.bb44.i, %sw.bb42.i, %sw.bb40.i, %sw.bb38.i, %sw.bb36.i, %sw.bb34.i, %for.cond.preheader.i, %sw.epilog.i
  %response_type.1.i = phi i8 [ %response_type.0.i, %sw.epilog.i ], [ 2, %sw.bb85.i ], [ 2, %sw.bb82.i ], [ 7, %sw.bb80.i ], [ 7, %sw.bb77.i ], [ 2, %sw.bb75.i ], [ 3, %sw.bb73.i ], [ 2, %sw.bb71.i ], [ 3, %sw.bb69.i ], [ 2, %sw.bb67.i ], [ 2, %for.cond.preheader.i ], [ 1, %sw.bb60.i ], [ 2, %sw.bb58.i ], [ 3, %sw.bb56.i ], [ 4, %sw.bb54.i ], [ 4, %sw.bb52.i ], [ 10, %sw.bb50.i ], [ 3, %sw.bb48.i ], [ 2, %sw.bb46.i ], [ 6, %sw.bb44.i ], [ 1, %sw.bb42.i ], [ 9, %sw.bb40.i ], [ 4, %sw.bb38.i ], [ 5, %sw.bb36.i ], [ 1, %sw.bb34.i ]
  %cmnd.i = getelementptr i8, ptr %work, i32 -456
  %99 = ptrtoint ptr %cmnd.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 20, ptr %cmnd.i, align 4
  %header_type.i = getelementptr i8, ptr %work, i32 -455
  %100 = ptrtoint ptr %header_type.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 0, ptr %header_type.i, align 1
  %port_number.i = getelementptr i8, ptr %work, i32 -454
  %101 = ptrtoint ptr %port_number.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 0, ptr %port_number.i, align 2
  %command_type.i = getelementptr i8, ptr %work, i32 -453
  %102 = ptrtoint ptr %command_type.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 0, ptr %command_type.i, align 1
  %response_type97.i = getelementptr i8, ptr %work, i32 -447
  %103 = ptrtoint ptr %response_type97.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %response_type.1.i, ptr %response_type97.i, align 1
  %104 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %30, align 4
  %conv99.i = trunc i32 %105 to i8
  %command_index.i = getelementptr i8, ptr %work, i32 -452
  %106 = ptrtoint ptr %command_index.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %conv99.i, ptr %command_index.i, align 4
  %arg101.i = getelementptr inbounds %struct.mmc_command, ptr %30, i32 0, i32 1
  %107 = ptrtoint ptr %arg101.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arg101.i, align 4
  %shr.i = lshr i32 %108, 24
  %conv102.i = trunc i32 %shr.i to i8
  %arguments.i = getelementptr i8, ptr %work, i32 -446
  %109 = ptrtoint ptr %arguments.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %conv102.i, ptr %arguments.i, align 2
  %110 = load i32, ptr %arg101.i, align 4
  %shr106.i = lshr i32 %110, 16
  %conv107.i = trunc i32 %shr106.i to i8
  %arrayidx110.i = getelementptr i8, ptr %work, i32 -445
  %111 = ptrtoint ptr %arrayidx110.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %conv107.i, ptr %arrayidx110.i, align 1
  %112 = load i32, ptr %arg101.i, align 4
  %shr112.i = lshr i32 %112, 8
  %conv113.i = trunc i32 %shr112.i to i8
  %arrayidx116.i = getelementptr i8, ptr %work, i32 -444
  %113 = ptrtoint ptr %arrayidx116.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %conv113.i, ptr %arrayidx116.i, align 2
  %114 = load i32, ptr %arg101.i, align 4
  %conv119.i = trunc i32 %114 to i8
  %arrayidx122.i = getelementptr i8, ptr %work, i32 -443
  %115 = ptrtoint ptr %arrayidx122.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %conv119.i, ptr %arrayidx122.i, align 1
  %116 = load i32, ptr %30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %116)
  %cmp124.i = icmp eq i32 %116, 52
  br i1 %cmp124.i, label %if.then126.i, label %if.else165.i

if.then126.i:                                     ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #17
  %117 = ptrtoint ptr %arg101.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arg101.i, align 4
  %shr128.i = lshr i32 %118, 28
  %and129.i = and i32 %shr128.i, 7
  %block_count.i = getelementptr i8, ptr %work, i32 -442
  %119 = ptrtoint ptr %block_count.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 0, ptr %block_count.i, align 2
  %arrayidx134.i = getelementptr i8, ptr %work, i32 -441
  %120 = ptrtoint ptr %arrayidx134.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 0, ptr %arrayidx134.i, align 1
  %arrayidx136.i = getelementptr %struct.vub300_mmc_host, ptr %add.ptr, i32 0, i32 28, i32 %and129.i
  %121 = ptrtoint ptr %arrayidx136.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %arrayidx136.i, align 2
  %123 = lshr i16 %122, 8
  %conv140.i = trunc i16 %123 to i8
  %block_size.i = getelementptr i8, ptr %work, i32 -440
  %124 = ptrtoint ptr %block_size.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %conv140.i, ptr %block_size.i, align 4
  %conv148.i = trunc i16 %122 to i8
  %arrayidx151.i = getelementptr i8, ptr %work, i32 -439
  %125 = ptrtoint ptr %arrayidx151.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %conv148.i, ptr %arrayidx151.i, align 1
  %126 = ptrtoint ptr %command_type.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 0, ptr %command_type.i, align 1
  %transfer_size.i = getelementptr i8, ptr %work, i32 -451
  %127 = ptrtoint ptr %transfer_size.i to i32
  call void @__asan_storeN_noabort(i32 %127, i32 4)
  store i32 0, ptr %transfer_size.i, align 1
  br label %if.end396.i

if.else165.i:                                     ; preds = %if.end92.i
  %tobool166.not.i = icmp eq ptr %32, null
  br i1 %tobool166.not.i, label %if.then167.i, label %if.else206.i

if.then167.i:                                     ; preds = %if.else165.i
  call void @__sanitizer_cov_trace_pc() #17
  %block_count169.i = getelementptr i8, ptr %work, i32 -442
  %128 = ptrtoint ptr %block_count169.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 0, ptr %block_count169.i, align 2
  %arrayidx173.i = getelementptr i8, ptr %work, i32 -441
  %129 = ptrtoint ptr %arrayidx173.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 0, ptr %arrayidx173.i, align 1
  %fbs174.i = getelementptr i8, ptr %work, i32 -612
  %130 = ptrtoint ptr %fbs174.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %fbs174.i, align 4
  %132 = lshr i16 %131, 8
  %conv179.i = trunc i16 %132 to i8
  %block_size181.i = getelementptr i8, ptr %work, i32 -440
  %133 = ptrtoint ptr %block_size181.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %conv179.i, ptr %block_size181.i, align 4
  %conv188.i = trunc i16 %131 to i8
  %arrayidx191.i = getelementptr i8, ptr %work, i32 -439
  %134 = ptrtoint ptr %arrayidx191.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %conv188.i, ptr %arrayidx191.i, align 1
  %135 = ptrtoint ptr %command_type.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 0, ptr %command_type.i, align 1
  %transfer_size195.i = getelementptr i8, ptr %work, i32 -451
  %136 = ptrtoint ptr %transfer_size195.i to i32
  call void @__asan_storeN_noabort(i32 %136, i32 4)
  store i32 0, ptr %transfer_size195.i, align 1
  br label %if.end396.i

if.else206.i:                                     ; preds = %if.else165.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 53, i32 %116)
  %cmp208.i = icmp eq i32 %116, 53
  br i1 %cmp208.i, label %if.then210.i, label %if.else316.i

if.then210.i:                                     ; preds = %if.else206.i
  %137 = ptrtoint ptr %arg101.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %arg101.i, align 4
  %shr213.i = lshr i32 %138, 28
  %and214.i = and i32 %shr213.i, 7
  %139 = and i8 %conv102.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool220.not.i = icmp eq i8 %139, 0
  br i1 %tobool220.not.i, label %if.else248.i, label %if.then221.i

if.then221.i:                                     ; preds = %if.then210.i
  call void @__sanitizer_cov_trace_pc() #17
  %blocks.i = getelementptr inbounds %struct.mmc_data, ptr %32, i32 0, i32 3
  %140 = ptrtoint ptr %blocks.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %blocks.i, align 4
  %shr222.i = lshr i32 %141, 8
  %conv224.i = trunc i32 %shr222.i to i8
  %block_count226.i = getelementptr i8, ptr %work, i32 -442
  %142 = ptrtoint ptr %block_count226.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %conv224.i, ptr %block_count226.i, align 2
  %143 = load i32, ptr %blocks.i, align 4
  %conv231.i = trunc i32 %143 to i8
  %arrayidx234.i = getelementptr i8, ptr %work, i32 -441
  %144 = ptrtoint ptr %arrayidx234.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %conv231.i, ptr %arrayidx234.i, align 1
  %blksz.i = getelementptr inbounds %struct.mmc_data, ptr %32, i32 0, i32 2
  %145 = ptrtoint ptr %blksz.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %blksz.i, align 4
  %shr235.i = lshr i32 %146, 8
  %conv237.i = trunc i32 %shr235.i to i8
  %block_size239.i = getelementptr i8, ptr %work, i32 -440
  %147 = ptrtoint ptr %block_size239.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %conv237.i, ptr %block_size239.i, align 4
  %148 = load i32, ptr %blksz.i, align 4
  br label %if.end268.i

if.else248.i:                                     ; preds = %if.then210.i
  call void @__sanitizer_cov_trace_pc() #17
  %block_count250.i = getelementptr i8, ptr %work, i32 -442
  %149 = ptrtoint ptr %block_count250.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 0, ptr %block_count250.i, align 2
  %arrayidx254.i = getelementptr i8, ptr %work, i32 -441
  %150 = ptrtoint ptr %arrayidx254.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 0, ptr %arrayidx254.i, align 1
  %datasize.i = getelementptr i8, ptr %work, i32 -1912
  %151 = ptrtoint ptr %datasize.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %datasize.i, align 4
  %shr255.i = lshr i32 %152, 8
  %conv257.i = trunc i32 %shr255.i to i8
  %block_size259.i = getelementptr i8, ptr %work, i32 -440
  %153 = ptrtoint ptr %block_size259.i to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %conv257.i, ptr %block_size259.i, align 4
  br label %if.end268.i

if.end268.i:                                      ; preds = %if.else248.i, %if.then221.i
  %conv244.sink.in.i = phi i32 [ %152, %if.else248.i ], [ %148, %if.then221.i ]
  %conv244.sink.i = trunc i32 %conv244.sink.in.i to i8
  %154 = getelementptr i8, ptr %work, i32 -439
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %conv244.sink.i, ptr %154, align 1
  %flags.i = getelementptr inbounds %struct.mmc_data, ptr %32, i32 0, i32 6
  %156 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %flags.i, align 4
  %and269.i = lshr i32 %157, 2
  %158 = trunc i32 %and269.i to i8
  %159 = and i8 %158, -128
  %conv271.i = xor i8 %159, -128
  %160 = ptrtoint ptr %command_type.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %conv271.i, ptr %command_type.i, align 1
  %datasize274.i = getelementptr i8, ptr %work, i32 -1912
  %161 = ptrtoint ptr %datasize274.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %datasize274.i, align 4
  %shr275.i = lshr i32 %162, 24
  %conv277.i = trunc i32 %shr275.i to i8
  %transfer_size279.i = getelementptr i8, ptr %work, i32 -451
  %163 = ptrtoint ptr %transfer_size279.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 %conv277.i, ptr %transfer_size279.i, align 1
  %shr282.i = lshr i32 %162, 16
  %conv284.i = trunc i32 %shr282.i to i8
  %arrayidx287.i = getelementptr i8, ptr %work, i32 -450
  %164 = ptrtoint ptr %arrayidx287.i to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 %conv284.i, ptr %arrayidx287.i, align 1
  %shr289.i = lshr i32 %162, 8
  %conv291.i = trunc i32 %shr289.i to i8
  %arrayidx294.i = getelementptr i8, ptr %work, i32 -449
  %165 = ptrtoint ptr %arrayidx294.i to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %conv291.i, ptr %arrayidx294.i, align 1
  %conv298.i = trunc i32 %162 to i8
  %arrayidx301.i = getelementptr i8, ptr %work, i32 -448
  %166 = ptrtoint ptr %arrayidx301.i to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 %conv298.i, ptr %arrayidx301.i, align 1
  %arrayidx304.i = getelementptr %struct.vub300_mmc_host, ptr %add.ptr, i32 0, i32 28, i32 %and214.i
  %167 = ptrtoint ptr %arrayidx304.i to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %arrayidx304.i, align 2
  %conv305.i = zext i16 %168 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %162, i32 %conv305.i)
  %cmp306.i = icmp ult i32 %162, %conv305.i
  br i1 %cmp306.i, label %if.then308.i, label %if.end268.i.if.end396.i_crit_edge

if.end268.i.if.end396.i_crit_edge:                ; preds = %if.end268.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end396.i

if.then308.i:                                     ; preds = %if.end268.i
  call void @__sanitizer_cov_trace_pc() #17
  %block_count310.i = getelementptr i8, ptr %work, i32 -442
  %169 = ptrtoint ptr %block_count310.i to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 0, ptr %block_count310.i, align 2
  %arrayidx314.i = getelementptr i8, ptr %work, i32 -441
  %170 = ptrtoint ptr %arrayidx314.i to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 0, ptr %arrayidx314.i, align 1
  br label %if.end396.i

if.else316.i:                                     ; preds = %if.else206.i
  %blocks317.i = getelementptr inbounds %struct.mmc_data, ptr %32, i32 0, i32 3
  %171 = ptrtoint ptr %blocks317.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %blocks317.i, align 4
  %shr318.i = lshr i32 %172, 8
  %conv320.i = trunc i32 %shr318.i to i8
  %block_count322.i = getelementptr i8, ptr %work, i32 -442
  %173 = ptrtoint ptr %block_count322.i to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 %conv320.i, ptr %block_count322.i, align 2
  %174 = load i32, ptr %blocks317.i, align 4
  %conv327.i = trunc i32 %174 to i8
  %arrayidx330.i = getelementptr i8, ptr %work, i32 -441
  %175 = ptrtoint ptr %arrayidx330.i to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 %conv327.i, ptr %arrayidx330.i, align 1
  %blksz331.i = getelementptr inbounds %struct.mmc_data, ptr %32, i32 0, i32 2
  %176 = ptrtoint ptr %blksz331.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %blksz331.i, align 4
  %shr332.i = lshr i32 %177, 8
  %conv334.i = trunc i32 %shr332.i to i8
  %block_size336.i = getelementptr i8, ptr %work, i32 -440
  %178 = ptrtoint ptr %block_size336.i to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 %conv334.i, ptr %block_size336.i, align 4
  %179 = load i32, ptr %blksz331.i, align 4
  %conv341.i = trunc i32 %179 to i8
  %arrayidx344.i = getelementptr i8, ptr %work, i32 -439
  %180 = ptrtoint ptr %arrayidx344.i to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %conv341.i, ptr %arrayidx344.i, align 1
  %flags345.i = getelementptr inbounds %struct.mmc_data, ptr %32, i32 0, i32 6
  %181 = ptrtoint ptr %flags345.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %flags345.i, align 4
  %and346.i = lshr i32 %182, 2
  %183 = trunc i32 %and346.i to i8
  %184 = and i8 %183, -128
  %conv349.i = xor i8 %184, -128
  %185 = ptrtoint ptr %command_type.i to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 %conv349.i, ptr %command_type.i, align 1
  %datasize352.i = getelementptr i8, ptr %work, i32 -1912
  %186 = ptrtoint ptr %datasize352.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %datasize352.i, align 4
  %shr353.i = lshr i32 %187, 24
  %conv355.i = trunc i32 %shr353.i to i8
  %transfer_size357.i = getelementptr i8, ptr %work, i32 -451
  %188 = ptrtoint ptr %transfer_size357.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 %conv355.i, ptr %transfer_size357.i, align 1
  %shr360.i = lshr i32 %187, 16
  %conv362.i = trunc i32 %shr360.i to i8
  %arrayidx365.i = getelementptr i8, ptr %work, i32 -450
  %189 = ptrtoint ptr %arrayidx365.i to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 %conv362.i, ptr %arrayidx365.i, align 1
  %shr367.i = lshr i32 %187, 8
  %conv369.i = trunc i32 %shr367.i to i8
  %arrayidx372.i = getelementptr i8, ptr %work, i32 -449
  %190 = ptrtoint ptr %arrayidx372.i to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 %conv369.i, ptr %arrayidx372.i, align 1
  %conv376.i = trunc i32 %187 to i8
  %arrayidx379.i = getelementptr i8, ptr %work, i32 -448
  %191 = ptrtoint ptr %arrayidx379.i to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 %conv376.i, ptr %arrayidx379.i, align 1
  %fbs381.i = getelementptr i8, ptr %work, i32 -612
  %192 = ptrtoint ptr %fbs381.i to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %fbs381.i, align 4
  %conv383.i = zext i16 %193 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %187, i32 %conv383.i)
  %cmp384.i = icmp ult i32 %187, %conv383.i
  br i1 %cmp384.i, label %if.then386.i, label %if.else316.i.if.end396.i_crit_edge

if.else316.i.if.end396.i_crit_edge:               ; preds = %if.else316.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end396.i

if.then386.i:                                     ; preds = %if.else316.i
  call void @__sanitizer_cov_trace_pc() #17
  %194 = ptrtoint ptr %block_count322.i to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 0, ptr %block_count322.i, align 2
  %195 = ptrtoint ptr %arrayidx330.i to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 0, ptr %arrayidx330.i, align 1
  br label %if.end396.i

if.end396.i:                                      ; preds = %if.then386.i, %if.else316.i.if.end396.i_crit_edge, %if.then308.i, %if.end268.i.if.end396.i_crit_edge, %if.then167.i, %if.then126.i
  %block_size398.i = getelementptr i8, ptr %work, i32 -440
  %196 = ptrtoint ptr %block_size398.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %block_size398.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %197)
  %tobool401.not.i = icmp eq i8 %197, 0
  br i1 %tobool401.not.i, label %lor.lhs.false.i, label %if.end396.i.if.then407.i_crit_edge

if.end396.i.if.then407.i_crit_edge:               ; preds = %if.end396.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then407.i

lor.lhs.false.i:                                  ; preds = %if.end396.i
  %arrayidx404.i = getelementptr i8, ptr %work, i32 -439
  %198 = ptrtoint ptr %arrayidx404.i to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %arrayidx404.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %199)
  %tobool406.not.i = icmp eq i8 %199, 0
  br i1 %tobool406.not.i, label %if.else434.i, label %lor.lhs.false.i.if.then407.i_crit_edge

lor.lhs.false.i.if.then407.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then407.i

if.then407.i:                                     ; preds = %lor.lhs.false.i.if.then407.i_crit_edge, %if.end396.i.if.then407.i_crit_edge
  %arrayidx411.i = getelementptr i8, ptr %work, i32 -439
  %200 = ptrtoint ptr %arrayidx411.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %arrayidx411.i, align 1
  %conv412.i = zext i8 %201 to i16
  %conv416.i = zext i8 %197 to i16
  %shl.i = shl nuw i16 %conv416.i, 8
  %or.i = or i16 %shl.i, %conv412.i
  %rem.i = urem i16 1024, %or.i
  %sub.i = sub nuw nsw i16 1024, %rem.i
  %202 = lshr i16 %sub.i, 8
  %conv423.i = trunc i16 %202 to i8
  %block_boundary425.i = getelementptr i8, ptr %work, i32 -438
  %203 = ptrtoint ptr %block_boundary425.i to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 %conv423.i, ptr %block_boundary425.i, align 2
  %conv430.i = trunc i16 %sub.i to i8
  br label %if.end441.i

if.else434.i:                                     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  %block_boundary436.i = getelementptr i8, ptr %work, i32 -438
  %204 = ptrtoint ptr %block_boundary436.i to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 0, ptr %block_boundary436.i, align 2
  br label %if.end441.i

if.end441.i:                                      ; preds = %if.else434.i, %if.then407.i
  %.sink.i = phi i8 [ 0, %if.else434.i ], [ %conv430.i, %if.then407.i ]
  %arrayidx440.i = getelementptr i8, ptr %work, i32 -437
  %205 = ptrtoint ptr %arrayidx440.i to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 %.sink.i, ptr %arrayidx440.i, align 1
  %command_out_urb.i = getelementptr i8, ptr %work, i32 -576
  %206 = ptrtoint ptr %command_out_urb.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %command_out_urb.i, align 4
  %208 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %add.ptr, align 4
  %cmnd_out_ep.i = getelementptr i8, ptr %work, i32 -1928
  %210 = ptrtoint ptr %cmnd_out_ep.i to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %cmnd_out_ep.i, align 4
  %conv444.i = zext i8 %211 to i32
  %212 = ptrtoint ptr %209 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %209, align 8
  %shl.i.i = shl i32 %213, 8
  %shl1.i.i = shl nuw nsw i32 %conv444.i, 15
  %or.i.i = or i32 %shl.i.i, %shl1.i.i
  %or445.i = or i32 %or.i.i, -1073741824
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %207, i32 0, i32 8
  %214 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr %209, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %207, i32 0, i32 10
  %215 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %or445.i, ptr %pipe2.i.i, align 4
  %transfer_buffer3.i.i = getelementptr inbounds %struct.urb, ptr %207, i32 0, i32 14
  %216 = ptrtoint ptr %transfer_buffer3.i.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr %cmnd.i, ptr %transfer_buffer3.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %207, i32 0, i32 19
  %217 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 64, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %207, i32 0, i32 28
  %218 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr @command_out_completed, ptr %complete.i.i, align 4
  %context4.i.i = getelementptr inbounds %struct.urb, ptr %207, i32 0, i32 27
  %219 = ptrtoint ptr %context4.i.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr %add.ptr, ptr %context4.i.i, align 4
  %220 = load ptr, ptr %command_out_urb.i, align 4
  %call448.i = tail call i32 @usb_submit_urb(ptr noundef %220, i32 noundef 3264) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call448.i)
  %cmp449.i = icmp slt i32 %call448.i, 0
  br i1 %cmp449.i, label %if.end441.i.cleanup.sink.split.i_crit_edge, label %if.end441.i.send_command.exit_crit_edge

if.end441.i.send_command.exit_crit_edge:          ; preds = %if.end441.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %send_command.exit

if.end441.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.end441.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split.i

cleanup.sink.split.sink.split.i:                  ; preds = %if.else32.i.cleanup.sink.split.sink.split.i_crit_edge, %if.then.i88.cleanup.sink.split.sink.split.i_crit_edge
  %resp_len30.i = getelementptr i8, ptr %work, i32 -1914
  %221 = ptrtoint ptr %resp_len30.i to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 0, ptr %resp_len30.i, align 2
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %cleanup.sink.split.sink.split.i, %if.end441.i.cleanup.sink.split.i_crit_edge
  %call448.sink.i = phi i32 [ %call448.i, %if.end441.i.cleanup.sink.split.i_crit_edge ], [ -22, %cleanup.sink.split.sink.split.i ]
  %error452.i = getelementptr inbounds %struct.mmc_command, ptr %30, i32 0, i32 5
  %222 = ptrtoint ptr %error452.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %call448.sink.i, ptr %error452.i, align 4
  tail call void @complete(ptr noundef %command_complete) #15
  br label %send_command.exit

send_command.exit:                                ; preds = %cleanup.sink.split.i, %if.end441.i.send_command.exit_crit_edge
  %tobool17.not = icmp eq ptr %18, null
  br i1 %tobool17.not, label %send_command.exit.if.else.i.i169_crit_edge, label %if.else19

send_command.exit.if.else.i.i169_crit_edge:       ; preds = %send_command.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i.i169

if.else19:                                        ; preds = %send_command.exit
  %flags = getelementptr inbounds %struct.mmc_data, ptr %18, i32 0, i32 6
  %223 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %flags, align 4
  %and = and i32 %224, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %if.else23, label %if.then21

if.then21:                                        ; preds = %if.else19
  %datasize.i89 = getelementptr i8, ptr %work, i32 -1912
  %225 = ptrtoint ptr %datasize.i89 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %datasize.i89, align 4
  %large_usb_packets.i = getelementptr i8, ptr %work, i32 -1921
  %227 = ptrtoint ptr %large_usb_packets.i to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %large_usb_packets.i, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %228)
  %tobool.not.i90 = icmp eq i8 %228, 0
  %add.i = add i32 %226, 511
  %229 = and i32 %add.i, -512
  %add1.i = add i32 %226, 63
  %230 = and i32 %add1.i, -64
  %cond.i = select i1 %tobool.not.i90, i32 %230, i32 %229
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %226)
  %cmp.i = icmp eq i32 %cond.i, %226
  br i1 %cmp.i, label %if.then21.if.then.i96_crit_edge, label %lor.lhs.false.i91

if.then21.if.then.i96_crit_edge:                  ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i96

lor.lhs.false.i91:                                ; preds = %if.then21
  %231 = load i8, ptr @pad_input_to_usb_pkt, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %231)
  %tobool4.not.i = icmp eq i8 %231, 0
  br i1 %tobool4.not.i, label %lor.lhs.false.i91.if.then.i96_crit_edge, label %if.end8.i.i

lor.lhs.false.i91.if.then.i96_crit_edge:          ; preds = %lor.lhs.false.i91
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i96

if.then.i96:                                      ; preds = %lor.lhs.false.i91.if.then.i96_crit_edge, %if.then21.if.then.i96_crit_edge
  %232 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %add.ptr, align 4
  %data_inp_ep.i = getelementptr i8, ptr %work, i32 -1925
  %234 = ptrtoint ptr %data_inp_ep.i to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %data_inp_ep.i, align 1
  %conv.i92 = zext i8 %235 to i32
  %236 = ptrtoint ptr %233 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %233, align 8
  %shl.i.i93 = shl i32 %237, 8
  %shl1.i.i94 = shl nuw nsw i32 %conv.i92, 15
  %or.i.i95 = or i32 %shl.i.i93, %shl1.i.i94
  %or5.i = or i32 %or.i.i95, -1073741696
  %sg_request.i = getelementptr i8, ptr %work, i32 -220
  %sg.i = getelementptr inbounds %struct.mmc_data, ptr %18, i32 0, i32 12
  %238 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %sg.i, align 4
  %sg_len.i = getelementptr inbounds %struct.mmc_data, ptr %18, i32 0, i32 10
  %240 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %sg_len.i, align 4
  %call7.i = tail call i32 @usb_sg_init(ptr noundef %sg_request.i, ptr noundef %233, i32 noundef %or5.i, i32 noundef 0, ptr noundef %239, i32 noundef %241, i32 noundef 0, i32 noundef 3264) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %if.then10.i, label %if.else.i

if.then10.i:                                      ; preds = %if.then.i96
  call void @__sanitizer_cov_trace_pc() #17
  %command_out_urb.i97 = getelementptr i8, ptr %work, i32 -576
  %242 = ptrtoint ptr %command_out_urb.i97 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %command_out_urb.i97, align 4
  %call11.i = tail call i32 @usb_unlink_urb(ptr noundef %243) #15
  %command_res_urb.i = getelementptr i8, ptr %work, i32 -572
  %244 = ptrtoint ptr %command_res_urb.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %command_res_urb.i, align 4
  %call12.i = tail call i32 @usb_unlink_urb(ptr noundef %245) #15
  %error.i = getelementptr inbounds %struct.mmc_command, ptr %16, i32 0, i32 5
  %246 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 %call7.i, ptr %error.i, align 4
  %bytes_xfered.i = getelementptr inbounds %struct.mmc_data, ptr %18, i32 0, i32 7
  %247 = ptrtoint ptr %bytes_xfered.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 0, ptr %bytes_xfered.i, align 4
  br label %if.else.i.i169

if.else.i:                                        ; preds = %if.then.i96
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %248 = load volatile i32, ptr @jiffies, align 128
  %div.i = sdiv i32 %226, 16384
  %add13.i = add nsw i32 %div.i, 2000
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %add13.i) #15
  %add15.i = add i32 %call2.i.i, %248
  %sg_transfer_timer.i = getelementptr i8, ptr %work, i32 -268
  %expires.i = getelementptr i8, ptr %work, i32 -260
  %249 = ptrtoint ptr %expires.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 %add15.i, ptr %expires.i, align 4
  tail call void @add_timer(ptr noundef %sg_transfer_timer.i) #15
  tail call void @usb_sg_wait(ptr noundef %sg_request.i) #15
  %call19.i = tail call i32 @del_timer(ptr noundef %sg_transfer_timer.i) #15
  %250 = ptrtoint ptr %sg_request.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %sg_request.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %251)
  %cmp21.i = icmp slt i32 %251, 0
  br i1 %cmp21.i, label %if.then23.i, label %if.else28.i

if.then23.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  %error26.i = getelementptr inbounds %struct.mmc_command, ptr %16, i32 0, i32 5
  %252 = ptrtoint ptr %error26.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 %251, ptr %error26.i, align 4
  %bytes_xfered27.i = getelementptr inbounds %struct.mmc_data, ptr %18, i32 0, i32 7
  %253 = ptrtoint ptr %bytes_xfered27.i to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 0, ptr %bytes_xfered27.i, align 4
  br label %if.else.i.i169

if.else28.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  %254 = ptrtoint ptr %datasize.i89 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %datasize.i89, align 4
  %bytes_xfered30.i = getelementptr inbounds %struct.mmc_data, ptr %18, i32 0, i32 7
  %256 = ptrtoint ptr %bytes_xfered30.i to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 %255, ptr %bytes_xfered30.i, align 4
  br label %if.else.i.i169

if.end8.i.i:                                      ; preds = %lor.lhs.false.i91
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %cond.i, i32 noundef 3264) #19
  %tobool34.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool34.not.i, label %if.else67.i, label %if.then35.i

if.then35.i:                                      ; preds = %if.end8.i.i
  %257 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %add.ptr, align 4
  %data_inp_ep39.i = getelementptr i8, ptr %work, i32 -1925
  %259 = ptrtoint ptr %data_inp_ep39.i to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %data_inp_ep39.i, align 1
  %conv40.i = zext i8 %260 to i32
  %261 = ptrtoint ptr %258 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %258, align 8
  %shl.i126.i = shl i32 %262, 8
  %shl1.i127.i = shl nuw nsw i32 %conv40.i, 15
  %or.i128.i = or i32 %shl.i126.i, %shl1.i127.i
  %or43.i = or i32 %or.i128.i, -1073741696
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_length.i) #15
  %263 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 0, ptr %actual_length.i, align 4
  %div44.i = sdiv i32 %cond.i, 16384
  %add45.i = add nsw i32 %div44.i, 2000
  %call46.i = call fastcc i32 @vub300_usb_bulk_msg(ptr noundef %add.ptr, i32 noundef %or43.i, ptr noundef nonnull %call9.i.i, i32 noundef %cond.i, ptr noundef nonnull %actual_length.i, i32 noundef %add45.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %cmp47.i = icmp slt i32 %call46.i, 0
  br i1 %cmp47.i, label %if.then49.i, label %if.else52.i

if.then49.i:                                      ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #17
  %error50.i = getelementptr inbounds %struct.mmc_command, ptr %16, i32 0, i32 5
  %264 = ptrtoint ptr %error50.i to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 %call46.i, ptr %error50.i, align 4
  %bytes_xfered51.i = getelementptr inbounds %struct.mmc_data, ptr %18, i32 0, i32 7
  %265 = ptrtoint ptr %bytes_xfered51.i to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 0, ptr %bytes_xfered51.i, align 4
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #15
  br label %cleanup64.i

if.else52.i:                                      ; preds = %if.then35.i
  %266 = ptrtoint ptr %actual_length.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %actual_length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %267, i32 %226)
  %cmp53.i = icmp slt i32 %267, %226
  br i1 %cmp53.i, label %if.then55.i, label %if.else58.i

if.then55.i:                                      ; preds = %if.else52.i
  call void @__sanitizer_cov_trace_pc() #17
  %error56.i = getelementptr inbounds %struct.mmc_command, ptr %16, i32 0, i32 5
  %268 = ptrtoint ptr %error56.i to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 -121, ptr %error56.i, align 4
  %bytes_xfered57.i = getelementptr inbounds %struct.mmc_data, ptr %18, i32 0, i32 7
  %269 = ptrtoint ptr %bytes_xfered57.i to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 0, ptr %bytes_xfered57.i, align 4
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #15
  br label %cleanup64.i

if.else58.i:                                      ; preds = %if.else52.i
  call void @__sanitizer_cov_trace_pc() #17
  %sg59.i = getelementptr inbounds %struct.mmc_data, ptr %18, i32 0, i32 12
  %270 = ptrtoint ptr %sg59.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %sg59.i, align 4
  %sg_len60.i = getelementptr inbounds %struct.mmc_data, ptr %18, i32 0, i32 10
  %272 = ptrtoint ptr %sg_len60.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %sg_len60.i, align 4
  %call61.i = tail call i32 @sg_copy_from_buffer(ptr noundef %271, i32 noundef %273, ptr noundef nonnull %call9.i.i, i32 noundef %226) #15
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #15
  %274 = ptrtoint ptr %datasize.i89 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %datasize.i89, align 4
  %bytes_xfered63.i = getelementptr inbounds %struct.mmc_data, ptr %18, i32 0, i32 7
  %276 = ptrtoint ptr %bytes_xfered63.i to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 %275, ptr %bytes_xfered63.i, align 4
  br label %cleanup64.i

cleanup64.i:                                      ; preds = %if.else58.i, %if.then55.i, %if.then49.i
  %retval.1.i = phi i32 [ 0, %if.then49.i ], [ 0, %if.then55.i ], [ %226, %if.else58.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_length.i) #15
  br label %if.else.i.i169

if.else67.i:                                      ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %error68.i = getelementptr inbounds %struct.mmc_command, ptr %16, i32 0, i32 5
  %277 = ptrtoint ptr %error68.i to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 -12, ptr %error68.i, align 4
  %bytes_xfered69.i = getelementptr inbounds %struct.mmc_data, ptr %18, i32 0, i32 7
  %278 = ptrtoint ptr %bytes_xfered69.i to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 0, ptr %bytes_xfered69.i, align 4
  br label %if.else.i.i169

if.else23:                                        ; preds = %if.else19
  %279 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %add.ptr, align 4
  %data_out_ep.i = getelementptr i8, ptr %work, i32 -1926
  %281 = ptrtoint ptr %data_out_ep.i to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %data_out_ep.i, align 2
  %conv.i100 = zext i8 %282 to i32
  %283 = ptrtoint ptr %280 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %280, align 8
  %shl.i.i101 = shl i32 %284, 8
  %shl1.i.i102 = shl nuw nsw i32 %conv.i100, 15
  %or.i.i103 = or i32 %shl.i.i101, %shl1.i.i102
  %or.i104 = or i32 %or.i.i103, -1073741824
  %datasize.i105 = getelementptr i8, ptr %work, i32 -1912
  %285 = ptrtoint ptr %datasize.i105 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %datasize.i105, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %286)
  %cmp.i106 = icmp slt i32 %286, 64
  br i1 %cmp.i106, label %if.then.i110, label %if.else14.i

if.then.i110:                                     ; preds = %if.else23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_length.i99) #15
  %sg.i107 = getelementptr inbounds %struct.mmc_data, ptr %18, i32 0, i32 12
  %287 = ptrtoint ptr %sg.i107 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %sg.i107, align 4
  %sg_len.i108 = getelementptr inbounds %struct.mmc_data, ptr %18, i32 0, i32 10
  %289 = ptrtoint ptr %sg_len.i108 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %sg_len.i108, align 4
  %padded_buffer.i = getelementptr i8, ptr %work, i32 163
  %call3.i = tail call i32 @sg_copy_to_buffer(ptr noundef %288, i32 noundef %290, ptr noundef %padded_buffer.i, i32 noundef 64) #15
  %add.ptr.i = getelementptr i8, ptr %padded_buffer.i, i32 %286
  %sub.i109 = sub i32 64, %286
  %291 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 %sub.i109)
  %call8.i = call fastcc i32 @vub300_usb_bulk_msg(ptr noundef %add.ptr, i32 noundef %or.i104, ptr noundef %padded_buffer.i, i32 noundef 64, ptr noundef nonnull %actual_length.i99, i32 noundef 2000) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %if.then11.i, label %if.else.i112

if.then11.i:                                      ; preds = %if.then.i110
  call void @__sanitizer_cov_trace_pc() #17
  %error.i111 = getelementptr inbounds %struct.mmc_command, ptr %16, i32 0, i32 5
  %292 = ptrtoint ptr %error.i111 to i32
  call void @__asan_store4_noabort(i32 %292)
  store i32 %call8.i, ptr %error.i111, align 4
  br label %if.end.i

if.else.i112:                                     ; preds = %if.then.i110
  call void @__sanitizer_cov_trace_pc() #17
  %293 = ptrtoint ptr %datasize.i105 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %datasize.i105, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i112, %if.then11.i
  %.sink.i113 = phi i32 [ 0, %if.then11.i ], [ %294, %if.else.i112 ]
  %295 = getelementptr inbounds %struct.mmc_data, ptr %18, i32 0, i32 7
  %296 = ptrtoint ptr %295 to i32
  call void @__asan_store4_noabort(i32 %296)
  store i32 %.sink.i113, ptr %295, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_length.i99) #15
  br label %if.else.i.i169

if.else14.i:                                      ; preds = %if.else23
  %and1.i = and i32 %286, 448
  %and.i114 = and i32 %286, 63
  %large_usb_packets.i115 = getelementptr i8, ptr %work, i32 -1921
  %297 = ptrtoint ptr %large_usb_packets.i115 to i32
  call void @__asan_load1_noabort(i32 %297)
  %298 = load i8, ptr %large_usb_packets.i115, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %298)
  %tobool.not.not.i = icmp eq i8 %298, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i114)
  %cmp15.not.i = icmp ne i32 %and.i114, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp21.i116 = icmp eq i32 %and1.i, 0
  %or.cond171.i = select i1 %tobool.not.not.i, i1 %cmp15.not.i, i1 %cmp21.i116
  br i1 %or.cond171.i, label %if.then23.i118, label %if.else49.i

if.then23.i118:                                   ; preds = %if.else14.i
  %add.i117 = add nuw i32 %286, 63
  %299 = and i32 %add.i117, -64
  %call9.i.i144 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %299, i32 noundef 3264) #19
  %tobool25.not.i = icmp eq ptr %call9.i.i144, null
  br i1 %tobool25.not.i, label %if.else45.i, label %if.then26.i

if.then26.i:                                      ; preds = %if.then23.i118
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actual_length28.i) #15
  %sg29.i = getelementptr inbounds %struct.mmc_data, ptr %18, i32 0, i32 12
  %300 = ptrtoint ptr %sg29.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %sg29.i, align 4
  %sg_len30.i = getelementptr inbounds %struct.mmc_data, ptr %18, i32 0, i32 10
  %302 = ptrtoint ptr %sg_len30.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %sg_len30.i, align 4
  %call31.i = tail call i32 @sg_copy_to_buffer(ptr noundef %301, i32 noundef %303, ptr noundef nonnull %call9.i.i144, i32 noundef %299) #15
  %add.ptr32.i = getelementptr i8, ptr %call9.i.i144, i32 %286
  %sub33.i = sub i32 %299, %286
  %304 = call ptr @memset(ptr %add.ptr32.i, i32 0, i32 %sub33.i)
  %div.i148 = sdiv i32 %299, 16384
  %add34.i = add nsw i32 %div.i148, 2000
  %call35.i = call fastcc i32 @vub300_usb_bulk_msg(ptr noundef %add.ptr, i32 noundef %or.i104, ptr noundef nonnull %call9.i.i144, i32 noundef %299, ptr noundef nonnull %actual_length28.i, i32 noundef %add34.i) #15
  tail call void @kfree(ptr noundef nonnull %call9.i.i144) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %cmp36.i = icmp slt i32 %call35.i, 0
  br i1 %cmp36.i, label %if.then38.i, label %if.else41.i

if.then38.i:                                      ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #17
  %error39.i = getelementptr inbounds %struct.mmc_command, ptr %16, i32 0, i32 5
  %305 = ptrtoint ptr %error39.i to i32
  call void @__asan_store4_noabort(i32 %305)
  store i32 %call35.i, ptr %error39.i, align 4
  br label %if.end44.i

if.else41.i:                                      ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #17
  %306 = ptrtoint ptr %datasize.i105 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %datasize.i105, align 4
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.else41.i, %if.then38.i
  %.sink173.i = phi i32 [ 0, %if.then38.i ], [ %307, %if.else41.i ]
  %308 = getelementptr inbounds %struct.mmc_data, ptr %18, i32 0, i32 7
  %309 = ptrtoint ptr %308 to i32
  call void @__asan_store4_noabort(i32 %309)
  store i32 %.sink173.i, ptr %308, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actual_length28.i) #15
  br label %if.else.i.i169

if.else45.i:                                      ; preds = %if.then23.i118
  call void @__sanitizer_cov_trace_pc() #17
  %error46.i = getelementptr inbounds %struct.mmc_command, ptr %16, i32 0, i32 5
  %310 = ptrtoint ptr %error46.i to i32
  call void @__asan_store4_noabort(i32 %310)
  store i32 -12, ptr %error46.i, align 4
  %bytes_xfered47.i = getelementptr inbounds %struct.mmc_data, ptr %18, i32 0, i32 7
  %311 = ptrtoint ptr %bytes_xfered47.i to i32
  call void @__asan_store4_noabort(i32 %311)
  store i32 0, ptr %bytes_xfered47.i, align 4
  br label %if.else.i.i169

if.else49.i:                                      ; preds = %if.else14.i
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf51.i) #15
  %312 = call ptr @memset(ptr %buf51.i, i32 255, i32 256)
  %sg52.i = getelementptr inbounds %struct.mmc_data, ptr %18, i32 0, i32 12
  %313 = ptrtoint ptr %sg52.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %sg52.i, align 4
  %sg_len53.i = getelementptr inbounds %struct.mmc_data, ptr %18, i32 0, i32 10
  %315 = ptrtoint ptr %sg_len53.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %sg_len53.i, align 4
  %call55.i = call i32 @sg_copy_to_buffer(ptr noundef %314, i32 noundef %316, ptr noundef nonnull %buf51.i, i32 noundef 256) #15
  %sg_request.i149 = getelementptr i8, ptr %work, i32 -220
  %317 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %add.ptr, align 4
  %319 = ptrtoint ptr %sg52.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %sg52.i, align 4
  %321 = ptrtoint ptr %sg_len53.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %sg_len53.i, align 4
  %call59.i = call i32 @usb_sg_init(ptr noundef %sg_request.i149, ptr noundef %318, i32 noundef %or.i104, i32 noundef 0, ptr noundef %320, i32 noundef %322, i32 noundef 0, i32 noundef 3264) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i)
  %cmp60.i = icmp slt i32 %call59.i, 0
  br i1 %cmp60.i, label %if.then62.i, label %if.else67.i152

if.then62.i:                                      ; preds = %if.else49.i
  call void @__sanitizer_cov_trace_pc() #17
  %command_out_urb.i150 = getelementptr i8, ptr %work, i32 -576
  %323 = ptrtoint ptr %command_out_urb.i150 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %command_out_urb.i150, align 4
  %call63.i = call i32 @usb_unlink_urb(ptr noundef %324) #15
  %command_res_urb.i151 = getelementptr i8, ptr %work, i32 -572
  %325 = ptrtoint ptr %command_res_urb.i151 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %command_res_urb.i151, align 4
  %call64.i = call i32 @usb_unlink_urb(ptr noundef %326) #15
  %error65.i = getelementptr inbounds %struct.mmc_command, ptr %16, i32 0, i32 5
  %327 = ptrtoint ptr %error65.i to i32
  call void @__asan_store4_noabort(i32 %327)
  store i32 %call59.i, ptr %error65.i, align 4
  br label %if.end94.i

if.else67.i152:                                   ; preds = %if.else49.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %328 = load volatile i32, ptr @jiffies, align 128
  %div68170172.i = lshr i32 %286, 14
  %add69.i = add nuw nsw i32 %div68170172.i, 2000
  %call2.i.i155 = call i32 @__msecs_to_jiffies(i32 noundef %add69.i) #15
  %add71.i = add i32 %call2.i.i155, %328
  %sg_transfer_timer.i158 = getelementptr i8, ptr %work, i32 -268
  %expires.i159 = getelementptr i8, ptr %work, i32 -260
  %329 = ptrtoint ptr %expires.i159 to i32
  call void @__asan_store4_noabort(i32 %329)
  store i32 %add71.i, ptr %expires.i159, align 4
  call void @add_timer(ptr noundef %sg_transfer_timer.i158) #15
  call void @usb_sg_wait(ptr noundef %sg_request.i149) #15
  %error74.i = getelementptr inbounds %struct.mmc_command, ptr %16, i32 0, i32 5
  %330 = ptrtoint ptr %error74.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %error74.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %331)
  %tobool75.not.i = icmp eq i32 %331, 0
  br i1 %tobool75.not.i, label %if.else78.i, label %if.else67.i152.if.end94.i_crit_edge

if.else67.i152.if.end94.i_crit_edge:              ; preds = %if.else67.i152
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end94.i

if.else78.i:                                      ; preds = %if.else67.i152
  %call80.i = call i32 @del_timer(ptr noundef %sg_transfer_timer.i158) #15
  %332 = ptrtoint ptr %sg_request.i149 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %sg_request.i149, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %333)
  %cmp82.i = icmp slt i32 %333, 0
  br i1 %cmp82.i, label %if.then84.i, label %if.else89.i

if.then84.i:                                      ; preds = %if.else78.i
  call void @__sanitizer_cov_trace_pc() #17
  %334 = ptrtoint ptr %error74.i to i32
  call void @__asan_store4_noabort(i32 %334)
  store i32 %333, ptr %error74.i, align 4
  br label %if.end94.i

if.else89.i:                                      ; preds = %if.else78.i
  call void @__sanitizer_cov_trace_pc() #17
  %335 = ptrtoint ptr %datasize.i105 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %datasize.i105, align 4
  br label %if.end94.i

if.end94.i:                                       ; preds = %if.else89.i, %if.then84.i, %if.else67.i152.if.end94.i_crit_edge, %if.then62.i
  %.sink174.i = phi i32 [ %336, %if.else89.i ], [ 0, %if.then84.i ], [ 0, %if.then62.i ], [ 0, %if.else67.i152.if.end94.i_crit_edge ]
  %bytes_xfered77.i = getelementptr inbounds %struct.mmc_data, ptr %18, i32 0, i32 7
  %337 = ptrtoint ptr %bytes_xfered77.i to i32
  call void @__asan_store4_noabort(i32 %337)
  store i32 %.sink174.i, ptr %bytes_xfered77.i, align 4
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf51.i) #15
  br label %if.else.i.i169

if.else.i.i169:                                   ; preds = %if.end94.i, %if.else45.i, %if.end44.i, %if.end.i, %if.else67.i, %cleanup64.i, %if.else28.i, %if.then23.i, %if.then10.i, %send_command.exit.if.else.i.i169_crit_edge
  %data_length.0 = phi i32 [ 0, %send_command.exit.if.else.i.i169_crit_edge ], [ 0, %if.then10.i ], [ 0, %if.then23.i ], [ %226, %if.else28.i ], [ %retval.1.i, %cleanup64.i ], [ 0, %if.else67.i ], [ %286, %if.end.i ], [ %286, %if.end44.i ], [ %286, %if.else45.i ], [ %286, %if.end94.i ]
  %div.i161 = sdiv i32 %data_length.0, 4
  %add.i162 = add nsw i32 %div.i161, 1000
  %call2.i.i168 = call i32 @__msecs_to_jiffies(i32 noundef %add.i162) #15
  %call1.i = call i32 @wait_for_completion_timeout(ptr noundef %command_complete, i32 noundef %call2.i.i168) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i171 = icmp eq i32 %call1.i, 0
  br i1 %cmp.i171, label %if.then.i176, label %if.else.i178

if.then.i176:                                     ; preds = %if.else.i.i169
  %usb_timed_out.i = getelementptr i8, ptr %work, i32 -1900
  %338 = ptrtoint ptr %usb_timed_out.i to i32
  call void @__asan_store4_noabort(i32 %338)
  store i32 1, ptr %usb_timed_out.i, align 4
  %command_out_urb.i173 = getelementptr i8, ptr %work, i32 -576
  %339 = ptrtoint ptr %command_out_urb.i173 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %command_out_urb.i173, align 4
  call void @usb_kill_urb(ptr noundef %340) #15
  %command_res_urb.i174 = getelementptr i8, ptr %work, i32 -572
  %341 = ptrtoint ptr %command_res_urb.i174 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %command_res_urb.i174, align 4
  call void @usb_kill_urb(ptr noundef %342) #15
  %error.i175 = getelementptr inbounds %struct.mmc_command, ptr %16, i32 0, i32 5
  %343 = ptrtoint ptr %error.i175 to i32
  call void @__asan_store4_noabort(i32 %343)
  store i32 -110, ptr %error.i175, align 4
  %344 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %add.ptr, align 4
  %346 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %interface, align 4
  %call2.i = call i32 @usb_lock_device_for_reset(ptr noundef %345, ptr noundef %347) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp eq i32 %call2.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %if.then.i176.__vub300_command_response.exit_crit_edge

if.then.i176.__vub300_command_response.exit_crit_edge: ; preds = %if.then.i176
  call void @__sanitizer_cov_trace_pc() #17
  br label %__vub300_command_response.exit

if.then4.i:                                       ; preds = %if.then.i176
  call void @__sanitizer_cov_trace_pc() #17
  %348 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %add.ptr, align 4
  %call6.i = call i32 @usb_reset_device(ptr noundef %349) #15
  %350 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %add.ptr, align 4
  %mutex.i.i = getelementptr inbounds %struct.usb_device, ptr %351, i32 0, i32 15, i32 10
  call void @mutex_unlock(ptr noundef %mutex.i.i) #15
  br label %__vub300_command_response.exit

if.else.i178:                                     ; preds = %if.else.i.i169
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp8.i177 = icmp slt i32 %call1.i, 0
  br i1 %cmp8.i177, label %if.then9.i, label %if.else13.i

if.then9.i:                                       ; preds = %if.else.i178
  call void @__sanitizer_cov_trace_pc() #17
  %command_out_urb10.i = getelementptr i8, ptr %work, i32 -576
  %352 = ptrtoint ptr %command_out_urb10.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %command_out_urb10.i, align 4
  call void @usb_kill_urb(ptr noundef %353) #15
  %command_res_urb11.i = getelementptr i8, ptr %work, i32 -572
  %354 = ptrtoint ptr %command_res_urb11.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %command_res_urb11.i, align 4
  call void @usb_kill_urb(ptr noundef %355) #15
  %error12.i = getelementptr inbounds %struct.mmc_command, ptr %16, i32 0, i32 5
  %356 = ptrtoint ptr %error12.i to i32
  call void @__asan_store4_noabort(i32 %356)
  store i32 %call1.i, ptr %error12.i, align 4
  br label %__vub300_command_response.exit

if.else13.i:                                      ; preds = %if.else.i178
  %error14.i = getelementptr inbounds %struct.mmc_command, ptr %16, i32 0, i32 5
  %357 = ptrtoint ptr %error14.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %error14.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %358)
  %tobool.not.i179 = icmp eq i32 %358, 0
  br i1 %tobool.not.i179, label %if.else16.i, label %if.else13.i.__vub300_command_response.exit_crit_edge

if.else13.i.__vub300_command_response.exit_crit_edge: ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__vub300_command_response.exit

if.else16.i:                                      ; preds = %if.else13.i
  %command_out_urb17.i = getelementptr i8, ptr %work, i32 -576
  %359 = ptrtoint ptr %command_out_urb17.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %command_out_urb17.i, align 4
  %status.i = getelementptr inbounds %struct.urb, ptr %360, i32 0, i32 12
  %361 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %362)
  %tobool18.not.i = icmp eq i32 %362, 0
  br i1 %tobool18.not.i, label %if.else28.i180, label %if.then19.i

if.then19.i:                                      ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #17
  %usb_transport_fail.i = getelementptr i8, ptr %work, i32 -1904
  %363 = ptrtoint ptr %usb_transport_fail.i to i32
  call void @__asan_store4_noabort(i32 %363)
  store i32 %362, ptr %usb_transport_fail.i, align 4
  %364 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -71, i32 %365)
  %cmp24.i = icmp eq i32 %365, -71
  %spec.select.i = select i1 %cmp24.i, i32 -108, i32 %365
  %366 = ptrtoint ptr %error14.i to i32
  call void @__asan_store4_noabort(i32 %366)
  store i32 %spec.select.i, ptr %error14.i, align 4
  br label %__vub300_command_response.exit

if.else28.i180:                                   ; preds = %if.else16.i
  %command_res_urb29.i = getelementptr i8, ptr %work, i32 -572
  %367 = ptrtoint ptr %command_res_urb29.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %command_res_urb29.i, align 4
  %status30.i = getelementptr inbounds %struct.urb, ptr %368, i32 0, i32 12
  %369 = ptrtoint ptr %status30.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %status30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %370)
  %tobool31.not.i = icmp eq i32 %370, 0
  br i1 %tobool31.not.i, label %if.else46.i, label %if.then32.i

if.then32.i:                                      ; preds = %if.else28.i180
  call void @__sanitizer_cov_trace_pc() #17
  %usb_transport_fail35.i = getelementptr i8, ptr %work, i32 -1904
  %371 = ptrtoint ptr %usb_transport_fail35.i to i32
  call void @__asan_store4_noabort(i32 %371)
  store i32 %370, ptr %usb_transport_fail35.i, align 4
  %372 = ptrtoint ptr %status30.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %status30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -71, i32 %373)
  %cmp38.i = icmp eq i32 %373, -71
  %spec.select1.i = select i1 %cmp38.i, i32 -108, i32 %373
  %374 = ptrtoint ptr %error14.i to i32
  call void @__asan_store4_noabort(i32 %374)
  store i32 %spec.select1.i, ptr %error14.i, align 4
  br label %__vub300_command_response.exit

if.else46.i:                                      ; preds = %if.else28.i180
  %resp.i = getelementptr i8, ptr %work, i32 -392
  %header_type.i181 = getelementptr i8, ptr %work, i32 -391
  %375 = ptrtoint ptr %header_type.i181 to i32
  call void @__asan_load1_noabort(i32 %375)
  %376 = load i8, ptr %header_type.i181, align 1
  %377 = zext i8 %376 to i64
  call void @__sanitizer_cov_trace_switch(i64 %377, ptr @__sancov_gen_cov_switch_values.154)
  switch i8 %376, label %if.else173.i [
    i8 0, label %if.else46.i.__vub300_command_response.exit_crit_edge
    i8 2, label %if.then56.i
    i8 7, label %if.then70.i
    i8 9, label %if.then87.i
    i8 10, label %if.then131.i
  ]

if.else46.i.__vub300_command_response.exit_crit_edge: ; preds = %if.else46.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__vub300_command_response.exit

if.then56.i:                                      ; preds = %if.else46.i
  %error_code.i = getelementptr i8, ptr %work, i32 -389
  %378 = ptrtoint ptr %error_code.i to i32
  call void @__asan_load1_noabort(i32 %378)
  %379 = load i8, ptr %error_code.i, align 1
  %call58.i = call fastcc i32 @vub300_response_error(i8 noundef zeroext %379) #15
  %380 = ptrtoint ptr %error14.i to i32
  call void @__asan_store4_noabort(i32 %380)
  store i32 %call58.i, ptr %error14.i, align 4
  %381 = ptrtoint ptr %data3 to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %data3, align 4
  %tobool61.not.i = icmp eq ptr %382, null
  br i1 %tobool61.not.i, label %if.then56.i.__vub300_command_response.exit_crit_edge, label %if.then62.i183

if.then56.i.__vub300_command_response.exit_crit_edge: ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__vub300_command_response.exit

if.then62.i183:                                   ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #17
  %sg_request.i182 = getelementptr i8, ptr %work, i32 -220
  call void @usb_sg_cancel(ptr noundef %sg_request.i182) #15
  br label %__vub300_command_response.exit

if.then70.i:                                      ; preds = %if.else46.i
  %383 = ptrtoint ptr %resp.i to i32
  call void @__asan_load1_noabort(i32 %383)
  %384 = load i8, ptr %resp.i, align 4
  %conv72.i = zext i8 %384 to i32
  %sub.i184 = add nsw i32 %conv72.i, -11
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i184)
  %tobool73.not8.i = icmp ult i32 %sub.i184, 8
  br i1 %tobool73.not8.i, label %if.then70.i.while.end.i_crit_edge, label %while.body.lr.ph.i

if.then70.i.while.end.i_crit_edge:                ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.then70.i
  %shr.i185 = ashr i32 %sub.i184, 3
  %reg.i = getelementptr i8, ptr %work, i32 -381
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %ri.010.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %add75.i, %while.body.i.while.body.i_crit_edge ]
  %register_count.09.i = phi i32 [ %shr.i185, %while.body.lr.ph.i ], [ %dec.i, %while.body.i.while.body.i_crit_edge ]
  %dec.i = add i32 %register_count.09.i, -1
  %arrayidx.i186 = getelementptr [14 x %struct.offload_registers_access], ptr %reg.i, i32 0, i32 %ri.010.i
  call fastcc void @add_offloaded_reg(ptr noundef %add.ptr, ptr noundef %arrayidx.i186) #15
  %add75.i = add i32 %ri.010.i, 1
  %tobool73.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool73.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %if.then70.i.while.end.i_crit_edge
  %385 = ptrtoint ptr %resp.i to i32
  call void @__asan_store1_noabort(i32 %385)
  store i8 11, ptr %resp.i, align 4
  %386 = ptrtoint ptr %header_type.i181 to i32
  call void @__asan_store1_noabort(i32 %386)
  store i8 0, ptr %header_type.i181, align 1
  %387 = ptrtoint ptr %error14.i to i32
  call void @__asan_store4_noabort(i32 %387)
  store i32 0, ptr %error14.i, align 4
  br label %__vub300_command_response.exit

if.then87.i:                                      ; preds = %if.else46.i
  %388 = ptrtoint ptr %resp.i to i32
  call void @__asan_load1_noabort(i32 %388)
  %389 = load i8, ptr %resp.i, align 4
  %conv91.i = zext i8 %389 to i32
  %sub92.i = add nsw i32 %conv91.i, -11
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub92.i)
  %tobool98.not5.i = icmp ult i32 %sub92.i, 8
  br i1 %tobool98.not5.i, label %if.then87.i.while.end104.i_crit_edge, label %while.body99.lr.ph.i

if.then87.i.while.end104.i_crit_edge:             ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end104.i

while.body99.lr.ph.i:                             ; preds = %if.then87.i
  %shr94.i = ashr i32 %sub92.i, 3
  %reg101.i = getelementptr i8, ptr %work, i32 -381
  br label %while.body99.i

while.body99.i:                                   ; preds = %while.body99.i.while.body99.i_crit_edge, %while.body99.lr.ph.i
  %ri95.07.i = phi i32 [ 0, %while.body99.lr.ph.i ], [ %add103.i, %while.body99.i.while.body99.i_crit_edge ]
  %register_count93.06.i = phi i32 [ %shr94.i, %while.body99.lr.ph.i ], [ %dec97.i, %while.body99.i.while.body99.i_crit_edge ]
  %dec97.i = add i32 %register_count93.06.i, -1
  %arrayidx102.i = getelementptr [14 x %struct.offload_registers_access], ptr %reg101.i, i32 0, i32 %ri95.07.i
  call fastcc void @add_offloaded_reg(ptr noundef %add.ptr, ptr noundef %arrayidx102.i) #15
  %add103.i = add i32 %ri95.07.i, 1
  %tobool98.not.i = icmp eq i32 %dec97.i, 0
  br i1 %tobool98.not.i, label %while.body99.i.while.end104.i_crit_edge, label %while.body99.i.while.body99.i_crit_edge

while.body99.i.while.body99.i_crit_edge:          ; preds = %while.body99.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body99.i

while.body99.i.while.end104.i_crit_edge:          ; preds = %while.body99.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end104.i

while.end104.i:                                   ; preds = %while.body99.i.while.end104.i_crit_edge, %if.then87.i.while.end104.i_crit_edge
  %irq_mutex.i = getelementptr i8, ptr %work, i32 -2100
  call void @mutex_lock_nested(ptr noundef %irq_mutex.i, i32 noundef 0) #15
  %irqs_queued.i = getelementptr i8, ptr %work, i32 -1896
  %390 = ptrtoint ptr %irqs_queued.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %irqs_queued.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %391)
  %tobool105.not.i = icmp eq i32 %391, 0
  br i1 %tobool105.not.i, label %if.else109.i, label %if.then106.i

if.then106.i:                                     ; preds = %while.end104.i
  call void @__sanitizer_cov_trace_pc() #17
  %add108.i = add i32 %391, 1
  %392 = ptrtoint ptr %irqs_queued.i to i32
  call void @__asan_store4_noabort(i32 %392)
  store i32 %add108.i, ptr %irqs_queued.i, align 4
  br label %if.end118.i

if.else109.i:                                     ; preds = %while.end104.i
  %irq_enabled.i = getelementptr i8, ptr %work, i32 -1919
  %393 = ptrtoint ptr %irq_enabled.i to i32
  call void @__asan_load1_noabort(i32 %393)
  %394 = load i8, ptr %irq_enabled.i, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %394)
  %tobool110.not.i = icmp eq i8 %394, 0
  %395 = ptrtoint ptr %irqs_queued.i to i32
  call void @__asan_store4_noabort(i32 %395)
  store i32 1, ptr %irqs_queued.i, align 4
  br i1 %tobool110.not.i, label %if.else109.i.if.end118.i_crit_edge, label %if.then111.i

if.else109.i.if.end118.i_crit_edge:               ; preds = %if.else109.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end118.i

if.then111.i:                                     ; preds = %if.else109.i
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @vub300_queue_poll_work(ptr noundef %add.ptr, i32 noundef 0) #15
  br label %if.end118.i

if.end118.i:                                      ; preds = %if.then111.i, %if.else109.i.if.end118.i_crit_edge, %if.then106.i
  %irq_disabled.i = getelementptr i8, ptr %work, i32 -1918
  %396 = ptrtoint ptr %irq_disabled.i to i32
  call void @__asan_store1_noabort(i32 %396)
  store i8 1, ptr %irq_disabled.i, align 2
  call void @mutex_unlock(ptr noundef %irq_mutex.i) #15
  %397 = ptrtoint ptr %resp.i to i32
  call void @__asan_store1_noabort(i32 %397)
  store i8 11, ptr %resp.i, align 4
  %398 = ptrtoint ptr %header_type.i181 to i32
  call void @__asan_store1_noabort(i32 %398)
  store i8 0, ptr %header_type.i181, align 1
  %399 = ptrtoint ptr %error14.i to i32
  call void @__asan_store4_noabort(i32 %399)
  store i32 0, ptr %error14.i, align 4
  br label %__vub300_command_response.exit

if.then131.i:                                     ; preds = %if.else46.i
  %400 = ptrtoint ptr %resp.i to i32
  call void @__asan_load1_noabort(i32 %400)
  %401 = load i8, ptr %resp.i, align 4
  %conv135.i = zext i8 %401 to i32
  %sub136.i = add nsw i32 %conv135.i, -11
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub136.i)
  %tobool142.not2.i = icmp ult i32 %sub136.i, 8
  br i1 %tobool142.not2.i, label %if.then131.i.while.end148.i_crit_edge, label %while.body143.lr.ph.i

if.then131.i.while.end148.i_crit_edge:            ; preds = %if.then131.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end148.i

while.body143.lr.ph.i:                            ; preds = %if.then131.i
  %shr138.i = ashr i32 %sub136.i, 3
  %reg145.i = getelementptr i8, ptr %work, i32 -381
  br label %while.body143.i

while.body143.i:                                  ; preds = %while.body143.i.while.body143.i_crit_edge, %while.body143.lr.ph.i
  %ri139.04.i = phi i32 [ 0, %while.body143.lr.ph.i ], [ %add147.i, %while.body143.i.while.body143.i_crit_edge ]
  %register_count137.03.i = phi i32 [ %shr138.i, %while.body143.lr.ph.i ], [ %dec141.i, %while.body143.i.while.body143.i_crit_edge ]
  %dec141.i = add i32 %register_count137.03.i, -1
  %arrayidx146.i = getelementptr [14 x %struct.offload_registers_access], ptr %reg145.i, i32 0, i32 %ri139.04.i
  call fastcc void @add_offloaded_reg(ptr noundef %add.ptr, ptr noundef %arrayidx146.i) #15
  %add147.i = add i32 %ri139.04.i, 1
  %tobool142.not.i = icmp eq i32 %dec141.i, 0
  br i1 %tobool142.not.i, label %while.body143.i.while.end148.i_crit_edge, label %while.body143.i.while.body143.i_crit_edge

while.body143.i.while.body143.i_crit_edge:        ; preds = %while.body143.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body143.i

while.body143.i.while.end148.i_crit_edge:         ; preds = %while.body143.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end148.i

while.end148.i:                                   ; preds = %while.body143.i.while.end148.i_crit_edge, %if.then131.i.while.end148.i_crit_edge
  %irq_mutex149.i = getelementptr i8, ptr %work, i32 -2100
  call void @mutex_lock_nested(ptr noundef %irq_mutex149.i, i32 noundef 0) #15
  %irqs_queued150.i = getelementptr i8, ptr %work, i32 -1896
  %402 = ptrtoint ptr %irqs_queued150.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load i32, ptr %irqs_queued150.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %403)
  %tobool151.not.i = icmp eq i32 %403, 0
  br i1 %tobool151.not.i, label %if.else155.i, label %if.then152.i

if.then152.i:                                     ; preds = %while.end148.i
  call void @__sanitizer_cov_trace_pc() #17
  %add154.i = add i32 %403, 1
  %404 = ptrtoint ptr %irqs_queued150.i to i32
  call void @__asan_store4_noabort(i32 %404)
  store i32 %add154.i, ptr %irqs_queued150.i, align 4
  br label %if.end165.i

if.else155.i:                                     ; preds = %while.end148.i
  %irq_enabled156.i = getelementptr i8, ptr %work, i32 -1919
  %405 = ptrtoint ptr %irq_enabled156.i to i32
  call void @__asan_load1_noabort(i32 %405)
  %406 = load i8, ptr %irq_enabled156.i, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %406)
  %tobool157.not.i = icmp eq i8 %406, 0
  %407 = ptrtoint ptr %irqs_queued150.i to i32
  call void @__asan_store4_noabort(i32 %407)
  store i32 1, ptr %irqs_queued150.i, align 4
  br i1 %tobool157.not.i, label %if.else155.i.if.end165.i_crit_edge, label %if.then158.i

if.else155.i.if.end165.i_crit_edge:               ; preds = %if.else155.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end165.i

if.then158.i:                                     ; preds = %if.else155.i
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @vub300_queue_poll_work(ptr noundef %add.ptr, i32 noundef 0) #15
  br label %if.end165.i

if.end165.i:                                      ; preds = %if.then158.i, %if.else155.i.if.end165.i_crit_edge, %if.then152.i
  %irq_disabled166.i = getelementptr i8, ptr %work, i32 -1918
  %408 = ptrtoint ptr %irq_disabled166.i to i32
  call void @__asan_store1_noabort(i32 %408)
  store i8 0, ptr %irq_disabled166.i, align 2
  call void @mutex_unlock(ptr noundef %irq_mutex149.i) #15
  %409 = ptrtoint ptr %resp.i to i32
  call void @__asan_store1_noabort(i32 %409)
  store i8 11, ptr %resp.i, align 4
  %410 = ptrtoint ptr %header_type.i181 to i32
  call void @__asan_store1_noabort(i32 %410)
  store i8 0, ptr %header_type.i181, align 1
  %411 = ptrtoint ptr %error14.i to i32
  call void @__asan_store4_noabort(i32 %411)
  store i32 0, ptr %error14.i, align 4
  br label %__vub300_command_response.exit

if.else173.i:                                     ; preds = %if.else46.i
  call void @__sanitizer_cov_trace_pc() #17
  %412 = ptrtoint ptr %error14.i to i32
  call void @__asan_store4_noabort(i32 %412)
  store i32 -22, ptr %error14.i, align 4
  br label %__vub300_command_response.exit

__vub300_command_response.exit:                   ; preds = %if.else173.i, %if.end165.i, %if.end118.i, %while.end.i, %if.then62.i183, %if.then56.i.__vub300_command_response.exit_crit_edge, %if.else46.i.__vub300_command_response.exit_crit_edge, %if.then32.i, %if.then19.i, %if.else13.i.__vub300_command_response.exit_crit_edge, %if.then9.i, %if.then4.i, %if.then.i176.__vub300_command_response.exit_crit_edge
  %413 = ptrtoint ptr %req1 to i32
  call void @__asan_store4_noabort(i32 %413)
  store ptr null, ptr %req1, align 4
  %414 = ptrtoint ptr %cmd2 to i32
  call void @__asan_store4_noabort(i32 %414)
  store ptr null, ptr %cmd2, align 4
  %415 = ptrtoint ptr %data3 to i32
  call void @__asan_store4_noabort(i32 %415)
  store ptr null, ptr %data3, align 4
  %error = getelementptr inbounds %struct.mmc_command, ptr %16, i32 0, i32 5
  %416 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load i32, ptr %error, align 4
  %418 = zext i32 %417 to i64
  call void @__sanitizer_cov_trace_switch(i64 %418, ptr @__sancov_gen_cov_switch_values.155)
  switch i32 %417, label %__vub300_command_response.exit.if.end35_crit_edge [
    i32 0, label %if.else40
    i32 -123, label %if.then34
  ]

__vub300_command_response.exit.if.end35_crit_edge: ; preds = %__vub300_command_response.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end35

if.then34:                                        ; preds = %__vub300_command_response.exit
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @check_vub300_port_status(ptr noundef %add.ptr)
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %__vub300_command_response.exit.if.end35_crit_edge
  call void @mutex_unlock(ptr noundef %cmd_mutex) #15
  %mmc37 = getelementptr i8, ptr %work, i32 -584
  %419 = ptrtoint ptr %mmc37 to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %mmc37, align 4
  call void @mmc_request_done(ptr noundef %420, ptr noundef %14) #15
  %kref38 = getelementptr i8, ptr %work, i32 -2196
  %call.i.i.i.i.i.i187 = call zeroext i1 @__kasan_check_write(ptr noundef %kref38, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !315
  call void @llvm.prefetch.p0(ptr %kref38, i32 1, i32 3, i32 1) #15
  %421 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref38, ptr %kref38, i32 1, ptr elementtype(i32) %kref38) #15, !srcloc !316
  %asmresult.i.i.i.i.i.i.i188 = extractvalue { i32, i32, i32 } %421, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i188)
  %cmp.i.i.i.i189 = icmp eq i32 %asmresult.i.i.i.i.i.i.i188, 1
  br i1 %cmp.i.i.i.i189, label %if.then.i197, label %if.end5.i.i.i.i191

if.end5.i.i.i.i191:                               ; preds = %if.end35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i188)
  %.not.i.i.i.i190 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i188, 0
  br i1 %.not.i.i.i.i190, label %if.end5.i.i.i.i191.cleanup48_crit_edge, label %if.then10.i.i.i.i192, !prof !317

if.end5.i.i.i.i191.cleanup48_crit_edge:           ; preds = %if.end5.i.i.i.i191
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup48

if.then10.i.i.i.i192:                             ; preds = %if.end5.i.i.i.i191
  call void @__sanitizer_cov_trace_pc() #17
  call void @refcount_warn_saturate(ptr noundef %kref38, i32 noundef 3) #15
  br label %cleanup48

if.then.i197:                                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !318
  %422 = ptrtoint ptr %mmc37 to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %mmc37, align 4
  %command_out_urb.i.i195 = getelementptr i8, ptr %work, i32 -576
  %424 = ptrtoint ptr %command_out_urb.i.i195 to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %command_out_urb.i.i195, align 4
  call void @usb_free_urb(ptr noundef %425) #15
  %426 = ptrtoint ptr %command_out_urb.i.i195 to i32
  call void @__asan_store4_noabort(i32 %426)
  store ptr null, ptr %command_out_urb.i.i195, align 4
  %command_res_urb.i.i196 = getelementptr i8, ptr %work, i32 -572
  %427 = ptrtoint ptr %command_res_urb.i.i196 to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %command_res_urb.i.i196, align 4
  call void @usb_free_urb(ptr noundef %428) #15
  %429 = ptrtoint ptr %command_res_urb.i.i196 to i32
  call void @__asan_store4_noabort(i32 %429)
  store ptr null, ptr %command_res_urb.i.i196, align 4
  %430 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %add.ptr, align 4
  call void @usb_put_dev(ptr noundef %431) #15
  call void @mmc_free_host(ptr noundef %423) #15
  br label %cleanup48

if.else40:                                        ; preds = %__vub300_command_response.exit
  %resp_len1.i = getelementptr i8, ptr %work, i32 -1914
  %432 = ptrtoint ptr %resp_len1.i to i32
  call void @__asan_load1_noabort(i32 %432)
  %433 = load i8, ptr %resp_len1.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %433)
  %cmp.i199 = icmp eq i8 %433, 17
  %conv.i200 = zext i8 %433 to i32
  %sub.i201 = add nsw i32 %conv.i200, -1
  %cond.i202 = select i1 %cmp.i199, i32 17, i32 %sub.i201
  %and.i203 = and i32 %cond.i202, 3
  %shr.i204 = ashr i32 %cond.i202, 2
  %command_response.i = getelementptr i8, ptr %work, i32 -387
  %434 = zext i32 %and.i203 to i64
  call void @__sanitizer_cov_trace_switch(i64 %434, ptr @__sancov_gen_cov_switch_values.156)
  switch i32 %and.i203, label %if.else40.if.end48.i_crit_edge [
    i32 3, label %if.then.i210
    i32 2, label %if.then22.i
    i32 1, label %if.then39.i
  ]

if.else40.if.end48.i_crit_edge:                   ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end48.i

if.then.i210:                                     ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #17
  %shl.i205 = and i32 %cond.i202, -4
  %add.i206 = or i32 %shl.i205, 1
  %arrayidx.i207 = getelementptr i8, ptr %command_response.i, i32 %add.i206
  %435 = ptrtoint ptr %arrayidx.i207 to i32
  call void @__asan_load1_noabort(i32 %435)
  %436 = load i8, ptr %arrayidx.i207, align 1
  %conv5.i = zext i8 %436 to i32
  %shl6.i = shl nuw i32 %conv5.i, 24
  %add8.i = or i32 %shl.i205, 2
  %arrayidx9.i = getelementptr i8, ptr %command_response.i, i32 %add8.i
  %437 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %437)
  %438 = load i8, ptr %arrayidx9.i, align 1
  %conv10.i = zext i8 %438 to i32
  %shl11.i = shl nuw nsw i32 %conv10.i, 16
  %or.i208 = or i32 %shl11.i, %shl6.i
  %add13.i209 = or i32 %cond.i202, 3
  %arrayidx14.i = getelementptr i8, ptr %command_response.i, i32 %add13.i209
  %439 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %439)
  %440 = load i8, ptr %arrayidx14.i, align 1
  %conv15.i = zext i8 %440 to i32
  %shl16.i = shl nuw nsw i32 %conv15.i, 8
  %or17.i = or i32 %or.i208, %shl16.i
  br label %if.end48.sink.split.i

if.then22.i:                                      ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #17
  %shl23.i = and i32 %cond.i202, -4
  %add24.i = or i32 %shl23.i, 1
  %arrayidx25.i = getelementptr i8, ptr %command_response.i, i32 %add24.i
  %441 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load1_noabort(i32 %441)
  %442 = load i8, ptr %arrayidx25.i, align 1
  %conv26.i = zext i8 %442 to i32
  %shl27.i = shl nuw i32 %conv26.i, 24
  %add29.i = or i32 %shl23.i, 2
  %arrayidx30.i = getelementptr i8, ptr %command_response.i, i32 %add29.i
  %443 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load1_noabort(i32 %443)
  %444 = load i8, ptr %arrayidx30.i, align 1
  %conv31.i = zext i8 %444 to i32
  %shl32.i = shl nuw nsw i32 %conv31.i, 16
  %or33.i = or i32 %shl32.i, %shl27.i
  br label %if.end48.sink.split.i

if.then39.i:                                      ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #17
  %shl40.i = and i32 %cond.i202, -4
  %add41.i = or i32 %shl40.i, 1
  %arrayidx42.i = getelementptr i8, ptr %command_response.i, i32 %add41.i
  %445 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load1_noabort(i32 %445)
  %446 = load i8, ptr %arrayidx42.i, align 1
  %conv43.i = zext i8 %446 to i32
  %shl44.i = shl nuw i32 %conv43.i, 24
  br label %if.end48.sink.split.i

if.end48.sink.split.i:                            ; preds = %if.then39.i, %if.then22.i, %if.then.i210
  %or33.sink.i = phi i32 [ %or33.i, %if.then22.i ], [ %shl44.i, %if.then39.i ], [ %or17.i, %if.then.i210 ]
  %arrayidx35.i = getelementptr %struct.mmc_command, ptr %16, i32 0, i32 2, i32 %shr.i204
  %447 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_store4_noabort(i32 %447)
  store i32 %or33.sink.i, ptr %arrayidx35.i, align 4
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.end48.sink.split.i, %if.else40.if.end48.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %cond.i202)
  %cmp49121.i = icmp sgt i32 %cond.i202, 3
  br i1 %cmp49121.i, label %if.end48.i.while.body.i213_crit_edge, label %if.end48.i.while.end.i214_crit_edge

if.end48.i.while.end.i214_crit_edge:              ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i214

if.end48.i.while.body.i213_crit_edge:             ; preds = %if.end48.i
  br label %while.body.i213

while.body.i213:                                  ; preds = %while.body.i213.while.body.i213_crit_edge, %if.end48.i.while.body.i213_crit_edge
  %words.0122.i = phi i32 [ %dec.i211, %while.body.i213.while.body.i213_crit_edge ], [ %shr.i204, %if.end48.i.while.body.i213_crit_edge ]
  %dec.i211 = add nsw i32 %words.0122.i, -1
  %shl51.i = shl i32 %dec.i211, 2
  %add52.i = or i32 %shl51.i, 1
  %arrayidx53.i = getelementptr i8, ptr %command_response.i, i32 %add52.i
  %448 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load1_noabort(i32 %448)
  %449 = load i8, ptr %arrayidx53.i, align 1
  %conv54.i = zext i8 %449 to i32
  %shl55.i = shl nuw i32 %conv54.i, 24
  %add57.i = or i32 %shl51.i, 2
  %arrayidx58.i = getelementptr i8, ptr %command_response.i, i32 %add57.i
  %450 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load1_noabort(i32 %450)
  %451 = load i8, ptr %arrayidx58.i, align 1
  %conv59.i = zext i8 %451 to i32
  %shl60.i = shl nuw nsw i32 %conv59.i, 16
  %or61.i = or i32 %shl60.i, %shl55.i
  %add63.i = or i32 %shl51.i, 3
  %arrayidx64.i = getelementptr i8, ptr %command_response.i, i32 %add63.i
  %452 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_load1_noabort(i32 %452)
  %453 = load i8, ptr %arrayidx64.i, align 1
  %conv65.i = zext i8 %453 to i32
  %shl66.i = shl nuw nsw i32 %conv65.i, 8
  %or67.i = or i32 %or61.i, %shl66.i
  %add69.i212 = add nsw i32 %shl51.i, 4
  %arrayidx70.i = getelementptr i8, ptr %command_response.i, i32 %add69.i212
  %454 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_load1_noabort(i32 %454)
  %455 = load i8, ptr %arrayidx70.i, align 1
  %conv71.i = zext i8 %455 to i32
  %or73.i = or i32 %or67.i, %conv71.i
  %arrayidx75.i = getelementptr %struct.mmc_command, ptr %16, i32 0, i32 2, i32 %dec.i211
  %456 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_store4_noabort(i32 %456)
  store i32 %or73.i, ptr %arrayidx75.i, align 4
  %cmp49.i = icmp sgt i32 %words.0122.i, 1
  br i1 %cmp49.i, label %while.body.i213.while.body.i213_crit_edge, label %while.body.i213.while.end.i214_crit_edge

while.body.i213.while.end.i214_crit_edge:         ; preds = %while.body.i213
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i214

while.body.i213.while.body.i213_crit_edge:        ; preds = %while.body.i213
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i213

while.end.i214:                                   ; preds = %while.body.i213.while.end.i214_crit_edge, %if.end48.i.while.end.i214_crit_edge
  %457 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load i32, ptr %16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 53, i32 %458)
  %cmp76.i = icmp eq i32 %458, 53
  br i1 %cmp76.i, label %land.lhs.true.i, label %while.end.i214.construct_request_response.exit_crit_edge

while.end.i214.construct_request_response.exit_crit_edge: ; preds = %while.end.i214
  call void @__sanitizer_cov_trace_pc() #17
  br label %construct_request_response.exit

land.lhs.true.i:                                  ; preds = %while.end.i214
  %resp78.i = getelementptr inbounds %struct.mmc_command, ptr %16, i32 0, i32 2
  %459 = ptrtoint ptr %resp78.i to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load i32, ptr %resp78.i, align 4
  %and80.i = and i32 %460, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80.i)
  %tobool.not.i215 = icmp eq i32 %and80.i, 0
  br i1 %tobool.not.i215, label %land.lhs.true.i.construct_request_response.exit_crit_edge, label %if.then81.i

land.lhs.true.i.construct_request_response.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %construct_request_response.exit

if.then81.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %and84.i = and i32 %460, -256
  %461 = ptrtoint ptr %resp78.i to i32
  call void @__asan_store4_noabort(i32 %461)
  store i32 %and84.i, ptr %resp78.i, align 4
  br label %construct_request_response.exit

construct_request_response.exit:                  ; preds = %if.then81.i, %land.lhs.true.i.construct_request_response.exit_crit_edge, %while.end.i214.construct_request_response.exit_crit_edge
  %462 = ptrtoint ptr %resp_len1.i to i32
  call void @__asan_store1_noabort(i32 %462)
  store i8 0, ptr %resp_len1.i, align 2
  call void @mutex_unlock(ptr noundef %cmd_mutex) #15
  %kref42 = getelementptr i8, ptr %work, i32 -2196
  %call.i.i.i.i.i.i216 = call zeroext i1 @__kasan_check_write(ptr noundef %kref42, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !315
  call void @llvm.prefetch.p0(ptr %kref42, i32 1, i32 3, i32 1) #15
  %463 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref42, ptr %kref42, i32 1, ptr elementtype(i32) %kref42) #15, !srcloc !316
  %asmresult.i.i.i.i.i.i.i217 = extractvalue { i32, i32, i32 } %463, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i217)
  %cmp.i.i.i.i218 = icmp eq i32 %asmresult.i.i.i.i.i.i.i217, 1
  br i1 %cmp.i.i.i.i218, label %if.then.i226, label %if.end5.i.i.i.i220

if.end5.i.i.i.i220:                               ; preds = %construct_request_response.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i217)
  %.not.i.i.i.i219 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i217, 0
  br i1 %.not.i.i.i.i219, label %if.end5.i.i.i.i220.kref_put.exit227_crit_edge, label %if.then10.i.i.i.i221, !prof !317

if.end5.i.i.i.i220.kref_put.exit227_crit_edge:    ; preds = %if.end5.i.i.i.i220
  call void @__sanitizer_cov_trace_pc() #17
  br label %kref_put.exit227

if.then10.i.i.i.i221:                             ; preds = %if.end5.i.i.i.i220
  call void @__sanitizer_cov_trace_pc() #17
  call void @refcount_warn_saturate(ptr noundef %kref42, i32 noundef 3) #15
  br label %kref_put.exit227

if.then.i226:                                     ; preds = %construct_request_response.exit
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !318
  %mmc1.i.i223 = getelementptr i8, ptr %work, i32 -584
  %464 = ptrtoint ptr %mmc1.i.i223 to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %mmc1.i.i223, align 4
  %command_out_urb.i.i224 = getelementptr i8, ptr %work, i32 -576
  %466 = ptrtoint ptr %command_out_urb.i.i224 to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %command_out_urb.i.i224, align 4
  call void @usb_free_urb(ptr noundef %467) #15
  %468 = ptrtoint ptr %command_out_urb.i.i224 to i32
  call void @__asan_store4_noabort(i32 %468)
  store ptr null, ptr %command_out_urb.i.i224, align 4
  %command_res_urb.i.i225 = getelementptr i8, ptr %work, i32 -572
  %469 = ptrtoint ptr %command_res_urb.i.i225 to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %command_res_urb.i.i225, align 4
  call void @usb_free_urb(ptr noundef %470) #15
  %471 = ptrtoint ptr %command_res_urb.i.i225 to i32
  call void @__asan_store4_noabort(i32 %471)
  store ptr null, ptr %command_res_urb.i.i225, align 4
  %472 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %add.ptr, align 4
  call void @usb_put_dev(ptr noundef %473) #15
  call void @mmc_free_host(ptr noundef %465) #15
  br label %kref_put.exit227

kref_put.exit227:                                 ; preds = %if.then.i226, %if.then10.i.i.i.i221, %if.end5.i.i.i.i220.kref_put.exit227_crit_edge
  %mmc44 = getelementptr i8, ptr %work, i32 -584
  %474 = ptrtoint ptr %mmc44 to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load ptr, ptr %mmc44, align 4
  call void @mmc_request_done(ptr noundef %475, ptr noundef %14) #15
  br label %cleanup48

cleanup48:                                        ; preds = %kref_put.exit227, %if.then.i197, %if.then10.i.i.i.i192, %if.end5.i.i.i.i191.cleanup48_crit_edge, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup48_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vub300_deadwork_thread(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -2160
  %interface = getelementptr i8, ptr %work, i32 -2156
  %0 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %interface, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %kref = getelementptr i8, ptr %work, i32 -2152
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !315
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #15
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #15, !srcloc !316
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !317

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #15
  br label %cleanup

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !318
  %mmc1.i.i = getelementptr i8, ptr %work, i32 -540
  %3 = ptrtoint ptr %mmc1.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmc1.i.i, align 4
  %command_out_urb.i.i = getelementptr i8, ptr %work, i32 -532
  %5 = ptrtoint ptr %command_out_urb.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %command_out_urb.i.i, align 4
  tail call void @usb_free_urb(ptr noundef %6) #15
  %7 = ptrtoint ptr %command_out_urb.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %command_out_urb.i.i, align 4
  %command_res_urb.i.i = getelementptr i8, ptr %work, i32 -528
  %8 = ptrtoint ptr %command_res_urb.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %command_res_urb.i.i, align 4
  tail call void @usb_free_urb(ptr noundef %9) #15
  %10 = ptrtoint ptr %command_res_urb.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %command_res_urb.i.i, align 4
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 4
  tail call void @usb_put_dev(ptr noundef %12) #15
  tail call void @mmc_free_host(ptr noundef %4) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmd_mutex = getelementptr i8, ptr %work, i32 -2148
  tail call void @mutex_lock_nested(ptr noundef %cmd_mutex, i32 noundef 0) #15
  %cmd = getelementptr i8, ptr %work, i32 -552
  %13 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cmd, align 4
  %tobool1.not = icmp eq ptr %14, null
  br i1 %tobool1.not, label %if.else, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

if.else:                                          ; preds = %if.end
  %card_present = getelementptr i8, ptr %work, i32 -1879
  %15 = ptrtoint ptr %card_present to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %card_present, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool3.not = icmp eq i8 %16, 0
  br i1 %tobool3.not, label %if.else5, label %if.else.if.end13.sink.split_crit_edge

if.else.if.end13.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13.sink.split

if.else5:                                         ; preds = %if.else
  %mmc = getelementptr i8, ptr %work, i32 -540
  %17 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmc, align 4
  %tobool6.not = icmp eq ptr %18, null
  br i1 %tobool6.not, label %if.else5.if.end13.sink.split_crit_edge, label %land.lhs.true

if.else5.if.end13.sink.split_crit_edge:           ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13.sink.split

land.lhs.true:                                    ; preds = %if.else5
  %card = getelementptr inbounds %struct.mmc_host, ptr %18, i32 0, i32 37
  %19 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %card, align 4
  %tobool8.not = icmp eq ptr %20, null
  br i1 %tobool8.not, label %land.lhs.true.if.end13.sink.split_crit_edge, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

land.lhs.true.if.end13.sink.split_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13.sink.split

if.end13.sink.split:                              ; preds = %land.lhs.true.if.end13.sink.split_crit_edge, %if.else5.if.end13.sink.split_crit_edge, %if.else.if.end13.sink.split_crit_edge
  tail call fastcc void @check_vub300_port_status(ptr noundef %add.ptr)
  br label %if.end13

if.end13:                                         ; preds = %if.end13.sink.split, %land.lhs.true.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %inactivity_timer = getelementptr i8, ptr %work, i32 -48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %21, 100
  %call14 = tail call i32 @mod_timer(ptr noundef %inactivity_timer, i32 noundef %add) #15
  tail call void @mutex_unlock(ptr noundef %cmd_mutex) #15
  %kref16 = getelementptr i8, ptr %work, i32 -2152
  %call.i.i.i.i.i.i29 = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref16, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !315
  tail call void @llvm.prefetch.p0(ptr %kref16, i32 1, i32 3, i32 1) #15
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref16, ptr %kref16, i32 1, ptr elementtype(i32) %kref16) #15, !srcloc !316
  %asmresult.i.i.i.i.i.i.i30 = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i30)
  %cmp.i.i.i.i31 = icmp eq i32 %asmresult.i.i.i.i.i.i.i30, 1
  br i1 %cmp.i.i.i.i31, label %if.then.i39, label %if.end5.i.i.i.i33

if.end5.i.i.i.i33:                                ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i30)
  %.not.i.i.i.i32 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i30, 0
  br i1 %.not.i.i.i.i32, label %if.end5.i.i.i.i33.cleanup_crit_edge, label %if.then10.i.i.i.i34, !prof !317

if.end5.i.i.i.i33.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i33
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.i.i.i.i34:                              ; preds = %if.end5.i.i.i.i33
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %kref16, i32 noundef 3) #15
  br label %cleanup

if.then.i39:                                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !318
  %mmc1.i.i36 = getelementptr i8, ptr %work, i32 -540
  %23 = ptrtoint ptr %mmc1.i.i36 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmc1.i.i36, align 4
  %command_out_urb.i.i37 = getelementptr i8, ptr %work, i32 -532
  %25 = ptrtoint ptr %command_out_urb.i.i37 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %command_out_urb.i.i37, align 4
  tail call void @usb_free_urb(ptr noundef %26) #15
  %27 = ptrtoint ptr %command_out_urb.i.i37 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %command_out_urb.i.i37, align 4
  %command_res_urb.i.i38 = getelementptr i8, ptr %work, i32 -528
  %28 = ptrtoint ptr %command_res_urb.i.i38 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %command_res_urb.i.i38, align 4
  tail call void @usb_free_urb(ptr noundef %29) #15
  %30 = ptrtoint ptr %command_res_urb.i.i38 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %command_res_urb.i.i38, align 4
  %31 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr, align 4
  tail call void @usb_put_dev(ptr noundef %32) #15
  tail call void @mmc_free_host(ptr noundef %24) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i39, %if.then10.i.i.i.i34, %if.end5.i.i.i.i33.cleanup_crit_edge, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vub300_sg_timed_out(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_timed_out = getelementptr i8, ptr %t, i32 -1632
  %0 = ptrtoint ptr %usb_timed_out to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %usb_timed_out, align 4
  %sg_request = getelementptr i8, ptr %t, i32 48
  tail call void @usb_sg_cancel(ptr noundef %sg_request) #15
  %command_out_urb = getelementptr i8, ptr %t, i32 -308
  %1 = ptrtoint ptr %command_out_urb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %command_out_urb, align 4
  %call = tail call i32 @usb_unlink_urb(ptr noundef %2) #15
  %command_res_urb = getelementptr i8, ptr %t, i32 -304
  %3 = ptrtoint ptr %command_res_urb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %command_res_urb, align 4
  %call1 = tail call i32 @usb_unlink_urb(ptr noundef %4) #15
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kref_get(ptr noundef %kref) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #15
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #15, !srcloc !320
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %entry.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !319

entry.if.end15.sink.split.i.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %entry
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !317

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i) #15
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vub300_inactivity_timer_expired(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -2112
  %interface = getelementptr i8, ptr %t, i32 -2108
  %0 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %interface, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %kref = getelementptr i8, ptr %t, i32 -2104
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !315
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #15
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #15, !srcloc !316
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end8_crit_edge, label %if.then10.i.i.i.i, !prof !317

if.end5.i.i.i.i.if.end8_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #15
  br label %if.end8

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !318
  %mmc1.i.i = getelementptr i8, ptr %t, i32 -492
  %3 = ptrtoint ptr %mmc1.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmc1.i.i, align 4
  %command_out_urb.i.i = getelementptr i8, ptr %t, i32 -484
  %5 = ptrtoint ptr %command_out_urb.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %command_out_urb.i.i, align 4
  tail call void @usb_free_urb(ptr noundef %6) #15
  %7 = ptrtoint ptr %command_out_urb.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %command_out_urb.i.i, align 4
  %command_res_urb.i.i = getelementptr i8, ptr %t, i32 -480
  %8 = ptrtoint ptr %command_res_urb.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %command_res_urb.i.i, align 4
  tail call void @usb_free_urb(ptr noundef %9) #15
  %10 = ptrtoint ptr %command_res_urb.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %command_res_urb.i.i, align 4
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 4
  tail call void @usb_put_dev(ptr noundef %12) #15
  tail call void @mmc_free_host(ptr noundef %4) #15
  br label %if.end8

if.else:                                          ; preds = %entry
  %cmd = getelementptr i8, ptr %t, i32 -504
  %13 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cmd, align 4
  %tobool1.not = icmp eq ptr %14, null
  br i1 %tobool1.not, label %if.else4, label %if.then2

if.then2:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %15, 100
  %call3 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #15
  br label %if.end8

if.else4:                                         ; preds = %if.else
  %kref.i = getelementptr i8, ptr %t, i32 -2104
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #15
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #15, !srcloc !320
  %asmresult.i.i.i.i.i.i.i14 = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i14)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i14, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.else4.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !319

if.else4.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.else4
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i14, 1
  %17 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %.not.i.i.i.i.i = icmp sgt i32 %17, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.kref_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !317

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.kref_get.exit.i_crit_edge:      ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %kref_get.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.else4.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.else4.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef %.sink.i.i.i.i.i) #15
  br label %kref_get.exit.i

kref_get.exit.i:                                  ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.kref_get.exit.i_crit_edge
  %18 = load ptr, ptr @deadworkqueue, align 4
  %deadwork.i = getelementptr i8, ptr %t, i32 48
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %18, ptr noundef %deadwork.i) #15
  br i1 %call.i.i, label %kref_get.exit.i.vub300_queue_dead_work.exit_crit_edge, label %if.else.i

kref_get.exit.i.vub300_queue_dead_work.exit_crit_edge: ; preds = %kref_get.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %vub300_queue_dead_work.exit

if.else.i:                                        ; preds = %kref_get.exit.i
  %call.i.i.i.i.i.i5.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !315
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #15
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #15, !srcloc !316
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i6.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i6.i, label %if.end5.i.i.i.i.i.vub300_queue_dead_work.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !317

if.end5.i.i.i.i.i.vub300_queue_dead_work.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %vub300_queue_dead_work.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #15
  br label %vub300_queue_dead_work.exit

if.then.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !318
  %mmc1.i.i.i = getelementptr i8, ptr %t, i32 -492
  %20 = ptrtoint ptr %mmc1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmc1.i.i.i, align 4
  %command_out_urb.i.i.i = getelementptr i8, ptr %t, i32 -484
  %22 = ptrtoint ptr %command_out_urb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %command_out_urb.i.i.i, align 4
  tail call void @usb_free_urb(ptr noundef %23) #15
  %24 = ptrtoint ptr %command_out_urb.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %command_out_urb.i.i.i, align 4
  %command_res_urb.i.i.i = getelementptr i8, ptr %t, i32 -480
  %25 = ptrtoint ptr %command_res_urb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %command_res_urb.i.i.i, align 4
  tail call void @usb_free_urb(ptr noundef %26) #15
  %27 = ptrtoint ptr %command_res_urb.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %command_res_urb.i.i.i, align 4
  %28 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr, align 4
  tail call void @usb_put_dev(ptr noundef %29) #15
  tail call void @mmc_free_host(ptr noundef %21) #15
  br label %vub300_queue_dead_work.exit

vub300_queue_dead_work.exit:                      ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.vub300_queue_dead_work.exit_crit_edge, %kref_get.exit.i.vub300_queue_dead_work.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %add6 = add i32 %30, 100
  %call7 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add6) #15
  br label %if.end8

if.end8:                                          ; preds = %vub300_queue_dead_work.exit, %if.then2, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end8_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_free_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vub300_mmc_request(ptr noundef %mmc, ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd1 = getelementptr inbounds %struct.mmc_request, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd1, align 4
  %private.i = getelementptr %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %interface = getelementptr inbounds %struct.vub300_mmc_host, ptr %private.i, i32 0, i32 1
  %2 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %interface, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %error = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -108, ptr %error, align 4
  tail call void @mmc_request_done(ptr noundef %mmc, ptr noundef %req) #15
  br label %cleanup42

if.else:                                          ; preds = %entry
  %data2 = getelementptr inbounds %struct.mmc_request, ptr %req, i32 0, i32 2
  %5 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data2, align 4
  %card_powered = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 10, i32 1, i32 2
  %7 = ptrtoint ptr %card_powered to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %card_powered, align 4, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool3.not = icmp eq i8 %8, 0
  br i1 %tobool3.not, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %error5 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %error5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -123, ptr %error5, align 4
  tail call void @mmc_request_done(ptr noundef %mmc, ptr noundef %req) #15
  br label %cleanup42

if.end:                                           ; preds = %if.else
  %card_present = getelementptr inbounds %struct.vub300_mmc_host, ptr %private.i, i32 0, i32 11
  %10 = ptrtoint ptr %card_present to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %card_present, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool6.not = icmp eq i8 %11, 0
  br i1 %tobool6.not, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %error8 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %error8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -123, ptr %error8, align 4
  tail call void @mmc_request_done(ptr noundef %mmc, ptr noundef %req) #15
  br label %cleanup42

if.end9:                                          ; preds = %if.end
  %usb_transport_fail = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 10, i32 1, i32 4, i32 2
  %13 = ptrtoint ptr %usb_transport_fail to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %usb_transport_fail, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool10.not = icmp eq i32 %14, 0
  br i1 %tobool10.not, label %if.end19, label %if.then11

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  %error13 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %error13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %error13, align 4
  tail call void @mmc_request_done(ptr noundef %mmc, ptr noundef %req) #15
  br label %cleanup42

if.end19:                                         ; preds = %if.end9
  %kref = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #15
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #15, !srcloc !320
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end19.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !319

if.end19.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end19
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %17 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %.not.i.i.i.i = icmp sgt i32 %17, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !317

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end19.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end19.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i.i) #15
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %cmd_mutex = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %cmd_mutex, i32 noundef 0) #15
  %inactivity_timer = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 2, i32 1, i32 9, i32 1, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %18, 100
  %call20 = tail call i32 @mod_timer(ptr noundef %inactivity_timer, i32 noundef %add) #15
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %20)
  %cmp = icmp eq i32 %20, 52
  br i1 %cmp, label %land.lhs.true, label %kref_get.exit.if.else28_crit_edge

kref_get.exit.if.else28_crit_edge:                ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else28

land.lhs.true:                                    ; preds = %kref_get.exit
  %dynamic_register_count.i = getelementptr inbounds %struct.vub300_mmc_host, ptr %private.i, i32 0, i32 19
  %21 = ptrtoint ptr %dynamic_register_count.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %dynamic_register_count.i, align 1
  %arg.i = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arg.i, align 4
  %shr.i = lshr i32 %24, 28
  %25 = trunc i32 %shr.i to i8
  %conv.i = and i8 %25, 7
  %shr2.i = lshr i32 %24, 9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp.not111.i = icmp eq i8 %22, 0
  br i1 %cmp.not111.i, label %land.lhs.true.while.end.i_crit_edge, label %while.body.lr.ph.i

land.lhs.true.while.end.i_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %land.lhs.true
  %conv6.i = zext i8 %conv.i to i32
  br label %while.body.i

while.body.i:                                     ; preds = %if.else66.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %dec113.in.i = phi i8 [ %22, %while.body.lr.ph.i ], [ %dec113.i, %if.else66.i.while.body.i_crit_edge ]
  %i.0112.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %add.i, %if.else66.i.while.body.i_crit_edge ]
  %dec113.i = add i8 %dec113.in.i, -1
  %idxprom.i = and i32 %i.0112.i, 255
  %arrayidx.i = getelementptr %struct.vub300_mmc_host, ptr %private.i, i32 0, i32 26, i32 %idxprom.i
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %bf.load.i = load i32, ptr %arrayidx.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 29
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr.i, i32 %conv6.i)
  %cmp7.i = icmp eq i32 %bf.lshr.i, %conv6.i
  br i1 %cmp7.i, label %land.lhs.true.i, label %while.body.i.if.else66.i_crit_edge

while.body.i.if.else66.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else66.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %bf.lshr13.i = lshr i32 %bf.load.i, 12
  %27 = xor i32 %bf.lshr13.i, %shr2.i
  %28 = and i32 %27, 131071
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp14.i = icmp eq i32 %28, 0
  br i1 %cmp14.i, label %if.then.i, label %land.lhs.true.i.if.else66.i_crit_edge

land.lhs.true.i.if.else66.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else66.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %29 = and i32 %bf.load.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i, label %if.then.i.if.else28_crit_edge, label %if.else.i

if.then.i.if.else28_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else28

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp25.i = icmp slt i32 %24, 0
  br i1 %cmp25.i, label %if.then27.i, label %if.else33.i

if.then27.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  %bf.clear32.i = and i32 %bf.load.i, -1025
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %bf.clear32.i, ptr %arrayidx.i, align 4
  br label %if.else28

if.else33.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  %response.i = getelementptr %struct.vub300_mmc_host, ptr %private.i, i32 0, i32 26, i32 %idxprom.i, i32 1
  %31 = ptrtoint ptr %response.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load37.i = load i8, ptr %response.i, align 4
  %bf.cast.i = zext i8 %bf.load37.i to i32
  %bf.lshr43.i = lshr i32 %bf.load.i, 2
  %bf.clear50.i = and i32 %bf.load.i, -1025
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %bf.clear50.i, ptr %arrayidx.i, align 4
  %resp.i = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 2
  %arrayidx53.i = getelementptr %struct.mmc_command, ptr %1, i32 0, i32 2, i32 1
  %33 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %arrayidx53.i, align 4
  %shl59.i = shl nuw nsw i32 %bf.cast.i, 8
  %conv61.i = and i32 %bf.lshr43.i, 255
  %or63.i = or i32 %shl59.i, %conv61.i
  %34 = ptrtoint ptr %resp.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or63.i, ptr %resp.i, align 4
  br label %if.then23

if.else66.i:                                      ; preds = %land.lhs.true.i.if.else66.i_crit_edge, %while.body.i.if.else66.i_crit_edge
  %add.i = add nuw nsw i32 %idxprom.i, 1
  %cmp.not.i = icmp eq i8 %dec113.i, 0
  br i1 %cmp.not.i, label %if.else66.i.while.end.i_crit_edge, label %if.else66.i.while.body.i_crit_edge

if.else66.i.while.body.i_crit_edge:               ; preds = %if.else66.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i

if.else66.i.while.end.i_crit_edge:                ; preds = %if.else66.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

while.end.i:                                      ; preds = %if.else66.i.while.end.i_crit_edge, %land.lhs.true.while.end.i_crit_edge
  %total_offload_count.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 10, i32 1, i32 4
  %35 = ptrtoint ptr %total_offload_count.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %total_offload_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp70.i = icmp eq i8 %36, 0
  br i1 %cmp70.i, label %while.end.i.if.else28_crit_edge, label %if.else73.i

while.end.i.if.else28_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else28

if.else73.i:                                      ; preds = %while.end.i
  %idxprom74.i = zext i8 %conv.i to i32
  %arrayidx75.i = getelementptr %struct.vub300_mmc_host, ptr %private.i, i32 0, i32 27, i32 %idxprom74.i
  %37 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx75.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp77.i = icmp eq i8 %38, 0
  br i1 %cmp77.i, label %if.else73.i.if.else28_crit_edge, label %if.else80.i

if.else73.i.if.else28_crit_edge:                  ; preds = %if.else73.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else28

if.else80.i:                                      ; preds = %if.else73.i
  %shr.i.i = lshr i32 %24, 24
  %shr2.i.i = lshr i32 %24, 16
  %shr6.i.i = lshr i32 %24, 8
  %offload_point.i.i = getelementptr %struct.vub300_mmc_host, ptr %private.i, i32 0, i32 27, i32 %idxprom74.i, i32 1
  %39 = ptrtoint ptr %offload_point.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %offload_point.i.i, align 4
  %and13.i.i = and i32 %40, 15
  %arrayidx17.i.i = getelementptr %struct.vub300_mmc_host, ptr %private.i, i32 0, i32 27, i32 %idxprom74.i, i32 2, i32 %and13.i.i
  %41 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx17.i.i, align 1
  %conv20.i.i = zext i8 %42 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.i, i32 %conv20.i.i)
  %cmp.i.i = icmp eq i32 %shr.i.i, %conv20.i.i
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.else80.i.if.else.i.i_crit_edge

if.else80.i.if.else.i.i_crit_edge:                ; preds = %if.else80.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %if.else80.i
  %arrayidx24.i.i = getelementptr [4 x i8], ptr %arrayidx17.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx24.i.i, align 1
  %45 = trunc i32 %shr2.i.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %44, i8 %45)
  %cmp26.i.i = icmp eq i8 %44, %45
  br i1 %cmp26.i.i, label %land.lhs.true28.i.i, label %land.lhs.true.i.i.if.else.i.i_crit_edge

land.lhs.true.i.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i.i

land.lhs.true28.i.i:                              ; preds = %land.lhs.true.i.i
  %arrayidx31.i.i = getelementptr [4 x i8], ptr %arrayidx17.i.i, i32 0, i32 2
  %46 = ptrtoint ptr %arrayidx31.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx31.i.i, align 1
  %48 = trunc i32 %shr6.i.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %47, i8 %48)
  %cmp33.i.i = icmp eq i8 %47, %48
  br i1 %cmp33.i.i, label %land.lhs.true35.i.i, label %land.lhs.true28.i.i.if.else.i.i_crit_edge

land.lhs.true28.i.i.if.else.i.i_crit_edge:        ; preds = %land.lhs.true28.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i.i

land.lhs.true35.i.i:                              ; preds = %land.lhs.true28.i.i
  %arrayidx38.i.i = getelementptr [4 x i8], ptr %arrayidx17.i.i, i32 0, i32 3
  %49 = ptrtoint ptr %arrayidx38.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx38.i.i, align 1
  %51 = trunc i32 %24 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %50, i8 %51)
  %cmp40.i.i = icmp eq i8 %50, %51
  br i1 %cmp40.i.i, label %if.then.i.i, label %land.lhs.true35.i.i.if.else.i.i_crit_edge

land.lhs.true35.i.i.if.else.i.i_crit_edge:        ; preds = %land.lhs.true35.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i.i

if.then.i.i:                                      ; preds = %land.lhs.true35.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %resp.i.i = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 2
  %arrayidx43.i.i = getelementptr %struct.mmc_command, ptr %1, i32 0, i32 2, i32 1
  %52 = ptrtoint ptr %arrayidx43.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %arrayidx43.i.i, align 4
  %Respond_Byte.i.i = getelementptr %struct.vub300_mmc_host, ptr %private.i, i32 0, i32 27, i32 %idxprom74.i, i32 2, i32 %and13.i.i, i32 1
  %53 = ptrtoint ptr %Respond_Byte.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %Respond_Byte.i.i, align 1
  %conv45.i.i = zext i8 %54 to i32
  %shl46.i.i = shl nuw i32 %conv45.i.i, 24
  %arrayidx48.i.i = getelementptr %struct.vub300_mmc_host, ptr %private.i, i32 0, i32 27, i32 %idxprom74.i, i32 2, i32 %and13.i.i, i32 1, i32 1
  %55 = ptrtoint ptr %arrayidx48.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx48.i.i, align 1
  %conv49.i.i = zext i8 %56 to i32
  %shl50.i.i = shl nuw nsw i32 %conv49.i.i, 16
  %or.i.i = or i32 %shl50.i.i, %shl46.i.i
  %arrayidx52.i.i = getelementptr %struct.vub300_mmc_host, ptr %private.i, i32 0, i32 27, i32 %idxprom74.i, i32 2, i32 %and13.i.i, i32 1, i32 2
  %57 = ptrtoint ptr %arrayidx52.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx52.i.i, align 1
  %conv53.i.i = zext i8 %58 to i32
  %shl54.i.i = shl nuw nsw i32 %conv53.i.i, 8
  %or55.i.i = or i32 %or.i.i, %shl54.i.i
  %arrayidx57.i.i = getelementptr %struct.vub300_mmc_host, ptr %private.i, i32 0, i32 27, i32 %idxprom74.i, i32 2, i32 %and13.i.i, i32 1, i32 3
  %59 = ptrtoint ptr %arrayidx57.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx57.i.i, align 1
  %conv58.i.i = zext i8 %60 to i32
  %or60.i.i = or i32 %or55.i.i, %conv58.i.i
  %61 = ptrtoint ptr %resp.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %or60.i.i, ptr %resp.i.i, align 4
  %62 = ptrtoint ptr %offload_point.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %offload_point.i.i, align 4
  %add.i.i = add i32 %63, 1
  store i32 %add.i.i, ptr %offload_point.i.i, align 4
  %64 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx75.i, align 4
  %sub.i.i = add i8 %65, -1
  store i8 %sub.i.i, ptr %arrayidx75.i, align 4
  %66 = ptrtoint ptr %total_offload_count.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %total_offload_count.i, align 4
  %sub73.i.i = add i8 %67, -1
  store i8 %sub73.i.i, ptr %total_offload_count.i, align 4
  br label %if.then23

if.else.i.i:                                      ; preds = %land.lhs.true35.i.i.if.else.i.i_crit_edge, %land.lhs.true28.i.i.if.else.i.i_crit_edge, %land.lhs.true.i.i.if.else.i.i_crit_edge, %if.else80.i.if.else.i.i_crit_edge
  %register_count.0236.i.i = add i8 %38, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %register_count.0236.i.i)
  %cmp88.not237.i.i = icmp eq i8 %register_count.0236.i.i, 0
  br i1 %cmp88.not237.i.i, label %if.else.i.i.if.else28_crit_edge, label %while.body.lr.ph.i.i

if.else.i.i.if.else28_crit_edge:                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else28

while.body.lr.ph.i.i:                             ; preds = %if.else.i.i
  %68 = trunc i32 %shr2.i.i to i8
  %69 = trunc i32 %shr6.i.i to i8
  %70 = trunc i32 %24 to i8
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %cleanup.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %register_count.0241.i.i = phi i8 [ %register_count.0236.i.i, %while.body.lr.ph.i.i ], [ %register_count.0.i.i, %cleanup.i.i.while.body.i.i_crit_edge ]
  %register_point.0240.in.i.i = phi i32 [ %40, %while.body.lr.ph.i.i ], [ %register_point.0240.i.i, %cleanup.i.i.while.body.i.i_crit_edge ]
  %delta.0238.i.i = phi i32 [ 1, %while.body.lr.ph.i.i ], [ %add171.i.i, %cleanup.i.i.while.body.i.i_crit_edge ]
  %register_point.0240.i.i = add i32 %register_point.0240.in.i.i, 1
  %and90.i.i = and i32 %register_point.0240.i.i, 15
  %arrayidx95.i.i = getelementptr %struct.vub300_mmc_host, ptr %private.i, i32 0, i32 27, i32 %idxprom74.i, i32 2, i32 %and90.i.i
  %71 = ptrtoint ptr %arrayidx95.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx95.i.i, align 1
  %conv99.i.i = zext i8 %72 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.i, i32 %conv99.i.i)
  %cmp100.i.i = icmp eq i32 %shr.i.i, %conv99.i.i
  br i1 %cmp100.i.i, label %land.lhs.true102.i.i, label %while.body.i.i.cleanup.i.i_crit_edge

while.body.i.i.cleanup.i.i_crit_edge:             ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.i.i

land.lhs.true102.i.i:                             ; preds = %while.body.i.i
  %arrayidx105.i.i = getelementptr [4 x i8], ptr %arrayidx95.i.i, i32 0, i32 1
  %73 = ptrtoint ptr %arrayidx105.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx105.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %74, i8 %68)
  %cmp107.i.i = icmp eq i8 %74, %68
  br i1 %cmp107.i.i, label %land.lhs.true109.i.i, label %land.lhs.true102.i.i.cleanup.i.i_crit_edge

land.lhs.true102.i.i.cleanup.i.i_crit_edge:       ; preds = %land.lhs.true102.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.i.i

land.lhs.true109.i.i:                             ; preds = %land.lhs.true102.i.i
  %arrayidx112.i.i = getelementptr [4 x i8], ptr %arrayidx95.i.i, i32 0, i32 2
  %75 = ptrtoint ptr %arrayidx112.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx112.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %76, i8 %69)
  %cmp114.i.i = icmp eq i8 %76, %69
  br i1 %cmp114.i.i, label %land.lhs.true116.i.i, label %land.lhs.true109.i.i.cleanup.i.i_crit_edge

land.lhs.true109.i.i.cleanup.i.i_crit_edge:       ; preds = %land.lhs.true109.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.i.i

land.lhs.true116.i.i:                             ; preds = %land.lhs.true109.i.i
  %arrayidx119.i.i = getelementptr [4 x i8], ptr %arrayidx95.i.i, i32 0, i32 3
  %77 = ptrtoint ptr %arrayidx119.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx119.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %78, i8 %70)
  %cmp121.i.i = icmp eq i8 %78, %70
  br i1 %cmp121.i.i, label %cleanup.thread.i.i, label %land.lhs.true116.i.i.cleanup.i.i_crit_edge

land.lhs.true116.i.i.cleanup.i.i_crit_edge:       ; preds = %land.lhs.true116.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.i.i

cleanup.thread.i.i:                               ; preds = %land.lhs.true116.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %resp127.i.i = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 2
  %arrayidx128.i.i = getelementptr %struct.mmc_command, ptr %1, i32 0, i32 2, i32 1
  %79 = ptrtoint ptr %arrayidx128.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %arrayidx128.i.i, align 4
  %Respond_Byte129.i.i = getelementptr %struct.vub300_mmc_host, ptr %private.i, i32 0, i32 27, i32 %idxprom74.i, i32 2, i32 %and90.i.i, i32 1
  %80 = ptrtoint ptr %Respond_Byte129.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %Respond_Byte129.i.i, align 1
  %conv131.i.i = zext i8 %81 to i32
  %shl132.i.i = shl nuw i32 %conv131.i.i, 24
  %arrayidx134.i.i = getelementptr %struct.vub300_mmc_host, ptr %private.i, i32 0, i32 27, i32 %idxprom74.i, i32 2, i32 %and90.i.i, i32 1, i32 1
  %82 = ptrtoint ptr %arrayidx134.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx134.i.i, align 1
  %conv135.i.i = zext i8 %83 to i32
  %shl136.i.i = shl nuw nsw i32 %conv135.i.i, 16
  %or137.i.i = or i32 %shl136.i.i, %shl132.i.i
  %arrayidx139.i.i = getelementptr %struct.vub300_mmc_host, ptr %private.i, i32 0, i32 27, i32 %idxprom74.i, i32 2, i32 %and90.i.i, i32 1, i32 2
  %84 = ptrtoint ptr %arrayidx139.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx139.i.i, align 1
  %conv140.i.i = zext i8 %85 to i32
  %shl141.i.i = shl nuw nsw i32 %conv140.i.i, 8
  %or142.i.i = or i32 %or137.i.i, %shl141.i.i
  %arrayidx144.i.i = getelementptr %struct.vub300_mmc_host, ptr %private.i, i32 0, i32 27, i32 %idxprom74.i, i32 2, i32 %and90.i.i, i32 1, i32 3
  %86 = ptrtoint ptr %arrayidx144.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx144.i.i, align 1
  %conv145.i.i = zext i8 %87 to i32
  %or147.i.i = or i32 %or142.i.i, %conv145.i.i
  %88 = ptrtoint ptr %resp127.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %or147.i.i, ptr %resp127.i.i, align 4
  %89 = ptrtoint ptr %offload_point.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %offload_point.i.i, align 4
  %add154.i.i = add i32 %90, %delta.0238.i.i
  store i32 %add154.i.i, ptr %offload_point.i.i, align 4
  %91 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx75.i, align 4
  %93 = trunc i32 %delta.0238.i.i to i8
  %conv161.i.i = sub i8 %92, %93
  store i8 %conv161.i.i, ptr %arrayidx75.i, align 4
  %94 = ptrtoint ptr %total_offload_count.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %total_offload_count.i, align 4
  %conv165.i.i = sub i8 %95, %93
  store i8 %conv165.i.i, ptr %total_offload_count.i, align 4
  br label %if.then23

cleanup.i.i:                                      ; preds = %land.lhs.true116.i.i.cleanup.i.i_crit_edge, %land.lhs.true109.i.i.cleanup.i.i_crit_edge, %land.lhs.true102.i.i.cleanup.i.i_crit_edge, %while.body.i.i.cleanup.i.i_crit_edge
  %add171.i.i = add nuw nsw i32 %delta.0238.i.i, 1
  %register_count.0.i.i = add i8 %register_count.0241.i.i, -1
  %cmp88.not.i.i = icmp eq i8 %register_count.0.i.i, 0
  br i1 %cmp88.not.i.i, label %cleanup.i.i.if.else28_crit_edge, label %cleanup.i.i.while.body.i.i_crit_edge

cleanup.i.i.while.body.i.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i.i

cleanup.i.i.if.else28_crit_edge:                  ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else28

if.then23:                                        ; preds = %cleanup.thread.i.i, %if.then.i.i, %if.else33.i
  %error24 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 5
  %96 = ptrtoint ptr %error24 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %error24, align 4
  tail call void @mutex_unlock(ptr noundef %cmd_mutex) #15
  %call.i.i.i.i.i.i91 = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !315
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #15
  %97 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #15, !srcloc !316
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %97, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i93, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i92 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i92, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !317

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #15
  br label %kref_put.exit

if.then.i93:                                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !318
  %mmc1.i.i = getelementptr %struct.mmc_host, ptr %mmc, i32 1, i32 57, i32 13
  %98 = ptrtoint ptr %mmc1.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %mmc1.i.i, align 4
  %command_out_urb.i.i = getelementptr %struct.mmc_host, ptr %mmc, i32 1, i32 59
  %100 = ptrtoint ptr %command_out_urb.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %command_out_urb.i.i, align 4
  tail call void @usb_free_urb(ptr noundef %101) #15
  %102 = ptrtoint ptr %command_out_urb.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr null, ptr %command_out_urb.i.i, align 4
  %command_res_urb.i.i = getelementptr %struct.mmc_host, ptr %mmc, i32 1, i32 60
  %103 = ptrtoint ptr %command_res_urb.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %command_res_urb.i.i, align 4
  tail call void @usb_free_urb(ptr noundef %104) #15
  %105 = ptrtoint ptr %command_res_urb.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr null, ptr %command_res_urb.i.i, align 4
  %106 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %private.i, align 4
  tail call void @usb_put_dev(ptr noundef %107) #15
  tail call void @mmc_free_host(ptr noundef %99) #15
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i93, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  tail call void @mmc_request_done(ptr noundef %mmc, ptr noundef %req) #15
  br label %cleanup42

if.else28:                                        ; preds = %cleanup.i.i.if.else28_crit_edge, %if.else.i.i.if.else28_crit_edge, %if.else73.i.if.else28_crit_edge, %while.end.i.if.else28_crit_edge, %if.then27.i, %if.then.i.if.else28_crit_edge, %kref_get.exit.if.else28_crit_edge
  %cmd29 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 57, i32 12, i32 4
  %108 = ptrtoint ptr %cmd29 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %1, ptr %cmd29, align 4
  %req30 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 57, i32 12, i32 5
  %109 = ptrtoint ptr %req30 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %req, ptr %req30, align 4
  %data31 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 57, i32 12, i32 6
  %110 = ptrtoint ptr %data31 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %6, ptr %data31, align 4
  %tobool32.not = icmp eq ptr %6, null
  br i1 %tobool32.not, label %if.else28.if.end36_crit_edge, label %if.then33

if.else28.if.end36_crit_edge:                     ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end36

if.then33:                                        ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #17
  %blksz = getelementptr inbounds %struct.mmc_data, ptr %6, i32 0, i32 2
  %111 = ptrtoint ptr %blksz to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %blksz, align 4
  %blocks = getelementptr inbounds %struct.mmc_data, ptr %6, i32 0, i32 3
  %113 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %blocks, align 4
  %mul = mul i32 %114, %112
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %if.else28.if.end36_crit_edge
  %mul.sink = phi i32 [ %mul, %if.then33 ], [ 0, %if.else28.if.end36_crit_edge ]
  %115 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 10, i32 1, i32 4, i32 1
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %mul.sink, ptr %115, align 4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #15
  %117 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #15, !srcloc !320
  %asmresult.i.i.i.i.i.i.i94 = extractvalue { i32, i32, i32 } %117, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i94)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i94, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end36.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !319

if.end36.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end36
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i94, 1
  %118 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i94
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %118)
  %.not.i.i.i.i.i = icmp sgt i32 %118, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.kref_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !317

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.kref_get.exit.i_crit_edge:      ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %kref_get.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end36.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end36.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i.i.i) #15
  br label %kref_get.exit.i

kref_get.exit.i:                                  ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.kref_get.exit.i_crit_edge
  %119 = load ptr, ptr @cmndworkqueue, align 4
  %cmndwork.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 2, i32 1, i32 10, i32 1, i32 3
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %119, ptr noundef %cmndwork.i) #15
  br i1 %call.i.i, label %kref_get.exit.i.vub300_queue_cmnd_work.exit_crit_edge, label %if.else.i95

kref_get.exit.i.vub300_queue_cmnd_work.exit_crit_edge: ; preds = %kref_get.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %vub300_queue_cmnd_work.exit

if.else.i95:                                      ; preds = %kref_get.exit.i
  %call.i.i.i.i.i.i5.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !315
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #15
  %120 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #15, !srcloc !316
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %120, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i96, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.else.i95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i6.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i6.i, label %if.end5.i.i.i.i.i.vub300_queue_cmnd_work.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !317

if.end5.i.i.i.i.i.vub300_queue_cmnd_work.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %vub300_queue_cmnd_work.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #15
  br label %vub300_queue_cmnd_work.exit

if.then.i.i96:                                    ; preds = %if.else.i95
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !318
  %mmc1.i.i.i = getelementptr %struct.mmc_host, ptr %mmc, i32 1, i32 57, i32 13
  %121 = ptrtoint ptr %mmc1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %mmc1.i.i.i, align 4
  %command_out_urb.i.i.i = getelementptr %struct.mmc_host, ptr %mmc, i32 1, i32 59
  %123 = ptrtoint ptr %command_out_urb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %command_out_urb.i.i.i, align 4
  tail call void @usb_free_urb(ptr noundef %124) #15
  %125 = ptrtoint ptr %command_out_urb.i.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr null, ptr %command_out_urb.i.i.i, align 4
  %command_res_urb.i.i.i = getelementptr %struct.mmc_host, ptr %mmc, i32 1, i32 60
  %126 = ptrtoint ptr %command_res_urb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %command_res_urb.i.i.i, align 4
  tail call void @usb_free_urb(ptr noundef %127) #15
  %128 = ptrtoint ptr %command_res_urb.i.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr null, ptr %command_res_urb.i.i.i, align 4
  %129 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %private.i, align 4
  tail call void @usb_put_dev(ptr noundef %130) #15
  tail call void @mmc_free_host(ptr noundef %122) #15
  br label %vub300_queue_cmnd_work.exit

vub300_queue_cmnd_work.exit:                      ; preds = %if.then.i.i96, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.vub300_queue_cmnd_work.exit_crit_edge, %kref_get.exit.i.vub300_queue_cmnd_work.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %cmd_mutex) #15
  %call.i.i.i.i.i.i97 = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !315
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #15
  %131 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #15, !srcloc !316
  %asmresult.i.i.i.i.i.i.i98 = extractvalue { i32, i32, i32 } %131, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i98)
  %cmp.i.i.i.i99 = icmp eq i32 %asmresult.i.i.i.i.i.i.i98, 1
  br i1 %cmp.i.i.i.i99, label %if.then.i107, label %if.end5.i.i.i.i101

if.end5.i.i.i.i101:                               ; preds = %vub300_queue_cmnd_work.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i98)
  %.not.i.i.i.i100 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i98, 0
  br i1 %.not.i.i.i.i100, label %if.end5.i.i.i.i101.cleanup42_crit_edge, label %if.then10.i.i.i.i102, !prof !317

if.end5.i.i.i.i101.cleanup42_crit_edge:           ; preds = %if.end5.i.i.i.i101
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup42

if.then10.i.i.i.i102:                             ; preds = %if.end5.i.i.i.i101
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #15
  br label %cleanup42

if.then.i107:                                     ; preds = %vub300_queue_cmnd_work.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !318
  %mmc1.i.i104 = getelementptr %struct.mmc_host, ptr %mmc, i32 1, i32 57, i32 13
  %132 = ptrtoint ptr %mmc1.i.i104 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %mmc1.i.i104, align 4
  %command_out_urb.i.i105 = getelementptr %struct.mmc_host, ptr %mmc, i32 1, i32 59
  %134 = ptrtoint ptr %command_out_urb.i.i105 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %command_out_urb.i.i105, align 4
  tail call void @usb_free_urb(ptr noundef %135) #15
  %136 = ptrtoint ptr %command_out_urb.i.i105 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr null, ptr %command_out_urb.i.i105, align 4
  %command_res_urb.i.i106 = getelementptr %struct.mmc_host, ptr %mmc, i32 1, i32 60
  %137 = ptrtoint ptr %command_res_urb.i.i106 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %command_res_urb.i.i106, align 4
  tail call void @usb_free_urb(ptr noundef %138) #15
  %139 = ptrtoint ptr %command_res_urb.i.i106 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr null, ptr %command_res_urb.i.i106, align 4
  %140 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %private.i, align 4
  tail call void @usb_put_dev(ptr noundef %141) #15
  tail call void @mmc_free_host(ptr noundef %133) #15
  br label %cleanup42

cleanup42:                                        ; preds = %if.then.i107, %if.then10.i.i.i.i102, %if.end5.i.i.i.i101.cleanup42_crit_edge, %kref_put.exit, %if.then11, %if.then7, %if.then4, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vub300_mmc_set_ios(ptr noundef %mmc, ptr nocapture noundef readonly %ios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %interface = getelementptr inbounds %struct.vub300_mmc_host, ptr %private.i, i32 0, i32 1
  %0 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %interface, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %kref = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #15
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #15, !srcloc !320
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !319

if.end.if.end15.sink.split.i.i.i.i_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !317

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i.i) #15
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %cmd_mutex = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %cmd_mutex, i32 noundef 0) #15
  %power_mode = getelementptr inbounds %struct.mmc_ios, ptr %ios, i32 0, i32 5
  %4 = ptrtoint ptr %power_mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %power_mode, align 2
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.157)
  switch i8 %5, label %kref_get.exit.if.end36_crit_edge [
    i8 0, label %land.lhs.true
    i8 1, label %land.lhs.true13
    i8 2, label %if.then28
  ]

kref_get.exit.if.end36_crit_edge:                 ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end36

land.lhs.true:                                    ; preds = %kref_get.exit
  %card_powered = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 10, i32 1, i32 2
  %7 = ptrtoint ptr %card_powered to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %card_powered, align 4, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool2.not = icmp eq i8 %8, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end36_crit_edge, label %if.then4

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end36

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %9 = ptrtoint ptr %card_powered to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %card_powered, align 4
  %10 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %shl.i = shl i32 %13, 8
  %or = or i32 %shl.i, -2147483648
  %call8 = tail call i32 @usb_control_msg(ptr noundef %11, i32 noundef %or, i8 noundef zeroext 4, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #15
  tail call void @msleep(i32 noundef 600) #15
  br label %if.end36

land.lhs.true13:                                  ; preds = %kref_get.exit
  %card_powered14 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 10, i32 1, i32 2
  %14 = ptrtoint ptr %card_powered14 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %card_powered14, align 4, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool15.not = icmp eq i8 %15, 0
  br i1 %tobool15.not, label %if.then16, label %land.lhs.true13.if.end36_crit_edge

land.lhs.true13.if.end36_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end36

if.then16:                                        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %private.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 8
  %shl.i58 = shl i32 %19, 8
  %or20 = or i32 %shl.i58, -2147483648
  %call21 = tail call i32 @usb_control_msg(ptr noundef %17, i32 noundef %or20, i8 noundef zeroext 4, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #15
  tail call void @msleep(i32 noundef 600) #15
  %20 = ptrtoint ptr %card_powered14 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %card_powered14, align 4
  br label %if.end36

if.then28:                                        ; preds = %kref_get.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3264, i32 noundef 8) #20
  %tobool30.not = icmp eq ptr %call7.i, null
  br i1 %tobool30.not, label %if.then28.if.end36_crit_edge, label %if.then31

if.then28.if.end36_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end36

if.then31:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @__set_clock_speed(ptr noundef %private.i, ptr noundef nonnull %call7.i, ptr noundef %ios)
  tail call void @kfree(ptr noundef nonnull %call7.i) #15
  br label %if.end36

if.end36:                                         ; preds = %if.then31, %if.then28.if.end36_crit_edge, %if.then16, %land.lhs.true13.if.end36_crit_edge, %if.then4, %land.lhs.true.if.end36_crit_edge, %kref_get.exit.if.end36_crit_edge
  tail call void @mutex_unlock(ptr noundef %cmd_mutex) #15
  %call.i.i.i.i.i.i59 = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !315
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #15
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #15, !srcloc !316
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i60 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i60, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !317

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #15
  br label %cleanup

if.then.i:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !318
  %mmc1.i.i = getelementptr %struct.mmc_host, ptr %mmc, i32 1, i32 57, i32 13
  %23 = ptrtoint ptr %mmc1.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmc1.i.i, align 4
  %command_out_urb.i.i = getelementptr %struct.mmc_host, ptr %mmc, i32 1, i32 59
  %25 = ptrtoint ptr %command_out_urb.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %command_out_urb.i.i, align 4
  tail call void @usb_free_urb(ptr noundef %26) #15
  %27 = ptrtoint ptr %command_out_urb.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %command_out_urb.i.i, align 4
  %command_res_urb.i.i = getelementptr %struct.mmc_host, ptr %mmc, i32 1, i32 60
  %28 = ptrtoint ptr %command_res_urb.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %command_res_urb.i.i, align 4
  tail call void @usb_free_urb(ptr noundef %29) #15
  %30 = ptrtoint ptr %command_res_urb.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %command_res_urb.i.i, align 4
  %31 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %private.i, align 4
  tail call void @usb_put_dev(ptr noundef %32) #15
  tail call void @mmc_free_host(ptr noundef %24) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vub300_mmc_get_ro(ptr nocapture noundef readonly %mmc) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %read_only = getelementptr inbounds %struct.vub300_mmc_host, ptr %private.i, i32 0, i32 12
  %0 = ptrtoint ptr %read_only to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %read_only, align 2, !range !314
  %2 = zext i8 %1 to i32
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vub300_enable_sdio_irq(ptr noundef %mmc, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr %struct.mmc_host, ptr %mmc, i32 0, i32 70
  %interface = getelementptr inbounds %struct.vub300_mmc_host, ptr %private.i, i32 0, i32 1
  %0 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %interface, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %kref = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #15
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #15, !srcloc !320
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !319

if.end.if.end15.sink.split.i.i.i.i_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !317

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i.i) #15
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool1.not = icmp eq i32 %enable, 0
  br i1 %tobool1.not, label %if.else20, label %if.then2

if.then2:                                         ; preds = %kref_get.exit
  %irq_mutex = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 0, i32 7, i32 1, i32 4
  tail call void @mutex_lock_nested(ptr noundef %irq_mutex, i32 noundef 0) #15
  %irqs_queued = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 1, i32 10, i32 1, i32 4, i32 6
  %4 = ptrtoint ptr %irqs_queued to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irqs_queued, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then2
  %sub = add i32 %5, -1
  %6 = ptrtoint ptr %irqs_queued to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sub, ptr %irqs_queued, align 4
  %mmc6 = getelementptr inbounds %struct.mmc_host, ptr %mmc, i32 1, i32 57, i32 13
  %7 = ptrtoint ptr %mmc6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmc6, align 4
  %ops.i = getelementptr inbounds %struct.mmc_host, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i, align 4
  %enable_sdio_irq.i = getelementptr inbounds %struct.mmc_host_ops, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %enable_sdio_irq.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %enable_sdio_irq.i, align 4
  tail call void %12(ptr noundef %8, i32 noundef 0) #15
  %sdio_irq_pending.i = getelementptr inbounds %struct.mmc_host, ptr %8, i32 0, i32 49
  %13 = ptrtoint ptr %sdio_irq_pending.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %sdio_irq_pending.i, align 4
  %sdio_irq_thread.i = getelementptr inbounds %struct.mmc_host, ptr %8, i32 0, i32 47
  %14 = ptrtoint ptr %sdio_irq_thread.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sdio_irq_thread.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.then4.if.end18_crit_edge, label %if.then.i

if.then4.if.end18_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = tail call i32 @wake_up_process(ptr noundef nonnull %15) #15
  br label %if.end18

if.else:                                          ; preds = %if.then2
  %irq_disabled = getelementptr inbounds %struct.vub300_mmc_host, ptr %private.i, i32 0, i32 16
  %16 = ptrtoint ptr %irq_disabled to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %irq_disabled, align 2, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool7.not = icmp eq i8 %17, 0
  br i1 %tobool7.not, label %if.else10, label %if.then8

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %18 = ptrtoint ptr %irq_disabled to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %irq_disabled, align 2
  %irq_enabled = getelementptr inbounds %struct.vub300_mmc_host, ptr %private.i, i32 0, i32 15
  %19 = ptrtoint ptr %irq_enabled to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %irq_enabled, align 1
  tail call fastcc void @vub300_queue_poll_work(ptr noundef %private.i, i32 noundef 0)
  br label %if.end18

if.else10:                                        ; preds = %if.else
  %irq_enabled11 = getelementptr inbounds %struct.vub300_mmc_host, ptr %private.i, i32 0, i32 15
  %20 = ptrtoint ptr %irq_enabled11 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %irq_enabled11, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool12.not = icmp eq i8 %21, 0
  br i1 %tobool12.not, label %if.else14, label %if.else10.if.end18_crit_edge

if.else10.if.end18_crit_edge:                     ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

if.else14:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #17
  %22 = ptrtoint ptr %irq_enabled11 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %irq_enabled11, align 1
  tail call fastcc void @vub300_queue_poll_work(ptr noundef %private.i, i32 noundef 0)
  br label %if.end18

if.end18:                                         ; preds = %if.else14, %if.else10.if.end18_crit_edge, %if.then8, %if.then.i, %if.then4.if.end18_crit_edge
  tail call void @mutex_unlock(ptr noundef %irq_mutex) #15
  br label %if.end22

if.else20:                                        ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #17
  %irq_enabled21 = getelementptr inbounds %struct.vub300_mmc_host, ptr %private.i, i32 0, i32 15
  %23 = ptrtoint ptr %irq_enabled21 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %irq_enabled21, align 1
  br label %if.end22

if.end22:                                         ; preds = %if.else20, %if.end18
  %call.i.i.i.i.i.i40 = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !315
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #15
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #15, !srcloc !316
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i42, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i41 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i41, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !317

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #15
  br label %cleanup

if.then.i42:                                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !318
  %mmc1.i.i = getelementptr %struct.mmc_host, ptr %mmc, i32 1, i32 57, i32 13
  %25 = ptrtoint ptr %mmc1.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmc1.i.i, align 4
  %command_out_urb.i.i = getelementptr %struct.mmc_host, ptr %mmc, i32 1, i32 59
  %27 = ptrtoint ptr %command_out_urb.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %command_out_urb.i.i, align 4
  tail call void @usb_free_urb(ptr noundef %28) #15
  %29 = ptrtoint ptr %command_out_urb.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %command_out_urb.i.i, align 4
  %command_res_urb.i.i = getelementptr %struct.mmc_host, ptr %mmc, i32 1, i32 60
  %30 = ptrtoint ptr %command_res_urb.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %command_res_urb.i.i, align 4
  tail call void @usb_free_urb(ptr noundef %31) #15
  %32 = ptrtoint ptr %command_res_urb.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %command_res_urb.i.i, align 4
  %33 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %private.i, align 4
  tail call void @usb_put_dev(ptr noundef %34) #15
  tail call void @mmc_free_host(ptr noundef %26) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i42, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_request_done(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__set_clock_speed(ptr nocapture noundef readonly %vub300, ptr noundef %buf, ptr nocapture noundef readonly %ios) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ios, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 47999999, i32 %1)
  %cmp = icmp ugt i32 %1, 47999999
  br i1 %cmp, label %entry.if.end20_crit_edge, label %if.else

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 23999999, i32 %1)
  %cmp2 = icmp ugt i32 %1, 23999999
  br i1 %cmp2, label %if.else.if.end20_crit_edge, label %if.else4

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

if.else4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 19999999, i32 %1)
  %cmp6 = icmp ugt i32 %1, 19999999
  br i1 %cmp6, label %if.else4.if.end20_crit_edge, label %if.else8

if.else4.if.end20_crit_edge:                      ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

if.else8:                                         ; preds = %if.else4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14999999, i32 %1)
  %cmp10 = icmp ugt i32 %1, 14999999
  br i1 %cmp10, label %if.else8.if.end20_crit_edge, label %if.else12

if.else8.if.end20_crit_edge:                      ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

if.else12:                                        ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 199999, i32 %1)
  %cmp14 = icmp ugt i32 %1, 199999
  %. = select i1 %cmp14, i32 200, i32 0
  br label %if.end20

if.end20:                                         ; preds = %if.else12, %if.else8.if.end20_crit_edge, %if.else4.if.end20_crit_edge, %if.else.if.end20_crit_edge, %entry.if.end20_crit_edge
  %kHzClock.0 = phi i32 [ 48000, %entry.if.end20_crit_edge ], [ 24000, %if.else.if.end20_crit_edge ], [ 20000, %if.else4.if.end20_crit_edge ], [ 15000, %if.else8.if.end20_crit_edge ], [ %., %if.else12 ]
  %conv23 = trunc i32 %kHzClock.0 to i8
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv23, ptr %buf, align 1
  %3 = lshr i32 %kHzClock.0, 8
  %conv23.1 = trunc i32 %3 to i8
  %arrayidx.1 = getelementptr i8, ptr %buf, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv23.1, ptr %arrayidx.1, align 1
  %arrayidx.2 = getelementptr i8, ptr %buf, i32 2
  %5 = call ptr @memset(ptr %arrayidx.2, i32 0, i32 6)
  %6 = ptrtoint ptr %vub300 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vub300, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %shl.i = shl i32 %9, 8
  %or = or i32 %shl.i, -2147483648
  %call26 = tail call i32 @usb_control_msg(ptr noundef %7, i32 noundef %or, i8 noundef zeroext 11, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %buf, i16 noundef zeroext 8, i32 noundef 1000) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call26)
  %cmp27.not = icmp eq i32 %call26, 8
  br i1 %cmp27.not, label %do.body32, label %do.end

do.end:                                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  %10 = ptrtoint ptr %vub300 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vub300, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.67, i32 noundef %kHzClock.0, i32 noundef %call26) #18
  br label %if.end42

do.body32:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__set_clock_speed.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__set_clock_speed, %if.then36)) #15
          to label %if.end42 [label %if.then36], !srcloc !321

if.then36:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #17
  %12 = ptrtoint ptr %vub300 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vub300, align 4
  %dev38 = getelementptr inbounds %struct.usb_device, ptr %13, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__set_clock_speed.__UNIQUE_ID_ddebug292, ptr noundef %dev38, ptr noundef nonnull @.str.69, i32 noundef %kHzClock.0) #15
  br label %if.end42

if.end42:                                         ; preds = %if.then36, %do.body32, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vub300_queue_poll_work(ptr noundef %vub300, i32 noundef %delay) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %kref = getelementptr inbounds %struct.vub300_mmc_host, ptr %vub300, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #15
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #15, !srcloc !320
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !319

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !317

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i.i) #15
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %2 = load ptr, ptr @pollworkqueue, align 4
  %pollwork = getelementptr inbounds %struct.vub300_mmc_host, ptr %vub300, i32 0, i32 45
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %pollwork, i32 noundef %delay) #15
  br i1 %call.i, label %kref_get.exit.if.end_crit_edge, label %if.else

kref_get.exit.if.end_crit_edge:                   ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.else:                                          ; preds = %kref_get.exit
  %call.i.i.i.i.i.i5 = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !315
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #15
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #15, !srcloc !316
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i6 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i6, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !317

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #15
  br label %if.end

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !318
  %mmc1.i.i = getelementptr %struct.vub300_mmc_host, ptr %vub300, i32 0, i32 32
  %4 = ptrtoint ptr %mmc1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmc1.i.i, align 4
  %command_out_urb.i.i = getelementptr %struct.vub300_mmc_host, ptr %vub300, i32 0, i32 34
  %6 = ptrtoint ptr %command_out_urb.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %command_out_urb.i.i, align 4
  tail call void @usb_free_urb(ptr noundef %7) #15
  %8 = ptrtoint ptr %command_out_urb.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %command_out_urb.i.i, align 4
  %command_res_urb.i.i = getelementptr %struct.vub300_mmc_host, ptr %vub300, i32 0, i32 35
  %9 = ptrtoint ptr %command_res_urb.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %command_res_urb.i.i, align 4
  tail call void @usb_free_urb(ptr noundef %10) #15
  %11 = ptrtoint ptr %command_res_urb.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %command_res_urb.i.i, align 4
  %12 = ptrtoint ptr %vub300 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vub300, align 4
  tail call void @usb_put_dev(ptr noundef %13) #15
  tail call void @mmc_free_host(ptr noundef %5) #15
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge, %kref_get.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @irqpoll_out_completed(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.else, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

if.else:                                          ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %cmnd_res_ep = getelementptr inbounds %struct.vub300_mmc_host, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %cmnd_res_ep to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cmnd_res_ep, align 1
  %conv = zext i8 %7 to i32
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %5, align 8
  %shl.i = shl i32 %9, 8
  %shl1.i = shl nuw nsw i32 %conv, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or2 = or i32 %or.i, -1073741696
  %command_res_urb = getelementptr inbounds %struct.vub300_mmc_host, ptr %1, i32 0, i32 35
  %10 = ptrtoint ptr %command_res_urb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %command_res_urb, align 4
  %resp = getelementptr inbounds %struct.vub300_mmc_host, ptr %1, i32 0, i32 39
  %dev1.i = getelementptr inbounds %struct.urb, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %5, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %11, i32 0, i32 10
  %13 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or2, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %11, i32 0, i32 14
  %14 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %resp, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %11, i32 0, i32 19
  %15 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 123, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %11, i32 0, i32 28
  %16 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @irqpoll_res_completed, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %11, i32 0, i32 27
  %17 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %1, ptr %context4.i, align 4
  %18 = load ptr, ptr %command_res_urb, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %18, i32 0, i32 20
  %19 = ptrtoint ptr %actual_length to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %actual_length, align 4
  %20 = load ptr, ptr %command_res_urb, align 4
  %call6 = tail call i32 @usb_submit_urb(ptr noundef %20, i32 noundef 2592) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.else.cleanup_crit_edge, label %if.else.cleanup.sink.split_crit_edge

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.else.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %call6.sink = phi i32 [ %3, %entry.cleanup.sink.split_crit_edge ], [ %call6, %if.else.cleanup.sink.split_crit_edge ]
  %usb_transport_fail9 = getelementptr inbounds %struct.vub300_mmc_host, ptr %1, i32 0, i32 23
  %21 = ptrtoint ptr %usb_transport_fail9 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call6.sink, ptr %usb_transport_fail9, align 4
  %irqpoll_complete10 = getelementptr inbounds %struct.vub300_mmc_host, ptr %1, i32 0, i32 37
  tail call void @complete(ptr noundef %irqpoll_complete10) #15
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @irqpoll_res_completed(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %usb_transport_fail = getelementptr inbounds %struct.vub300_mmc_host, ptr %1, i32 0, i32 23
  %4 = ptrtoint ptr %usb_transport_fail to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %usb_transport_fail, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %irqpoll_complete = getelementptr inbounds %struct.vub300_mmc_host, ptr %1, i32 0, i32 37
  tail call void @complete(ptr noundef %irqpoll_complete) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @check_vub300_port_status(ptr noundef %vub300) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vub300 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vub300, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %shl.i = shl i32 %3, 8
  %or2 = or i32 %shl.i, -2147483520
  %system_port_status = getelementptr inbounds %struct.vub300_mmc_host, ptr %vub300, i32 0, i32 47
  %call3 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or2, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %system_port_status, i16 noundef zeroext 15, i32 noundef 1000) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %call3)
  %cmp = icmp eq i32 %call3, 15
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  %card_present.i = getelementptr inbounds %struct.vub300_mmc_host, ptr %vub300, i32 0, i32 11
  %4 = ptrtoint ptr %card_present.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %card_present.i, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  %port_flags.i = getelementptr inbounds %struct.vub300_mmc_host, ptr %vub300, i32 0, i32 47, i32 3
  %6 = ptrtoint ptr %port_flags.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %port_flags.i, align 1
  %8 = and i16 %7, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool2.not.i = icmp eq i16 %8, 0
  %read_only.i = getelementptr inbounds %struct.vub300_mmc_host, ptr %vub300, i32 0, i32 12
  %9 = trunc i16 %7 to i8
  %10 = lshr i8 %9, 4
  %11 = and i8 %10, 1
  %12 = ptrtoint ptr %read_only.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %read_only.i, align 2
  %tobool.not.not.i = xor i1 %tobool.not.i, true
  %brmerge.i = select i1 %tobool2.not.i, i1 true, i1 %tobool.not.not.i
  br i1 %brmerge.i, label %if.else16.i, label %do.end.i

do.end.i:                                         ; preds = %if.then
  %13 = ptrtoint ptr %vub300 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vub300, align 4
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %14, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.71) #18
  %15 = ptrtoint ptr %card_present.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %card_present.i, align 1
  %bus_width.i = getelementptr inbounds %struct.vub300_mmc_host, ptr %vub300, i32 0, i32 17
  %16 = ptrtoint ptr %bus_width.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load.i = load i8, ptr %bus_width.i, align 1
  %bf.clear.i = and i8 %bf.load.i, 15
  store i8 %bf.clear.i, ptr %bus_width.i, align 1
  %17 = load i8, ptr @disable_offload_processing, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool13.not.i = icmp eq i8 %17, 0
  %vub_name15.i = getelementptr inbounds %struct.vub300_mmc_host, ptr %vub300, i32 0, i32 5
  br i1 %tobool13.not.i, label %if.else.i, label %if.then14.i

if.then14.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %18 = call ptr @memcpy(ptr %vub_name15.i, ptr @str.140, i32 80)
  br label %if.end30.sink.split.i

if.else.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %19 = ptrtoint ptr %vub_name15.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %vub_name15.i, align 4
  br label %if.end30.sink.split.i

if.else16.i:                                      ; preds = %if.then
  %tobool2.not.not.i = xor i1 %tobool2.not.i, true
  %brmerge45.i = select i1 %tobool2.not.not.i, i1 true, i1 %tobool.not.i
  br i1 %brmerge45.i, label %if.else16.i.if.end_crit_edge, label %do.end23.i

if.else16.i.if.end_crit_edge:                     ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end23.i:                                       ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #17
  %20 = ptrtoint ptr %vub300 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vub300, align 4
  %dev25.i = getelementptr inbounds %struct.usb_device, ptr %21, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev25.i, ptr noundef nonnull @.str.75) #18
  %22 = ptrtoint ptr %card_present.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %card_present.i, align 1
  br label %if.end30.sink.split.i

if.end30.sink.split.i:                            ; preds = %do.end23.i, %if.else.i, %if.then14.i
  %.sink46.i = phi i32 [ 0, %do.end23.i ], [ 1, %if.else.i ], [ 1, %if.then14.i ]
  %mmc27.i = getelementptr inbounds %struct.vub300_mmc_host, ptr %vub300, i32 0, i32 32
  %23 = ptrtoint ptr %mmc27.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmc27.i, align 4
  tail call void @mmc_detect_change(ptr noundef %24, i32 noundef %.sink46.i) #15
  br label %if.end

if.end:                                           ; preds = %if.end30.sink.split.i, %if.else16.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @add_offloaded_reg(ptr nocapture noundef %vub300, ptr nocapture noundef readonly %register_access) unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %register_access to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %register_access, align 1
  %conv = zext i8 %1 to i32
  %and = shl nuw nsw i32 %conv, 15
  %shl = and i32 %and, 98304
  %arrayidx2 = getelementptr [4 x i8], ptr %register_access, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %3 to i32
  %shl5 = shl nuw nsw i32 %conv3, 7
  %or = or i32 %shl, %shl5
  %arrayidx7 = getelementptr [4 x i8], ptr %register_access, i32 0, i32 2
  %4 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx7, align 1
  %6 = lshr i8 %5, 1
  %7 = zext i8 %6 to i32
  %or10 = or i32 %or, %7
  %and14 = lshr i8 %1, 4
  %8 = and i8 %and14, 7
  %dynamic_register_count = getelementptr inbounds %struct.vub300_mmc_host, ptr %vub300, i32 0, i32 19
  %9 = ptrtoint ptr %dynamic_register_count to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dynamic_register_count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp.not94 = icmp eq i8 %10, 0
  %.pre = zext i8 %8 to i32
  br i1 %cmp.not94, label %entry.while.end_crit_edge, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

land.rhs:                                         ; preds = %if.else.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %dec96.in = phi i8 [ %dec96, %if.else.land.rhs_crit_edge ], [ %10, %entry.land.rhs_crit_edge ]
  %i.095 = phi i32 [ %add, %if.else.land.rhs_crit_edge ], [ 0, %entry.land.rhs_crit_edge ]
  %dec96 = add i8 %dec96.in, -1
  %idxprom = and i32 %i.095, 255
  %arrayidx19 = getelementptr %struct.vub300_mmc_host, ptr %vub300, i32 0, i32 26, i32 %idxprom
  %11 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %11)
  %bf.load = load i32, ptr %arrayidx19, align 4
  %12 = and i32 %bf.load, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp20.not = icmp eq i32 %12, 0
  br i1 %cmp20.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %bf.lshr26 = lshr i32 %bf.load, 29
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr26, i32 %.pre)
  %cmp28 = icmp eq i32 %bf.lshr26, %.pre
  %bf.lshr34 = lshr i32 %bf.load, 12
  %bf.clear35 = and i32 %bf.lshr34, 131071
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear35, i32 %or10)
  %cmp36 = icmp eq i32 %bf.clear35, %or10
  %or.cond = select i1 %cmp28, i1 %cmp36, i1 false
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %13 = and i32 %bf.load, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp44 = icmp eq i32 %13, 0
  br i1 %cmp44, label %if.then46, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then46:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %bf.set = or i32 %bf.load, 1024
  %14 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %bf.set, ptr %arrayidx19, align 4
  br label %if.end

if.end:                                           ; preds = %if.then46, %if.then.if.end_crit_edge
  %arrayidx52 = getelementptr %struct.offload_registers_access, ptr %register_access, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx52, align 1
  %response = getelementptr %struct.vub300_mmc_host, ptr %vub300, i32 0, i32 26, i32 %idxprom, i32 1
  %17 = ptrtoint ptr %response to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %response, align 4
  %arrayidx58 = getelementptr %struct.offload_registers_access, ptr %register_access, i32 0, i32 1, i32 3
  %18 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx58, align 1
  %conv59 = zext i8 %19 to i32
  %20 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %bf.load63 = load i32, ptr %arrayidx19, align 4
  %bf.shl = shl nuw nsw i32 %conv59, 2
  %bf.clear64 = and i32 %bf.load63, -1021
  %bf.set65 = or i32 %bf.clear64, %bf.shl
  store i32 %bf.set65, ptr %arrayidx19, align 4
  br label %cleanup

if.else:                                          ; preds = %while.body
  %add = add nuw nsw i32 %idxprom, 1
  %cmp.not = icmp eq i8 %dec96, 0
  br i1 %cmp.not, label %if.else.while.end_crit_edge, label %if.else.land.rhs_crit_edge

if.else.land.rhs_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs

if.else.while.end_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %if.else.while.end_crit_edge, %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  %arrayidx.i = getelementptr %struct.vub300_mmc_host, ptr %vub300, i32 0, i32 27, i32 %.pre
  %offload_point.i = getelementptr %struct.vub300_mmc_host, ptr %vub300, i32 0, i32 27, i32 %.pre, i32 1
  %21 = ptrtoint ptr %offload_point.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %offload_point.i, align 4
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i, align 4
  %25 = trunc i32 %22 to i8
  %conv4.i = add i8 %24, %25
  %26 = and i8 %conv4.i, 15
  %and.i = zext i8 %26 to i32
  %arrayidx9.i = getelementptr %struct.vub300_mmc_host, ptr %vub300, i32 0, i32 27, i32 %.pre, i32 2, i32 %and.i
  %27 = ptrtoint ptr %register_access to i32
  call void @__asan_loadN_noabort(i32 %27, i32 8)
  %28 = load i64, ptr %register_access, align 1
  %29 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 8)
  store i64 %28, ptr %arrayidx9.i, align 4
  %add15.i = add i8 %24, 1
  store i8 %add15.i, ptr %arrayidx.i, align 4
  %total_offload_count.i = getelementptr inbounds %struct.vub300_mmc_host, ptr %vub300, i32 0, i32 18
  %30 = ptrtoint ptr %total_offload_count.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %total_offload_count.i, align 4
  %add18.i = add i8 %31, 1
  store i8 %add18.i, ptr %total_offload_count.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_detect_change(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @download_offload_pseudocode(ptr noundef %vub300) unnamed_addr #2 align 64 {
entry:
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mmc = getelementptr inbounds %struct.vub300_mmc_host, ptr %vub300, i32 0, i32 32
  %0 = ptrtoint ptr %mmc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc, align 4
  %card1 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 37
  %2 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card1, align 4
  %sdio_funcs2 = getelementptr inbounds %struct.mmc_card, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %sdio_funcs2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sdio_funcs2, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #15
  %6 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %fw, align 4
  %vub_name = getelementptr inbounds %struct.vub300_mmc_host, ptr %vub300, i32 0, i32 5
  %cis = getelementptr inbounds %struct.mmc_card, ptr %3, i32 0, i32 30
  %7 = ptrtoint ptr %cis to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %cis, align 4
  %conv = zext i16 %8 to i32
  %device = getelementptr inbounds %struct.mmc_card, ptr %3, i32 0, i32 30, i32 1
  %9 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %device, align 2
  %conv4 = zext i16 %10 to i32
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %vub_name, i32 noundef 80, ptr noundef nonnull @.str.78, i32 noundef %conv, i32 noundef %conv4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp65 = icmp sgt i32 %5, 0
  br i1 %cmp65, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %n.067 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %l.066 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mmc_card, ptr %3, i32 0, i32 31, i32 %n.067
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %vub_name, i32 %l.066
  %sub = sub i32 80, %l.066
  %vendor8 = getelementptr inbounds %struct.sdio_func, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %vendor8 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vendor8, align 2
  %conv9 = zext i16 %14 to i32
  %device10 = getelementptr inbounds %struct.sdio_func, ptr %12, i32 0, i32 6
  %15 = ptrtoint ptr %device10 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %device10, align 4
  %conv11 = zext i16 %16 to i32
  %call12 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.79, i32 noundef %conv9, i32 noundef %conv11) #15
  %add = add i32 %call12, %l.066
  %inc = add nuw nsw i32 %n.067, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %l.0.lcssa = phi i32 [ %call, %entry.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %add.ptr15 = getelementptr i8, ptr %vub_name, i32 %l.0.lcssa
  %sub16 = sub i32 80, %l.0.lcssa
  %call17 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr15, i32 noundef %sub16, ptr noundef nonnull @.str.80)
  %17 = ptrtoint ptr %vub300 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vub300, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %18, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.81, ptr noundef %vub_name) #18
  %dev22 = getelementptr inbounds %struct.mmc_card, ptr %3, i32 0, i32 1
  %call23 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef %vub_name, ptr noundef %dev22) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.then, label %if.else39

if.then:                                          ; preds = %for.end
  %19 = call ptr @memcpy(ptr %vub_name, ptr @str.141, i32 80)
  %call32 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef %vub_name, ptr noundef %dev22) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.then35, label %if.else

if.then35:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %20 = call ptr @memcpy(ptr %vub_name, ptr @str.142, i32 80)
  br label %if.end40

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %21 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fw, align 4
  call fastcc void @__download_offload_pseudocode(ptr noundef %vub300, ptr noundef %22)
  %23 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %24) #15
  br label %if.end40

if.else39:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  %25 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fw, align 4
  call fastcc void @__download_offload_pseudocode(ptr noundef %vub300, ptr noundef %26)
  %27 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %28) #15
  br label %if.end40

if.end40:                                         ; preds = %if.else39, %if.else, %if.then35
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #15
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__download_offload_pseudocode(ptr noundef %vub300, ptr nocapture noundef readonly %fw) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %2 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw, align 4
  %4 = ptrtoint ptr %vub300 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vub300, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  %vub_name = getelementptr inbounds %struct.vub300_mmc_host, ptr %vub300, i32 0, i32 5
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.85, ptr noundef %vub_name) #18
  %uglygep = getelementptr i8, ptr %1, i32 %3
  %6 = add i32 %3, 1
  %uglygep423 = getelementptr i8, ptr %1, i32 %6
  br label %do.body3

do.body3:                                         ; preds = %land.rhs.do.body3_crit_edge, %entry
  %data.0 = phi ptr [ %1, %entry ], [ %incdec.ptr, %land.rhs.do.body3_crit_edge ]
  %size.0 = phi i32 [ %3, %entry ], [ %dec, %land.rhs.do.body3_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.0)
  %tobool.not = icmp eq i32 %size.0, 0
  br i1 %tobool.not, label %do.body3.do.end9_crit_edge, label %land.rhs

do.body3.do.end9_crit_edge:                       ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end9

land.rhs:                                         ; preds = %do.body3
  %dec = add i32 %size.0, -1
  %incdec.ptr = getelementptr i8, ptr %data.0, i32 1
  %7 = ptrtoint ptr %data.0 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %data.0, align 1
  %tobool5.not = icmp eq i8 %8, 0
  br i1 %tobool5.not, label %land.rhs.do.end9_crit_edge, label %land.rhs.do.body3_crit_edge

land.rhs.do.body3_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body3

land.rhs.do.end9_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end9

do.end9:                                          ; preds = %land.rhs.do.end9_crit_edge, %do.body3.do.end9_crit_edge
  %data.0.lcssa = phi ptr [ %uglygep, %do.body3.do.end9_crit_edge ], [ %data.0, %land.rhs.do.end9_crit_edge ]
  %incdec.ptr.lcssa = phi ptr [ %uglygep423, %do.body3.do.end9_crit_edge ], [ %incdec.ptr, %land.rhs.do.end9_crit_edge ]
  %dec.lcssa = phi i32 [ -1, %do.body3.do.end9_crit_edge ], [ %dec, %land.rhs.do.end9_crit_edge ]
  %9 = ptrtoint ptr %vub300 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vub300, align 4
  %dev11 = getelementptr inbounds %struct.usb_device, ptr %10, i32 0, i32 15
  %11 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data1, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev11, ptr noundef nonnull @.str.88, ptr noundef %12, ptr noundef %vub_name) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %dec.lcssa)
  %cmp = icmp slt i32 %dec.lcssa, 4
  br i1 %cmp, label %do.end18, label %if.end

do.end18:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #17
  %13 = ptrtoint ptr %vub300 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vub300, align 4
  %dev20 = getelementptr inbounds %struct.usb_device, ptr %14, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.91, ptr noundef %vub_name) #18
  %15 = call ptr @memcpy(ptr %vub_name, ptr @str.149, i32 80)
  br label %cleanup242

if.end:                                           ; preds = %do.end9
  %incdec.ptr25 = getelementptr i8, ptr %data.0.lcssa, i32 2
  %16 = ptrtoint ptr %incdec.ptr.lcssa to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %incdec.ptr.lcssa, align 1
  %conv29 = zext i8 %17 to i16
  %shl = shl nuw i16 %conv29, 8
  %incdec.ptr31 = getelementptr i8, ptr %data.0.lcssa, i32 3
  %18 = ptrtoint ptr %incdec.ptr25 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %incdec.ptr25, align 1
  %conv32 = zext i8 %19 to i16
  %add34 = or i16 %shl, %conv32
  %sub36 = add i32 %size.0, -3
  %conv37 = zext i16 %add34 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub36, i32 %conv37)
  %cmp38 = icmp ugt i32 %sub36, %conv37
  br i1 %cmp38, label %if.then40, label %do.end82

if.then40:                                        ; preds = %if.end
  %20 = add i16 %add34, 63
  %21 = and i16 %20, -64
  %conv42 = zext i16 %21 to i32
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv42, i32 noundef 3264) #19
  %tobool44.not = icmp eq ptr %call9.i, null
  br i1 %tobool44.not, label %cleanup75.thread, label %if.then45

if.then45:                                        ; preds = %if.then40
  %22 = call ptr @memcpy(ptr %call9.i, ptr %incdec.ptr31, i32 %conv37)
  %add.ptr = getelementptr i8, ptr %call9.i, i32 %conv37
  %sub50 = sub nsw i32 %conv42, %conv37
  %23 = call ptr @memset(ptr %add.ptr, i32 0, i32 %sub50)
  %24 = ptrtoint ptr %vub300 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vub300, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 8
  %shl.i = shl i32 %27, 8
  %or = or i32 %shl.i, -2147483648
  %call58 = tail call i32 @usb_control_msg(ptr noundef %25, i32 noundef %or, i8 noundef zeroext 20, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call9.i, i16 noundef zeroext %21, i32 noundef 1000) #15
  tail call void @kfree(ptr noundef nonnull %call9.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %if.then45.copy_error_message_crit_edge, label %if.end91

if.then45.copy_error_message_crit_edge:           ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_error_message

cleanup75.thread:                                 ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #17
  %28 = ptrtoint ptr %vub300 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vub300, align 4
  %dev67 = getelementptr inbounds %struct.usb_device, ptr %29, i32 0, i32 15
  %30 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev67, ptr noundef nonnull @.str.95, ptr noundef %31, ptr noundef %vub_name) #18
  %32 = call ptr @memcpy(ptr %vub_name, ptr @str.144, i32 80)
  br label %cleanup242

do.end82:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %33 = ptrtoint ptr %vub300 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vub300, align 4
  %dev84 = getelementptr inbounds %struct.usb_device, ptr %34, i32 0, i32 15
  %35 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev84, ptr noundef nonnull @.str.99, ptr noundef %36, ptr noundef %vub_name) #18
  %37 = call ptr @memcpy(ptr %vub_name, ptr @str.143, i32 80)
  br label %cleanup242

if.end91:                                         ; preds = %if.then45
  %add.ptr54 = getelementptr i8, ptr %incdec.ptr31, i32 %conv37
  %sub52 = sub nsw i32 %sub36, %conv37
  %incdec.ptr92 = getelementptr i8, ptr %add.ptr54, i32 1
  %38 = ptrtoint ptr %add.ptr54 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %add.ptr54, align 1
  %conv98 = zext i8 %39 to i16
  %shl99 = shl nuw i16 %conv98, 8
  %incdec.ptr101 = getelementptr i8, ptr %add.ptr54, i32 2
  %40 = ptrtoint ptr %incdec.ptr92 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %incdec.ptr92, align 1
  %conv102 = zext i8 %41 to i16
  %add104 = or i16 %shl99, %conv102
  %sub106 = add nsw i32 %sub52, -2
  %conv107 = zext i16 %add104 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub106, i32 %conv107)
  %cmp108 = icmp sgt i32 %sub106, %conv107
  br i1 %cmp108, label %if.then110, label %do.end161

if.then110:                                       ; preds = %if.end91
  %42 = add i16 %add104, 63
  %43 = and i16 %42, -64
  %conv114 = zext i16 %43 to i32
  %call9.i389 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv114, i32 noundef 3264) #19
  %tobool116.not = icmp eq ptr %call9.i389, null
  br i1 %tobool116.not, label %cleanup154.thread, label %if.then117

if.then117:                                       ; preds = %if.then110
  %44 = call ptr @memcpy(ptr %call9.i389, ptr %incdec.ptr101, i32 %conv107)
  %add.ptr121 = getelementptr i8, ptr %call9.i389, i32 %conv107
  %sub124 = sub nsw i32 %conv114, %conv107
  %45 = call ptr @memset(ptr %add.ptr121, i32 0, i32 %sub124)
  %add.ptr128 = getelementptr i8, ptr %incdec.ptr101, i32 %conv107
  %46 = ptrtoint ptr %vub300 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %vub300, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 8
  %shl.i393 = shl i32 %49, 8
  %or132 = or i32 %shl.i393, -2147483648
  %call133 = tail call i32 @usb_control_msg(ptr noundef %47, i32 noundef %or132, i8 noundef zeroext 21, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call9.i389, i16 noundef zeroext %43, i32 noundef 1000) #15
  tail call void @kfree(ptr noundef nonnull %call9.i389) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %cmp134 = icmp slt i32 %call133, 0
  br i1 %cmp134, label %if.then117.copy_error_message_crit_edge, label %if.end170

if.then117.copy_error_message_crit_edge:          ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #17
  br label %copy_error_message

cleanup154.thread:                                ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #17
  %50 = ptrtoint ptr %vub300 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %vub300, align 4
  %dev146 = getelementptr inbounds %struct.usb_device, ptr %51, i32 0, i32 15
  %52 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev146, ptr noundef nonnull @.str.103, ptr noundef %53, ptr noundef %vub_name) #18
  %54 = call ptr @memcpy(ptr %vub_name, ptr @str.147, i32 80)
  br label %cleanup242

do.end161:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #17
  %55 = ptrtoint ptr %vub300 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %vub300, align 4
  %dev163 = getelementptr inbounds %struct.usb_device, ptr %56, i32 0, i32 15
  %57 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev163, ptr noundef nonnull @.str.107, ptr noundef %58, ptr noundef %vub_name) #18
  %59 = call ptr @memcpy(ptr %vub_name, ptr @str.146, i32 80)
  br label %cleanup242

if.end170:                                        ; preds = %if.then117
  %60 = ptrtoint ptr %add.ptr128 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %add.ptr128, align 1
  %conv172 = zext i8 %61 to i32
  %62 = xor i32 %conv107, -1
  %sub176 = add i32 %sub106, %62
  %mul = shl nuw nsw i32 %conv172, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %sub176)
  %cmp178 = icmp eq i32 %mul, %sub176
  br i1 %cmp178, label %if.then180, label %do.end231

if.then180:                                       ; preds = %if.end170
  %dynamic_register_count = getelementptr inbounds %struct.vub300_mmc_host, ptr %vub300, i32 0, i32 19
  %63 = ptrtoint ptr %dynamic_register_count to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %61, ptr %dynamic_register_count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool183.not419 = icmp eq i8 %61, 0
  br i1 %tobool183.not419, label %if.then180.do.end221_crit_edge, label %if.then180.while.body_crit_edge

if.then180.while.body_crit_edge:                  ; preds = %if.then180
  br label %while.body

if.then180.do.end221_crit_edge:                   ; preds = %if.then180
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end221

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then180.while.body_crit_edge
  %i.0422 = phi i32 [ %add218, %while.body.while.body_crit_edge ], [ 0, %if.then180.while.body_crit_edge ]
  %I.0421 = phi i32 [ %dec182, %while.body.while.body_crit_edge ], [ %conv172, %if.then180.while.body_crit_edge ]
  %data.2.pn420 = phi ptr [ %incdec.ptr192, %while.body.while.body_crit_edge ], [ %add.ptr128, %if.then180.while.body_crit_edge ]
  %dec182 = add nsw i32 %I.0421, -1
  %data.3 = getelementptr i8, ptr %data.2.pn420, i32 1
  %incdec.ptr184 = getelementptr i8, ptr %data.2.pn420, i32 2
  %64 = ptrtoint ptr %data.3 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %data.3, align 1
  %arrayidx = getelementptr %struct.vub300_mmc_host, ptr %vub300, i32 0, i32 26, i32 %i.0422
  %66 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %66)
  %bf.load = load i32, ptr %arrayidx, align 4
  %bf.value = zext i8 %65 to i32
  %bf.shl = shl i32 %bf.value, 29
  %bf.clear = and i32 %bf.load, 536870911
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, ptr %arrayidx, align 4
  %incdec.ptr187 = getelementptr i8, ptr %data.2.pn420, i32 3
  %67 = ptrtoint ptr %incdec.ptr184 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %incdec.ptr184, align 1
  %conv188 = zext i8 %68 to i32
  %incdec.ptr192 = getelementptr i8, ptr %data.2.pn420, i32 4
  %69 = ptrtoint ptr %incdec.ptr187 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %incdec.ptr187, align 1
  %conv193 = zext i8 %70 to i32
  %71 = shl nuw nsw i32 %conv188, 16
  %72 = shl nuw nsw i32 %conv193, 8
  %73 = ptrtoint ptr %incdec.ptr192 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %incdec.ptr192, align 1
  %conv198 = zext i8 %74 to i32
  %.masked = and i32 %71, 65536
  %shl196.masked = or i32 %.masked, %72
  %bf.value204 = or i32 %shl196.masked, %conv198
  %bf.shl205 = shl nuw nsw i32 %bf.value204, 12
  %bf.clear206 = and i32 %bf.set, -536869889
  %bf.set207 = or i32 %bf.shl205, %bf.clear206
  %bf.set212 = or i32 %bf.set207, 2048
  store i32 %bf.set212, ptr %arrayidx, align 4
  %add218 = add nuw nsw i32 %i.0422, 1
  %tobool183.not = icmp eq i32 %dec182, 0
  br i1 %tobool183.not, label %while.body.do.end221_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

while.body.do.end221_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end221

do.end221:                                        ; preds = %while.body.do.end221_crit_edge, %if.then180.do.end221_crit_edge
  %75 = ptrtoint ptr %vub300 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %vub300, align 4
  %dev223 = getelementptr inbounds %struct.usb_device, ptr %76, i32 0, i32 15
  %77 = ptrtoint ptr %dynamic_register_count to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %dynamic_register_count, align 1
  %conv225 = zext i8 %78 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev223, ptr noundef nonnull @.str.111, i32 noundef %conv225) #18
  br label %cleanup242

do.end231:                                        ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #17
  %79 = ptrtoint ptr %vub300 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %vub300, align 4
  %dev233 = getelementptr inbounds %struct.usb_device, ptr %80, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev233, ptr noundef nonnull @.str.114, ptr noundef %vub_name) #18
  %81 = call ptr @memcpy(ptr %vub_name, ptr @str.148, i32 80)
  br label %cleanup242

copy_error_message:                               ; preds = %if.then117.copy_error_message_crit_edge, %if.then45.copy_error_message_crit_edge
  %82 = call ptr @memcpy(ptr %vub_name, ptr @str.145, i32 80)
  br label %cleanup242

cleanup242:                                       ; preds = %copy_error_message, %do.end231, %do.end221, %do.end161, %cleanup154.thread, %do.end82, %cleanup75.thread, %do.end18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @snoop_block_size_and_bus_width(ptr nocapture noundef %vub300, i32 noundef %cmd_arg) unnamed_addr #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %cmd_arg, -67109376
  %0 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.158)
  switch i32 %and, label %if.else186 [
    i32 -2147343872, label %if.then
    i32 -2147344384, label %if.then8
    i32 -2147212800, label %if.then22
    i32 -2147213312, label %if.then36
    i32 -2147081728, label %if.then50
    i32 -2147082240, label %if.then64
    i32 -2146950656, label %if.then78
    i32 -2146951168, label %if.then92
    i32 -2146819584, label %if.then106
    i32 -2146820096, label %if.then120
    i32 -2146688512, label %if.then134
    i32 -2146689024, label %if.then148
    i32 -2146557440, label %if.then162
    i32 -2146557952, label %if.then176
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx = getelementptr %struct.vub300_mmc_host, ptr %vub300, i32 0, i32 28, i32 1
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %arrayidx, align 2
  %3 = and i16 %2, 255
  %cmd_arg.tr278 = trunc i32 %cmd_arg to i16
  %4 = shl i16 %cmd_arg.tr278, 8
  %conv2 = or i16 %3, %4
  store i16 %conv2, ptr %arrayidx, align 2
  br label %if.end214

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx11 = getelementptr %struct.vub300_mmc_host, ptr %vub300, i32 0, i32 28, i32 1
  %5 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx11, align 2
  %7 = and i16 %6, -256
  %8 = trunc i32 %cmd_arg to i16
  %9 = and i16 %8, 255
  %conv15 = or i16 %7, %9
  store i16 %conv15, ptr %arrayidx11, align 2
  br label %if.end214

if.then22:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx25 = getelementptr %struct.vub300_mmc_host, ptr %vub300, i32 0, i32 28, i32 2
  %10 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx25, align 4
  %12 = and i16 %11, 255
  %cmd_arg.tr277 = trunc i32 %cmd_arg to i16
  %13 = shl i16 %cmd_arg.tr277, 8
  %conv29 = or i16 %12, %13
  store i16 %conv29, ptr %arrayidx25, align 4
  br label %if.end214

if.then36:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx39 = getelementptr %struct.vub300_mmc_host, ptr %vub300, i32 0, i32 28, i32 2
  %14 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx39, align 4
  %16 = and i16 %15, -256
  %17 = trunc i32 %cmd_arg to i16
  %18 = and i16 %17, 255
  %conv43 = or i16 %16, %18
  store i16 %conv43, ptr %arrayidx39, align 4
  br label %if.end214

if.then50:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx53 = getelementptr %struct.vub300_mmc_host, ptr %vub300, i32 0, i32 28, i32 3
  %19 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx53, align 2
  %21 = and i16 %20, 255
  %cmd_arg.tr276 = trunc i32 %cmd_arg to i16
  %22 = shl i16 %cmd_arg.tr276, 8
  %conv57 = or i16 %21, %22
  store i16 %conv57, ptr %arrayidx53, align 2
  br label %if.end214

if.then64:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx67 = getelementptr %struct.vub300_mmc_host, ptr %vub300, i32 0, i32 28, i32 3
  %23 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx67, align 2
  %25 = and i16 %24, -256
  %26 = trunc i32 %cmd_arg to i16
  %27 = and i16 %26, 255
  %conv71 = or i16 %25, %27
  store i16 %conv71, ptr %arrayidx67, align 2
  br label %if.end214

if.then78:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx81 = getelementptr %struct.vub300_mmc_host, ptr %vub300, i32 0, i32 28, i32 4
  %28 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx81, align 4
  %30 = and i16 %29, 255
  %cmd_arg.tr275 = trunc i32 %cmd_arg to i16
  %31 = shl i16 %cmd_arg.tr275, 8
  %conv85 = or i16 %30, %31
  store i16 %conv85, ptr %arrayidx81, align 4
  br label %if.end214

if.then92:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx95 = getelementptr %struct.vub300_mmc_host, ptr %vub300, i32 0, i32 28, i32 4
  %32 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx95, align 4
  %34 = and i16 %33, -256
  %35 = trunc i32 %cmd_arg to i16
  %36 = and i16 %35, 255
  %conv99 = or i16 %34, %36
  store i16 %conv99, ptr %arrayidx95, align 4
  br label %if.end214

if.then106:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx109 = getelementptr %struct.vub300_mmc_host, ptr %vub300, i32 0, i32 28, i32 5
  %37 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx109, align 2
  %39 = and i16 %38, 255
  %cmd_arg.tr274 = trunc i32 %cmd_arg to i16
  %40 = shl i16 %cmd_arg.tr274, 8
  %conv113 = or i16 %39, %40
  store i16 %conv113, ptr %arrayidx109, align 2
  br label %if.end214

if.then120:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx123 = getelementptr %struct.vub300_mmc_host, ptr %vub300, i32 0, i32 28, i32 5
  %41 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %arrayidx123, align 2
  %43 = and i16 %42, -256
  %44 = trunc i32 %cmd_arg to i16
  %45 = and i16 %44, 255
  %conv127 = or i16 %43, %45
  store i16 %conv127, ptr %arrayidx123, align 2
  br label %if.end214

if.then134:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx137 = getelementptr %struct.vub300_mmc_host, ptr %vub300, i32 0, i32 28, i32 6
  %46 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %arrayidx137, align 4
  %48 = and i16 %47, 255
  %cmd_arg.tr273 = trunc i32 %cmd_arg to i16
  %49 = shl i16 %cmd_arg.tr273, 8
  %conv141 = or i16 %48, %49
  store i16 %conv141, ptr %arrayidx137, align 4
  br label %if.end214

if.then148:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx151 = getelementptr %struct.vub300_mmc_host, ptr %vub300, i32 0, i32 28, i32 6
  %50 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %arrayidx151, align 4
  %52 = and i16 %51, -256
  %53 = trunc i32 %cmd_arg to i16
  %54 = and i16 %53, 255
  %conv155 = or i16 %52, %54
  store i16 %conv155, ptr %arrayidx151, align 4
  br label %if.end214

if.then162:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx165 = getelementptr %struct.vub300_mmc_host, ptr %vub300, i32 0, i32 28, i32 7
  %55 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %arrayidx165, align 2
  %57 = and i16 %56, 255
  %cmd_arg.tr = trunc i32 %cmd_arg to i16
  %58 = shl i16 %cmd_arg.tr, 8
  %conv169 = or i16 %57, %58
  store i16 %conv169, ptr %arrayidx165, align 2
  br label %if.end214

if.then176:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx179 = getelementptr %struct.vub300_mmc_host, ptr %vub300, i32 0, i32 28, i32 7
  %59 = ptrtoint ptr %arrayidx179 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %arrayidx179, align 2
  %61 = and i16 %60, -256
  %62 = trunc i32 %cmd_arg to i16
  %63 = and i16 %62, 255
  %conv183 = or i16 %61, %63
  store i16 %conv183, ptr %arrayidx179, align 2
  br label %if.end214

if.else186:                                       ; preds = %entry
  %and187 = and i32 %cmd_arg, -67109373
  %64 = zext i32 %and187 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.159)
  switch i32 %and187, label %if.else186.if.end214_crit_edge [
    i32 -2147480064, label %if.then190
    i32 -2147480062, label %if.then195
  ]

if.else186.if.end214_crit_edge:                   ; preds = %if.else186
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end214

if.then190:                                       ; preds = %if.else186
  call void @__sanitizer_cov_trace_pc() #17
  %bus_width = getelementptr inbounds %struct.vub300_mmc_host, ptr %vub300, i32 0, i32 17
  %65 = ptrtoint ptr %bus_width to i32
  call void @__asan_load1_noabort(i32 %65)
  %bf.load = load i8, ptr %bus_width, align 1
  %bf.clear = and i8 %bf.load, 15
  %bf.set = or i8 %bf.clear, 16
  store i8 %bf.set, ptr %bus_width, align 1
  br label %if.end214

if.then195:                                       ; preds = %if.else186
  call void @__sanitizer_cov_trace_pc() #17
  %bus_width196 = getelementptr inbounds %struct.vub300_mmc_host, ptr %vub300, i32 0, i32 17
  %66 = ptrtoint ptr %bus_width196 to i32
  call void @__asan_load1_noabort(i32 %66)
  %bf.load197 = load i8, ptr %bus_width196, align 1
  %bf.clear198 = and i8 %bf.load197, 15
  %bf.set199 = or i8 %bf.clear198, 64
  store i8 %bf.set199, ptr %bus_width196, align 1
  br label %if.end214

if.end214:                                        ; preds = %if.then195, %if.then190, %if.else186.if.end214_crit_edge, %if.then176, %if.then162, %if.then148, %if.then134, %if.then120, %if.then106, %if.then92, %if.then78, %if.then64, %if.then50, %if.then36, %if.then22, %if.then8, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @command_out_completed(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end10.sink.split_crit_edge

entry.if.end10.sink.split_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10.sink.split

if.else:                                          ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %cmnd_res_ep = getelementptr inbounds %struct.vub300_mmc_host, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %cmnd_res_ep to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cmnd_res_ep, align 1
  %conv = zext i8 %7 to i32
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %5, align 8
  %shl.i = shl i32 %9, 8
  %shl1.i = shl nuw nsw i32 %conv, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or1 = or i32 %or.i, -1073741696
  %command_res_urb = getelementptr inbounds %struct.vub300_mmc_host, ptr %1, i32 0, i32 35
  %10 = ptrtoint ptr %command_res_urb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %command_res_urb, align 4
  %resp = getelementptr inbounds %struct.vub300_mmc_host, ptr %1, i32 0, i32 39
  %dev1.i = getelementptr inbounds %struct.urb, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %5, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %11, i32 0, i32 10
  %13 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or1, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %11, i32 0, i32 14
  %14 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %resp, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %11, i32 0, i32 19
  %15 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 123, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %11, i32 0, i32 28
  %16 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @command_res_completed, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %11, i32 0, i32 27
  %17 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %1, ptr %context4.i, align 4
  %18 = load ptr, ptr %command_res_urb, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %18, i32 0, i32 20
  %19 = ptrtoint ptr %actual_length to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %actual_length, align 4
  %20 = load ptr, ptr %command_res_urb, align 4
  %call5 = tail call i32 @usb_submit_urb(ptr noundef %20, i32 noundef 2592) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp eq i32 %call5, 0
  br i1 %cmp, label %if.else.if.end10_crit_edge, label %if.else.if.end10.sink.split_crit_edge

if.else.if.end10.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10.sink.split

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

if.end10.sink.split:                              ; preds = %if.else.if.end10.sink.split_crit_edge, %entry.if.end10.sink.split_crit_edge
  %command_complete9 = getelementptr inbounds %struct.vub300_mmc_host, ptr %1, i32 0, i32 36
  tail call void @complete(ptr noundef %command_complete9) #15
  br label %if.end10

if.end10:                                         ; preds = %if.end10.sink.split, %if.else.if.end10_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @command_res_completed(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end25_crit_edge

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25

if.else:                                          ; preds = %entry
  %command_res_urb = getelementptr inbounds %struct.vub300_mmc_host, ptr %1, i32 0, i32 35
  %4 = ptrtoint ptr %command_res_urb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %command_res_urb, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 20
  %6 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.else.if.end25_crit_edge, label %if.else2

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25

if.else2:                                         ; preds = %if.else
  %data = getelementptr inbounds %struct.vub300_mmc_host, ptr %1, i32 0, i32 31
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %if.else2.if.end25_crit_edge, label %if.else5

if.else2.if.end25_crit_edge:                      ; preds = %if.else2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25

if.else5:                                         ; preds = %if.else2
  %header_type = getelementptr inbounds %struct.vub300_mmc_host, ptr %1, i32 0, i32 39, i32 0, i32 1
  %10 = ptrtoint ptr %header_type to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %header_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %11)
  %cmp6.not = icmp eq i8 %11, 2
  br i1 %cmp6.not, label %if.else9, label %if.else5.if.end25_crit_edge

if.else5.if.end25_crit_edge:                      ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25

if.else9:                                         ; preds = %if.else5
  %urb10 = getelementptr inbounds %struct.vub300_mmc_host, ptr %1, i32 0, i32 33
  %12 = ptrtoint ptr %urb10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %urb10, align 4
  %tobool11.not = icmp eq ptr %13, null
  %error_code18 = getelementptr inbounds %struct.vub300_mmc_host, ptr %1, i32 0, i32 39, i32 0, i32 3
  %14 = ptrtoint ptr %error_code18 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %error_code18, align 1
  %switch.tableidx45 = add i8 %15, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %switch.tableidx45)
  %16 = icmp ult i8 %switch.tableidx45, 33
  br i1 %tobool11.not, label %if.else16, label %if.then12

if.then12:                                        ; preds = %if.else9
  br i1 %16, label %switch.lookup, label %if.then12.vub300_response_error.exit_crit_edge

if.then12.vub300_response_error.exit_crit_edge:   ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #17
  br label %vub300_response_error.exit

switch.lookup:                                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #17
  %17 = sext i8 %switch.tableidx45 to i32
  %switch.gep = getelementptr inbounds [33 x i32], ptr @switch.table.command_res_completed, i32 0, i32 %17
  %18 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %18)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %vub300_response_error.exit

vub300_response_error.exit:                       ; preds = %switch.lookup, %if.then12.vub300_response_error.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ -19, %if.then12.vub300_response_error.exit_crit_edge ]
  %cmd = getelementptr inbounds %struct.vub300_mmc_host, ptr %1, i32 0, i32 29
  %19 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cmd, align 4
  %error = getelementptr inbounds %struct.mmc_command, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %retval.0.i, ptr %error, align 4
  %22 = ptrtoint ptr %urb10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %urb10, align 4
  %call15 = tail call i32 @usb_unlink_urb(ptr noundef %23) #15
  br label %if.end25

if.else16:                                        ; preds = %if.else9
  br i1 %16, label %switch.lookup44, label %if.else16.vub300_response_error.exit43_crit_edge

if.else16.vub300_response_error.exit43_crit_edge: ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #17
  br label %vub300_response_error.exit43

switch.lookup44:                                  ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #17
  %24 = sext i8 %switch.tableidx45 to i32
  %switch.gep46 = getelementptr inbounds [33 x i32], ptr @switch.table.command_res_completed.150, i32 0, i32 %24
  %25 = ptrtoint ptr %switch.gep46 to i32
  call void @__asan_load4_noabort(i32 %25)
  %switch.load47 = load i32, ptr %switch.gep46, align 4
  br label %vub300_response_error.exit43

vub300_response_error.exit43:                     ; preds = %switch.lookup44, %if.else16.vub300_response_error.exit43_crit_edge
  %retval.0.i42 = phi i32 [ %switch.load47, %switch.lookup44 ], [ -19, %if.else16.vub300_response_error.exit43_crit_edge ]
  %cmd20 = getelementptr inbounds %struct.vub300_mmc_host, ptr %1, i32 0, i32 29
  %26 = ptrtoint ptr %cmd20 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cmd20, align 4
  %error21 = getelementptr inbounds %struct.mmc_command, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %error21 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %retval.0.i42, ptr %error21, align 4
  %sg_request = getelementptr inbounds %struct.vub300_mmc_host, ptr %1, i32 0, i32 41
  tail call void @usb_sg_cancel(ptr noundef %sg_request) #15
  br label %if.end25

if.end25:                                         ; preds = %vub300_response_error.exit43, %vub300_response_error.exit, %if.else5.if.end25_crit_edge, %if.else2.if.end25_crit_edge, %if.else.if.end25_crit_edge, %entry.if.end25_crit_edge
  %command_complete = getelementptr inbounds %struct.vub300_mmc_host, ptr %1, i32 0, i32 36
  tail call void @complete(ptr noundef %command_complete) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @vub300_response_error(i8 noundef zeroext %error_code) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i8 %error_code, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %switch.tableidx)
  %0 = icmp ult i8 %switch.tableidx, 33
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %1 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [33 x i32], ptr @switch.table.vub300_response_error, i32 0, i32 %1
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %2)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi i32 [ %switch.load, %switch.lookup ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_unlink_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_sg_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_sg_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_sg_wait(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vub300_usb_bulk_msg(ptr nocapture noundef %vub300, i32 noundef %pipe, ptr noundef %data, i32 noundef %len, ptr nocapture noundef writeonly %actual_length, i32 noundef %timeout_msecs) unnamed_addr #2 align 64 {
entry:
  %done = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vub300 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vub300, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %done) #15
  %2 = getelementptr inbounds i8, ptr %done, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 52)
  %call = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #15
  %urb = getelementptr inbounds %struct.vub300_mmc_host, ptr %vub300, i32 0, i32 33
  %4 = ptrtoint ptr %urb to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %urb, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 8
  %5 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %1, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 10
  %6 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %pipe, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 14
  %7 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %data, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 19
  %8 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %len, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 28
  %9 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @vub300_usb_bulk_msg_completion, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call, i32 0, i32 27
  %10 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %context4.i, align 4
  %11 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %done, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.70, ptr noundef nonnull @init_completion.__key) #15
  %12 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %urb, align 4
  %context = getelementptr inbounds %struct.urb, ptr %13, i32 0, i32 27
  %14 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %done, ptr %context, align 4
  %15 = load ptr, ptr %urb, align 4
  %actual_length6 = getelementptr inbounds %struct.urb, ptr %15, i32 0, i32 20
  %16 = ptrtoint ptr %actual_length6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %actual_length6, align 4
  %17 = load ptr, ptr %urb, align 4
  %call8 = call i32 @usb_submit_urb(ptr noundef %17, i32 noundef 3264) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.else.i, label %if.end.out_crit_edge, !prof !317

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.else.i:                                        ; preds = %if.end
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %timeout_msecs) #15
  %call15 = call i32 @wait_for_completion_timeout(ptr noundef nonnull %done, i32 noundef %call2.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  %18 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %urb, align 4
  br i1 %tobool16.not, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @usb_kill_urb(ptr noundef %19) #15
  br label %out

if.else:                                          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  %status = getelementptr inbounds %struct.urb, ptr %19, i32 0, i32 12
  %20 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %status, align 4
  br label %out

out:                                              ; preds = %if.else, %if.then17, %if.end.out_crit_edge
  %retval1.0 = phi i32 [ %call8, %if.end.out_crit_edge ], [ %21, %if.else ], [ -110, %if.then17 ]
  %22 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %urb, align 4
  %actual_length22 = getelementptr inbounds %struct.urb, ptr %23, i32 0, i32 20
  %24 = ptrtoint ptr %actual_length22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %actual_length22, align 4
  %26 = ptrtoint ptr %actual_length to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %actual_length, align 4
  %27 = load ptr, ptr %urb, align 4
  call void @usb_free_urb(ptr noundef %27) #15
  %28 = ptrtoint ptr %urb to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %urb, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %done) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_from_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vub300_usb_bulk_msg_completion(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  tail call void @complete(ptr noundef %1) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_lock_device_for_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_reset_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 133)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 133)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !28, !30, !32, !33, !35, !37, !38, !40, !42, !44, !46, !48, !50, !51, !53, !55, !57, !59, !61, !63, !65, !67, !68, !69, !70, !71, !72, !73, !75, !76, !78, !79, !81, !83, !85, !87, !88, !89, !90, !91, !92, !93, !95, !96, !97, !98, !100, !101, !102, !104, !105, !107, !108, !110, !111, !112, !113, !114, !115, !117, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !133, !134, !136, !137, !138, !140, !141, !142, !143, !144, !145, !146, !147, !148, !150, !151, !152, !153, !155, !156, !158, !159, !161, !162, !164, !165, !167, !168, !169, !171, !172, !173, !175, !177, !178, !179, !180, !182, !183, !185, !186, !188, !189, !190, !191, !193, !195, !196, !197, !199, !201, !203, !205, !207, !208, !209, !210, !212, !214, !216, !217, !218, !219, !221, !222, !223, !225, !226, !227, !229, !231, !232, !233, !235, !237, !238, !239, !241, !243, !244, !245, !247, !249, !250, !251, !253, !255, !256, !257, !259, !260, !261, !263, !265, !267, !268, !269, !270, !272, !273, !274, !275, !277, !279, !280, !281, !282, !284, !285, !287, !288, !289, !291, !293, !294, !295, !297, !299, !300, !301, !303, !304}
!llvm.module.flags = !{!305, !306, !307, !308, !309, !310, !311, !312}
!llvm.ident = !{!313}

!0 = !{ptr @__param_limit_speed_to_24_MHz, !1, !"__param_limit_speed_to_24_MHz", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/vub300.c", i32 224, i32 1}
!2 = !{ptr @__UNIQUE_ID_limit_speed_to_24_MHztype276, !1, !"__UNIQUE_ID_limit_speed_to_24_MHztype276", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_limit_speed_to_24_MHz277, !4, !"__UNIQUE_ID_limit_speed_to_24_MHz277", i1 false, i1 false}
!4 = !{!"../drivers/mmc/host/vub300.c", i32 225, i32 1}
!5 = !{ptr @__param_pad_input_to_usb_pkt, !6, !"__param_pad_input_to_usb_pkt", i1 false, i1 false}
!6 = !{!"../drivers/mmc/host/vub300.c", i32 228, i32 1}
!7 = !{ptr @__UNIQUE_ID_pad_input_to_usb_pkttype278, !6, !"__UNIQUE_ID_pad_input_to_usb_pkttype278", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_pad_input_to_usb_pkt279, !9, !"__UNIQUE_ID_pad_input_to_usb_pkt279", i1 false, i1 false}
!9 = !{!"../drivers/mmc/host/vub300.c", i32 229, i32 1}
!10 = !{ptr @__param_disable_offload_processing, !11, !"__param_disable_offload_processing", i1 false, i1 false}
!11 = !{!"../drivers/mmc/host/vub300.c", i32 233, i32 1}
!12 = !{ptr @__UNIQUE_ID_disable_offload_processingtype280, !11, !"__UNIQUE_ID_disable_offload_processingtype280", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_disable_offload_processing281, !14, !"__UNIQUE_ID_disable_offload_processing281", i1 false, i1 false}
!14 = !{!"../drivers/mmc/host/vub300.c", i32 234, i32 1}
!15 = !{ptr @__param_force_1_bit_data_xfers, !16, !"__param_force_1_bit_data_xfers", i1 false, i1 false}
!16 = !{!"../drivers/mmc/host/vub300.c", i32 237, i32 1}
!17 = !{ptr @__UNIQUE_ID_force_1_bit_data_xferstype282, !16, !"__UNIQUE_ID_force_1_bit_data_xferstype282", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_force_1_bit_data_xfers283, !19, !"__UNIQUE_ID_force_1_bit_data_xfers283", i1 false, i1 false}
!19 = !{!"../drivers/mmc/host/vub300.c", i32 238, i32 1}
!20 = !{ptr @__param_force_polling_for_irqs, !21, !"__param_force_polling_for_irqs", i1 false, i1 false}
!21 = !{!"../drivers/mmc/host/vub300.c", i32 242, i32 1}
!22 = !{ptr @__UNIQUE_ID_force_polling_for_irqstype284, !21, !"__UNIQUE_ID_force_polling_for_irqstype284", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_force_polling_for_irqs285, !24, !"__UNIQUE_ID_force_polling_for_irqs285", i1 false, i1 false}
!24 = !{!"../drivers/mmc/host/vub300.c", i32 243, i32 1}
!25 = !{ptr @__param_firmware_irqpoll_timeout, !26, !"__param_firmware_irqpoll_timeout", i1 false, i1 false}
!26 = !{!"../drivers/mmc/host/vub300.c", i32 246, i32 1}
!27 = !{ptr @__UNIQUE_ID_firmware_irqpoll_timeouttype286, !26, !"__UNIQUE_ID_firmware_irqpoll_timeouttype286", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_firmware_irqpoll_timeout287, !29, !"__UNIQUE_ID_firmware_irqpoll_timeout287", i1 false, i1 false}
!29 = !{!"../drivers/mmc/host/vub300.c", i32 247, i32 1}
!30 = !{ptr @__param_force_max_req_size, !31, !"__param_force_max_req_size", i1 false, i1 false}
!31 = !{!"../drivers/mmc/host/vub300.c", i32 250, i32 1}
!32 = !{ptr @__UNIQUE_ID_force_max_req_sizetype288, !31, !"__UNIQUE_ID_force_max_req_sizetype288", i1 false, i1 false}
!33 = !{ptr @__UNIQUE_ID_force_max_req_size289, !34, !"__UNIQUE_ID_force_max_req_size289", i1 false, i1 false}
!34 = !{!"../drivers/mmc/host/vub300.c", i32 251, i32 1}
!35 = !{ptr @__param_firmware_rom_wait_states, !36, !"__param_firmware_rom_wait_states", i1 false, i1 false}
!36 = !{!"../drivers/mmc/host/vub300.c", i32 259, i32 1}
!37 = !{ptr @__UNIQUE_ID_firmware_rom_wait_statestype290, !36, !"__UNIQUE_ID_firmware_rom_wait_statestype290", i1 false, i1 false}
!38 = !{ptr @__UNIQUE_ID_firmware_rom_wait_states291, !39, !"__UNIQUE_ID_firmware_rom_wait_states291", i1 false, i1 false}
!39 = !{!"../drivers/mmc/host/vub300.c", i32 260, i32 1}
!40 = !{ptr @__initcall__kmod_vub300__293_2465_vub300_init6, !41, !"__initcall__kmod_vub300__293_2465_vub300_init6", i1 false, i1 false}
!41 = !{!"../drivers/mmc/host/vub300.c", i32 2465, i32 1}
!42 = !{ptr @__exitcall_vub300_exit, !43, !"__exitcall_vub300_exit", i1 false, i1 false}
!43 = !{!"../drivers/mmc/host/vub300.c", i32 2466, i32 1}
!44 = !{ptr @__UNIQUE_ID_author294, !45, !"__UNIQUE_ID_author294", i1 false, i1 false}
!45 = !{!"../drivers/mmc/host/vub300.c", i32 2468, i32 1}
!46 = !{ptr @__UNIQUE_ID_description295, !47, !"__UNIQUE_ID_description295", i1 false, i1 false}
!47 = !{!"../drivers/mmc/host/vub300.c", i32 2469, i32 1}
!48 = !{ptr @__UNIQUE_ID_file296, !49, !"__UNIQUE_ID_file296", i1 false, i1 false}
!49 = !{!"../drivers/mmc/host/vub300.c", i32 2470, i32 1}
!50 = !{ptr @__UNIQUE_ID_license297, !49, !"__UNIQUE_ID_license297", i1 false, i1 false}
!51 = !{ptr @limit_speed_to_24_MHz, !52, !"limit_speed_to_24_MHz", i1 false, i1 false}
!52 = !{!"../drivers/mmc/host/vub300.c", i32 223, i32 13}
!53 = !{ptr @pad_input_to_usb_pkt, !54, !"pad_input_to_usb_pkt", i1 false, i1 false}
!54 = !{!"../drivers/mmc/host/vub300.c", i32 227, i32 13}
!55 = !{ptr @disable_offload_processing, !56, !"disable_offload_processing", i1 false, i1 false}
!56 = !{!"../drivers/mmc/host/vub300.c", i32 232, i32 13}
!57 = !{ptr @force_1_bit_data_xfers, !58, !"force_1_bit_data_xfers", i1 false, i1 false}
!58 = !{!"../drivers/mmc/host/vub300.c", i32 236, i32 13}
!59 = !{ptr @force_polling_for_irqs, !60, !"force_polling_for_irqs", i1 false, i1 false}
!60 = !{!"../drivers/mmc/host/vub300.c", i32 241, i32 13}
!61 = !{ptr @cmndworkqueue, !62, !"cmndworkqueue", i1 false, i1 false}
!62 = !{!"../drivers/mmc/host/vub300.c", i32 273, i32 33}
!63 = !{ptr @pollworkqueue, !64, !"pollworkqueue", i1 false, i1 false}
!64 = !{!"../drivers/mmc/host/vub300.c", i32 274, i32 33}
!65 = !{ptr @deadworkqueue, !66, !"deadworkqueue", i1 false, i1 false}
!66 = !{!"../drivers/mmc/host/vub300.c", i32 275, i32 33}
!67 = !{ptr @__param_str_limit_speed_to_24_MHz, !1, !"__param_str_limit_speed_to_24_MHz", i1 false, i1 false}
!68 = !{ptr @__param_str_pad_input_to_usb_pkt, !6, !"__param_str_pad_input_to_usb_pkt", i1 false, i1 false}
!69 = !{ptr @__param_str_disable_offload_processing, !11, !"__param_str_disable_offload_processing", i1 false, i1 false}
!70 = !{ptr @__param_str_force_1_bit_data_xfers, !16, !"__param_str_force_1_bit_data_xfers", i1 false, i1 false}
!71 = !{ptr @__param_str_force_polling_for_irqs, !21, !"__param_str_force_polling_for_irqs", i1 false, i1 false}
!72 = !{ptr @__param_str_firmware_irqpoll_timeout, !26, !"__param_str_firmware_irqpoll_timeout", i1 false, i1 false}
!73 = !{ptr @firmware_irqpoll_timeout, !74, !"firmware_irqpoll_timeout", i1 false, i1 false}
!74 = !{!"../drivers/mmc/host/vub300.c", i32 245, i32 12}
!75 = !{ptr @__param_str_force_max_req_size, !31, !"__param_str_force_max_req_size", i1 false, i1 false}
!76 = !{ptr @force_max_req_size, !77, !"force_max_req_size", i1 false, i1 false}
!77 = !{!"../drivers/mmc/host/vub300.c", i32 249, i32 12}
!78 = !{ptr @__param_str_firmware_rom_wait_states, !36, !"__param_str_firmware_rom_wait_states", i1 false, i1 false}
!79 = !{ptr @firmware_rom_wait_states, !80, !"firmware_rom_wait_states", i1 false, i1 false}
!80 = !{!"../drivers/mmc/host/vub300.c", i32 256, i32 12}
!81 = !{ptr @.str, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/mmc/host/vub300.c", i32 2403, i32 10}
!83 = !{ptr @vub300_driver, !84, !"vub300_driver", i1 false, i1 false}
!84 = !{!"../drivers/mmc/host/vub300.c", i32 2402, i32 26}
!85 = !{ptr @.str.1, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/mmc/host/vub300.c", i32 2099, i32 2}
!87 = !{ptr @.str.2, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.3, !86, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.4, !86, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.5, !86, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @vub300_probe._entry, !86, !"_entry", i1 false, i1 false}
!92 = !{ptr @vub300_probe._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.7, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/mmc/host/vub300.c", i32 2117, i32 3}
!95 = !{ptr @.str.8, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @vub300_probe._entry.6, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @vub300_probe._entry_ptr.9, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.11, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/mmc/host/vub300.c", i32 2136, i32 3}
!100 = !{ptr @vub300_probe._entry.10, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @vub300_probe._entry_ptr.12, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @vub300_probe.__key, !103, !"__key", i1 false, i1 false}
!103 = !{!"../drivers/mmc/host/vub300.c", i32 2177, i32 2}
!104 = !{ptr @.str.13, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @vub300_probe.__key.14, !106, !"__key", i1 false, i1 false}
!106 = !{!"../drivers/mmc/host/vub300.c", i32 2178, i32 2}
!107 = !{ptr @.str.15, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.17, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/mmc/host/vub300.c", i32 2221, i32 3}
!110 = !{ptr @vub300_probe._entry.16, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @vub300_probe._entry_ptr.18, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.19, !109, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.20, !109, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.21, !109, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.23, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/mmc/host/vub300.c", i32 2236, i32 5}
!117 = !{ptr @.str.24, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @vub300_probe._entry.22, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @vub300_probe._entry_ptr.25, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.27, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/mmc/host/vub300.c", i32 2248, i32 5}
!122 = !{ptr @vub300_probe._entry.26, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @vub300_probe._entry_ptr.28, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.30, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/mmc/host/vub300.c", i32 2253, i32 4}
!126 = !{ptr @vub300_probe._entry.29, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @vub300_probe._entry_ptr.31, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.33, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/mmc/host/vub300.c", i32 2260, i32 3}
!130 = !{ptr @vub300_probe._entry.32, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @vub300_probe._entry_ptr.34, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.35, !129, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.36, !129, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.38, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/mmc/host/vub300.c", i32 2268, i32 3}
!136 = !{ptr @vub300_probe._entry.37, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @vub300_probe._entry_ptr.39, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.41, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/mmc/host/vub300.c", i32 2288, i32 2}
!140 = !{ptr @vub300_probe._entry.40, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @vub300_probe._entry_ptr.42, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.43, !139, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.44, !139, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.45, !139, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.46, !139, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @.str.47, !139, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.48, !139, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @vub300_probe.__key.49, !149, !"__key", i1 false, i1 false}
!149 = !{!"../drivers/mmc/host/vub300.c", i32 2312, i32 2}
!150 = !{ptr @.str.50, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @vub300_probe.__key.51, !149, !"__key", i1 false, i1 false}
!152 = !{ptr @.str.52, !149, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @vub300_probe.__key.53, !154, !"__key", i1 false, i1 false}
!154 = !{!"../drivers/mmc/host/vub300.c", i32 2313, i32 2}
!155 = !{ptr @.str.54, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @vub300_probe.__key.55, !157, !"__key", i1 false, i1 false}
!157 = !{!"../drivers/mmc/host/vub300.c", i32 2314, i32 2}
!158 = !{ptr @.str.56, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @vub300_probe.__key.57, !160, !"__key", i1 false, i1 false}
!160 = !{!"../drivers/mmc/host/vub300.c", i32 2316, i32 2}
!161 = !{ptr @.str.58, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @vub300_probe.__key.59, !163, !"__key", i1 false, i1 false}
!163 = !{!"../drivers/mmc/host/vub300.c", i32 2318, i32 2}
!164 = !{ptr @.str.60, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @.str.62, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/mmc/host/vub300.c", i32 2323, i32 3}
!167 = !{ptr @vub300_probe._entry.61, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @vub300_probe._entry_ptr.63, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.65, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/mmc/host/vub300.c", i32 2328, i32 3}
!171 = !{ptr @vub300_probe._entry.64, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @vub300_probe._entry_ptr.66, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @vub300_mmc_ops, !174, !"vub300_mmc_ops", i1 false, i1 false}
!174 = !{!"../drivers/mmc/host/vub300.c", i32 2073, i32 34}
!175 = !{ptr @.str.67, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/mmc/host/vub300.c", i32 1996, i32 3}
!177 = !{ptr @.str.68, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @__set_clock_speed._entry, !176, !"_entry", i1 false, i1 false}
!179 = !{ptr @__set_clock_speed._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.69, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/mmc/host/vub300.c", i32 1999, i32 3}
!182 = !{ptr @__set_clock_speed.__UNIQUE_ID_ddebug292, !181, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!183 = !{ptr @init_completion.__key, !184, !"__key", i1 false, i1 false}
!184 = !{!"../include/linux/completion.h", i32 87, i32 2}
!185 = !{ptr @.str.70, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @.str.71, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/mmc/host/vub300.c", i32 511, i32 3}
!188 = !{ptr @.str.72, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @new_system_port_status._entry, !187, !"_entry", i1 false, i1 false}
!190 = !{ptr @new_system_port_status._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!191 = distinct !{null, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/mmc/host/vub300.c", i32 515, i32 30}
!193 = !{ptr @.str.75, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/mmc/host/vub300.c", i32 521, i32 3}
!195 = !{ptr @new_system_port_status._entry.74, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @new_system_port_status._entry_ptr.76, !194, !"_entry_ptr", i1 false, i1 false}
!197 = distinct !{null, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/mmc/host/vub300.c", i32 1760, i32 30}
!199 = !{ptr @.str.78, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/mmc/host/vub300.c", i32 1361, i32 5}
!201 = !{ptr @.str.79, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/mmc/host/vub300.c", i32 1367, i32 40}
!203 = !{ptr @.str.80, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/mmc/host/vub300.c", i32 1370, i32 63}
!205 = !{ptr @.str.81, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/mmc/host/vub300.c", i32 1371, i32 2}
!207 = !{ptr @.str.82, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @download_offload_pseudocode._entry, !206, !"_entry", i1 false, i1 false}
!209 = !{ptr @download_offload_pseudocode._entry_ptr, !206, !"_entry_ptr", i1 false, i1 false}
!210 = distinct !{null, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/mmc/host/vub300.c", i32 1375, i32 29}
!212 = distinct !{null, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/mmc/host/vub300.c", i32 1380, i32 5}
!214 = !{ptr @.str.85, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/mmc/host/vub300.c", i32 1208, i32 2}
!216 = !{ptr @.str.86, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @__download_offload_pseudocode._entry, !215, !"_entry", i1 false, i1 false}
!218 = !{ptr @__download_offload_pseudocode._entry_ptr, !215, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.88, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/mmc/host/vub300.c", i32 1213, i32 2}
!221 = !{ptr @__download_offload_pseudocode._entry.87, !220, !"_entry", i1 false, i1 false}
!222 = !{ptr @__download_offload_pseudocode._entry_ptr.89, !220, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.91, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/mmc/host/vub300.c", i32 1216, i32 3}
!225 = !{ptr @__download_offload_pseudocode._entry.90, !224, !"_entry", i1 false, i1 false}
!226 = !{ptr @__download_offload_pseudocode._entry_ptr.92, !224, !"_entry_ptr", i1 false, i1 false}
!227 = distinct !{null, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/mmc/host/vub300.c", i32 1219, i32 29}
!229 = !{ptr @.str.95, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/mmc/host/vub300.c", i32 1249, i32 4}
!231 = !{ptr @__download_offload_pseudocode._entry.94, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @__download_offload_pseudocode._entry_ptr.96, !230, !"_entry_ptr", i1 false, i1 false}
!233 = distinct !{null, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/mmc/host/vub300.c", i32 1254, i32 5}
!235 = !{ptr @.str.99, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/mmc/host/vub300.c", i32 1259, i32 3}
!237 = !{ptr @__download_offload_pseudocode._entry.98, !236, !"_entry", i1 false, i1 false}
!238 = !{ptr @__download_offload_pseudocode._entry_ptr.100, !236, !"_entry_ptr", i1 false, i1 false}
!239 = distinct !{null, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/mmc/host/vub300.c", i32 1262, i32 29}
!241 = !{ptr @.str.103, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/mmc/host/vub300.c", i32 1292, i32 4}
!243 = !{ptr @__download_offload_pseudocode._entry.102, !242, !"_entry", i1 false, i1 false}
!244 = !{ptr @__download_offload_pseudocode._entry_ptr.104, !242, !"_entry_ptr", i1 false, i1 false}
!245 = distinct !{null, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/mmc/host/vub300.c", i32 1297, i32 5}
!247 = !{ptr @.str.107, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/mmc/host/vub300.c", i32 1302, i32 3}
!249 = !{ptr @__download_offload_pseudocode._entry.106, !248, !"_entry", i1 false, i1 false}
!250 = !{ptr @__download_offload_pseudocode._entry_ptr.108, !248, !"_entry_ptr", i1 false, i1 false}
!251 = distinct !{null, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/mmc/host/vub300.c", i32 1305, i32 29}
!253 = !{ptr @.str.111, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/mmc/host/vub300.c", i32 1331, i32 3}
!255 = !{ptr @__download_offload_pseudocode._entry.110, !254, !"_entry", i1 false, i1 false}
!256 = !{ptr @__download_offload_pseudocode._entry_ptr.112, !254, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.114, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/mmc/host/vub300.c", i32 1336, i32 3}
!259 = !{ptr @__download_offload_pseudocode._entry.113, !258, !"_entry", i1 false, i1 false}
!260 = !{ptr @__download_offload_pseudocode._entry_ptr.115, !258, !"_entry_ptr", i1 false, i1 false}
!261 = distinct !{null, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/mmc/host/vub300.c", i32 1339, i32 29}
!263 = distinct !{null, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/mmc/host/vub300.c", i32 1347, i32 28}
!265 = !{ptr @.str.118, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/mmc/host/vub300.c", i32 907, i32 5}
!267 = !{ptr @.str.119, !266, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @send_command._entry, !266, !"_entry", i1 false, i1 false}
!269 = !{ptr @send_command._entry_ptr, !266, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.120, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/mmc/host/vub300.c", i32 2365, i32 4}
!272 = !{ptr @.str.121, !271, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @vub300_disconnect._entry, !271, !"_entry", i1 false, i1 false}
!274 = !{ptr @vub300_disconnect._entry_ptr, !271, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @vub300_table, !276, !"vub300_table", i1 false, i1 false}
!276 = !{!"../drivers/mmc/host/vub300.c", i32 266, i32 35}
!277 = !{ptr @.str.122, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/mmc/host/vub300.c", i32 2418, i32 2}
!279 = !{ptr @.str.123, !278, !"<string literal>", i1 false, i1 false}
!280 = !{ptr @vub300_init._entry, !278, !"_entry", i1 false, i1 false}
!281 = !{ptr @vub300_init._entry_ptr, !278, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @.str.124, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/mmc/host/vub300.c", i32 2420, i32 18}
!284 = !{ptr @.str.125, !283, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @.str.127, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/mmc/host/vub300.c", i32 2422, i32 3}
!287 = !{ptr @vub300_init._entry.126, !286, !"_entry", i1 false, i1 false}
!288 = !{ptr @vub300_init._entry_ptr.128, !286, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.129, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/mmc/host/vub300.c", i32 2426, i32 18}
!291 = !{ptr @.str.131, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/mmc/host/vub300.c", i32 2428, i32 3}
!293 = !{ptr @vub300_init._entry.130, !292, !"_entry", i1 false, i1 false}
!294 = !{ptr @vub300_init._entry_ptr.132, !292, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @.str.133, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/mmc/host/vub300.c", i32 2432, i32 18}
!297 = !{ptr @.str.135, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/mmc/host/vub300.c", i32 2434, i32 3}
!299 = !{ptr @vub300_init._entry.134, !298, !"_entry", i1 false, i1 false}
!300 = !{ptr @vub300_init._entry_ptr.136, !298, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @.str.138, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/mmc/host/vub300.c", i32 2440, i32 3}
!303 = !{ptr @vub300_init._entry.137, !302, !"_entry", i1 false, i1 false}
!304 = !{ptr @vub300_init._entry_ptr.139, !302, !"_entry_ptr", i1 false, i1 false}
!305 = !{i32 1, !"wchar_size", i32 2}
!306 = !{i32 1, !"min_enum_size", i32 4}
!307 = !{i32 8, !"branch-target-enforcement", i32 0}
!308 = !{i32 8, !"sign-return-address", i32 0}
!309 = !{i32 8, !"sign-return-address-all", i32 0}
!310 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!311 = !{i32 7, !"uwtable", i32 1}
!312 = !{i32 7, !"frame-pointer", i32 2}
!313 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!314 = !{i8 0, i8 2}
!315 = !{i64 2148370338}
!316 = !{i64 2148284802, i64 2148284834, i64 2148284863, i64 2148284897, i64 2148284928, i64 2148284951}
!317 = !{!"branch_weights", i32 2000, i32 1}
!318 = !{i64 2149938927}
!319 = !{!"branch_weights", i32 1, i32 2000}
!320 = !{i64 2148282337, i64 2148282369, i64 2148282398, i64 2148282432, i64 2148282463, i64 2148282486}
!321 = !{i64 2148762622, i64 2148762627, i64 2148762640, i64 2148762684, i64 2148762718, i64 2148762739}
