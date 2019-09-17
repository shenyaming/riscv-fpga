#  NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE NOTE
#  This is an automatically generated file by shenyaming on Wed May 22 10:52:07 UTC 2019
# 
#  cmd:    swerv -set reset_vec=0x0 
# 
# To use this in a perf script, use 'require $RV_ROOT/configs/config.pl'
# Reference the hash via $config{name}..


%config = (
            'target' => 'default',
            'csr' => {
                       'pmpaddr10' => {
                                        'exists' => 'false'
                                      },
                       'mcpc' => {
                                   'exists' => 'true',
                                   'mask' => '0x0',
                                   'number' => '0x7c2',
                                   'reset' => '0x0'
                                 },
                       'mip' => {
                                  'exists' => 'true',
                                  'poke_mask' => '0x40000888',
                                  'mask' => '0x0',
                                  'reset' => '0x0'
                                },
                       'mhpmcounter6h' => {
                                            'exists' => 'true',
                                            'mask' => '0xffffffff',
                                            'reset' => '0x0'
                                          },
                       'pmpaddr4' => {
                                       'exists' => 'false'
                                     },
                       'mhpmcounter3h' => {
                                            'reset' => '0x0',
                                            'mask' => '0xffffffff',
                                            'exists' => 'true'
                                          },
                       'pmpcfg3' => {
                                      'exists' => 'false'
                                    },
                       'dcsr' => {
                                   'reset' => '0x40000003',
                                   'mask' => '0x00008c04',
                                   'poke_mask' => '0x00008dcc',
                                   'exists' => 'true'
                                 },
                       'pmpaddr1' => {
                                       'exists' => 'false'
                                     },
                       'pmpaddr9' => {
                                       'exists' => 'false'
                                     },
                       'mfdc' => {
                                   'reset' => '0x0',
                                   'number' => '0x7f9',
                                   'mask' => '0x000007ff',
                                   'exists' => 'true'
                                 },
                       'dicad0' => {
                                     'reset' => '0x0',
                                     'number' => '0x7c9',
                                     'debug' => 'true',
                                     'comment' => 'Cache diagnostics.',
                                     'mask' => '0xffffffff',
                                     'exists' => 'true'
                                   },
                       'pmpaddr12' => {
                                        'exists' => 'false'
                                      },
                       'pmpaddr14' => {
                                        'exists' => 'false'
                                      },
                       'pmpaddr13' => {
                                        'exists' => 'false'
                                      },
                       'pmpaddr3' => {
                                       'exists' => 'false'
                                     },
                       'pmpaddr2' => {
                                       'exists' => 'false'
                                     },
                       'mhpmevent5' => {
                                         'reset' => '0x0',
                                         'exists' => 'true',
                                         'mask' => '0xffffffff'
                                       },
                       'mhpmevent6' => {
                                         'reset' => '0x0',
                                         'exists' => 'true',
                                         'mask' => '0xffffffff'
                                       },
                       'mdccmect' => {
                                       'number' => '0x7f2',
                                       'reset' => '0x0',
                                       'exists' => 'true',
                                       'mask' => '0xffffffff'
                                     },
                       'mhpmcounter3' => {
                                           'exists' => 'true',
                                           'mask' => '0xffffffff',
                                           'reset' => '0x0'
                                         },
                       'pmpaddr8' => {
                                       'exists' => 'false'
                                     },
                       'time' => {
                                   'exists' => 'false'
                                 },
                       'mie' => {
                                  'mask' => '0x40000888',
                                  'exists' => 'true',
                                  'reset' => '0x0'
                                },
                       'dmst' => {
                                   'number' => '0x7c4',
                                   'reset' => '0x0',
                                   'comment' => 'Memory synch trigger: Flush caches in debug mode.',
                                   'debug' => 'true',
                                   'exists' => 'true',
                                   'mask' => '0x0'
                                 },
                       'tselect' => {
                                      'exists' => 'true',
                                      'mask' => '0x3',
                                      'reset' => '0x0'
                                    },
                       'mhpmcounter5' => {
                                           'reset' => '0x0',
                                           'mask' => '0xffffffff',
                                           'exists' => 'true'
                                         },
                       'dicad1' => {
                                     'exists' => 'true',
                                     'mask' => '0x3',
                                     'comment' => 'Cache diagnostics.',
                                     'debug' => 'true',
                                     'number' => '0x7ca',
                                     'reset' => '0x0'
                                   },
                       'instret' => {
                                      'exists' => 'false'
                                    },
                       'mhpmevent3' => {
                                         'reset' => '0x0',
                                         'mask' => '0xffffffff',
                                         'exists' => 'true'
                                       },
                       'dicawics' => {
                                       'number' => '0x7c8',
                                       'reset' => '0x0',
                                       'comment' => 'Cache diagnostics.',
                                       'debug' => 'true',
                                       'exists' => 'true',
                                       'mask' => '0x0130fffc'
                                     },
                       'mpmc' => {
                                   'mask' => '0x0',
                                   'exists' => 'true',
                                   'comment' => 'Core pause: Implemented as read only.',
                                   'reset' => '0x0',
                                   'number' => '0x7c6'
                                 },
                       'mvendorid' => {
                                        'reset' => '0x45',
                                        'exists' => 'true',
                                        'mask' => '0x0'
                                      },
                       'mhpmcounter4h' => {
                                            'exists' => 'true',
                                            'mask' => '0xffffffff',
                                            'reset' => '0x0'
                                          },
                       'pmpaddr11' => {
                                        'exists' => 'false'
                                      },
                       'pmpaddr6' => {
                                       'exists' => 'false'
                                     },
                       'mimpid' => {
                                     'exists' => 'true',
                                     'mask' => '0x0',
                                     'reset' => '0x1'
                                   },
                       'pmpaddr0' => {
                                       'exists' => 'false'
                                     },
                       'pmpaddr7' => {
                                       'exists' => 'false'
                                     },
                       'meicidpl' => {
                                       'comment' => 'External interrupt claim id priority level.',
                                       'reset' => '0x0',
                                       'number' => '0xbcb',
                                       'mask' => '0xf',
                                       'exists' => 'true'
                                     },
                       'pmpcfg0' => {
                                      'exists' => 'false'
                                    },
                       'mstatus' => {
                                      'reset' => '0x1800',
                                      'exists' => 'true',
                                      'mask' => '0x88'
                                    },
                       'meipt' => {
                                    'mask' => '0xf',
                                    'exists' => 'true',
                                    'reset' => '0x0',
                                    'number' => '0xbc9',
                                    'comment' => 'External interrupt priority threshold.'
                                  },
                       'marchid' => {
                                      'mask' => '0x0',
                                      'exists' => 'true',
                                      'reset' => '0x0000000b'
                                    },
                       'micect' => {
                                     'reset' => '0x0',
                                     'number' => '0x7f0',
                                     'mask' => '0xffffffff',
                                     'exists' => 'true'
                                   },
                       'miccmect' => {
                                       'exists' => 'true',
                                       'mask' => '0xffffffff',
                                       'number' => '0x7f1',
                                       'reset' => '0x0'
                                     },
                       'mhpmcounter5h' => {
                                            'reset' => '0x0',
                                            'exists' => 'true',
                                            'mask' => '0xffffffff'
                                          },
                       'mhpmevent4' => {
                                         'exists' => 'true',
                                         'mask' => '0xffffffff',
                                         'reset' => '0x0'
                                       },
                       'cycle' => {
                                    'exists' => 'false'
                                  },
                       'meicpct' => {
                                      'comment' => 'External claim id/priority capture.',
                                      'number' => '0xbca',
                                      'reset' => '0x0',
                                      'exists' => 'true',
                                      'mask' => '0x0'
                                    },
                       'dicago' => {
                                     'exists' => 'true',
                                     'mask' => '0x0',
                                     'comment' => 'Cache diagnostics.',
                                     'debug' => 'true',
                                     'number' => '0x7cb',
                                     'reset' => '0x0'
                                   },
                       'pmpcfg1' => {
                                      'exists' => 'false'
                                    },
                       'misa' => {
                                   'exists' => 'true',
                                   'mask' => '0x0',
                                   'reset' => '0x40001104'
                                 },
                       'mhpmcounter6' => {
                                           'exists' => 'true',
                                           'mask' => '0xffffffff',
                                           'reset' => '0x0'
                                         },
                       'pmpaddr5' => {
                                       'exists' => 'false'
                                     },
                       'meicurpl' => {
                                       'reset' => '0x0',
                                       'number' => '0xbcc',
                                       'comment' => 'External interrupt current priority level.',
                                       'mask' => '0xf',
                                       'exists' => 'true'
                                     },
                       'pmpcfg2' => {
                                      'exists' => 'false'
                                    },
                       'mhpmcounter4' => {
                                           'mask' => '0xffffffff',
                                           'exists' => 'true',
                                           'reset' => '0x0'
                                         },
                       'mcgc' => {
                                   'number' => '0x7f8',
                                   'reset' => '0x0',
                                   'exists' => 'true',
                                   'poke_mask' => '0x000001ff',
                                   'mask' => '0x000001ff'
                                 },
                       'pmpaddr15' => {
                                        'exists' => 'false'
                                      }
                     },
            'bht' => {
                       'bht_ghr_pad2' => 'fghr[4:3],2\'b0',
                       'bht_size' => 128,
                       'bht_ghr_pad' => 'fghr[4],3\'b0',
                       'bht_ghr_range' => '4:0',
                       'bht_hash_string' => '{ghr[3:2] ^ {ghr[3+1], {4-1-2{1\'b0}}},hashin[5:4]^ghr[2-1:0]}',
                       'bht_ghr_size' => 5,
                       'bht_array_depth' => 16,
                       'bht_addr_lo' => '4',
                       'bht_addr_hi' => 7
                     },
            'reset_vec' => '0x0',
            'btb' => {
                       'btb_index3_lo' => 8,
                       'btb_index3_hi' => 9,
                       'btb_addr_hi' => 5,
                       'btb_array_depth' => 4,
                       'btb_index2_hi' => 7,
                       'btb_index1_hi' => 5,
                       'btb_size' => 32,
                       'btb_btag_fold' => 1,
                       'btb_index2_lo' => 6,
                       'btb_index1_lo' => '4',
                       'btb_addr_lo' => '4',
                       'btb_btag_size' => 9
                     },
            'memmap' => {
                          'serialio' => '0xd0580000',
                          'external_data_1' => '0x00000000',
                          'external_prog' => '0xb0000000',
                          'external_data' => '0xc0580000',
                          'debug_sb_mem' => '0xb0580000'
                        },
            'physical' => '1',
            'testbench' => {
                             'RV_TOP' => '`TOP.rvtop',
                             'TOP' => 'tb_top',
                             'build_axi4' => '',
                             'datawidth' => '64',
                             'sterr_rollback' => '0',
                             'ext_addrwidth' => '32',
                             'clock_period' => '100',
                             'ext_datawidth' => '64',
                             'lderr_rollback' => '1',
                             'CPU_TOP' => '`RV_TOP.swerv'
                           },
            'xlen' => 32,
            'core' => {
                        'dma_buf_depth' => '2',
                        'lsu_num_nbload_width' => '2',
                        'dec_instbuf_depth' => '4',
                        'lsu_stbuf_depth' => '8',
                        'lsu_wrbuf_depth' => '4',
                        'lsu_num_nbload' => '4',
                        'opensource' => '1'
                      },
            'bus' => {
                       'dma_bus_prty' => '1',
                       'ifu_bus_prty' => '1',
                       'lsu_bus_tag' => 3,
                       'sb_bus_id' => '1',
                       'dma_bus_tag' => '1',
                       'lsu_bus_id' => '1',
                       'dma_bus_id' => '1',
                       'lsu_bus_prty' => '1',
                       'sb_bus_tag' => '1',
                       'sb_bus_prty' => '1',
                       'ifu_bus_tag' => '3',
                       'ifu_bus_id' => '1'
                     },
            'retstack' => {
                            'ret_stack_size' => '4'
                          },
            'numiregs' => '32',
            'regwidth' => '32',
            'tec_rv_icg' => 'clockhdr',
            'icache' => {
                          'icache_tag_cell' => 'ram_64x21',
                          'icache_data_cell' => 'ram_256x34',
                          'icache_ic_rows' => '256',
                          'icache_size' => 16,
                          'icache_taddr_high' => 5,
                          'icache_ic_depth' => 8,
                          'icache_tag_low' => '6',
                          'icache_tag_high' => 12,
                          'icache_enable' => '1',
                          'icache_ic_index' => 8,
                          'icache_tag_depth' => 64
                        },
            'max_mmode_perf_event' => '50',
            'nmi_vec' => '0x11110000',
            'dccm' => {
                        'dccm_bank_bits' => 3,
                        'dccm_sadr' => '0xf0080000',
                        'dccm_data_width' => 32,
                        'dccm_ecc_width' => 7,
                        'dccm_reserved' => '0x1000',
                        'dccm_offset' => '0x80000',
                        'dccm_data_cell' => 'ram_1024x39',
                        'dccm_num_banks' => '8',
                        'dccm_size_32' => '',
                        'dccm_size' => 32,
                        'dccm_region' => '0xf',
                        'dccm_fdata_width' => 39,
                        'dccm_num_banks_8' => '',
                        'dccm_enable' => '1',
                        'dccm_eadr' => '0xf0087fff',
                        'dccm_width_bits' => 2,
                        'lsu_sb_bits' => 15,
                        'dccm_byte_width' => '4',
                        'dccm_bits' => 15,
                        'dccm_rows' => '1024',
                        'dccm_index_bits' => 10
                      },
            'harts' => 1,
            'triggers' => [
                            {
                              'reset' => [
                                           '0x23e00000',
                                           '0x00000000',
                                           '0x00000000'
                                         ],
                              'mask' => [
                                          '0x081818c7',
                                          '0xffffffff',
                                          '0x00000000'
                                        ],
                              'poke_mask' => [
                                               '0x081818c7',
                                               '0xffffffff',
                                               '0x00000000'
                                             ]
                            },
                            {
                              'poke_mask' => [
                                               '0x081818c7',
                                               '0xffffffff',
                                               '0x00000000'
                                             ],
                              'mask' => [
                                          '0x081818c7',
                                          '0xffffffff',
                                          '0x00000000'
                                        ],
                              'reset' => [
                                           '0x23e00000',
                                           '0x00000000',
                                           '0x00000000'
                                         ]
                            },
                            {
                              'mask' => [
                                          '0x081818c7',
                                          '0xffffffff',
                                          '0x00000000'
                                        ],
                              'poke_mask' => [
                                               '0x081818c7',
                                               '0xffffffff',
                                               '0x00000000'
                                             ],
                              'reset' => [
                                           '0x23e00000',
                                           '0x00000000',
                                           '0x00000000'
                                         ]
                            },
                            {
                              'reset' => [
                                           '0x23e00000',
                                           '0x00000000',
                                           '0x00000000'
                                         ],
                              'poke_mask' => [
                                               '0x081818c7',
                                               '0xffffffff',
                                               '0x00000000'
                                             ],
                              'mask' => [
                                          '0x081818c7',
                                          '0xffffffff',
                                          '0x00000000'
                                        ]
                            }
                          ],
            'iccm' => {
                        'iccm_data_cell' => 'ram_16384x39',
                        'iccm_index_bits' => 14,
                        'iccm_bits' => 19,
                        'iccm_region' => '0xe',
                        'iccm_bank_bits' => 3,
                        'iccm_reserved' => '0x1000',
                        'iccm_size' => 512,
                        'iccm_num_banks' => '8',
                        'iccm_rows' => '16384',
                        'iccm_sadr' => '0xee000000',
                        'iccm_eadr' => '0xee07ffff',
                        'iccm_offset' => '0xe000000',
                        'iccm_size_512' => '',
                        'iccm_num_banks_8' => ''
                      },
            'pic' => {
                       'pic_base_addr' => '0xf0100000',
                       'pic_meie_offset' => '0x2000',
                       'pic_meigwctrl_offset' => '0x4000',
                       'pic_meigwclr_offset' => '0x5000',
                       'pic_bits' => 15,
                       'pic_region' => '0xf',
                       'pic_offset' => '0x100000',
                       'pic_total_int' => 8,
                       'pic_int_words' => 1,
                       'pic_meip_offset' => '0x1000',
                       'pic_meipl_offset' => '0x0000',
                       'pic_meipt_offset' => '0x3004',
                       'pic_size' => 32,
                       'pic_mpiccfg_offset' => '0x3000',
                       'pic_total_int_plus1' => 9
                     },
            'even_odd_trigger_chains' => 'true',
            'num_mmode_perf_regs' => '4'
          );
1;
