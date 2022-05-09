; ModuleID = '/llk/IR_all_yes/drivers/media/usb/dvb-usb/dibusb-mc-common.c_pt.bc'
source_filename = "../drivers/media/usb/dvb-usb/dibusb-mc-common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+dibusb_dib3000mc_frontend_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_dibusb_dib3000mc_frontend_attach\09\09\09\09"
module asm "\09.long\09__crc_dibusb_dib3000mc_frontend_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dibusb_dib3000mc_frontend_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22dibusb_dib3000mc_frontend_attach\22\09\09\09\09\09"
module asm "__kstrtabns_dibusb_dib3000mc_frontend_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dibusb_dib3000mc_tuner_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_dibusb_dib3000mc_tuner_attach\09\09\09\09"
module asm "\09.long\09__crc_dibusb_dib3000mc_tuner_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dibusb_dib3000mc_tuner_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22dibusb_dib3000mc_tuner_attach\22\09\09\09\09\09"
module asm "__kstrtabns_dibusb_dib3000mc_tuner_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dib3000mc_config = type { ptr, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mt2060_config = type { i8, i8 }
%struct.dibx000_agc_config = type { i8, i16, i16, i16, i8, i16, i8, i16, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.anon.144 }
%struct.anon.144 = type { i16, i16, i16, i16 }
%struct.dvb_usb_device = type { %struct.dvb_usb_device_properties, ptr, ptr, i32, i32, %struct.mutex, %struct.mutex, %struct.mutex, %struct.i2c_adapter, i32, [2 x %struct.dvb_usb_adapter], ptr, ptr, [64 x i8], %struct.delayed_work, i32, i32, ptr, ptr }
%struct.dvb_usb_device_properties = type { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, [2 x %struct.dvb_usb_adapter_properties], ptr, ptr, ptr, %struct.anon.142, ptr, i32, i32, i32, [12 x %struct.dvb_usb_device_description] }
%struct.dvb_usb_adapter_properties = type { i32, ptr, i32, [3 x %struct.dvb_usb_adapter_fe_properties] }
%struct.dvb_usb_adapter_fe_properties = type { i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.usb_data_stream_properties, i32 }
%struct.usb_data_stream_properties = type { i32, i32, i32, %union.anon.110 }
%union.anon.110 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, i32, i32 }
%struct.anon.142 = type { i32, %struct.dvb_rc_legacy, %struct.dvb_rc }
%struct.dvb_rc_legacy = type { ptr, i32, ptr, i32 }
%struct.dvb_rc = type { ptr, i64, i64, i32, ptr, ptr, ptr, i32, i8, i32 }
%struct.dvb_usb_device_description = type { ptr, [15 x ptr], [15 x ptr] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dvb_usb_adapter = type { ptr, %struct.dvb_usb_adapter_properties, i32, i8, i32, %struct.dvb_adapter, %struct.dmxdev, %struct.dvb_demux, %struct.dvb_net, [3 x %struct.dvb_usb_fe_adapter], i32, i32, ptr }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.dvb_usb_fe_adapter = type { ptr, ptr, ptr, %struct.usb_data_stream, i32, i32, ptr }
%struct.usb_data_stream = type { ptr, %struct.usb_data_stream_properties, i32, ptr, [10 x ptr], i32, i32, [10 x ptr], [10 x i32], i32, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.dib_fe_xfer_ops = type { ptr, ptr, ptr, ptr }
%struct.dibusb_state = type { %struct.dib_fe_xfer_ops, i32, i8 }

@__UNIQUE_ID_file386 = internal constant [81 x i8] c"dvb_usb_dibusb_mc_common.file=drivers/media/usb/dvb-usb/dvb-usb-dibusb-mc-common\00", section ".modinfo", align 1
@__UNIQUE_ID_license387 = internal constant [37 x i8] c"dvb_usb_dibusb_mc_common.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dib3000mc_attach\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"symbol:dib3000mc_attach\00", [40 x i8] zeroinitializer }, align 32
@mod3000p_dib3000p_config = internal global { %struct.dib3000mc_config, [44 x i8] } { %struct.dib3000mc_config { ptr @dib3000p_panasonic_agc_config, i8 0, i8 0, i8 0, i8 0, i16 0, i16 81, i16 7367, i8 -64, i8 0, i8 1 }, [44 x i8] zeroinitializer }, align 32
@dibusb_dib3000mc_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 94, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013DVB: Unable to find symbol dib3000mc_attach()\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"dibusb_dib3000mc_frontend_attach\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/media/usb/dvb-usb/dibusb-mc-common.c\00", [51 x i8] zeroinitializer }, align 32
@dibusb_dib3000mc_frontend_attach._entry_ptr = internal global ptr @dibusb_dib3000mc_frontend_attach._entry, section ".printk_index", align 4
@dibusb_dib3000mc_frontend_attach._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 99, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dibusb_dib3000mc_frontend_attach._entry_ptr.6 = internal global ptr @dibusb_dib3000mc_frontend_attach._entry.5, section ".printk_index", align 4
@__kstrtab_dibusb_dib3000mc_frontend_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_dibusb_dib3000mc_frontend_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_dibusb_dib3000mc_frontend_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dibusb_dib3000mc_frontend_attach to i32), ptr @__kstrtab_dibusb_dib3000mc_frontend_attach, ptr @__kstrtabns_dibusb_dib3000mc_frontend_attach }, section "___ksymtab+dibusb_dib3000mc_frontend_attach", align 4
@dibusb_dib3000mc_tuner_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\014dibusb: LITE-ON DVB-T: Strange IF1 calibration :%2X %2X\0A\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dibusb_dib3000mc_tuner_attach\00", [34 x i8] zeroinitializer }, align 32
@dibusb_dib3000mc_tuner_attach._entry_ptr = internal global ptr @dibusb_dib3000mc_tuner_attach._entry, section ".printk_index", align 4
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mt2060_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:mt2060_attach\00", [43 x i8] zeroinitializer }, align 32
@stk3000p_mt2060_config = internal global { %struct.mt2060_config, [30 x i8] } { %struct.mt2060_config { i8 96, i8 0 }, [30 x i8] zeroinitializer }, align 32
@dibusb_dib3000mc_tuner_attach._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.8, ptr @.str.4, i32 155, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol mt2060_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@dibusb_dib3000mc_tuner_attach._entry_ptr.13 = internal global ptr @dibusb_dib3000mc_tuner_attach._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dvb_pll_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:dvb_pll_attach\00", [42 x i8] zeroinitializer }, align 32
@dibusb_dib3000mc_tuner_attach._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.8, ptr @.str.4, i32 157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol dvb_pll_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@dibusb_dib3000mc_tuner_attach._entry_ptr.18 = internal global ptr @dibusb_dib3000mc_tuner_attach._entry.16, section ".printk_index", align 4
@stk3000p_dib3000p_config = internal global { %struct.dib3000mc_config, [44 x i8] } { %struct.dib3000mc_config { ptr @dib3000p_mt2060_agc_config, i8 0, i8 0, i8 0, i8 0, i16 0, i16 406, i16 7367, i8 -64, i8 0, i8 1 }, [44 x i8] zeroinitializer }, align 32
@__kstrtab_dibusb_dib3000mc_tuner_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_dibusb_dib3000mc_tuner_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_dibusb_dib3000mc_tuner_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dibusb_dib3000mc_tuner_attach to i32), ptr @__kstrtab_dibusb_dib3000mc_tuner_attach, ptr @__kstrtabns_dibusb_dib3000mc_tuner_attach }, section "___ksymtab+dibusb_dib3000mc_tuner_attach", align 4
@dib3000p_panasonic_agc_config = internal global { %struct.dibx000_agc_config, [48 x i8] } { %struct.dibx000_agc_config { i8 6, i16 442, i16 0, i16 0, i8 0, i16 0, i8 0, i16 0, i8 0, i8 0, i16 -9175, i16 22282, i16 -17695, i16 -29491, i8 59, i8 107, i8 0, i8 85, i8 29, i8 0, i8 10, i8 -107, i8 30, i8 0, i8 0, i8 0, i8 0, i8 0, %struct.anon.144 zeroinitializer }, [48 x i8] zeroinitializer }, align 32
@dib3000p_mt2060_agc_config = internal global { %struct.dibx000_agc_config, [48 x i8] } { %struct.dibx000_agc_config { i8 6, i16 442, i16 0, i16 0, i8 0, i16 0, i8 0, i16 0, i8 0, i8 0, i16 -17039, i16 23593, i16 -19005, i16 24904, i8 101, i8 105, i8 0, i8 81, i8 39, i8 0, i8 51, i8 53, i8 55, i8 0, i8 0, i8 0, i8 0, i8 0, %struct.anon.144 zeroinitializer }, [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 47120, i64 51716]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 128]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@___asan_gen_.27 = private unnamed_addr constant [25 x i8] c"mod3000p_dib3000p_config\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 71, i32 32 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 91, i32 24 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 96, i32 25 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 135, i32 4 }
@___asan_gen_.60 = private unnamed_addr constant [23 x i8] c"stk3000p_mt2060_config\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 112, i32 29 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 155, i32 6 }
@___asan_gen_.75 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 157, i32 7 }
@___asan_gen_.81 = private unnamed_addr constant [25 x i8] c"stk3000p_dib3000p_config\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 37, i32 32 }
@___asan_gen_.84 = private unnamed_addr constant [30 x i8] c"dib3000p_panasonic_agc_config\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 49, i32 34 }
@___asan_gen_.87 = private unnamed_addr constant [27 x i8] c"dib3000p_mt2060_agc_config\00", align 1
@___asan_gen_.88 = private constant [48 x i8] c"../drivers/media/usb/dvb-usb/dibusb-mc-common.c\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 15, i32 34 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__UNIQUE_ID_file386, ptr @__UNIQUE_ID_license387, ptr @__ksymtab_dibusb_dib3000mc_frontend_attach, ptr @__ksymtab_dibusb_dib3000mc_tuner_attach, ptr @dibusb_dib3000mc_frontend_attach._entry, ptr @dibusb_dib3000mc_frontend_attach._entry.5, ptr @dibusb_dib3000mc_frontend_attach._entry_ptr, ptr @dibusb_dib3000mc_frontend_attach._entry_ptr.6, ptr @dibusb_dib3000mc_tuner_attach._entry, ptr @dibusb_dib3000mc_tuner_attach._entry.11, ptr @dibusb_dib3000mc_tuner_attach._entry.16, ptr @dibusb_dib3000mc_tuner_attach._entry_ptr, ptr @dibusb_dib3000mc_tuner_attach._entry_ptr.13, ptr @dibusb_dib3000mc_tuner_attach._entry_ptr.18, ptr @.str, ptr @.str.1, ptr @mod3000p_dib3000p_config, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @stk3000p_mt2060_config, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @stk3000p_dib3000p_config, ptr @dib3000p_panasonic_agc_config, ptr @dib3000p_mt2060_agc_config], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mod3000p_dib3000p_config to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dibusb_dib3000mc_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dibusb_dib3000mc_frontend_attach._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dibusb_dib3000mc_tuner_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk3000p_mt2060_config to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dibusb_dib3000mc_tuner_attach._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dibusb_dib3000mc_tuner_attach._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk3000p_dib3000p_config to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000p_panasonic_agc_config to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000p_mt2060_agc_config to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dibusb_dib3000mc_frontend_attach(ptr nocapture noundef %adap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adap, align 8
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev, align 4
  %idVendor = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 16, i32 7
  %4 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %idVendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -13820, i16 %5)
  %cmp = icmp eq i16 %5, -13820
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %idProduct = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 16, i32 8
  %6 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %idProduct, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 496, i16 %7)
  %cmp6 = icmp eq i16 %7, 496
  br i1 %cmp6, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @msleep(i32 noundef 1000) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %if.end.if.then11_crit_edge

if.end.if.then11_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then11

cond.end:                                         ; preds = %if.end
  %call8 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.1) #4
  %call9 = tail call ptr @__symbol_get(ptr noundef nonnull @.str) #4
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %do.end, label %cond.end.if.then11_crit_edge

cond.end.if.then11_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then11

if.then11:                                        ; preds = %cond.end.if.then11_crit_edge, %if.end.if.then11_crit_edge
  %cond87 = phi ptr [ %call9, %cond.end.if.then11_crit_edge ], [ %call, %if.end.if.then11_crit_edge ]
  %8 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adap, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %9, i32 0, i32 8
  %call13 = tail call ptr %cond87(ptr noundef %i2c_adap, i8 noundef zeroext 24, ptr noundef nonnull @mod3000p_dib3000p_config) #4
  %cmp14 = icmp eq ptr %call13, null
  br i1 %cmp14, label %if.then16, label %if.end57.thread

if.then16:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str) #4
  br label %if.then26

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #7
  br label %if.then26

if.end57.thread:                                  ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #6
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %10 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call13, ptr %fe_adap, align 8
  br label %if.then63

if.then26:                                        ; preds = %do.end, %if.then16
  %fe_adap89 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %11 = ptrtoint ptr %fe_adap89 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %fe_adap89, align 8
  %call29 = tail call ptr @__symbol_get(ptr noundef nonnull @.str) #4
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %cond.end35, label %if.then26.if.then38_crit_edge

if.then26.if.then38_crit_edge:                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then38

cond.end35:                                       ; preds = %if.then26
  %call33 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.1) #4
  %call34 = tail call ptr @__symbol_get(ptr noundef nonnull @.str) #4
  %tobool37.not = icmp eq ptr %call34, null
  br i1 %tobool37.not, label %do.end49, label %cond.end35.if.then38_crit_edge

cond.end35.if.then38_crit_edge:                   ; preds = %cond.end35
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then38

if.then38:                                        ; preds = %cond.end35.if.then38_crit_edge, %if.then26.if.then38_crit_edge
  %cond3695 = phi ptr [ %call34, %cond.end35.if.then38_crit_edge ], [ %call29, %if.then26.if.then38_crit_edge ]
  %12 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adap, align 8
  %i2c_adap40 = getelementptr inbounds %struct.dvb_usb_device, ptr %13, i32 0, i32 8
  %call41 = tail call ptr %cond3695(ptr noundef %i2c_adap40, i8 noundef zeroext 16, ptr noundef nonnull @mod3000p_dib3000p_config) #4
  %cmp42 = icmp eq ptr %call41, null
  br i1 %cmp42, label %if.then44, label %if.end57

if.then44:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str) #4
  br label %if.end57.thread98

do.end49:                                         ; preds = %cond.end35
  call void @__sanitizer_cov_trace_pc() #6
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #7
  br label %if.end57.thread98

if.end57.thread98:                                ; preds = %do.end49, %if.then44
  %14 = ptrtoint ptr %fe_adap89 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %fe_adap89, align 8
  br label %return

if.end57:                                         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %fe_adap89 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call41, ptr %fe_adap89, align 8
  br label %if.then63

if.then63:                                        ; preds = %if.end57, %if.end57.thread
  %priv = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 12
  %16 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv, align 8
  %cmp64.not = icmp eq ptr %17, null
  br i1 %cmp64.not, label %if.then63.return_crit_edge, label %if.then66

if.then63.return_crit_edge:                       ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then66:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @dib3000mc_pid_parse, ptr %17, align 4
  %pid_ctrl = getelementptr inbounds %struct.dib_fe_xfer_ops, ptr %17, i32 0, i32 2
  %19 = ptrtoint ptr %pid_ctrl to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @dib3000mc_pid_control, ptr %pid_ctrl, align 4
  br label %return

return:                                           ; preds = %if.then66, %if.then63.return_crit_edge, %if.end57.thread98
  %retval.0 = phi i32 [ 0, %if.then66 ], [ 0, %if.then63.return_crit_edge ], [ -19, %if.end57.thread98 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__symbol_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__symbol_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dib3000mc_pid_parse(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dib3000mc_pid_control(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dibusb_dib3000mc_tuner_attach(ptr nocapture noundef readonly %adap) #0 align 64 {
entry:
  %a = alloca i8, align 1
  %b = alloca i8, align 1
  %desc = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %a) #4
  %2 = ptrtoint ptr %a to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %a, align 1, !annotation !54
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b) #4
  %3 = ptrtoint ptr %b to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %b, align 1, !annotation !54
  %4 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adap, align 8
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udev, align 4
  %idVendor = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 16, i32 7
  %8 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %idVendor, align 8
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i16 %9, label %entry.if.end82_crit_edge [
    i16 -13820, label %land.lhs.true
    i16 -18416, label %land.lhs.true38
  ]

entry.if.end82_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end82

land.lhs.true:                                    ; preds = %entry
  %idProduct = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 16, i32 8
  %11 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %idProduct, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 496, i16 %12)
  %cmp6 = icmp eq i16 %12, 496
  br i1 %cmp6, label %if.then, label %land.lhs.true.if.end82_crit_edge

land.lhs.true.if.end82_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end82

if.then:                                          ; preds = %land.lhs.true
  %call = call i32 @dibusb_read_eeprom_byte(ptr noundef %5, i8 noundef zeroext 126, ptr noundef nonnull %a) #4
  %13 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adap, align 8
  %call10 = call i32 @dibusb_read_eeprom_byte(ptr noundef %14, i8 noundef zeroext 127, ptr noundef nonnull %b) #4
  %15 = ptrtoint ptr %a to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %a, align 1
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %16, label %do.end [
    i8 0, label %if.then14
    i8 -128, label %if.then21
  ]

if.then14:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %b, align 1
  %conv15 = zext i8 %19 to i16
  %add = add nuw nsw i16 %conv15, 1220
  br label %if.end82

if.then21:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %20 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %b, align 1
  %conv22 = zext i8 %21 to i16
  %sub = sub nuw nsw i16 1220, %conv22
  br label %if.end82

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %conv11 = zext i8 %16 to i32
  %22 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %b, align 1
  %conv27 = zext i8 %23 to i32
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %conv11, i32 noundef %conv27) #7
  br label %if.end82

land.lhs.true38:                                  ; preds = %entry
  %idProduct42 = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 16, i32 8
  %24 = ptrtoint ptr %idProduct42 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %idProduct42, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -14581, i16 %25)
  %cmp44 = icmp eq i16 %25, -14581
  br i1 %cmp44, label %if.then46, label %land.lhs.true38.if.end82_crit_edge

land.lhs.true38.if.end82_crit_edge:               ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end82

if.then46:                                        ; preds = %land.lhs.true38
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %desc) #4
  %26 = ptrtoint ptr %desc to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -1, ptr %desc, align 1, !annotation !54
  %call48 = call i32 @dibusb_read_eeprom_byte(ptr noundef %5, i8 noundef zeroext 7, ptr noundef nonnull %desc) #4
  %27 = ptrtoint ptr %desc to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %desc, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %28)
  %cmp50 = icmp eq i8 %28, 2
  br i1 %cmp50, label %land.rhs.preheader, label %if.then46.if.end80_crit_edge

if.then46.if.end80_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end80

land.rhs.preheader:                               ; preds = %if.then46
  %29 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %adap, align 8
  %call55182 = call i32 @dibusb_read_eeprom_byte(ptr noundef %30, i8 noundef zeroext 127, ptr noundef nonnull %desc) #4
  %31 = ptrtoint ptr %a to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 126, ptr %a, align 1
  br label %land.rhs

land.rhs:                                         ; preds = %do.body53.backedge.land.rhs_crit_edge, %land.rhs.preheader
  %32 = ptrtoint ptr %desc to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %desc, align 1
  %34 = zext i8 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.20)
  switch i8 %33, label %land.rhs.do.end66_crit_edge [
    i8 -1, label %land.rhs.do.body53.backedge_crit_edge
    i8 0, label %land.rhs.do.body53.backedge_crit_edge190
  ]

land.rhs.do.body53.backedge_crit_edge190:         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body53.backedge

land.rhs.do.body53.backedge_crit_edge:            ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body53.backedge

land.rhs.do.end66_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end66

do.body53.backedge:                               ; preds = %land.rhs.do.body53.backedge_crit_edge, %land.rhs.do.body53.backedge_crit_edge190
  %35 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %adap, align 8
  %37 = ptrtoint ptr %a to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %a, align 1
  %call55 = call i32 @dibusb_read_eeprom_byte(ptr noundef %36, i8 noundef zeroext %38, ptr noundef nonnull %desc) #4
  %dec = add i8 %38, -1
  %39 = ptrtoint ptr %a to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %dec, ptr %a, align 1
  %cmp58 = icmp ugt i8 %dec, 7
  br i1 %cmp58, label %do.body53.backedge.land.rhs_crit_edge, label %do.end66thread-pre-split

do.body53.backedge.land.rhs_crit_edge:            ; preds = %do.body53.backedge
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs

do.end66thread-pre-split:                         ; preds = %do.body53.backedge
  call void @__sanitizer_cov_trace_pc() #6
  %40 = ptrtoint ptr %desc to i32
  call void @__asan_load1_noabort(i32 %40)
  %.pr = load i8, ptr %desc, align 1
  br label %do.end66

do.end66:                                         ; preds = %do.end66thread-pre-split, %land.rhs.do.end66_crit_edge
  %41 = phi i8 [ %.pr, %do.end66thread-pre-split ], [ %33, %land.rhs.do.end66_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %41)
  %tobool.not = icmp sgt i8 %41, -1
  %42 = zext i8 %41 to i16
  br i1 %tobool.not, label %if.else74, label %if.then68

if.then68:                                        ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #6
  %conv73 = add nuw nsw i16 %42, 965
  br label %if.end80

if.else74:                                        ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #6
  %conv78 = add nuw nsw i16 %42, 1220
  br label %if.end80

if.end80:                                         ; preds = %if.else74, %if.then68, %if.then46.if.end80_crit_edge
  %if1.0 = phi i16 [ %conv73, %if.then68 ], [ %conv78, %if.else74 ], [ 1220, %if.then46.if.end80_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %desc) #4
  br label %if.end82

if.end82:                                         ; preds = %if.end80, %land.lhs.true38.if.end82_crit_edge, %do.end, %if.then21, %if.then14, %land.lhs.true.if.end82_crit_edge, %entry.if.end82_crit_edge
  %if1.1 = phi i16 [ %add, %if.then14 ], [ %sub, %if.then21 ], [ 1220, %do.end ], [ %if1.0, %if.end80 ], [ 1220, %land.lhs.true38.if.end82_crit_edge ], [ 1220, %land.lhs.true.if.end82_crit_edge ], [ 1220, %entry.if.end82_crit_edge ]
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %43 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %fe_adap, align 8
  %call83 = call ptr @dib3000mc_get_tuner_i2c_master(ptr noundef %44, i32 noundef 1) #4
  %call84 = call ptr @__symbol_get(ptr noundef nonnull @.str.9) #4
  %tobool85.not = icmp eq ptr %call84, null
  br i1 %tobool85.not, label %cond.end, label %if.end82.if.then89_crit_edge

if.end82.if.then89_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then89

cond.end:                                         ; preds = %if.end82
  %call86 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.10) #4
  %call87 = call ptr @__symbol_get(ptr noundef nonnull @.str.9) #4
  %tobool88.not = icmp eq ptr %call87, null
  br i1 %tobool88.not, label %do.end101, label %cond.end.if.then89_crit_edge

cond.end.if.then89_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then89

if.then89:                                        ; preds = %cond.end.if.then89_crit_edge, %if.end82.if.then89_crit_edge
  %cond174 = phi ptr [ %call87, %cond.end.if.then89_crit_edge ], [ %call84, %if.end82.if.then89_crit_edge ]
  %45 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fe_adap, align 8
  %call93 = call ptr %cond174(ptr noundef %46, ptr noundef %call83, ptr noundef nonnull @stk3000p_mt2060_config, i16 noundef zeroext %if1.1) #4
  %cmp94 = icmp eq ptr %call93, null
  br i1 %cmp94, label %if.then96, label %if.else141

if.then96:                                        ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #6
  call void @__symbol_put(ptr noundef nonnull @.str.9) #4
  br label %if.then108

do.end101:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call103 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #7
  br label %if.then108

if.then108:                                       ; preds = %do.end101, %if.then96
  %call111 = call ptr @__symbol_get(ptr noundef nonnull @.str.14) #4
  %tobool112.not = icmp eq ptr %call111, null
  br i1 %tobool112.not, label %cond.end117, label %if.then108.if.then120_crit_edge

if.then108.if.then120_crit_edge:                  ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then120

cond.end117:                                      ; preds = %if.then108
  %call115 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.15) #4
  %call116 = call ptr @__symbol_get(ptr noundef nonnull @.str.14) #4
  %tobool119.not = icmp eq ptr %call116, null
  br i1 %tobool119.not, label %do.end132, label %cond.end117.if.then120_crit_edge

cond.end117.if.then120_crit_edge:                 ; preds = %cond.end117
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then120

if.then120:                                       ; preds = %cond.end117.if.then120_crit_edge, %if.then108.if.then120_crit_edge
  %cond118179 = phi ptr [ %call116, %cond.end117.if.then120_crit_edge ], [ %call111, %if.then108.if.then120_crit_edge ]
  %47 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fe_adap, align 8
  %call124 = call ptr %cond118179(ptr noundef %48, i32 noundef 96, ptr noundef %call83, i32 noundef 6) #4
  %cmp125 = icmp eq ptr %call124, null
  br i1 %cmp125, label %if.then127, label %if.then120.cleanup_crit_edge

if.then120.cleanup_crit_edge:                     ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then127:                                       ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #6
  call void @__symbol_put(ptr noundef nonnull @.str.14) #4
  br label %cleanup

do.end132:                                        ; preds = %cond.end117
  call void @__sanitizer_cov_trace_pc() #6
  %call134 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #7
  br label %cleanup

if.else141:                                       ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #6
  %mt2060_present = getelementptr inbounds %struct.dibusb_state, ptr %1, i32 0, i32 1
  %49 = ptrtoint ptr %mt2060_present to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %mt2060_present, align 4
  %50 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %fe_adap, align 8
  call void @dib3000mc_set_config(ptr noundef %51, ptr noundef nonnull @stk3000p_dib3000p_config) #4
  br label %cleanup

cleanup:                                          ; preds = %if.else141, %do.end132, %if.then127, %if.then120.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then120.cleanup_crit_edge ], [ 0, %if.else141 ], [ -12, %if.then127 ], [ -12, %do.end132 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %a) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dibusb_read_eeprom_byte(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dib3000mc_get_tuner_i2c_master(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dib3000mc_set_config(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !10, !11, !13, !14, !16, !18, !19, !20, !21, !23, !24, !25, !26, !27, !29, !30, !31, !32, !33, !35, !37, !39, !41, !43}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @__UNIQUE_ID_file386, !1, !"__UNIQUE_ID_file386", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/dvb-usb/dibusb-mc-common.c", i32 11, i32 1}
!2 = !{ptr @__UNIQUE_ID_license387, !1, !"__UNIQUE_ID_license387", i1 false, i1 false}
!3 = !{ptr @.str, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/dvb-usb/dibusb-mc-common.c", i32 91, i32 24}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @dibusb_dib3000mc_frontend_attach._entry, !4, !"_entry", i1 false, i1 false}
!10 = !{ptr @dibusb_dib3000mc_frontend_attach._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @dibusb_dib3000mc_frontend_attach._entry.5, !12, !"_entry", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/dvb-usb/dibusb-mc-common.c", i32 96, i32 25}
!13 = !{ptr @dibusb_dib3000mc_frontend_attach._entry_ptr.6, !12, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @__ksymtab_dibusb_dib3000mc_frontend_attach, !15, !"__ksymtab_dibusb_dib3000mc_frontend_attach", i1 false, i1 false}
!15 = !{!"../drivers/media/usb/dvb-usb/dibusb-mc-common.c", i32 110, i32 1}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/usb/dvb-usb/dibusb-mc-common.c", i32 135, i32 4}
!18 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @dibusb_dib3000mc_tuner_attach._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @dibusb_dib3000mc_tuner_attach._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/usb/dvb-usb/dibusb-mc-common.c", i32 155, i32 6}
!23 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @dibusb_dib3000mc_tuner_attach._entry.11, !22, !"_entry", i1 false, i1 false}
!26 = !{ptr @dibusb_dib3000mc_tuner_attach._entry_ptr.13, !22, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/usb/dvb-usb/dibusb-mc-common.c", i32 157, i32 7}
!29 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @dibusb_dib3000mc_tuner_attach._entry.16, !28, !"_entry", i1 false, i1 false}
!32 = !{ptr @dibusb_dib3000mc_tuner_attach._entry_ptr.18, !28, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @__ksymtab_dibusb_dib3000mc_tuner_attach, !34, !"__ksymtab_dibusb_dib3000mc_tuner_attach", i1 false, i1 false}
!34 = !{!"../drivers/media/usb/dvb-usb/dibusb-mc-common.c", i32 166, i32 1}
!35 = !{ptr @mod3000p_dib3000p_config, !36, !"mod3000p_dib3000p_config", i1 false, i1 false}
!36 = !{!"../drivers/media/usb/dvb-usb/dibusb-mc-common.c", i32 71, i32 32}
!37 = !{ptr @dib3000p_panasonic_agc_config, !38, !"dib3000p_panasonic_agc_config", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/dvb-usb/dibusb-mc-common.c", i32 49, i32 34}
!39 = !{ptr @stk3000p_mt2060_config, !40, !"stk3000p_mt2060_config", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/dvb-usb/dibusb-mc-common.c", i32 112, i32 29}
!41 = !{ptr @stk3000p_dib3000p_config, !42, !"stk3000p_dib3000p_config", i1 false, i1 false}
!42 = !{!"../drivers/media/usb/dvb-usb/dibusb-mc-common.c", i32 37, i32 32}
!43 = !{ptr @dib3000p_mt2060_agc_config, !44, !"dib3000p_mt2060_agc_config", i1 false, i1 false}
!44 = !{!"../drivers/media/usb/dvb-usb/dibusb-mc-common.c", i32 15, i32 34}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{!"auto-init"}
